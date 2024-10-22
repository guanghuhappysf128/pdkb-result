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
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #12606: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #19251: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #23185: <==closure== 83577 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #26261: <==closure== 19251 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #44984: <==closure== 12606 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #55172: <==closure== 85875 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #83577: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #85875: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #16096: <==uncertain_firing== 23185 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #26033: <==uncertain_firing== 44984 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #27796: <==negation-removal== 55172 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #43224: <==uncertain_firing== 55172 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #51752: <==uncertain_firing== 26261 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65386: <==negation-removal== 44984 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #68431: <==negation-removal== 23185 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #68510: <==negation-removal== 12606 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #72139: <==negation-removal== 83577 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #75998: <==negation-removal== 19251 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #76915: <==uncertain_firing== 83577 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #78995: <==uncertain_firing== 85875 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #79679: <==uncertain_firing== 19251 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #82198: <==negation-removal== 26261 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84284: <==negation-removal== 85875 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88888: <==uncertain_firing== 12606 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #12606: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #19251: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #23185: <==closure== 83577 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #26261: <==closure== 19251 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #44984: <==closure== 12606 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #55172: <==closure== 85875 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #83577: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #85875: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #16096: <==uncertain_firing== 23185 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #26033: <==uncertain_firing== 44984 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #27796: <==negation-removal== 55172 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #43224: <==uncertain_firing== 55172 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #51752: <==uncertain_firing== 26261 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65386: <==negation-removal== 44984 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #68431: <==negation-removal== 23185 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #68510: <==negation-removal== 12606 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #72139: <==negation-removal== 83577 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #75998: <==negation-removal== 19251 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #76915: <==uncertain_firing== 83577 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #78995: <==uncertain_firing== 85875 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #79679: <==uncertain_firing== 19251 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #82198: <==negation-removal== 26261 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84284: <==negation-removal== 85875 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88888: <==uncertain_firing== 12606 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #12606: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #19251: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #23185: <==closure== 83577 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #26261: <==closure== 19251 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #44984: <==closure== 12606 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #55172: <==closure== 85875 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #83577: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #85875: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #16096: <==uncertain_firing== 23185 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #26033: <==uncertain_firing== 44984 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #27796: <==negation-removal== 55172 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #43224: <==uncertain_firing== 55172 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #51752: <==uncertain_firing== 26261 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65386: <==negation-removal== 44984 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #68431: <==negation-removal== 23185 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #68510: <==negation-removal== 12606 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #72139: <==negation-removal== 83577 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #75998: <==negation-removal== 19251 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #76915: <==uncertain_firing== 83577 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #78995: <==uncertain_firing== 85875 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #79679: <==uncertain_firing== 19251 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #82198: <==negation-removal== 26261 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84284: <==negation-removal== 85875 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88888: <==uncertain_firing== 12606 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #12606: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #19251: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #23185: <==closure== 83577 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #26261: <==closure== 19251 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #44984: <==closure== 12606 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #55172: <==closure== 85875 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #83577: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #85875: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #16096: <==uncertain_firing== 23185 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #26033: <==uncertain_firing== 44984 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #27796: <==negation-removal== 55172 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #43224: <==uncertain_firing== 55172 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #51752: <==uncertain_firing== 26261 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65386: <==negation-removal== 44984 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #68431: <==negation-removal== 23185 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #68510: <==negation-removal== 12606 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #72139: <==negation-removal== 83577 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #75998: <==negation-removal== 19251 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #76915: <==uncertain_firing== 83577 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #78995: <==uncertain_firing== 85875 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #79679: <==uncertain_firing== 19251 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #82198: <==negation-removal== 26261 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84284: <==negation-removal== 85875 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88888: <==uncertain_firing== 12606 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #28106: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #37595: <==closure== 28106 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #65704: <==closure== 86932 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #72750: <==closure== 74509 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #74509: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #80964: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #81077: <==closure== 80964 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #86932: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #11527: <==uncertain_firing== 72750 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #19418: <==uncertain_firing== 65704 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27652: <==negation-removal== 86932 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #31173: <==uncertain_firing== 80964 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #52296: <==negation-removal== 81077 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #59614: <==negation-removal== 65704 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #61093: <==negation-removal== 72750 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #61973: <==negation-removal== 80964 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #64864: <==negation-removal== 37595 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #74437: <==uncertain_firing== 86932 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #83237: <==uncertain_firing== 74509 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #85676: <==negation-removal== 28106 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85698: <==uncertain_firing== 37595 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #87418: <==negation-removal== 74509 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #89626: <==uncertain_firing== 28106 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #97554: <==uncertain_firing== 81077 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #28106: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #37595: <==closure== 28106 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #65704: <==closure== 86932 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #72750: <==closure== 74509 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #74509: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #80964: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #81077: <==closure== 80964 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #86932: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #11527: <==uncertain_firing== 72750 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #19418: <==uncertain_firing== 65704 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27652: <==negation-removal== 86932 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #31173: <==uncertain_firing== 80964 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #52296: <==negation-removal== 81077 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #59614: <==negation-removal== 65704 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #61093: <==negation-removal== 72750 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #61973: <==negation-removal== 80964 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #64864: <==negation-removal== 37595 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #74437: <==uncertain_firing== 86932 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #83237: <==uncertain_firing== 74509 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #85676: <==negation-removal== 28106 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85698: <==uncertain_firing== 37595 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #87418: <==negation-removal== 74509 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #89626: <==uncertain_firing== 28106 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #97554: <==uncertain_firing== 81077 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #28106: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #37595: <==closure== 28106 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #65704: <==closure== 86932 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #72750: <==closure== 74509 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #74509: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #80964: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #81077: <==closure== 80964 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #86932: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #11527: <==uncertain_firing== 72750 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #19418: <==uncertain_firing== 65704 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27652: <==negation-removal== 86932 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #31173: <==uncertain_firing== 80964 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #52296: <==negation-removal== 81077 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #59614: <==negation-removal== 65704 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #61093: <==negation-removal== 72750 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #61973: <==negation-removal== 80964 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #64864: <==negation-removal== 37595 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #74437: <==uncertain_firing== 86932 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #83237: <==uncertain_firing== 74509 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #85676: <==negation-removal== 28106 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85698: <==uncertain_firing== 37595 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #87418: <==negation-removal== 74509 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #89626: <==uncertain_firing== 28106 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #97554: <==uncertain_firing== 81077 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Bd_survivorat_s_p2)
                           (at_d_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #28106: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #37595: <==closure== 28106 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #65704: <==closure== 86932 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #72750: <==closure== 74509 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #74509: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #80964: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #81077: <==closure== 80964 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #86932: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #11527: <==uncertain_firing== 72750 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #19418: <==uncertain_firing== 65704 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27652: <==negation-removal== 86932 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #31173: <==uncertain_firing== 80964 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #52296: <==negation-removal== 81077 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #59614: <==negation-removal== 65704 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #61093: <==negation-removal== 72750 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #61973: <==negation-removal== 80964 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #64864: <==negation-removal== 37595 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #74437: <==uncertain_firing== 86932 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #83237: <==uncertain_firing== 74509 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #85676: <==negation-removal== 28106 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85698: <==uncertain_firing== 37595 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #87418: <==negation-removal== 74509 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #89626: <==uncertain_firing== 28106 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #97554: <==uncertain_firing== 81077 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #19415: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #24726: <==closure== 41224 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #25813: <==closure== 19415 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #34032: <==closure== 75853 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #41224: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #46218: <==closure== 77486 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #75853: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #77486: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #14996: <==negation-removal== 46218 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #17431: <==uncertain_firing== 24726 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #18640: <==uncertain_firing== 46218 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #25771: <==uncertain_firing== 77486 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #26307: <==negation-removal== 19415 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #28620: <==negation-removal== 24726 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #42330: <==negation-removal== 25813 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #43762: <==uncertain_firing== 75853 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #44838: <==uncertain_firing== 34032 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #53156: <==negation-removal== 41224 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #53451: <==uncertain_firing== 41224 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #57296: <==uncertain_firing== 19415 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69003: <==negation-removal== 77486 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #74430: <==uncertain_firing== 25813 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #81814: <==negation-removal== 75853 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #91694: <==negation-removal== 34032 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #19415: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #24726: <==closure== 41224 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #25813: <==closure== 19415 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #34032: <==closure== 75853 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #41224: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #46218: <==closure== 77486 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #75853: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #77486: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #14996: <==negation-removal== 46218 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #17431: <==uncertain_firing== 24726 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #18640: <==uncertain_firing== 46218 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #25771: <==uncertain_firing== 77486 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #26307: <==negation-removal== 19415 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #28620: <==negation-removal== 24726 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #42330: <==negation-removal== 25813 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #43762: <==uncertain_firing== 75853 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #44838: <==uncertain_firing== 34032 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #53156: <==negation-removal== 41224 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #53451: <==uncertain_firing== 41224 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #57296: <==uncertain_firing== 19415 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69003: <==negation-removal== 77486 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #74430: <==uncertain_firing== 25813 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #81814: <==negation-removal== 75853 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #91694: <==negation-removal== 34032 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #19415: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #24726: <==closure== 41224 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #25813: <==closure== 19415 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #34032: <==closure== 75853 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #41224: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #46218: <==closure== 77486 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #75853: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #77486: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #14996: <==negation-removal== 46218 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #17431: <==uncertain_firing== 24726 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #18640: <==uncertain_firing== 46218 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #25771: <==uncertain_firing== 77486 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #26307: <==negation-removal== 19415 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #28620: <==negation-removal== 24726 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #42330: <==negation-removal== 25813 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #43762: <==uncertain_firing== 75853 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #44838: <==uncertain_firing== 34032 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #53156: <==negation-removal== 41224 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #53451: <==uncertain_firing== 41224 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #57296: <==uncertain_firing== 19415 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69003: <==negation-removal== 77486 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #74430: <==uncertain_firing== 25813 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #81814: <==negation-removal== 75853 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #91694: <==negation-removal== 34032 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #19415: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #24726: <==closure== 41224 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #25813: <==closure== 19415 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #34032: <==closure== 75853 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #41224: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #46218: <==closure== 77486 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #75853: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #77486: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #14996: <==negation-removal== 46218 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #17431: <==uncertain_firing== 24726 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #18640: <==uncertain_firing== 46218 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #25771: <==uncertain_firing== 77486 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #26307: <==negation-removal== 19415 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #28620: <==negation-removal== 24726 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #42330: <==negation-removal== 25813 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #43762: <==uncertain_firing== 75853 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #44838: <==uncertain_firing== 34032 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #53156: <==negation-removal== 41224 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #53451: <==uncertain_firing== 41224 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #57296: <==uncertain_firing== 19415 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69003: <==negation-removal== 77486 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #74430: <==uncertain_firing== 25813 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #81814: <==negation-removal== 75853 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #91694: <==negation-removal== 34032 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #13061: <==closure== 85509 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #20241: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37563: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #47095: <==closure== 20241 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #53120: <==closure== 78871 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #57533: <==closure== 37563 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #78871: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #85509: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #19678: <==negation-removal== 78871 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #20667: <==negation-removal== 53120 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #28158: <==negation-removal== 57533 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #31150: <==uncertain_firing== 13061 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #34048: <==uncertain_firing== 53120 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #50025: <==uncertain_firing== 20241 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #53636: <==uncertain_firing== 57533 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #56851: <==uncertain_firing== 37563 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57503: <==negation-removal== 47095 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #60926: <==uncertain_firing== 47095 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #64317: <==negation-removal== 13061 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #64888: <==negation-removal== 37563 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #74989: <==negation-removal== 85509 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #81312: <==uncertain_firing== 85509 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #88725: <==uncertain_firing== 78871 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #92152: <==negation-removal== 20241 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #13061: <==closure== 85509 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #20241: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37563: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #47095: <==closure== 20241 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #53120: <==closure== 78871 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #57533: <==closure== 37563 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #78871: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #85509: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #19678: <==negation-removal== 78871 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #20667: <==negation-removal== 53120 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #28158: <==negation-removal== 57533 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #31150: <==uncertain_firing== 13061 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #34048: <==uncertain_firing== 53120 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #50025: <==uncertain_firing== 20241 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #53636: <==uncertain_firing== 57533 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #56851: <==uncertain_firing== 37563 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57503: <==negation-removal== 47095 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #60926: <==uncertain_firing== 47095 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #64317: <==negation-removal== 13061 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #64888: <==negation-removal== 37563 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #74989: <==negation-removal== 85509 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #81312: <==uncertain_firing== 85509 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #88725: <==uncertain_firing== 78871 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #92152: <==negation-removal== 20241 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #13061: <==closure== 85509 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #20241: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37563: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #47095: <==closure== 20241 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #53120: <==closure== 78871 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #57533: <==closure== 37563 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #78871: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #85509: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #19678: <==negation-removal== 78871 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #20667: <==negation-removal== 53120 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #28158: <==negation-removal== 57533 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #31150: <==uncertain_firing== 13061 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #34048: <==uncertain_firing== 53120 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #50025: <==uncertain_firing== 20241 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #53636: <==uncertain_firing== 57533 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #56851: <==uncertain_firing== 37563 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57503: <==negation-removal== 47095 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #60926: <==uncertain_firing== 47095 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #64317: <==negation-removal== 13061 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #64888: <==negation-removal== 37563 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #74989: <==negation-removal== 85509 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #81312: <==uncertain_firing== 85509 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #88725: <==uncertain_firing== 78871 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #92152: <==negation-removal== 20241 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #13061: <==closure== 85509 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #20241: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37563: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #47095: <==closure== 20241 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #53120: <==closure== 78871 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #57533: <==closure== 37563 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #78871: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #85509: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #19678: <==negation-removal== 78871 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #20667: <==negation-removal== 53120 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #28158: <==negation-removal== 57533 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #31150: <==uncertain_firing== 13061 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #34048: <==uncertain_firing== 53120 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #50025: <==uncertain_firing== 20241 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #53636: <==uncertain_firing== 57533 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #56851: <==uncertain_firing== 37563 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57503: <==negation-removal== 47095 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #60926: <==uncertain_firing== 47095 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #64317: <==negation-removal== 13061 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #64888: <==negation-removal== 37563 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #74989: <==negation-removal== 85509 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #81312: <==uncertain_firing== 85509 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #88725: <==uncertain_firing== 78871 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #92152: <==negation-removal== 20241 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #29774: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #33010: <==closure== 74220 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #42264: <==closure== 72002 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #50382: <==closure== 29774 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #72002: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #74220: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #78054: <==closure== 81950 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #81950: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #15950: <==negation-removal== 50382 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18216: <==negation-removal== 81950 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #23790: <==uncertain_firing== 74220 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #31860: <==negation-removal== 29774 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #36097: <==negation-removal== 74220 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #39427: <==negation-removal== 42264 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #40307: <==uncertain_firing== 72002 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #42702: <==uncertain_firing== 42264 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #43867: <==uncertain_firing== 78054 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47668: <==negation-removal== 72002 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52953: <==uncertain_firing== 33010 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #58587: <==uncertain_firing== 81950 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #74172: <==uncertain_firing== 29774 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #84364: <==negation-removal== 33010 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #90731: <==uncertain_firing== 50382 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #91846: <==negation-removal== 78054 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #29774: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #33010: <==closure== 74220 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #42264: <==closure== 72002 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #50382: <==closure== 29774 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #72002: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #74220: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #78054: <==closure== 81950 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #81950: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #15950: <==negation-removal== 50382 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18216: <==negation-removal== 81950 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #23790: <==uncertain_firing== 74220 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #31860: <==negation-removal== 29774 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #36097: <==negation-removal== 74220 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #39427: <==negation-removal== 42264 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #40307: <==uncertain_firing== 72002 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #42702: <==uncertain_firing== 42264 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #43867: <==uncertain_firing== 78054 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47668: <==negation-removal== 72002 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52953: <==uncertain_firing== 33010 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #58587: <==uncertain_firing== 81950 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #74172: <==uncertain_firing== 29774 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #84364: <==negation-removal== 33010 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #90731: <==uncertain_firing== 50382 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #91846: <==negation-removal== 78054 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #29774: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #33010: <==closure== 74220 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #42264: <==closure== 72002 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #50382: <==closure== 29774 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #72002: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #74220: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #78054: <==closure== 81950 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #81950: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #15950: <==negation-removal== 50382 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18216: <==negation-removal== 81950 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #23790: <==uncertain_firing== 74220 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #31860: <==negation-removal== 29774 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #36097: <==negation-removal== 74220 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #39427: <==negation-removal== 42264 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #40307: <==uncertain_firing== 72002 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #42702: <==uncertain_firing== 42264 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #43867: <==uncertain_firing== 78054 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47668: <==negation-removal== 72002 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52953: <==uncertain_firing== 33010 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #58587: <==uncertain_firing== 81950 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #74172: <==uncertain_firing== 29774 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #84364: <==negation-removal== 33010 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #90731: <==uncertain_firing== 50382 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #91846: <==negation-removal== 78054 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (at_d_p5)
                           (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #29774: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #33010: <==closure== 74220 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #42264: <==closure== 72002 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #50382: <==closure== 29774 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #72002: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #74220: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #78054: <==closure== 81950 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #81950: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #15950: <==negation-removal== 50382 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18216: <==negation-removal== 81950 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #23790: <==uncertain_firing== 74220 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #31860: <==negation-removal== 29774 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #36097: <==negation-removal== 74220 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #39427: <==negation-removal== 42264 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #40307: <==uncertain_firing== 72002 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #42702: <==uncertain_firing== 42264 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #43867: <==uncertain_firing== 78054 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47668: <==negation-removal== 72002 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52953: <==uncertain_firing== 33010 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #58587: <==uncertain_firing== 81950 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #74172: <==uncertain_firing== 29774 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #84364: <==negation-removal== 33010 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #90731: <==uncertain_firing== 50382 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #91846: <==negation-removal== 78054 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #12272: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #29770: <==closure== 56909 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #37220: <==closure== 12272 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #47975: <==closure== 84806 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #56909: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #57044: <==closure== 73235 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #73235: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #84806: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #10492: <==uncertain_firing== 37220 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #11007: <==uncertain_firing== 47975 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #16886: <==negation-removal== 73235 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22919: <==uncertain_firing== 84806 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #23620: <==negation-removal== 29770 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #29343: <==uncertain_firing== 73235 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #31156: <==negation-removal== 37220 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44254: <==negation-removal== 84806 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #46036: <==negation-removal== 56909 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #56069: <==negation-removal== 57044 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #58902: <==uncertain_firing== 29770 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #59060: <==uncertain_firing== 57044 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #79519: <==uncertain_firing== 56909 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #83763: <==uncertain_firing== 12272 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #83794: <==negation-removal== 12272 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #86338: <==negation-removal== 47975 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #12272: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #29770: <==closure== 56909 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #37220: <==closure== 12272 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #47975: <==closure== 84806 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #56909: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #57044: <==closure== 73235 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #73235: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #84806: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #10492: <==uncertain_firing== 37220 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #11007: <==uncertain_firing== 47975 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #16886: <==negation-removal== 73235 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22919: <==uncertain_firing== 84806 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #23620: <==negation-removal== 29770 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #29343: <==uncertain_firing== 73235 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #31156: <==negation-removal== 37220 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44254: <==negation-removal== 84806 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #46036: <==negation-removal== 56909 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #56069: <==negation-removal== 57044 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #58902: <==uncertain_firing== 29770 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #59060: <==uncertain_firing== 57044 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #79519: <==uncertain_firing== 56909 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #83763: <==uncertain_firing== 12272 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #83794: <==negation-removal== 12272 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #86338: <==negation-removal== 47975 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #12272: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #29770: <==closure== 56909 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #37220: <==closure== 12272 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #47975: <==closure== 84806 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #56909: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #57044: <==closure== 73235 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #73235: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #84806: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #10492: <==uncertain_firing== 37220 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #11007: <==uncertain_firing== 47975 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #16886: <==negation-removal== 73235 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22919: <==uncertain_firing== 84806 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #23620: <==negation-removal== 29770 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #29343: <==uncertain_firing== 73235 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #31156: <==negation-removal== 37220 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44254: <==negation-removal== 84806 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #46036: <==negation-removal== 56909 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #56069: <==negation-removal== 57044 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #58902: <==uncertain_firing== 29770 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #59060: <==uncertain_firing== 57044 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #79519: <==uncertain_firing== 56909 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #83763: <==uncertain_firing== 12272 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #83794: <==negation-removal== 12272 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #86338: <==negation-removal== 47975 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (at_d_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #12272: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #29770: <==closure== 56909 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #37220: <==closure== 12272 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #47975: <==closure== 84806 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #56909: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #57044: <==closure== 73235 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #73235: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #84806: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #10492: <==uncertain_firing== 37220 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #11007: <==uncertain_firing== 47975 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #16886: <==negation-removal== 73235 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22919: <==uncertain_firing== 84806 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #23620: <==negation-removal== 29770 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #29343: <==uncertain_firing== 73235 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #31156: <==negation-removal== 37220 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44254: <==negation-removal== 84806 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #46036: <==negation-removal== 56909 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #56069: <==negation-removal== 57044 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #58902: <==uncertain_firing== 29770 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #59060: <==uncertain_firing== 57044 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #79519: <==uncertain_firing== 56909 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #83763: <==uncertain_firing== 12272 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #83794: <==negation-removal== 12272 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #86338: <==negation-removal== 47975 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #24182: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #24866: <==closure== 88513 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #27622: <==closure== 24182 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #35286: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #77170: <==closure== 35286 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #78986: <==closure== 85752 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #85752: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #88513: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #16753: <==uncertain_firing== 35286 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #19068: <==uncertain_firing== 24866 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #37327: <==uncertain_firing== 77170 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #38713: <==negation-removal== 85752 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #46701: <==negation-removal== 88513 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #47045: <==negation-removal== 77170 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #49242: <==negation-removal== 27622 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #54553: <==negation-removal== 24866 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #56079: <==negation-removal== 24182 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #58755: <==negation-removal== 35286 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #65925: <==uncertain_firing== 85752 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #69485: <==uncertain_firing== 24182 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #83430: <==uncertain_firing== 88513 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #86272: <==negation-removal== 78986 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #87421: <==uncertain_firing== 27622 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #91920: <==uncertain_firing== 78986 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #24182: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #24866: <==closure== 88513 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #27622: <==closure== 24182 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #35286: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #77170: <==closure== 35286 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #78986: <==closure== 85752 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #85752: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #88513: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #16753: <==uncertain_firing== 35286 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #19068: <==uncertain_firing== 24866 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #37327: <==uncertain_firing== 77170 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #38713: <==negation-removal== 85752 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #46701: <==negation-removal== 88513 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #47045: <==negation-removal== 77170 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #49242: <==negation-removal== 27622 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #54553: <==negation-removal== 24866 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #56079: <==negation-removal== 24182 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #58755: <==negation-removal== 35286 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #65925: <==uncertain_firing== 85752 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #69485: <==uncertain_firing== 24182 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #83430: <==uncertain_firing== 88513 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #86272: <==negation-removal== 78986 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #87421: <==uncertain_firing== 27622 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #91920: <==uncertain_firing== 78986 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #24182: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #24866: <==closure== 88513 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #27622: <==closure== 24182 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #35286: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #77170: <==closure== 35286 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #78986: <==closure== 85752 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #85752: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #88513: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #16753: <==uncertain_firing== 35286 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #19068: <==uncertain_firing== 24866 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #37327: <==uncertain_firing== 77170 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #38713: <==negation-removal== 85752 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #46701: <==negation-removal== 88513 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #47045: <==negation-removal== 77170 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #49242: <==negation-removal== 27622 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #54553: <==negation-removal== 24866 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #56079: <==negation-removal== 24182 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #58755: <==negation-removal== 35286 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #65925: <==uncertain_firing== 85752 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #69485: <==uncertain_firing== 24182 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #83430: <==uncertain_firing== 88513 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #86272: <==negation-removal== 78986 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #87421: <==uncertain_firing== 27622 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #91920: <==uncertain_firing== 78986 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #24182: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #24866: <==closure== 88513 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #27622: <==closure== 24182 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #35286: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #77170: <==closure== 35286 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #78986: <==closure== 85752 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #85752: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #88513: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #16753: <==uncertain_firing== 35286 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #19068: <==uncertain_firing== 24866 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #37327: <==uncertain_firing== 77170 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #38713: <==negation-removal== 85752 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #46701: <==negation-removal== 88513 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #47045: <==negation-removal== 77170 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #49242: <==negation-removal== 27622 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #54553: <==negation-removal== 24866 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #56079: <==negation-removal== 24182 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #58755: <==negation-removal== 35286 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #65925: <==uncertain_firing== 85752 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #69485: <==uncertain_firing== 24182 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #83430: <==uncertain_firing== 88513 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #86272: <==negation-removal== 78986 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #87421: <==uncertain_firing== 27622 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #91920: <==uncertain_firing== 78986 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #13208: <==closure== 31531 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #31531: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #44650: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #59574: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #60744: <==closure== 72779 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #72779: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #78728: <==closure== 44650 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #92282: <==closure== 59574 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #11965: <==negation-removal== 72779 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #22839: <==uncertain_firing== 31531 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #23426: <==negation-removal== 59574 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #25227: <==uncertain_firing== 59574 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #30927: <==negation-removal== 60744 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #32622: <==negation-removal== 44650 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #40460: <==uncertain_firing== 92282 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #58863: <==uncertain_firing== 44650 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #59532: <==negation-removal== 13208 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #68837: <==uncertain_firing== 72779 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70288: <==uncertain_firing== 60744 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #70720: <==uncertain_firing== 13208 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #79927: <==negation-removal== 78728 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85257: <==uncertain_firing== 78728 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #91793: <==negation-removal== 31531 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #98737: <==negation-removal== 92282 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #13208: <==closure== 31531 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #31531: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #44650: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #59574: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #60744: <==closure== 72779 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #72779: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #78728: <==closure== 44650 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #92282: <==closure== 59574 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #11965: <==negation-removal== 72779 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #22839: <==uncertain_firing== 31531 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #23426: <==negation-removal== 59574 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #25227: <==uncertain_firing== 59574 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #30927: <==negation-removal== 60744 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #32622: <==negation-removal== 44650 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #40460: <==uncertain_firing== 92282 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #58863: <==uncertain_firing== 44650 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #59532: <==negation-removal== 13208 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #68837: <==uncertain_firing== 72779 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70288: <==uncertain_firing== 60744 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #70720: <==uncertain_firing== 13208 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #79927: <==negation-removal== 78728 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85257: <==uncertain_firing== 78728 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #91793: <==negation-removal== 31531 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #98737: <==negation-removal== 92282 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #13208: <==closure== 31531 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #31531: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #44650: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #59574: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #60744: <==closure== 72779 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #72779: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #78728: <==closure== 44650 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #92282: <==closure== 59574 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #11965: <==negation-removal== 72779 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #22839: <==uncertain_firing== 31531 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #23426: <==negation-removal== 59574 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #25227: <==uncertain_firing== 59574 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #30927: <==negation-removal== 60744 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #32622: <==negation-removal== 44650 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #40460: <==uncertain_firing== 92282 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #58863: <==uncertain_firing== 44650 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #59532: <==negation-removal== 13208 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #68837: <==uncertain_firing== 72779 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70288: <==uncertain_firing== 60744 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #70720: <==uncertain_firing== 13208 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #79927: <==negation-removal== 78728 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85257: <==uncertain_firing== 78728 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #91793: <==negation-removal== 31531 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #98737: <==negation-removal== 92282 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #13208: <==closure== 31531 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #31531: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #44650: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #59574: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #60744: <==closure== 72779 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #72779: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #78728: <==closure== 44650 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #92282: <==closure== 59574 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #11965: <==negation-removal== 72779 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #22839: <==uncertain_firing== 31531 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #23426: <==negation-removal== 59574 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #25227: <==uncertain_firing== 59574 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #30927: <==negation-removal== 60744 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #32622: <==negation-removal== 44650 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #40460: <==uncertain_firing== 92282 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #58863: <==uncertain_firing== 44650 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #59532: <==negation-removal== 13208 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #68837: <==uncertain_firing== 72779 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70288: <==uncertain_firing== 60744 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #70720: <==uncertain_firing== 13208 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #79927: <==negation-removal== 78728 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85257: <==uncertain_firing== 78728 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #91793: <==negation-removal== 31531 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #98737: <==negation-removal== 92282 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #15809: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #20577: <==closure== 67785 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #30264: <==closure== 15809 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #36117: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #59999: <==closure== 64502 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #64502: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #67785: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #81163: <==closure== 36117 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #11798: <==uncertain_firing== 59999 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #12966: <==uncertain_firing== 36117 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #13467: <==uncertain_firing== 64502 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #25095: <==uncertain_firing== 81163 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #31737: <==negation-removal== 20577 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #43623: <==negation-removal== 64502 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #53579: <==uncertain_firing== 67785 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #55064: <==uncertain_firing== 30264 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #62188: <==negation-removal== 67785 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #79881: <==negation-removal== 81163 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #83093: <==negation-removal== 15809 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #83430: <==uncertain_firing== 20577 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #85333: <==negation-removal== 59999 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #86241: <==negation-removal== 36117 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #88576: <==uncertain_firing== 15809 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #88657: <==negation-removal== 30264 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #15809: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #20577: <==closure== 67785 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #30264: <==closure== 15809 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #36117: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #59999: <==closure== 64502 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #64502: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #67785: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #81163: <==closure== 36117 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #11798: <==uncertain_firing== 59999 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #12966: <==uncertain_firing== 36117 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #13467: <==uncertain_firing== 64502 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #25095: <==uncertain_firing== 81163 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #31737: <==negation-removal== 20577 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #43623: <==negation-removal== 64502 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #53579: <==uncertain_firing== 67785 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #55064: <==uncertain_firing== 30264 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #62188: <==negation-removal== 67785 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #79881: <==negation-removal== 81163 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #83093: <==negation-removal== 15809 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #83430: <==uncertain_firing== 20577 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #85333: <==negation-removal== 59999 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #86241: <==negation-removal== 36117 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #88576: <==uncertain_firing== 15809 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #88657: <==negation-removal== 30264 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #15809: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #20577: <==closure== 67785 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #30264: <==closure== 15809 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #36117: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #59999: <==closure== 64502 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #64502: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #67785: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #81163: <==closure== 36117 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #11798: <==uncertain_firing== 59999 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #12966: <==uncertain_firing== 36117 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #13467: <==uncertain_firing== 64502 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #25095: <==uncertain_firing== 81163 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #31737: <==negation-removal== 20577 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #43623: <==negation-removal== 64502 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #53579: <==uncertain_firing== 67785 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #55064: <==uncertain_firing== 30264 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #62188: <==negation-removal== 67785 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #79881: <==negation-removal== 81163 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #83093: <==negation-removal== 15809 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #83430: <==uncertain_firing== 20577 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #85333: <==negation-removal== 59999 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #86241: <==negation-removal== 36117 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #88576: <==uncertain_firing== 15809 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #88657: <==negation-removal== 30264 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #15809: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #20577: <==closure== 67785 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #30264: <==closure== 15809 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #36117: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #59999: <==closure== 64502 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #64502: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #67785: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #81163: <==closure== 36117 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #11798: <==uncertain_firing== 59999 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #12966: <==uncertain_firing== 36117 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #13467: <==uncertain_firing== 64502 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #25095: <==uncertain_firing== 81163 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #31737: <==negation-removal== 20577 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #43623: <==negation-removal== 64502 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #53579: <==uncertain_firing== 67785 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #55064: <==uncertain_firing== 30264 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #62188: <==negation-removal== 67785 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #79881: <==negation-removal== 81163 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #83093: <==negation-removal== 15809 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #83430: <==uncertain_firing== 20577 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #85333: <==negation-removal== 59999 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #86241: <==negation-removal== 36117 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #88576: <==uncertain_firing== 15809 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #88657: <==negation-removal== 30264 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #12756: origin
                    (Bc_survivorat_s_p1)

                    ; #20683: origin
                    (Bb_survivorat_s_p1)

                    ; #22427: <==closure== 12756 (pos)
                    (Pc_survivorat_s_p1)

                    ; #29206: <==closure== 43272 (pos)
                    (Pa_survivorat_s_p1)

                    ; #43272: origin
                    (Ba_survivorat_s_p1)

                    ; #68324: origin
                    (Bd_survivorat_s_p1)

                    ; #82045: <==closure== 68324 (pos)
                    (Pd_survivorat_s_p1)

                    ; #83734: <==closure== 20683 (pos)
                    (Pb_survivorat_s_p1)

                    ; #12472: <==negation-removal== 29206 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #32318: <==negation-removal== 83734 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #36880: <==negation-removal== 22427 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #39991: <==negation-removal== 20683 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #71244: <==negation-removal== 82045 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #80283: <==negation-removal== 12756 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #83994: <==negation-removal== 68324 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #91888: <==negation-removal== 43272 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #12756: origin
                    (Bc_survivorat_s_p1)

                    ; #20683: origin
                    (Bb_survivorat_s_p1)

                    ; #22427: <==closure== 12756 (pos)
                    (Pc_survivorat_s_p1)

                    ; #29206: <==closure== 43272 (pos)
                    (Pa_survivorat_s_p1)

                    ; #43272: origin
                    (Ba_survivorat_s_p1)

                    ; #68324: origin
                    (Bd_survivorat_s_p1)

                    ; #82045: <==closure== 68324 (pos)
                    (Pd_survivorat_s_p1)

                    ; #83734: <==closure== 20683 (pos)
                    (Pb_survivorat_s_p1)

                    ; #12472: <==negation-removal== 29206 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #32318: <==negation-removal== 83734 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #36880: <==negation-removal== 22427 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #39991: <==negation-removal== 20683 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #71244: <==negation-removal== 82045 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #80283: <==negation-removal== 12756 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #83994: <==negation-removal== 68324 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #91888: <==negation-removal== 43272 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #12756: origin
                    (Bc_survivorat_s_p1)

                    ; #20683: origin
                    (Bb_survivorat_s_p1)

                    ; #22427: <==closure== 12756 (pos)
                    (Pc_survivorat_s_p1)

                    ; #29206: <==closure== 43272 (pos)
                    (Pa_survivorat_s_p1)

                    ; #43272: origin
                    (Ba_survivorat_s_p1)

                    ; #68324: origin
                    (Bd_survivorat_s_p1)

                    ; #82045: <==closure== 68324 (pos)
                    (Pd_survivorat_s_p1)

                    ; #83734: <==closure== 20683 (pos)
                    (Pb_survivorat_s_p1)

                    ; #12472: <==negation-removal== 29206 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #32318: <==negation-removal== 83734 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #36880: <==negation-removal== 22427 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #39991: <==negation-removal== 20683 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #71244: <==negation-removal== 82045 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #80283: <==negation-removal== 12756 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #83994: <==negation-removal== 68324 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #91888: <==negation-removal== 43272 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #12756: origin
                    (Bc_survivorat_s_p1)

                    ; #20683: origin
                    (Bb_survivorat_s_p1)

                    ; #22427: <==closure== 12756 (pos)
                    (Pc_survivorat_s_p1)

                    ; #29206: <==closure== 43272 (pos)
                    (Pa_survivorat_s_p1)

                    ; #43272: origin
                    (Ba_survivorat_s_p1)

                    ; #68324: origin
                    (Bd_survivorat_s_p1)

                    ; #82045: <==closure== 68324 (pos)
                    (Pd_survivorat_s_p1)

                    ; #83734: <==closure== 20683 (pos)
                    (Pb_survivorat_s_p1)

                    ; #12472: <==negation-removal== 29206 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #32318: <==negation-removal== 83734 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #36880: <==negation-removal== 22427 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #39991: <==negation-removal== 20683 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #71244: <==negation-removal== 82045 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #80283: <==negation-removal== 12756 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #83994: <==negation-removal== 68324 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #91888: <==negation-removal== 43272 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #11205: <==closure== 24115 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23858: origin
                    (Bd_survivorat_s_p2)

                    ; #24115: origin
                    (Bc_survivorat_s_p2)

                    ; #27559: <==closure== 23858 (pos)
                    (Pd_survivorat_s_p2)

                    ; #62950: origin
                    (Ba_survivorat_s_p2)

                    ; #69434: <==closure== 76673 (pos)
                    (Pb_survivorat_s_p2)

                    ; #76673: origin
                    (Bb_survivorat_s_p2)

                    ; #83845: <==closure== 62950 (pos)
                    (Pa_survivorat_s_p2)

                    ; #10069: <==negation-removal== 62950 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #18349: <==negation-removal== 23858 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #18586: <==negation-removal== 76673 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #33607: <==negation-removal== 11205 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41355: <==negation-removal== 24115 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #44492: <==negation-removal== 83845 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #73217: <==negation-removal== 27559 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #87017: <==negation-removal== 69434 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #11205: <==closure== 24115 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23858: origin
                    (Bd_survivorat_s_p2)

                    ; #24115: origin
                    (Bc_survivorat_s_p2)

                    ; #27559: <==closure== 23858 (pos)
                    (Pd_survivorat_s_p2)

                    ; #62950: origin
                    (Ba_survivorat_s_p2)

                    ; #69434: <==closure== 76673 (pos)
                    (Pb_survivorat_s_p2)

                    ; #76673: origin
                    (Bb_survivorat_s_p2)

                    ; #83845: <==closure== 62950 (pos)
                    (Pa_survivorat_s_p2)

                    ; #10069: <==negation-removal== 62950 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #18349: <==negation-removal== 23858 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #18586: <==negation-removal== 76673 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #33607: <==negation-removal== 11205 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41355: <==negation-removal== 24115 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #44492: <==negation-removal== 83845 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #73217: <==negation-removal== 27559 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #87017: <==negation-removal== 69434 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #11205: <==closure== 24115 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23858: origin
                    (Bd_survivorat_s_p2)

                    ; #24115: origin
                    (Bc_survivorat_s_p2)

                    ; #27559: <==closure== 23858 (pos)
                    (Pd_survivorat_s_p2)

                    ; #62950: origin
                    (Ba_survivorat_s_p2)

                    ; #69434: <==closure== 76673 (pos)
                    (Pb_survivorat_s_p2)

                    ; #76673: origin
                    (Bb_survivorat_s_p2)

                    ; #83845: <==closure== 62950 (pos)
                    (Pa_survivorat_s_p2)

                    ; #10069: <==negation-removal== 62950 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #18349: <==negation-removal== 23858 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #18586: <==negation-removal== 76673 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #33607: <==negation-removal== 11205 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41355: <==negation-removal== 24115 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #44492: <==negation-removal== 83845 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #73217: <==negation-removal== 27559 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #87017: <==negation-removal== 69434 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Bd_survivorat_s_p2)
                           (at_d_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #11205: <==closure== 24115 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23858: origin
                    (Bd_survivorat_s_p2)

                    ; #24115: origin
                    (Bc_survivorat_s_p2)

                    ; #27559: <==closure== 23858 (pos)
                    (Pd_survivorat_s_p2)

                    ; #62950: origin
                    (Ba_survivorat_s_p2)

                    ; #69434: <==closure== 76673 (pos)
                    (Pb_survivorat_s_p2)

                    ; #76673: origin
                    (Bb_survivorat_s_p2)

                    ; #83845: <==closure== 62950 (pos)
                    (Pa_survivorat_s_p2)

                    ; #10069: <==negation-removal== 62950 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #18349: <==negation-removal== 23858 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #18586: <==negation-removal== 76673 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #33607: <==negation-removal== 11205 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41355: <==negation-removal== 24115 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #44492: <==negation-removal== 83845 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #73217: <==negation-removal== 27559 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #87017: <==negation-removal== 69434 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #15351: origin
                    (Bc_survivorat_s_p3)

                    ; #15709: <==closure== 69277 (pos)
                    (Pb_survivorat_s_p3)

                    ; #24000: origin
                    (Ba_survivorat_s_p3)

                    ; #49411: <==closure== 15351 (pos)
                    (Pc_survivorat_s_p3)

                    ; #68366: <==closure== 24000 (pos)
                    (Pa_survivorat_s_p3)

                    ; #69277: origin
                    (Bb_survivorat_s_p3)

                    ; #73209: <==closure== 88279 (pos)
                    (Pd_survivorat_s_p3)

                    ; #88279: origin
                    (Bd_survivorat_s_p3)

                    ; #14232: <==negation-removal== 68366 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #27103: <==negation-removal== 49411 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #27479: <==negation-removal== 73209 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #30989: <==negation-removal== 69277 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #32529: <==negation-removal== 15351 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #33971: <==negation-removal== 88279 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #40344: <==negation-removal== 24000 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #45738: <==negation-removal== 15709 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #15351: origin
                    (Bc_survivorat_s_p3)

                    ; #15709: <==closure== 69277 (pos)
                    (Pb_survivorat_s_p3)

                    ; #24000: origin
                    (Ba_survivorat_s_p3)

                    ; #49411: <==closure== 15351 (pos)
                    (Pc_survivorat_s_p3)

                    ; #68366: <==closure== 24000 (pos)
                    (Pa_survivorat_s_p3)

                    ; #69277: origin
                    (Bb_survivorat_s_p3)

                    ; #73209: <==closure== 88279 (pos)
                    (Pd_survivorat_s_p3)

                    ; #88279: origin
                    (Bd_survivorat_s_p3)

                    ; #14232: <==negation-removal== 68366 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #27103: <==negation-removal== 49411 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #27479: <==negation-removal== 73209 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #30989: <==negation-removal== 69277 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #32529: <==negation-removal== 15351 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #33971: <==negation-removal== 88279 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #40344: <==negation-removal== 24000 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #45738: <==negation-removal== 15709 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #15351: origin
                    (Bc_survivorat_s_p3)

                    ; #15709: <==closure== 69277 (pos)
                    (Pb_survivorat_s_p3)

                    ; #24000: origin
                    (Ba_survivorat_s_p3)

                    ; #49411: <==closure== 15351 (pos)
                    (Pc_survivorat_s_p3)

                    ; #68366: <==closure== 24000 (pos)
                    (Pa_survivorat_s_p3)

                    ; #69277: origin
                    (Bb_survivorat_s_p3)

                    ; #73209: <==closure== 88279 (pos)
                    (Pd_survivorat_s_p3)

                    ; #88279: origin
                    (Bd_survivorat_s_p3)

                    ; #14232: <==negation-removal== 68366 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #27103: <==negation-removal== 49411 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #27479: <==negation-removal== 73209 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #30989: <==negation-removal== 69277 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #32529: <==negation-removal== 15351 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #33971: <==negation-removal== 88279 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #40344: <==negation-removal== 24000 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #45738: <==negation-removal== 15709 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #15351: origin
                    (Bc_survivorat_s_p3)

                    ; #15709: <==closure== 69277 (pos)
                    (Pb_survivorat_s_p3)

                    ; #24000: origin
                    (Ba_survivorat_s_p3)

                    ; #49411: <==closure== 15351 (pos)
                    (Pc_survivorat_s_p3)

                    ; #68366: <==closure== 24000 (pos)
                    (Pa_survivorat_s_p3)

                    ; #69277: origin
                    (Bb_survivorat_s_p3)

                    ; #73209: <==closure== 88279 (pos)
                    (Pd_survivorat_s_p3)

                    ; #88279: origin
                    (Bd_survivorat_s_p3)

                    ; #14232: <==negation-removal== 68366 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #27103: <==negation-removal== 49411 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #27479: <==negation-removal== 73209 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #30989: <==negation-removal== 69277 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #32529: <==negation-removal== 15351 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #33971: <==negation-removal== 88279 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #40344: <==negation-removal== 24000 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #45738: <==negation-removal== 15709 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #20167: origin
                    (Bb_survivorat_s_p4)

                    ; #21305: origin
                    (Bc_survivorat_s_p4)

                    ; #44529: origin
                    (Bd_survivorat_s_p4)

                    ; #61477: <==closure== 44529 (pos)
                    (Pd_survivorat_s_p4)

                    ; #80307: <==closure== 21305 (pos)
                    (Pc_survivorat_s_p4)

                    ; #84592: <==closure== 20167 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86907: origin
                    (Ba_survivorat_s_p4)

                    ; #91021: <==closure== 86907 (pos)
                    (Pa_survivorat_s_p4)

                    ; #26828: <==negation-removal== 91021 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #32447: <==negation-removal== 61477 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #34448: <==negation-removal== 44529 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #53136: <==negation-removal== 20167 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #58009: <==negation-removal== 21305 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #62154: <==negation-removal== 86907 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #64257: <==negation-removal== 80307 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #98878: <==negation-removal== 84592 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #20167: origin
                    (Bb_survivorat_s_p4)

                    ; #21305: origin
                    (Bc_survivorat_s_p4)

                    ; #44529: origin
                    (Bd_survivorat_s_p4)

                    ; #61477: <==closure== 44529 (pos)
                    (Pd_survivorat_s_p4)

                    ; #80307: <==closure== 21305 (pos)
                    (Pc_survivorat_s_p4)

                    ; #84592: <==closure== 20167 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86907: origin
                    (Ba_survivorat_s_p4)

                    ; #91021: <==closure== 86907 (pos)
                    (Pa_survivorat_s_p4)

                    ; #26828: <==negation-removal== 91021 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #32447: <==negation-removal== 61477 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #34448: <==negation-removal== 44529 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #53136: <==negation-removal== 20167 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #58009: <==negation-removal== 21305 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #62154: <==negation-removal== 86907 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #64257: <==negation-removal== 80307 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #98878: <==negation-removal== 84592 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #20167: origin
                    (Bb_survivorat_s_p4)

                    ; #21305: origin
                    (Bc_survivorat_s_p4)

                    ; #44529: origin
                    (Bd_survivorat_s_p4)

                    ; #61477: <==closure== 44529 (pos)
                    (Pd_survivorat_s_p4)

                    ; #80307: <==closure== 21305 (pos)
                    (Pc_survivorat_s_p4)

                    ; #84592: <==closure== 20167 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86907: origin
                    (Ba_survivorat_s_p4)

                    ; #91021: <==closure== 86907 (pos)
                    (Pa_survivorat_s_p4)

                    ; #26828: <==negation-removal== 91021 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #32447: <==negation-removal== 61477 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #34448: <==negation-removal== 44529 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #53136: <==negation-removal== 20167 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #58009: <==negation-removal== 21305 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #62154: <==negation-removal== 86907 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #64257: <==negation-removal== 80307 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #98878: <==negation-removal== 84592 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #20167: origin
                    (Bb_survivorat_s_p4)

                    ; #21305: origin
                    (Bc_survivorat_s_p4)

                    ; #44529: origin
                    (Bd_survivorat_s_p4)

                    ; #61477: <==closure== 44529 (pos)
                    (Pd_survivorat_s_p4)

                    ; #80307: <==closure== 21305 (pos)
                    (Pc_survivorat_s_p4)

                    ; #84592: <==closure== 20167 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86907: origin
                    (Ba_survivorat_s_p4)

                    ; #91021: <==closure== 86907 (pos)
                    (Pa_survivorat_s_p4)

                    ; #26828: <==negation-removal== 91021 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #32447: <==negation-removal== 61477 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #34448: <==negation-removal== 44529 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #53136: <==negation-removal== 20167 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #58009: <==negation-removal== 21305 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #62154: <==negation-removal== 86907 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #64257: <==negation-removal== 80307 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #98878: <==negation-removal== 84592 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #24338: <==closure== 73657 (pos)
                    (Pa_survivorat_s_p5)

                    ; #26915: <==closure== 83319 (pos)
                    (Pd_survivorat_s_p5)

                    ; #43423: <==closure== 89986 (pos)
                    (Pc_survivorat_s_p5)

                    ; #64232: origin
                    (Bb_survivorat_s_p5)

                    ; #69574: <==closure== 64232 (pos)
                    (Pb_survivorat_s_p5)

                    ; #73657: origin
                    (Ba_survivorat_s_p5)

                    ; #83319: origin
                    (Bd_survivorat_s_p5)

                    ; #89986: origin
                    (Bc_survivorat_s_p5)

                    ; #28594: <==negation-removal== 24338 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #32854: <==negation-removal== 43423 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #45082: <==negation-removal== 83319 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #70636: <==negation-removal== 64232 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #84040: <==negation-removal== 69574 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #86448: <==negation-removal== 89986 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #87766: <==negation-removal== 26915 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #90586: <==negation-removal== 73657 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #24338: <==closure== 73657 (pos)
                    (Pa_survivorat_s_p5)

                    ; #26915: <==closure== 83319 (pos)
                    (Pd_survivorat_s_p5)

                    ; #43423: <==closure== 89986 (pos)
                    (Pc_survivorat_s_p5)

                    ; #64232: origin
                    (Bb_survivorat_s_p5)

                    ; #69574: <==closure== 64232 (pos)
                    (Pb_survivorat_s_p5)

                    ; #73657: origin
                    (Ba_survivorat_s_p5)

                    ; #83319: origin
                    (Bd_survivorat_s_p5)

                    ; #89986: origin
                    (Bc_survivorat_s_p5)

                    ; #28594: <==negation-removal== 24338 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #32854: <==negation-removal== 43423 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #45082: <==negation-removal== 83319 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #70636: <==negation-removal== 64232 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #84040: <==negation-removal== 69574 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #86448: <==negation-removal== 89986 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #87766: <==negation-removal== 26915 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #90586: <==negation-removal== 73657 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #24338: <==closure== 73657 (pos)
                    (Pa_survivorat_s_p5)

                    ; #26915: <==closure== 83319 (pos)
                    (Pd_survivorat_s_p5)

                    ; #43423: <==closure== 89986 (pos)
                    (Pc_survivorat_s_p5)

                    ; #64232: origin
                    (Bb_survivorat_s_p5)

                    ; #69574: <==closure== 64232 (pos)
                    (Pb_survivorat_s_p5)

                    ; #73657: origin
                    (Ba_survivorat_s_p5)

                    ; #83319: origin
                    (Bd_survivorat_s_p5)

                    ; #89986: origin
                    (Bc_survivorat_s_p5)

                    ; #28594: <==negation-removal== 24338 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #32854: <==negation-removal== 43423 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #45082: <==negation-removal== 83319 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #70636: <==negation-removal== 64232 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #84040: <==negation-removal== 69574 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #86448: <==negation-removal== 89986 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #87766: <==negation-removal== 26915 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #90586: <==negation-removal== 73657 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (at_d_p5)
                           (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #24338: <==closure== 73657 (pos)
                    (Pa_survivorat_s_p5)

                    ; #26915: <==closure== 83319 (pos)
                    (Pd_survivorat_s_p5)

                    ; #43423: <==closure== 89986 (pos)
                    (Pc_survivorat_s_p5)

                    ; #64232: origin
                    (Bb_survivorat_s_p5)

                    ; #69574: <==closure== 64232 (pos)
                    (Pb_survivorat_s_p5)

                    ; #73657: origin
                    (Ba_survivorat_s_p5)

                    ; #83319: origin
                    (Bd_survivorat_s_p5)

                    ; #89986: origin
                    (Bc_survivorat_s_p5)

                    ; #28594: <==negation-removal== 24338 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #32854: <==negation-removal== 43423 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #45082: <==negation-removal== 83319 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #70636: <==negation-removal== 64232 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #84040: <==negation-removal== 69574 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #86448: <==negation-removal== 89986 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #87766: <==negation-removal== 26915 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #90586: <==negation-removal== 73657 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #15822: <==closure== 74909 (pos)
                    (Pc_survivorat_s_p6)

                    ; #24267: origin
                    (Ba_survivorat_s_p6)

                    ; #28303: origin
                    (Bd_survivorat_s_p6)

                    ; #38349: <==closure== 28303 (pos)
                    (Pd_survivorat_s_p6)

                    ; #40293: origin
                    (Bb_survivorat_s_p6)

                    ; #44155: <==closure== 40293 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58422: <==closure== 24267 (pos)
                    (Pa_survivorat_s_p6)

                    ; #74909: origin
                    (Bc_survivorat_s_p6)

                    ; #11262: <==negation-removal== 58422 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #30535: <==negation-removal== 74909 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #35817: <==negation-removal== 28303 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #38319: <==negation-removal== 40293 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #40797: <==negation-removal== 15822 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #45726: <==negation-removal== 38349 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #87784: <==negation-removal== 24267 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #88284: <==negation-removal== 44155 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #15822: <==closure== 74909 (pos)
                    (Pc_survivorat_s_p6)

                    ; #24267: origin
                    (Ba_survivorat_s_p6)

                    ; #28303: origin
                    (Bd_survivorat_s_p6)

                    ; #38349: <==closure== 28303 (pos)
                    (Pd_survivorat_s_p6)

                    ; #40293: origin
                    (Bb_survivorat_s_p6)

                    ; #44155: <==closure== 40293 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58422: <==closure== 24267 (pos)
                    (Pa_survivorat_s_p6)

                    ; #74909: origin
                    (Bc_survivorat_s_p6)

                    ; #11262: <==negation-removal== 58422 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #30535: <==negation-removal== 74909 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #35817: <==negation-removal== 28303 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #38319: <==negation-removal== 40293 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #40797: <==negation-removal== 15822 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #45726: <==negation-removal== 38349 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #87784: <==negation-removal== 24267 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #88284: <==negation-removal== 44155 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #15822: <==closure== 74909 (pos)
                    (Pc_survivorat_s_p6)

                    ; #24267: origin
                    (Ba_survivorat_s_p6)

                    ; #28303: origin
                    (Bd_survivorat_s_p6)

                    ; #38349: <==closure== 28303 (pos)
                    (Pd_survivorat_s_p6)

                    ; #40293: origin
                    (Bb_survivorat_s_p6)

                    ; #44155: <==closure== 40293 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58422: <==closure== 24267 (pos)
                    (Pa_survivorat_s_p6)

                    ; #74909: origin
                    (Bc_survivorat_s_p6)

                    ; #11262: <==negation-removal== 58422 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #30535: <==negation-removal== 74909 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #35817: <==negation-removal== 28303 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #38319: <==negation-removal== 40293 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #40797: <==negation-removal== 15822 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #45726: <==negation-removal== 38349 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #87784: <==negation-removal== 24267 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #88284: <==negation-removal== 44155 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (at_d_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #15822: <==closure== 74909 (pos)
                    (Pc_survivorat_s_p6)

                    ; #24267: origin
                    (Ba_survivorat_s_p6)

                    ; #28303: origin
                    (Bd_survivorat_s_p6)

                    ; #38349: <==closure== 28303 (pos)
                    (Pd_survivorat_s_p6)

                    ; #40293: origin
                    (Bb_survivorat_s_p6)

                    ; #44155: <==closure== 40293 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58422: <==closure== 24267 (pos)
                    (Pa_survivorat_s_p6)

                    ; #74909: origin
                    (Bc_survivorat_s_p6)

                    ; #11262: <==negation-removal== 58422 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #30535: <==negation-removal== 74909 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #35817: <==negation-removal== 28303 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #38319: <==negation-removal== 40293 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #40797: <==negation-removal== 15822 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #45726: <==negation-removal== 38349 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #87784: <==negation-removal== 24267 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #88284: <==negation-removal== 44155 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #13930: origin
                    (Bc_survivorat_s_p7)

                    ; #14676: <==closure== 19925 (pos)
                    (Pb_survivorat_s_p7)

                    ; #19925: origin
                    (Bb_survivorat_s_p7)

                    ; #26897: <==closure== 63797 (pos)
                    (Pa_survivorat_s_p7)

                    ; #47067: <==closure== 53180 (pos)
                    (Pd_survivorat_s_p7)

                    ; #53180: origin
                    (Bd_survivorat_s_p7)

                    ; #63797: origin
                    (Ba_survivorat_s_p7)

                    ; #66853: <==closure== 13930 (pos)
                    (Pc_survivorat_s_p7)

                    ; #10349: <==negation-removal== 13930 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #13185: <==negation-removal== 14676 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #19871: <==negation-removal== 19925 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #29292: <==negation-removal== 53180 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #36418: <==negation-removal== 66853 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #51704: <==negation-removal== 63797 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #76552: <==negation-removal== 26897 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #82223: <==negation-removal== 47067 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #13930: origin
                    (Bc_survivorat_s_p7)

                    ; #14676: <==closure== 19925 (pos)
                    (Pb_survivorat_s_p7)

                    ; #19925: origin
                    (Bb_survivorat_s_p7)

                    ; #26897: <==closure== 63797 (pos)
                    (Pa_survivorat_s_p7)

                    ; #47067: <==closure== 53180 (pos)
                    (Pd_survivorat_s_p7)

                    ; #53180: origin
                    (Bd_survivorat_s_p7)

                    ; #63797: origin
                    (Ba_survivorat_s_p7)

                    ; #66853: <==closure== 13930 (pos)
                    (Pc_survivorat_s_p7)

                    ; #10349: <==negation-removal== 13930 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #13185: <==negation-removal== 14676 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #19871: <==negation-removal== 19925 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #29292: <==negation-removal== 53180 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #36418: <==negation-removal== 66853 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #51704: <==negation-removal== 63797 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #76552: <==negation-removal== 26897 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #82223: <==negation-removal== 47067 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #13930: origin
                    (Bc_survivorat_s_p7)

                    ; #14676: <==closure== 19925 (pos)
                    (Pb_survivorat_s_p7)

                    ; #19925: origin
                    (Bb_survivorat_s_p7)

                    ; #26897: <==closure== 63797 (pos)
                    (Pa_survivorat_s_p7)

                    ; #47067: <==closure== 53180 (pos)
                    (Pd_survivorat_s_p7)

                    ; #53180: origin
                    (Bd_survivorat_s_p7)

                    ; #63797: origin
                    (Ba_survivorat_s_p7)

                    ; #66853: <==closure== 13930 (pos)
                    (Pc_survivorat_s_p7)

                    ; #10349: <==negation-removal== 13930 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #13185: <==negation-removal== 14676 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #19871: <==negation-removal== 19925 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #29292: <==negation-removal== 53180 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #36418: <==negation-removal== 66853 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #51704: <==negation-removal== 63797 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #76552: <==negation-removal== 26897 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #82223: <==negation-removal== 47067 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #13930: origin
                    (Bc_survivorat_s_p7)

                    ; #14676: <==closure== 19925 (pos)
                    (Pb_survivorat_s_p7)

                    ; #19925: origin
                    (Bb_survivorat_s_p7)

                    ; #26897: <==closure== 63797 (pos)
                    (Pa_survivorat_s_p7)

                    ; #47067: <==closure== 53180 (pos)
                    (Pd_survivorat_s_p7)

                    ; #53180: origin
                    (Bd_survivorat_s_p7)

                    ; #63797: origin
                    (Ba_survivorat_s_p7)

                    ; #66853: <==closure== 13930 (pos)
                    (Pc_survivorat_s_p7)

                    ; #10349: <==negation-removal== 13930 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #13185: <==negation-removal== 14676 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #19871: <==negation-removal== 19925 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #29292: <==negation-removal== 53180 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #36418: <==negation-removal== 66853 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #51704: <==negation-removal== 63797 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #76552: <==negation-removal== 26897 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #82223: <==negation-removal== 47067 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #10907: origin
                    (Ba_survivorat_s_p8)

                    ; #11463: origin
                    (Bc_survivorat_s_p8)

                    ; #20359: <==closure== 88844 (pos)
                    (Pb_survivorat_s_p8)

                    ; #38472: <==closure== 68294 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62577: <==closure== 10907 (pos)
                    (Pa_survivorat_s_p8)

                    ; #66767: <==closure== 11463 (pos)
                    (Pc_survivorat_s_p8)

                    ; #68294: origin
                    (Bd_survivorat_s_p8)

                    ; #88844: origin
                    (Bb_survivorat_s_p8)

                    ; #33274: <==negation-removal== 38472 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #39214: <==negation-removal== 66767 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #41258: <==negation-removal== 88844 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42319: <==negation-removal== 11463 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #55361: <==negation-removal== 68294 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #56456: <==negation-removal== 62577 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #60586: <==negation-removal== 20359 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #88318: <==negation-removal== 10907 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #10907: origin
                    (Ba_survivorat_s_p8)

                    ; #11463: origin
                    (Bc_survivorat_s_p8)

                    ; #20359: <==closure== 88844 (pos)
                    (Pb_survivorat_s_p8)

                    ; #38472: <==closure== 68294 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62577: <==closure== 10907 (pos)
                    (Pa_survivorat_s_p8)

                    ; #66767: <==closure== 11463 (pos)
                    (Pc_survivorat_s_p8)

                    ; #68294: origin
                    (Bd_survivorat_s_p8)

                    ; #88844: origin
                    (Bb_survivorat_s_p8)

                    ; #33274: <==negation-removal== 38472 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #39214: <==negation-removal== 66767 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #41258: <==negation-removal== 88844 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42319: <==negation-removal== 11463 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #55361: <==negation-removal== 68294 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #56456: <==negation-removal== 62577 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #60586: <==negation-removal== 20359 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #88318: <==negation-removal== 10907 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #10907: origin
                    (Ba_survivorat_s_p8)

                    ; #11463: origin
                    (Bc_survivorat_s_p8)

                    ; #20359: <==closure== 88844 (pos)
                    (Pb_survivorat_s_p8)

                    ; #38472: <==closure== 68294 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62577: <==closure== 10907 (pos)
                    (Pa_survivorat_s_p8)

                    ; #66767: <==closure== 11463 (pos)
                    (Pc_survivorat_s_p8)

                    ; #68294: origin
                    (Bd_survivorat_s_p8)

                    ; #88844: origin
                    (Bb_survivorat_s_p8)

                    ; #33274: <==negation-removal== 38472 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #39214: <==negation-removal== 66767 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #41258: <==negation-removal== 88844 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42319: <==negation-removal== 11463 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #55361: <==negation-removal== 68294 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #56456: <==negation-removal== 62577 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #60586: <==negation-removal== 20359 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #88318: <==negation-removal== 10907 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #10907: origin
                    (Ba_survivorat_s_p8)

                    ; #11463: origin
                    (Bc_survivorat_s_p8)

                    ; #20359: <==closure== 88844 (pos)
                    (Pb_survivorat_s_p8)

                    ; #38472: <==closure== 68294 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62577: <==closure== 10907 (pos)
                    (Pa_survivorat_s_p8)

                    ; #66767: <==closure== 11463 (pos)
                    (Pc_survivorat_s_p8)

                    ; #68294: origin
                    (Bd_survivorat_s_p8)

                    ; #88844: origin
                    (Bb_survivorat_s_p8)

                    ; #33274: <==negation-removal== 38472 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #39214: <==negation-removal== 66767 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #41258: <==negation-removal== 88844 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42319: <==negation-removal== 11463 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #55361: <==negation-removal== 68294 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #56456: <==negation-removal== 62577 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #60586: <==negation-removal== 20359 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #88318: <==negation-removal== 10907 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #22013: origin
                    (Bd_survivorat_s_p9)

                    ; #34338: origin
                    (Bc_survivorat_s_p9)

                    ; #55624: <==closure== 34338 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58836: <==closure== 74533 (pos)
                    (Pa_survivorat_s_p9)

                    ; #74533: origin
                    (Ba_survivorat_s_p9)

                    ; #78354: <==closure== 91322 (pos)
                    (Pb_survivorat_s_p9)

                    ; #90937: <==closure== 22013 (pos)
                    (Pd_survivorat_s_p9)

                    ; #91322: origin
                    (Bb_survivorat_s_p9)

                    ; #11381: <==negation-removal== 34338 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #40613: <==negation-removal== 90937 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #51980: <==negation-removal== 58836 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #64039: <==negation-removal== 74533 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #68892: <==negation-removal== 55624 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #80554: <==negation-removal== 91322 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #89346: <==negation-removal== 78354 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #91609: <==negation-removal== 22013 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #22013: origin
                    (Bd_survivorat_s_p9)

                    ; #34338: origin
                    (Bc_survivorat_s_p9)

                    ; #55624: <==closure== 34338 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58836: <==closure== 74533 (pos)
                    (Pa_survivorat_s_p9)

                    ; #74533: origin
                    (Ba_survivorat_s_p9)

                    ; #78354: <==closure== 91322 (pos)
                    (Pb_survivorat_s_p9)

                    ; #90937: <==closure== 22013 (pos)
                    (Pd_survivorat_s_p9)

                    ; #91322: origin
                    (Bb_survivorat_s_p9)

                    ; #11381: <==negation-removal== 34338 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #40613: <==negation-removal== 90937 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #51980: <==negation-removal== 58836 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #64039: <==negation-removal== 74533 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #68892: <==negation-removal== 55624 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #80554: <==negation-removal== 91322 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #89346: <==negation-removal== 78354 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #91609: <==negation-removal== 22013 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #22013: origin
                    (Bd_survivorat_s_p9)

                    ; #34338: origin
                    (Bc_survivorat_s_p9)

                    ; #55624: <==closure== 34338 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58836: <==closure== 74533 (pos)
                    (Pa_survivorat_s_p9)

                    ; #74533: origin
                    (Ba_survivorat_s_p9)

                    ; #78354: <==closure== 91322 (pos)
                    (Pb_survivorat_s_p9)

                    ; #90937: <==closure== 22013 (pos)
                    (Pd_survivorat_s_p9)

                    ; #91322: origin
                    (Bb_survivorat_s_p9)

                    ; #11381: <==negation-removal== 34338 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #40613: <==negation-removal== 90937 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #51980: <==negation-removal== 58836 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #64039: <==negation-removal== 74533 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #68892: <==negation-removal== 55624 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #80554: <==negation-removal== 91322 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #89346: <==negation-removal== 78354 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #91609: <==negation-removal== 22013 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #22013: origin
                    (Bd_survivorat_s_p9)

                    ; #34338: origin
                    (Bc_survivorat_s_p9)

                    ; #55624: <==closure== 34338 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58836: <==closure== 74533 (pos)
                    (Pa_survivorat_s_p9)

                    ; #74533: origin
                    (Ba_survivorat_s_p9)

                    ; #78354: <==closure== 91322 (pos)
                    (Pb_survivorat_s_p9)

                    ; #90937: <==closure== 22013 (pos)
                    (Pd_survivorat_s_p9)

                    ; #91322: origin
                    (Bb_survivorat_s_p9)

                    ; #11381: <==negation-removal== 34338 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #40613: <==negation-removal== 90937 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #51980: <==negation-removal== 58836 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #64039: <==negation-removal== 74533 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #68892: <==negation-removal== 55624 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #80554: <==negation-removal== 91322 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #89346: <==negation-removal== 78354 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #91609: <==negation-removal== 22013 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #25453: origin
                    (not_at_a_p1)

                    ; #87309: origin
                    (at_a_p1)

                    ; #25453: <==negation-removal== 87309 (pos)
                    (not (not_at_a_p1))

                    ; #87309: <==negation-removal== 25453 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #25453: origin
                    (not_at_a_p1)

                    ; #74458: origin
                    (at_a_p2)

                    ; #25617: <==negation-removal== 74458 (pos)
                    (not (not_at_a_p2))

                    ; #87309: <==negation-removal== 25453 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #25453: origin
                    (not_at_a_p1)

                    ; #85958: origin
                    (at_a_p3)

                    ; #59206: <==negation-removal== 85958 (pos)
                    (not (not_at_a_p3))

                    ; #87309: <==negation-removal== 25453 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #25453: origin
                    (not_at_a_p1)

                    ; #66695: origin
                    (at_a_p4)

                    ; #26421: <==negation-removal== 66695 (pos)
                    (not (not_at_a_p4))

                    ; #87309: <==negation-removal== 25453 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #25453: origin
                    (not_at_a_p1)

                    ; #63512: origin
                    (at_a_p5)

                    ; #67686: <==negation-removal== 63512 (pos)
                    (not (not_at_a_p5))

                    ; #87309: <==negation-removal== 25453 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #25453: origin
                    (not_at_a_p1)

                    ; #80539: origin
                    (at_a_p6)

                    ; #53963: <==negation-removal== 80539 (pos)
                    (not (not_at_a_p6))

                    ; #87309: <==negation-removal== 25453 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #20779: origin
                    (at_a_p7)

                    ; #25453: origin
                    (not_at_a_p1)

                    ; #75085: <==negation-removal== 20779 (pos)
                    (not (not_at_a_p7))

                    ; #87309: <==negation-removal== 25453 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #25453: origin
                    (not_at_a_p1)

                    ; #70235: origin
                    (at_a_p8)

                    ; #87309: <==negation-removal== 25453 (pos)
                    (not (at_a_p1))

                    ; #93910: <==negation-removal== 70235 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #10054: origin
                    (at_a_p9)

                    ; #25453: origin
                    (not_at_a_p1)

                    ; #50799: <==negation-removal== 10054 (pos)
                    (not (not_at_a_p9))

                    ; #87309: <==negation-removal== 25453 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #25617: origin
                    (not_at_a_p2)

                    ; #87309: origin
                    (at_a_p1)

                    ; #25453: <==negation-removal== 87309 (pos)
                    (not (not_at_a_p1))

                    ; #74458: <==negation-removal== 25617 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #25617: origin
                    (not_at_a_p2)

                    ; #74458: origin
                    (at_a_p2)

                    ; #25617: <==negation-removal== 74458 (pos)
                    (not (not_at_a_p2))

                    ; #74458: <==negation-removal== 25617 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #25617: origin
                    (not_at_a_p2)

                    ; #85958: origin
                    (at_a_p3)

                    ; #59206: <==negation-removal== 85958 (pos)
                    (not (not_at_a_p3))

                    ; #74458: <==negation-removal== 25617 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #25617: origin
                    (not_at_a_p2)

                    ; #66695: origin
                    (at_a_p4)

                    ; #26421: <==negation-removal== 66695 (pos)
                    (not (not_at_a_p4))

                    ; #74458: <==negation-removal== 25617 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #25617: origin
                    (not_at_a_p2)

                    ; #63512: origin
                    (at_a_p5)

                    ; #67686: <==negation-removal== 63512 (pos)
                    (not (not_at_a_p5))

                    ; #74458: <==negation-removal== 25617 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #25617: origin
                    (not_at_a_p2)

                    ; #80539: origin
                    (at_a_p6)

                    ; #53963: <==negation-removal== 80539 (pos)
                    (not (not_at_a_p6))

                    ; #74458: <==negation-removal== 25617 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #20779: origin
                    (at_a_p7)

                    ; #25617: origin
                    (not_at_a_p2)

                    ; #74458: <==negation-removal== 25617 (pos)
                    (not (at_a_p2))

                    ; #75085: <==negation-removal== 20779 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #25617: origin
                    (not_at_a_p2)

                    ; #70235: origin
                    (at_a_p8)

                    ; #74458: <==negation-removal== 25617 (pos)
                    (not (at_a_p2))

                    ; #93910: <==negation-removal== 70235 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #10054: origin
                    (at_a_p9)

                    ; #25617: origin
                    (not_at_a_p2)

                    ; #50799: <==negation-removal== 10054 (pos)
                    (not (not_at_a_p9))

                    ; #74458: <==negation-removal== 25617 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #59206: origin
                    (not_at_a_p3)

                    ; #87309: origin
                    (at_a_p1)

                    ; #25453: <==negation-removal== 87309 (pos)
                    (not (not_at_a_p1))

                    ; #85958: <==negation-removal== 59206 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #59206: origin
                    (not_at_a_p3)

                    ; #74458: origin
                    (at_a_p2)

                    ; #25617: <==negation-removal== 74458 (pos)
                    (not (not_at_a_p2))

                    ; #85958: <==negation-removal== 59206 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #59206: origin
                    (not_at_a_p3)

                    ; #85958: origin
                    (at_a_p3)

                    ; #59206: <==negation-removal== 85958 (pos)
                    (not (not_at_a_p3))

                    ; #85958: <==negation-removal== 59206 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #59206: origin
                    (not_at_a_p3)

                    ; #66695: origin
                    (at_a_p4)

                    ; #26421: <==negation-removal== 66695 (pos)
                    (not (not_at_a_p4))

                    ; #85958: <==negation-removal== 59206 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #59206: origin
                    (not_at_a_p3)

                    ; #63512: origin
                    (at_a_p5)

                    ; #67686: <==negation-removal== 63512 (pos)
                    (not (not_at_a_p5))

                    ; #85958: <==negation-removal== 59206 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #59206: origin
                    (not_at_a_p3)

                    ; #80539: origin
                    (at_a_p6)

                    ; #53963: <==negation-removal== 80539 (pos)
                    (not (not_at_a_p6))

                    ; #85958: <==negation-removal== 59206 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #20779: origin
                    (at_a_p7)

                    ; #59206: origin
                    (not_at_a_p3)

                    ; #75085: <==negation-removal== 20779 (pos)
                    (not (not_at_a_p7))

                    ; #85958: <==negation-removal== 59206 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #59206: origin
                    (not_at_a_p3)

                    ; #70235: origin
                    (at_a_p8)

                    ; #85958: <==negation-removal== 59206 (pos)
                    (not (at_a_p3))

                    ; #93910: <==negation-removal== 70235 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #10054: origin
                    (at_a_p9)

                    ; #59206: origin
                    (not_at_a_p3)

                    ; #50799: <==negation-removal== 10054 (pos)
                    (not (not_at_a_p9))

                    ; #85958: <==negation-removal== 59206 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #26421: origin
                    (not_at_a_p4)

                    ; #87309: origin
                    (at_a_p1)

                    ; #25453: <==negation-removal== 87309 (pos)
                    (not (not_at_a_p1))

                    ; #66695: <==negation-removal== 26421 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #26421: origin
                    (not_at_a_p4)

                    ; #74458: origin
                    (at_a_p2)

                    ; #25617: <==negation-removal== 74458 (pos)
                    (not (not_at_a_p2))

                    ; #66695: <==negation-removal== 26421 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #26421: origin
                    (not_at_a_p4)

                    ; #85958: origin
                    (at_a_p3)

                    ; #59206: <==negation-removal== 85958 (pos)
                    (not (not_at_a_p3))

                    ; #66695: <==negation-removal== 26421 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #26421: origin
                    (not_at_a_p4)

                    ; #66695: origin
                    (at_a_p4)

                    ; #26421: <==negation-removal== 66695 (pos)
                    (not (not_at_a_p4))

                    ; #66695: <==negation-removal== 26421 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #26421: origin
                    (not_at_a_p4)

                    ; #63512: origin
                    (at_a_p5)

                    ; #66695: <==negation-removal== 26421 (pos)
                    (not (at_a_p4))

                    ; #67686: <==negation-removal== 63512 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #26421: origin
                    (not_at_a_p4)

                    ; #80539: origin
                    (at_a_p6)

                    ; #53963: <==negation-removal== 80539 (pos)
                    (not (not_at_a_p6))

                    ; #66695: <==negation-removal== 26421 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #20779: origin
                    (at_a_p7)

                    ; #26421: origin
                    (not_at_a_p4)

                    ; #66695: <==negation-removal== 26421 (pos)
                    (not (at_a_p4))

                    ; #75085: <==negation-removal== 20779 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #26421: origin
                    (not_at_a_p4)

                    ; #70235: origin
                    (at_a_p8)

                    ; #66695: <==negation-removal== 26421 (pos)
                    (not (at_a_p4))

                    ; #93910: <==negation-removal== 70235 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #10054: origin
                    (at_a_p9)

                    ; #26421: origin
                    (not_at_a_p4)

                    ; #50799: <==negation-removal== 10054 (pos)
                    (not (not_at_a_p9))

                    ; #66695: <==negation-removal== 26421 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #67686: origin
                    (not_at_a_p5)

                    ; #87309: origin
                    (at_a_p1)

                    ; #25453: <==negation-removal== 87309 (pos)
                    (not (not_at_a_p1))

                    ; #63512: <==negation-removal== 67686 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #67686: origin
                    (not_at_a_p5)

                    ; #74458: origin
                    (at_a_p2)

                    ; #25617: <==negation-removal== 74458 (pos)
                    (not (not_at_a_p2))

                    ; #63512: <==negation-removal== 67686 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #67686: origin
                    (not_at_a_p5)

                    ; #85958: origin
                    (at_a_p3)

                    ; #59206: <==negation-removal== 85958 (pos)
                    (not (not_at_a_p3))

                    ; #63512: <==negation-removal== 67686 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #66695: origin
                    (at_a_p4)

                    ; #67686: origin
                    (not_at_a_p5)

                    ; #26421: <==negation-removal== 66695 (pos)
                    (not (not_at_a_p4))

                    ; #63512: <==negation-removal== 67686 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #63512: origin
                    (at_a_p5)

                    ; #67686: origin
                    (not_at_a_p5)

                    ; #63512: <==negation-removal== 67686 (pos)
                    (not (at_a_p5))

                    ; #67686: <==negation-removal== 63512 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #67686: origin
                    (not_at_a_p5)

                    ; #80539: origin
                    (at_a_p6)

                    ; #53963: <==negation-removal== 80539 (pos)
                    (not (not_at_a_p6))

                    ; #63512: <==negation-removal== 67686 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #20779: origin
                    (at_a_p7)

                    ; #67686: origin
                    (not_at_a_p5)

                    ; #63512: <==negation-removal== 67686 (pos)
                    (not (at_a_p5))

                    ; #75085: <==negation-removal== 20779 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #67686: origin
                    (not_at_a_p5)

                    ; #70235: origin
                    (at_a_p8)

                    ; #63512: <==negation-removal== 67686 (pos)
                    (not (at_a_p5))

                    ; #93910: <==negation-removal== 70235 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #10054: origin
                    (at_a_p9)

                    ; #67686: origin
                    (not_at_a_p5)

                    ; #50799: <==negation-removal== 10054 (pos)
                    (not (not_at_a_p9))

                    ; #63512: <==negation-removal== 67686 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #53963: origin
                    (not_at_a_p6)

                    ; #87309: origin
                    (at_a_p1)

                    ; #25453: <==negation-removal== 87309 (pos)
                    (not (not_at_a_p1))

                    ; #80539: <==negation-removal== 53963 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #53963: origin
                    (not_at_a_p6)

                    ; #74458: origin
                    (at_a_p2)

                    ; #25617: <==negation-removal== 74458 (pos)
                    (not (not_at_a_p2))

                    ; #80539: <==negation-removal== 53963 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #53963: origin
                    (not_at_a_p6)

                    ; #85958: origin
                    (at_a_p3)

                    ; #59206: <==negation-removal== 85958 (pos)
                    (not (not_at_a_p3))

                    ; #80539: <==negation-removal== 53963 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #53963: origin
                    (not_at_a_p6)

                    ; #66695: origin
                    (at_a_p4)

                    ; #26421: <==negation-removal== 66695 (pos)
                    (not (not_at_a_p4))

                    ; #80539: <==negation-removal== 53963 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #53963: origin
                    (not_at_a_p6)

                    ; #63512: origin
                    (at_a_p5)

                    ; #67686: <==negation-removal== 63512 (pos)
                    (not (not_at_a_p5))

                    ; #80539: <==negation-removal== 53963 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #53963: origin
                    (not_at_a_p6)

                    ; #80539: origin
                    (at_a_p6)

                    ; #53963: <==negation-removal== 80539 (pos)
                    (not (not_at_a_p6))

                    ; #80539: <==negation-removal== 53963 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #20779: origin
                    (at_a_p7)

                    ; #53963: origin
                    (not_at_a_p6)

                    ; #75085: <==negation-removal== 20779 (pos)
                    (not (not_at_a_p7))

                    ; #80539: <==negation-removal== 53963 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #53963: origin
                    (not_at_a_p6)

                    ; #70235: origin
                    (at_a_p8)

                    ; #80539: <==negation-removal== 53963 (pos)
                    (not (at_a_p6))

                    ; #93910: <==negation-removal== 70235 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #10054: origin
                    (at_a_p9)

                    ; #53963: origin
                    (not_at_a_p6)

                    ; #50799: <==negation-removal== 10054 (pos)
                    (not (not_at_a_p9))

                    ; #80539: <==negation-removal== 53963 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #75085: origin
                    (not_at_a_p7)

                    ; #87309: origin
                    (at_a_p1)

                    ; #20779: <==negation-removal== 75085 (pos)
                    (not (at_a_p7))

                    ; #25453: <==negation-removal== 87309 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #74458: origin
                    (at_a_p2)

                    ; #75085: origin
                    (not_at_a_p7)

                    ; #20779: <==negation-removal== 75085 (pos)
                    (not (at_a_p7))

                    ; #25617: <==negation-removal== 74458 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #75085: origin
                    (not_at_a_p7)

                    ; #85958: origin
                    (at_a_p3)

                    ; #20779: <==negation-removal== 75085 (pos)
                    (not (at_a_p7))

                    ; #59206: <==negation-removal== 85958 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #66695: origin
                    (at_a_p4)

                    ; #75085: origin
                    (not_at_a_p7)

                    ; #20779: <==negation-removal== 75085 (pos)
                    (not (at_a_p7))

                    ; #26421: <==negation-removal== 66695 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #63512: origin
                    (at_a_p5)

                    ; #75085: origin
                    (not_at_a_p7)

                    ; #20779: <==negation-removal== 75085 (pos)
                    (not (at_a_p7))

                    ; #67686: <==negation-removal== 63512 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #75085: origin
                    (not_at_a_p7)

                    ; #80539: origin
                    (at_a_p6)

                    ; #20779: <==negation-removal== 75085 (pos)
                    (not (at_a_p7))

                    ; #53963: <==negation-removal== 80539 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #20779: origin
                    (at_a_p7)

                    ; #75085: origin
                    (not_at_a_p7)

                    ; #20779: <==negation-removal== 75085 (pos)
                    (not (at_a_p7))

                    ; #75085: <==negation-removal== 20779 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #70235: origin
                    (at_a_p8)

                    ; #75085: origin
                    (not_at_a_p7)

                    ; #20779: <==negation-removal== 75085 (pos)
                    (not (at_a_p7))

                    ; #93910: <==negation-removal== 70235 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #10054: origin
                    (at_a_p9)

                    ; #75085: origin
                    (not_at_a_p7)

                    ; #20779: <==negation-removal== 75085 (pos)
                    (not (at_a_p7))

                    ; #50799: <==negation-removal== 10054 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #87309: origin
                    (at_a_p1)

                    ; #93910: origin
                    (not_at_a_p8)

                    ; #25453: <==negation-removal== 87309 (pos)
                    (not (not_at_a_p1))

                    ; #70235: <==negation-removal== 93910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #74458: origin
                    (at_a_p2)

                    ; #93910: origin
                    (not_at_a_p8)

                    ; #25617: <==negation-removal== 74458 (pos)
                    (not (not_at_a_p2))

                    ; #70235: <==negation-removal== 93910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #85958: origin
                    (at_a_p3)

                    ; #93910: origin
                    (not_at_a_p8)

                    ; #59206: <==negation-removal== 85958 (pos)
                    (not (not_at_a_p3))

                    ; #70235: <==negation-removal== 93910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #66695: origin
                    (at_a_p4)

                    ; #93910: origin
                    (not_at_a_p8)

                    ; #26421: <==negation-removal== 66695 (pos)
                    (not (not_at_a_p4))

                    ; #70235: <==negation-removal== 93910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #63512: origin
                    (at_a_p5)

                    ; #93910: origin
                    (not_at_a_p8)

                    ; #67686: <==negation-removal== 63512 (pos)
                    (not (not_at_a_p5))

                    ; #70235: <==negation-removal== 93910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #80539: origin
                    (at_a_p6)

                    ; #93910: origin
                    (not_at_a_p8)

                    ; #53963: <==negation-removal== 80539 (pos)
                    (not (not_at_a_p6))

                    ; #70235: <==negation-removal== 93910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #20779: origin
                    (at_a_p7)

                    ; #93910: origin
                    (not_at_a_p8)

                    ; #70235: <==negation-removal== 93910 (pos)
                    (not (at_a_p8))

                    ; #75085: <==negation-removal== 20779 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #70235: origin
                    (at_a_p8)

                    ; #93910: origin
                    (not_at_a_p8)

                    ; #70235: <==negation-removal== 93910 (pos)
                    (not (at_a_p8))

                    ; #93910: <==negation-removal== 70235 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #10054: origin
                    (at_a_p9)

                    ; #93910: origin
                    (not_at_a_p8)

                    ; #50799: <==negation-removal== 10054 (pos)
                    (not (not_at_a_p9))

                    ; #70235: <==negation-removal== 93910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #50799: origin
                    (not_at_a_p9)

                    ; #87309: origin
                    (at_a_p1)

                    ; #10054: <==negation-removal== 50799 (pos)
                    (not (at_a_p9))

                    ; #25453: <==negation-removal== 87309 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #50799: origin
                    (not_at_a_p9)

                    ; #74458: origin
                    (at_a_p2)

                    ; #10054: <==negation-removal== 50799 (pos)
                    (not (at_a_p9))

                    ; #25617: <==negation-removal== 74458 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #50799: origin
                    (not_at_a_p9)

                    ; #85958: origin
                    (at_a_p3)

                    ; #10054: <==negation-removal== 50799 (pos)
                    (not (at_a_p9))

                    ; #59206: <==negation-removal== 85958 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #50799: origin
                    (not_at_a_p9)

                    ; #66695: origin
                    (at_a_p4)

                    ; #10054: <==negation-removal== 50799 (pos)
                    (not (at_a_p9))

                    ; #26421: <==negation-removal== 66695 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #50799: origin
                    (not_at_a_p9)

                    ; #63512: origin
                    (at_a_p5)

                    ; #10054: <==negation-removal== 50799 (pos)
                    (not (at_a_p9))

                    ; #67686: <==negation-removal== 63512 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #50799: origin
                    (not_at_a_p9)

                    ; #80539: origin
                    (at_a_p6)

                    ; #10054: <==negation-removal== 50799 (pos)
                    (not (at_a_p9))

                    ; #53963: <==negation-removal== 80539 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #20779: origin
                    (at_a_p7)

                    ; #50799: origin
                    (not_at_a_p9)

                    ; #10054: <==negation-removal== 50799 (pos)
                    (not (at_a_p9))

                    ; #75085: <==negation-removal== 20779 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #50799: origin
                    (not_at_a_p9)

                    ; #70235: origin
                    (at_a_p8)

                    ; #10054: <==negation-removal== 50799 (pos)
                    (not (at_a_p9))

                    ; #93910: <==negation-removal== 70235 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #10054: origin
                    (at_a_p9)

                    ; #50799: origin
                    (not_at_a_p9)

                    ; #10054: <==negation-removal== 50799 (pos)
                    (not (at_a_p9))

                    ; #50799: <==negation-removal== 10054 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #25332: origin
                    (at_b_p1)

                    ; #76776: origin
                    (not_at_b_p1)

                    ; #25332: <==negation-removal== 76776 (pos)
                    (not (at_b_p1))

                    ; #76776: <==negation-removal== 25332 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #28539: origin
                    (at_b_p2)

                    ; #76776: origin
                    (not_at_b_p1)

                    ; #25332: <==negation-removal== 76776 (pos)
                    (not (at_b_p1))

                    ; #30565: <==negation-removal== 28539 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #76776: origin
                    (not_at_b_p1)

                    ; #77931: origin
                    (at_b_p3)

                    ; #25332: <==negation-removal== 76776 (pos)
                    (not (at_b_p1))

                    ; #58490: <==negation-removal== 77931 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #56354: origin
                    (at_b_p4)

                    ; #76776: origin
                    (not_at_b_p1)

                    ; #25332: <==negation-removal== 76776 (pos)
                    (not (at_b_p1))

                    ; #79912: <==negation-removal== 56354 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #66236: origin
                    (at_b_p5)

                    ; #76776: origin
                    (not_at_b_p1)

                    ; #18822: <==negation-removal== 66236 (pos)
                    (not (not_at_b_p5))

                    ; #25332: <==negation-removal== 76776 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #70841: origin
                    (at_b_p6)

                    ; #76776: origin
                    (not_at_b_p1)

                    ; #25332: <==negation-removal== 76776 (pos)
                    (not (at_b_p1))

                    ; #53313: <==negation-removal== 70841 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #44882: origin
                    (at_b_p7)

                    ; #76776: origin
                    (not_at_b_p1)

                    ; #25332: <==negation-removal== 76776 (pos)
                    (not (at_b_p1))

                    ; #87009: <==negation-removal== 44882 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #52529: origin
                    (at_b_p8)

                    ; #76776: origin
                    (not_at_b_p1)

                    ; #25332: <==negation-removal== 76776 (pos)
                    (not (at_b_p1))

                    ; #43830: <==negation-removal== 52529 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #51878: origin
                    (at_b_p9)

                    ; #76776: origin
                    (not_at_b_p1)

                    ; #25332: <==negation-removal== 76776 (pos)
                    (not (at_b_p1))

                    ; #66437: <==negation-removal== 51878 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #25332: origin
                    (at_b_p1)

                    ; #30565: origin
                    (not_at_b_p2)

                    ; #28539: <==negation-removal== 30565 (pos)
                    (not (at_b_p2))

                    ; #76776: <==negation-removal== 25332 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #28539: origin
                    (at_b_p2)

                    ; #30565: origin
                    (not_at_b_p2)

                    ; #28539: <==negation-removal== 30565 (pos)
                    (not (at_b_p2))

                    ; #30565: <==negation-removal== 28539 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #30565: origin
                    (not_at_b_p2)

                    ; #77931: origin
                    (at_b_p3)

                    ; #28539: <==negation-removal== 30565 (pos)
                    (not (at_b_p2))

                    ; #58490: <==negation-removal== 77931 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #30565: origin
                    (not_at_b_p2)

                    ; #56354: origin
                    (at_b_p4)

                    ; #28539: <==negation-removal== 30565 (pos)
                    (not (at_b_p2))

                    ; #79912: <==negation-removal== 56354 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #30565: origin
                    (not_at_b_p2)

                    ; #66236: origin
                    (at_b_p5)

                    ; #18822: <==negation-removal== 66236 (pos)
                    (not (not_at_b_p5))

                    ; #28539: <==negation-removal== 30565 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #30565: origin
                    (not_at_b_p2)

                    ; #70841: origin
                    (at_b_p6)

                    ; #28539: <==negation-removal== 30565 (pos)
                    (not (at_b_p2))

                    ; #53313: <==negation-removal== 70841 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #30565: origin
                    (not_at_b_p2)

                    ; #44882: origin
                    (at_b_p7)

                    ; #28539: <==negation-removal== 30565 (pos)
                    (not (at_b_p2))

                    ; #87009: <==negation-removal== 44882 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #30565: origin
                    (not_at_b_p2)

                    ; #52529: origin
                    (at_b_p8)

                    ; #28539: <==negation-removal== 30565 (pos)
                    (not (at_b_p2))

                    ; #43830: <==negation-removal== 52529 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #30565: origin
                    (not_at_b_p2)

                    ; #51878: origin
                    (at_b_p9)

                    ; #28539: <==negation-removal== 30565 (pos)
                    (not (at_b_p2))

                    ; #66437: <==negation-removal== 51878 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #25332: origin
                    (at_b_p1)

                    ; #58490: origin
                    (not_at_b_p3)

                    ; #76776: <==negation-removal== 25332 (pos)
                    (not (not_at_b_p1))

                    ; #77931: <==negation-removal== 58490 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #28539: origin
                    (at_b_p2)

                    ; #58490: origin
                    (not_at_b_p3)

                    ; #30565: <==negation-removal== 28539 (pos)
                    (not (not_at_b_p2))

                    ; #77931: <==negation-removal== 58490 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #58490: origin
                    (not_at_b_p3)

                    ; #77931: origin
                    (at_b_p3)

                    ; #58490: <==negation-removal== 77931 (pos)
                    (not (not_at_b_p3))

                    ; #77931: <==negation-removal== 58490 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #56354: origin
                    (at_b_p4)

                    ; #58490: origin
                    (not_at_b_p3)

                    ; #77931: <==negation-removal== 58490 (pos)
                    (not (at_b_p3))

                    ; #79912: <==negation-removal== 56354 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #58490: origin
                    (not_at_b_p3)

                    ; #66236: origin
                    (at_b_p5)

                    ; #18822: <==negation-removal== 66236 (pos)
                    (not (not_at_b_p5))

                    ; #77931: <==negation-removal== 58490 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #58490: origin
                    (not_at_b_p3)

                    ; #70841: origin
                    (at_b_p6)

                    ; #53313: <==negation-removal== 70841 (pos)
                    (not (not_at_b_p6))

                    ; #77931: <==negation-removal== 58490 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #44882: origin
                    (at_b_p7)

                    ; #58490: origin
                    (not_at_b_p3)

                    ; #77931: <==negation-removal== 58490 (pos)
                    (not (at_b_p3))

                    ; #87009: <==negation-removal== 44882 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #52529: origin
                    (at_b_p8)

                    ; #58490: origin
                    (not_at_b_p3)

                    ; #43830: <==negation-removal== 52529 (pos)
                    (not (not_at_b_p8))

                    ; #77931: <==negation-removal== 58490 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #51878: origin
                    (at_b_p9)

                    ; #58490: origin
                    (not_at_b_p3)

                    ; #66437: <==negation-removal== 51878 (pos)
                    (not (not_at_b_p9))

                    ; #77931: <==negation-removal== 58490 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #25332: origin
                    (at_b_p1)

                    ; #79912: origin
                    (not_at_b_p4)

                    ; #56354: <==negation-removal== 79912 (pos)
                    (not (at_b_p4))

                    ; #76776: <==negation-removal== 25332 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #28539: origin
                    (at_b_p2)

                    ; #79912: origin
                    (not_at_b_p4)

                    ; #30565: <==negation-removal== 28539 (pos)
                    (not (not_at_b_p2))

                    ; #56354: <==negation-removal== 79912 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #77931: origin
                    (at_b_p3)

                    ; #79912: origin
                    (not_at_b_p4)

                    ; #56354: <==negation-removal== 79912 (pos)
                    (not (at_b_p4))

                    ; #58490: <==negation-removal== 77931 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #56354: origin
                    (at_b_p4)

                    ; #79912: origin
                    (not_at_b_p4)

                    ; #56354: <==negation-removal== 79912 (pos)
                    (not (at_b_p4))

                    ; #79912: <==negation-removal== 56354 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #66236: origin
                    (at_b_p5)

                    ; #79912: origin
                    (not_at_b_p4)

                    ; #18822: <==negation-removal== 66236 (pos)
                    (not (not_at_b_p5))

                    ; #56354: <==negation-removal== 79912 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #70841: origin
                    (at_b_p6)

                    ; #79912: origin
                    (not_at_b_p4)

                    ; #53313: <==negation-removal== 70841 (pos)
                    (not (not_at_b_p6))

                    ; #56354: <==negation-removal== 79912 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #44882: origin
                    (at_b_p7)

                    ; #79912: origin
                    (not_at_b_p4)

                    ; #56354: <==negation-removal== 79912 (pos)
                    (not (at_b_p4))

                    ; #87009: <==negation-removal== 44882 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #52529: origin
                    (at_b_p8)

                    ; #79912: origin
                    (not_at_b_p4)

                    ; #43830: <==negation-removal== 52529 (pos)
                    (not (not_at_b_p8))

                    ; #56354: <==negation-removal== 79912 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #51878: origin
                    (at_b_p9)

                    ; #79912: origin
                    (not_at_b_p4)

                    ; #56354: <==negation-removal== 79912 (pos)
                    (not (at_b_p4))

                    ; #66437: <==negation-removal== 51878 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #18822: origin
                    (not_at_b_p5)

                    ; #25332: origin
                    (at_b_p1)

                    ; #66236: <==negation-removal== 18822 (pos)
                    (not (at_b_p5))

                    ; #76776: <==negation-removal== 25332 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #18822: origin
                    (not_at_b_p5)

                    ; #28539: origin
                    (at_b_p2)

                    ; #30565: <==negation-removal== 28539 (pos)
                    (not (not_at_b_p2))

                    ; #66236: <==negation-removal== 18822 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #18822: origin
                    (not_at_b_p5)

                    ; #77931: origin
                    (at_b_p3)

                    ; #58490: <==negation-removal== 77931 (pos)
                    (not (not_at_b_p3))

                    ; #66236: <==negation-removal== 18822 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #18822: origin
                    (not_at_b_p5)

                    ; #56354: origin
                    (at_b_p4)

                    ; #66236: <==negation-removal== 18822 (pos)
                    (not (at_b_p5))

                    ; #79912: <==negation-removal== 56354 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #18822: origin
                    (not_at_b_p5)

                    ; #66236: origin
                    (at_b_p5)

                    ; #18822: <==negation-removal== 66236 (pos)
                    (not (not_at_b_p5))

                    ; #66236: <==negation-removal== 18822 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #18822: origin
                    (not_at_b_p5)

                    ; #70841: origin
                    (at_b_p6)

                    ; #53313: <==negation-removal== 70841 (pos)
                    (not (not_at_b_p6))

                    ; #66236: <==negation-removal== 18822 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #18822: origin
                    (not_at_b_p5)

                    ; #44882: origin
                    (at_b_p7)

                    ; #66236: <==negation-removal== 18822 (pos)
                    (not (at_b_p5))

                    ; #87009: <==negation-removal== 44882 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #18822: origin
                    (not_at_b_p5)

                    ; #52529: origin
                    (at_b_p8)

                    ; #43830: <==negation-removal== 52529 (pos)
                    (not (not_at_b_p8))

                    ; #66236: <==negation-removal== 18822 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #18822: origin
                    (not_at_b_p5)

                    ; #51878: origin
                    (at_b_p9)

                    ; #66236: <==negation-removal== 18822 (pos)
                    (not (at_b_p5))

                    ; #66437: <==negation-removal== 51878 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #25332: origin
                    (at_b_p1)

                    ; #53313: origin
                    (not_at_b_p6)

                    ; #70841: <==negation-removal== 53313 (pos)
                    (not (at_b_p6))

                    ; #76776: <==negation-removal== 25332 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #28539: origin
                    (at_b_p2)

                    ; #53313: origin
                    (not_at_b_p6)

                    ; #30565: <==negation-removal== 28539 (pos)
                    (not (not_at_b_p2))

                    ; #70841: <==negation-removal== 53313 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #53313: origin
                    (not_at_b_p6)

                    ; #77931: origin
                    (at_b_p3)

                    ; #58490: <==negation-removal== 77931 (pos)
                    (not (not_at_b_p3))

                    ; #70841: <==negation-removal== 53313 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #53313: origin
                    (not_at_b_p6)

                    ; #56354: origin
                    (at_b_p4)

                    ; #70841: <==negation-removal== 53313 (pos)
                    (not (at_b_p6))

                    ; #79912: <==negation-removal== 56354 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #53313: origin
                    (not_at_b_p6)

                    ; #66236: origin
                    (at_b_p5)

                    ; #18822: <==negation-removal== 66236 (pos)
                    (not (not_at_b_p5))

                    ; #70841: <==negation-removal== 53313 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #53313: origin
                    (not_at_b_p6)

                    ; #70841: origin
                    (at_b_p6)

                    ; #53313: <==negation-removal== 70841 (pos)
                    (not (not_at_b_p6))

                    ; #70841: <==negation-removal== 53313 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #44882: origin
                    (at_b_p7)

                    ; #53313: origin
                    (not_at_b_p6)

                    ; #70841: <==negation-removal== 53313 (pos)
                    (not (at_b_p6))

                    ; #87009: <==negation-removal== 44882 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #52529: origin
                    (at_b_p8)

                    ; #53313: origin
                    (not_at_b_p6)

                    ; #43830: <==negation-removal== 52529 (pos)
                    (not (not_at_b_p8))

                    ; #70841: <==negation-removal== 53313 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #51878: origin
                    (at_b_p9)

                    ; #53313: origin
                    (not_at_b_p6)

                    ; #66437: <==negation-removal== 51878 (pos)
                    (not (not_at_b_p9))

                    ; #70841: <==negation-removal== 53313 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #25332: origin
                    (at_b_p1)

                    ; #87009: origin
                    (not_at_b_p7)

                    ; #44882: <==negation-removal== 87009 (pos)
                    (not (at_b_p7))

                    ; #76776: <==negation-removal== 25332 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #28539: origin
                    (at_b_p2)

                    ; #87009: origin
                    (not_at_b_p7)

                    ; #30565: <==negation-removal== 28539 (pos)
                    (not (not_at_b_p2))

                    ; #44882: <==negation-removal== 87009 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #77931: origin
                    (at_b_p3)

                    ; #87009: origin
                    (not_at_b_p7)

                    ; #44882: <==negation-removal== 87009 (pos)
                    (not (at_b_p7))

                    ; #58490: <==negation-removal== 77931 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #56354: origin
                    (at_b_p4)

                    ; #87009: origin
                    (not_at_b_p7)

                    ; #44882: <==negation-removal== 87009 (pos)
                    (not (at_b_p7))

                    ; #79912: <==negation-removal== 56354 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #66236: origin
                    (at_b_p5)

                    ; #87009: origin
                    (not_at_b_p7)

                    ; #18822: <==negation-removal== 66236 (pos)
                    (not (not_at_b_p5))

                    ; #44882: <==negation-removal== 87009 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #70841: origin
                    (at_b_p6)

                    ; #87009: origin
                    (not_at_b_p7)

                    ; #44882: <==negation-removal== 87009 (pos)
                    (not (at_b_p7))

                    ; #53313: <==negation-removal== 70841 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #44882: origin
                    (at_b_p7)

                    ; #87009: origin
                    (not_at_b_p7)

                    ; #44882: <==negation-removal== 87009 (pos)
                    (not (at_b_p7))

                    ; #87009: <==negation-removal== 44882 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #52529: origin
                    (at_b_p8)

                    ; #87009: origin
                    (not_at_b_p7)

                    ; #43830: <==negation-removal== 52529 (pos)
                    (not (not_at_b_p8))

                    ; #44882: <==negation-removal== 87009 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #51878: origin
                    (at_b_p9)

                    ; #87009: origin
                    (not_at_b_p7)

                    ; #44882: <==negation-removal== 87009 (pos)
                    (not (at_b_p7))

                    ; #66437: <==negation-removal== 51878 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #25332: origin
                    (at_b_p1)

                    ; #43830: origin
                    (not_at_b_p8)

                    ; #52529: <==negation-removal== 43830 (pos)
                    (not (at_b_p8))

                    ; #76776: <==negation-removal== 25332 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #28539: origin
                    (at_b_p2)

                    ; #43830: origin
                    (not_at_b_p8)

                    ; #30565: <==negation-removal== 28539 (pos)
                    (not (not_at_b_p2))

                    ; #52529: <==negation-removal== 43830 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #43830: origin
                    (not_at_b_p8)

                    ; #77931: origin
                    (at_b_p3)

                    ; #52529: <==negation-removal== 43830 (pos)
                    (not (at_b_p8))

                    ; #58490: <==negation-removal== 77931 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #43830: origin
                    (not_at_b_p8)

                    ; #56354: origin
                    (at_b_p4)

                    ; #52529: <==negation-removal== 43830 (pos)
                    (not (at_b_p8))

                    ; #79912: <==negation-removal== 56354 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #43830: origin
                    (not_at_b_p8)

                    ; #66236: origin
                    (at_b_p5)

                    ; #18822: <==negation-removal== 66236 (pos)
                    (not (not_at_b_p5))

                    ; #52529: <==negation-removal== 43830 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #43830: origin
                    (not_at_b_p8)

                    ; #70841: origin
                    (at_b_p6)

                    ; #52529: <==negation-removal== 43830 (pos)
                    (not (at_b_p8))

                    ; #53313: <==negation-removal== 70841 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #43830: origin
                    (not_at_b_p8)

                    ; #44882: origin
                    (at_b_p7)

                    ; #52529: <==negation-removal== 43830 (pos)
                    (not (at_b_p8))

                    ; #87009: <==negation-removal== 44882 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #43830: origin
                    (not_at_b_p8)

                    ; #52529: origin
                    (at_b_p8)

                    ; #43830: <==negation-removal== 52529 (pos)
                    (not (not_at_b_p8))

                    ; #52529: <==negation-removal== 43830 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #43830: origin
                    (not_at_b_p8)

                    ; #51878: origin
                    (at_b_p9)

                    ; #52529: <==negation-removal== 43830 (pos)
                    (not (at_b_p8))

                    ; #66437: <==negation-removal== 51878 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #25332: origin
                    (at_b_p1)

                    ; #66437: origin
                    (not_at_b_p9)

                    ; #51878: <==negation-removal== 66437 (pos)
                    (not (at_b_p9))

                    ; #76776: <==negation-removal== 25332 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #28539: origin
                    (at_b_p2)

                    ; #66437: origin
                    (not_at_b_p9)

                    ; #30565: <==negation-removal== 28539 (pos)
                    (not (not_at_b_p2))

                    ; #51878: <==negation-removal== 66437 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #66437: origin
                    (not_at_b_p9)

                    ; #77931: origin
                    (at_b_p3)

                    ; #51878: <==negation-removal== 66437 (pos)
                    (not (at_b_p9))

                    ; #58490: <==negation-removal== 77931 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #56354: origin
                    (at_b_p4)

                    ; #66437: origin
                    (not_at_b_p9)

                    ; #51878: <==negation-removal== 66437 (pos)
                    (not (at_b_p9))

                    ; #79912: <==negation-removal== 56354 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #66236: origin
                    (at_b_p5)

                    ; #66437: origin
                    (not_at_b_p9)

                    ; #18822: <==negation-removal== 66236 (pos)
                    (not (not_at_b_p5))

                    ; #51878: <==negation-removal== 66437 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #66437: origin
                    (not_at_b_p9)

                    ; #70841: origin
                    (at_b_p6)

                    ; #51878: <==negation-removal== 66437 (pos)
                    (not (at_b_p9))

                    ; #53313: <==negation-removal== 70841 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #44882: origin
                    (at_b_p7)

                    ; #66437: origin
                    (not_at_b_p9)

                    ; #51878: <==negation-removal== 66437 (pos)
                    (not (at_b_p9))

                    ; #87009: <==negation-removal== 44882 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #52529: origin
                    (at_b_p8)

                    ; #66437: origin
                    (not_at_b_p9)

                    ; #43830: <==negation-removal== 52529 (pos)
                    (not (not_at_b_p8))

                    ; #51878: <==negation-removal== 66437 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #51878: origin
                    (at_b_p9)

                    ; #66437: origin
                    (not_at_b_p9)

                    ; #51878: <==negation-removal== 66437 (pos)
                    (not (at_b_p9))

                    ; #66437: <==negation-removal== 51878 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #35101: origin
                    (at_c_p1)

                    ; #71150: origin
                    (not_at_c_p1)

                    ; #35101: <==negation-removal== 71150 (pos)
                    (not (at_c_p1))

                    ; #71150: <==negation-removal== 35101 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #71150: origin
                    (not_at_c_p1)

                    ; #71940: origin
                    (at_c_p2)

                    ; #35101: <==negation-removal== 71150 (pos)
                    (not (at_c_p1))

                    ; #75282: <==negation-removal== 71940 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #71150: origin
                    (not_at_c_p1)

                    ; #72729: origin
                    (at_c_p3)

                    ; #35101: <==negation-removal== 71150 (pos)
                    (not (at_c_p1))

                    ; #56147: <==negation-removal== 72729 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #12646: origin
                    (at_c_p4)

                    ; #71150: origin
                    (not_at_c_p1)

                    ; #35101: <==negation-removal== 71150 (pos)
                    (not (at_c_p1))

                    ; #72874: <==negation-removal== 12646 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #20156: origin
                    (at_c_p5)

                    ; #71150: origin
                    (not_at_c_p1)

                    ; #13577: <==negation-removal== 20156 (pos)
                    (not (not_at_c_p5))

                    ; #35101: <==negation-removal== 71150 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #36473: origin
                    (at_c_p6)

                    ; #71150: origin
                    (not_at_c_p1)

                    ; #35101: <==negation-removal== 71150 (pos)
                    (not (at_c_p1))

                    ; #74443: <==negation-removal== 36473 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #71150: origin
                    (not_at_c_p1)

                    ; #88227: origin
                    (at_c_p7)

                    ; #35101: <==negation-removal== 71150 (pos)
                    (not (at_c_p1))

                    ; #54662: <==negation-removal== 88227 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #46380: origin
                    (at_c_p8)

                    ; #71150: origin
                    (not_at_c_p1)

                    ; #35101: <==negation-removal== 71150 (pos)
                    (not (at_c_p1))

                    ; #85767: <==negation-removal== 46380 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #34411: origin
                    (at_c_p9)

                    ; #71150: origin
                    (not_at_c_p1)

                    ; #35101: <==negation-removal== 71150 (pos)
                    (not (at_c_p1))

                    ; #36715: <==negation-removal== 34411 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #35101: origin
                    (at_c_p1)

                    ; #75282: origin
                    (not_at_c_p2)

                    ; #71150: <==negation-removal== 35101 (pos)
                    (not (not_at_c_p1))

                    ; #71940: <==negation-removal== 75282 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #71940: origin
                    (at_c_p2)

                    ; #75282: origin
                    (not_at_c_p2)

                    ; #71940: <==negation-removal== 75282 (pos)
                    (not (at_c_p2))

                    ; #75282: <==negation-removal== 71940 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #72729: origin
                    (at_c_p3)

                    ; #75282: origin
                    (not_at_c_p2)

                    ; #56147: <==negation-removal== 72729 (pos)
                    (not (not_at_c_p3))

                    ; #71940: <==negation-removal== 75282 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #12646: origin
                    (at_c_p4)

                    ; #75282: origin
                    (not_at_c_p2)

                    ; #71940: <==negation-removal== 75282 (pos)
                    (not (at_c_p2))

                    ; #72874: <==negation-removal== 12646 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #20156: origin
                    (at_c_p5)

                    ; #75282: origin
                    (not_at_c_p2)

                    ; #13577: <==negation-removal== 20156 (pos)
                    (not (not_at_c_p5))

                    ; #71940: <==negation-removal== 75282 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #36473: origin
                    (at_c_p6)

                    ; #75282: origin
                    (not_at_c_p2)

                    ; #71940: <==negation-removal== 75282 (pos)
                    (not (at_c_p2))

                    ; #74443: <==negation-removal== 36473 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #75282: origin
                    (not_at_c_p2)

                    ; #88227: origin
                    (at_c_p7)

                    ; #54662: <==negation-removal== 88227 (pos)
                    (not (not_at_c_p7))

                    ; #71940: <==negation-removal== 75282 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #46380: origin
                    (at_c_p8)

                    ; #75282: origin
                    (not_at_c_p2)

                    ; #71940: <==negation-removal== 75282 (pos)
                    (not (at_c_p2))

                    ; #85767: <==negation-removal== 46380 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #34411: origin
                    (at_c_p9)

                    ; #75282: origin
                    (not_at_c_p2)

                    ; #36715: <==negation-removal== 34411 (pos)
                    (not (not_at_c_p9))

                    ; #71940: <==negation-removal== 75282 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #35101: origin
                    (at_c_p1)

                    ; #56147: origin
                    (not_at_c_p3)

                    ; #71150: <==negation-removal== 35101 (pos)
                    (not (not_at_c_p1))

                    ; #72729: <==negation-removal== 56147 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #56147: origin
                    (not_at_c_p3)

                    ; #71940: origin
                    (at_c_p2)

                    ; #72729: <==negation-removal== 56147 (pos)
                    (not (at_c_p3))

                    ; #75282: <==negation-removal== 71940 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #56147: origin
                    (not_at_c_p3)

                    ; #72729: origin
                    (at_c_p3)

                    ; #56147: <==negation-removal== 72729 (pos)
                    (not (not_at_c_p3))

                    ; #72729: <==negation-removal== 56147 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #12646: origin
                    (at_c_p4)

                    ; #56147: origin
                    (not_at_c_p3)

                    ; #72729: <==negation-removal== 56147 (pos)
                    (not (at_c_p3))

                    ; #72874: <==negation-removal== 12646 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #20156: origin
                    (at_c_p5)

                    ; #56147: origin
                    (not_at_c_p3)

                    ; #13577: <==negation-removal== 20156 (pos)
                    (not (not_at_c_p5))

                    ; #72729: <==negation-removal== 56147 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #36473: origin
                    (at_c_p6)

                    ; #56147: origin
                    (not_at_c_p3)

                    ; #72729: <==negation-removal== 56147 (pos)
                    (not (at_c_p3))

                    ; #74443: <==negation-removal== 36473 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #56147: origin
                    (not_at_c_p3)

                    ; #88227: origin
                    (at_c_p7)

                    ; #54662: <==negation-removal== 88227 (pos)
                    (not (not_at_c_p7))

                    ; #72729: <==negation-removal== 56147 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #46380: origin
                    (at_c_p8)

                    ; #56147: origin
                    (not_at_c_p3)

                    ; #72729: <==negation-removal== 56147 (pos)
                    (not (at_c_p3))

                    ; #85767: <==negation-removal== 46380 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #34411: origin
                    (at_c_p9)

                    ; #56147: origin
                    (not_at_c_p3)

                    ; #36715: <==negation-removal== 34411 (pos)
                    (not (not_at_c_p9))

                    ; #72729: <==negation-removal== 56147 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #35101: origin
                    (at_c_p1)

                    ; #72874: origin
                    (not_at_c_p4)

                    ; #12646: <==negation-removal== 72874 (pos)
                    (not (at_c_p4))

                    ; #71150: <==negation-removal== 35101 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #71940: origin
                    (at_c_p2)

                    ; #72874: origin
                    (not_at_c_p4)

                    ; #12646: <==negation-removal== 72874 (pos)
                    (not (at_c_p4))

                    ; #75282: <==negation-removal== 71940 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #72729: origin
                    (at_c_p3)

                    ; #72874: origin
                    (not_at_c_p4)

                    ; #12646: <==negation-removal== 72874 (pos)
                    (not (at_c_p4))

                    ; #56147: <==negation-removal== 72729 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #12646: origin
                    (at_c_p4)

                    ; #72874: origin
                    (not_at_c_p4)

                    ; #12646: <==negation-removal== 72874 (pos)
                    (not (at_c_p4))

                    ; #72874: <==negation-removal== 12646 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #20156: origin
                    (at_c_p5)

                    ; #72874: origin
                    (not_at_c_p4)

                    ; #12646: <==negation-removal== 72874 (pos)
                    (not (at_c_p4))

                    ; #13577: <==negation-removal== 20156 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #36473: origin
                    (at_c_p6)

                    ; #72874: origin
                    (not_at_c_p4)

                    ; #12646: <==negation-removal== 72874 (pos)
                    (not (at_c_p4))

                    ; #74443: <==negation-removal== 36473 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #72874: origin
                    (not_at_c_p4)

                    ; #88227: origin
                    (at_c_p7)

                    ; #12646: <==negation-removal== 72874 (pos)
                    (not (at_c_p4))

                    ; #54662: <==negation-removal== 88227 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #46380: origin
                    (at_c_p8)

                    ; #72874: origin
                    (not_at_c_p4)

                    ; #12646: <==negation-removal== 72874 (pos)
                    (not (at_c_p4))

                    ; #85767: <==negation-removal== 46380 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #34411: origin
                    (at_c_p9)

                    ; #72874: origin
                    (not_at_c_p4)

                    ; #12646: <==negation-removal== 72874 (pos)
                    (not (at_c_p4))

                    ; #36715: <==negation-removal== 34411 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #13577: origin
                    (not_at_c_p5)

                    ; #35101: origin
                    (at_c_p1)

                    ; #20156: <==negation-removal== 13577 (pos)
                    (not (at_c_p5))

                    ; #71150: <==negation-removal== 35101 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #13577: origin
                    (not_at_c_p5)

                    ; #71940: origin
                    (at_c_p2)

                    ; #20156: <==negation-removal== 13577 (pos)
                    (not (at_c_p5))

                    ; #75282: <==negation-removal== 71940 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #13577: origin
                    (not_at_c_p5)

                    ; #72729: origin
                    (at_c_p3)

                    ; #20156: <==negation-removal== 13577 (pos)
                    (not (at_c_p5))

                    ; #56147: <==negation-removal== 72729 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #12646: origin
                    (at_c_p4)

                    ; #13577: origin
                    (not_at_c_p5)

                    ; #20156: <==negation-removal== 13577 (pos)
                    (not (at_c_p5))

                    ; #72874: <==negation-removal== 12646 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #13577: origin
                    (not_at_c_p5)

                    ; #20156: origin
                    (at_c_p5)

                    ; #13577: <==negation-removal== 20156 (pos)
                    (not (not_at_c_p5))

                    ; #20156: <==negation-removal== 13577 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #13577: origin
                    (not_at_c_p5)

                    ; #36473: origin
                    (at_c_p6)

                    ; #20156: <==negation-removal== 13577 (pos)
                    (not (at_c_p5))

                    ; #74443: <==negation-removal== 36473 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #13577: origin
                    (not_at_c_p5)

                    ; #88227: origin
                    (at_c_p7)

                    ; #20156: <==negation-removal== 13577 (pos)
                    (not (at_c_p5))

                    ; #54662: <==negation-removal== 88227 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #13577: origin
                    (not_at_c_p5)

                    ; #46380: origin
                    (at_c_p8)

                    ; #20156: <==negation-removal== 13577 (pos)
                    (not (at_c_p5))

                    ; #85767: <==negation-removal== 46380 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #13577: origin
                    (not_at_c_p5)

                    ; #34411: origin
                    (at_c_p9)

                    ; #20156: <==negation-removal== 13577 (pos)
                    (not (at_c_p5))

                    ; #36715: <==negation-removal== 34411 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #35101: origin
                    (at_c_p1)

                    ; #74443: origin
                    (not_at_c_p6)

                    ; #36473: <==negation-removal== 74443 (pos)
                    (not (at_c_p6))

                    ; #71150: <==negation-removal== 35101 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #71940: origin
                    (at_c_p2)

                    ; #74443: origin
                    (not_at_c_p6)

                    ; #36473: <==negation-removal== 74443 (pos)
                    (not (at_c_p6))

                    ; #75282: <==negation-removal== 71940 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #72729: origin
                    (at_c_p3)

                    ; #74443: origin
                    (not_at_c_p6)

                    ; #36473: <==negation-removal== 74443 (pos)
                    (not (at_c_p6))

                    ; #56147: <==negation-removal== 72729 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #12646: origin
                    (at_c_p4)

                    ; #74443: origin
                    (not_at_c_p6)

                    ; #36473: <==negation-removal== 74443 (pos)
                    (not (at_c_p6))

                    ; #72874: <==negation-removal== 12646 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #20156: origin
                    (at_c_p5)

                    ; #74443: origin
                    (not_at_c_p6)

                    ; #13577: <==negation-removal== 20156 (pos)
                    (not (not_at_c_p5))

                    ; #36473: <==negation-removal== 74443 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #36473: origin
                    (at_c_p6)

                    ; #74443: origin
                    (not_at_c_p6)

                    ; #36473: <==negation-removal== 74443 (pos)
                    (not (at_c_p6))

                    ; #74443: <==negation-removal== 36473 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #74443: origin
                    (not_at_c_p6)

                    ; #88227: origin
                    (at_c_p7)

                    ; #36473: <==negation-removal== 74443 (pos)
                    (not (at_c_p6))

                    ; #54662: <==negation-removal== 88227 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #46380: origin
                    (at_c_p8)

                    ; #74443: origin
                    (not_at_c_p6)

                    ; #36473: <==negation-removal== 74443 (pos)
                    (not (at_c_p6))

                    ; #85767: <==negation-removal== 46380 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #34411: origin
                    (at_c_p9)

                    ; #74443: origin
                    (not_at_c_p6)

                    ; #36473: <==negation-removal== 74443 (pos)
                    (not (at_c_p6))

                    ; #36715: <==negation-removal== 34411 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #35101: origin
                    (at_c_p1)

                    ; #54662: origin
                    (not_at_c_p7)

                    ; #71150: <==negation-removal== 35101 (pos)
                    (not (not_at_c_p1))

                    ; #88227: <==negation-removal== 54662 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #54662: origin
                    (not_at_c_p7)

                    ; #71940: origin
                    (at_c_p2)

                    ; #75282: <==negation-removal== 71940 (pos)
                    (not (not_at_c_p2))

                    ; #88227: <==negation-removal== 54662 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #54662: origin
                    (not_at_c_p7)

                    ; #72729: origin
                    (at_c_p3)

                    ; #56147: <==negation-removal== 72729 (pos)
                    (not (not_at_c_p3))

                    ; #88227: <==negation-removal== 54662 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #12646: origin
                    (at_c_p4)

                    ; #54662: origin
                    (not_at_c_p7)

                    ; #72874: <==negation-removal== 12646 (pos)
                    (not (not_at_c_p4))

                    ; #88227: <==negation-removal== 54662 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #20156: origin
                    (at_c_p5)

                    ; #54662: origin
                    (not_at_c_p7)

                    ; #13577: <==negation-removal== 20156 (pos)
                    (not (not_at_c_p5))

                    ; #88227: <==negation-removal== 54662 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #36473: origin
                    (at_c_p6)

                    ; #54662: origin
                    (not_at_c_p7)

                    ; #74443: <==negation-removal== 36473 (pos)
                    (not (not_at_c_p6))

                    ; #88227: <==negation-removal== 54662 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #54662: origin
                    (not_at_c_p7)

                    ; #88227: origin
                    (at_c_p7)

                    ; #54662: <==negation-removal== 88227 (pos)
                    (not (not_at_c_p7))

                    ; #88227: <==negation-removal== 54662 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #46380: origin
                    (at_c_p8)

                    ; #54662: origin
                    (not_at_c_p7)

                    ; #85767: <==negation-removal== 46380 (pos)
                    (not (not_at_c_p8))

                    ; #88227: <==negation-removal== 54662 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #34411: origin
                    (at_c_p9)

                    ; #54662: origin
                    (not_at_c_p7)

                    ; #36715: <==negation-removal== 34411 (pos)
                    (not (not_at_c_p9))

                    ; #88227: <==negation-removal== 54662 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #35101: origin
                    (at_c_p1)

                    ; #85767: origin
                    (not_at_c_p8)

                    ; #46380: <==negation-removal== 85767 (pos)
                    (not (at_c_p8))

                    ; #71150: <==negation-removal== 35101 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #71940: origin
                    (at_c_p2)

                    ; #85767: origin
                    (not_at_c_p8)

                    ; #46380: <==negation-removal== 85767 (pos)
                    (not (at_c_p8))

                    ; #75282: <==negation-removal== 71940 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #72729: origin
                    (at_c_p3)

                    ; #85767: origin
                    (not_at_c_p8)

                    ; #46380: <==negation-removal== 85767 (pos)
                    (not (at_c_p8))

                    ; #56147: <==negation-removal== 72729 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #12646: origin
                    (at_c_p4)

                    ; #85767: origin
                    (not_at_c_p8)

                    ; #46380: <==negation-removal== 85767 (pos)
                    (not (at_c_p8))

                    ; #72874: <==negation-removal== 12646 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #20156: origin
                    (at_c_p5)

                    ; #85767: origin
                    (not_at_c_p8)

                    ; #13577: <==negation-removal== 20156 (pos)
                    (not (not_at_c_p5))

                    ; #46380: <==negation-removal== 85767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #36473: origin
                    (at_c_p6)

                    ; #85767: origin
                    (not_at_c_p8)

                    ; #46380: <==negation-removal== 85767 (pos)
                    (not (at_c_p8))

                    ; #74443: <==negation-removal== 36473 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #85767: origin
                    (not_at_c_p8)

                    ; #88227: origin
                    (at_c_p7)

                    ; #46380: <==negation-removal== 85767 (pos)
                    (not (at_c_p8))

                    ; #54662: <==negation-removal== 88227 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #46380: origin
                    (at_c_p8)

                    ; #85767: origin
                    (not_at_c_p8)

                    ; #46380: <==negation-removal== 85767 (pos)
                    (not (at_c_p8))

                    ; #85767: <==negation-removal== 46380 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #34411: origin
                    (at_c_p9)

                    ; #85767: origin
                    (not_at_c_p8)

                    ; #36715: <==negation-removal== 34411 (pos)
                    (not (not_at_c_p9))

                    ; #46380: <==negation-removal== 85767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #35101: origin
                    (at_c_p1)

                    ; #36715: origin
                    (not_at_c_p9)

                    ; #34411: <==negation-removal== 36715 (pos)
                    (not (at_c_p9))

                    ; #71150: <==negation-removal== 35101 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #36715: origin
                    (not_at_c_p9)

                    ; #71940: origin
                    (at_c_p2)

                    ; #34411: <==negation-removal== 36715 (pos)
                    (not (at_c_p9))

                    ; #75282: <==negation-removal== 71940 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #36715: origin
                    (not_at_c_p9)

                    ; #72729: origin
                    (at_c_p3)

                    ; #34411: <==negation-removal== 36715 (pos)
                    (not (at_c_p9))

                    ; #56147: <==negation-removal== 72729 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #12646: origin
                    (at_c_p4)

                    ; #36715: origin
                    (not_at_c_p9)

                    ; #34411: <==negation-removal== 36715 (pos)
                    (not (at_c_p9))

                    ; #72874: <==negation-removal== 12646 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #20156: origin
                    (at_c_p5)

                    ; #36715: origin
                    (not_at_c_p9)

                    ; #13577: <==negation-removal== 20156 (pos)
                    (not (not_at_c_p5))

                    ; #34411: <==negation-removal== 36715 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #36473: origin
                    (at_c_p6)

                    ; #36715: origin
                    (not_at_c_p9)

                    ; #34411: <==negation-removal== 36715 (pos)
                    (not (at_c_p9))

                    ; #74443: <==negation-removal== 36473 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #36715: origin
                    (not_at_c_p9)

                    ; #88227: origin
                    (at_c_p7)

                    ; #34411: <==negation-removal== 36715 (pos)
                    (not (at_c_p9))

                    ; #54662: <==negation-removal== 88227 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #36715: origin
                    (not_at_c_p9)

                    ; #46380: origin
                    (at_c_p8)

                    ; #34411: <==negation-removal== 36715 (pos)
                    (not (at_c_p9))

                    ; #85767: <==negation-removal== 46380 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #34411: origin
                    (at_c_p9)

                    ; #36715: origin
                    (not_at_c_p9)

                    ; #34411: <==negation-removal== 36715 (pos)
                    (not (at_c_p9))

                    ; #36715: <==negation-removal== 34411 (pos)
                    (not (not_at_c_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #20431: origin
                    (at_d_p1)

                    ; #74091: origin
                    (not_at_d_p1)

                    ; #20431: <==negation-removal== 74091 (pos)
                    (not (at_d_p1))

                    ; #74091: <==negation-removal== 20431 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #19411: origin
                    (at_d_p2)

                    ; #74091: origin
                    (not_at_d_p1)

                    ; #20431: <==negation-removal== 74091 (pos)
                    (not (at_d_p1))

                    ; #29315: <==negation-removal== 19411 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (at_d_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #37266: origin
                    (at_d_p3)

                    ; #74091: origin
                    (not_at_d_p1)

                    ; #20431: <==negation-removal== 74091 (pos)
                    (not (at_d_p1))

                    ; #62375: <==negation-removal== 37266 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #74091: origin
                    (not_at_d_p1)

                    ; #81503: origin
                    (at_d_p4)

                    ; #20431: <==negation-removal== 74091 (pos)
                    (not (at_d_p1))

                    ; #26131: <==negation-removal== 81503 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #41980: origin
                    (at_d_p5)

                    ; #74091: origin
                    (not_at_d_p1)

                    ; #20431: <==negation-removal== 74091 (pos)
                    (not (at_d_p1))

                    ; #38241: <==negation-removal== 41980 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #74091: origin
                    (not_at_d_p1)

                    ; #89139: origin
                    (at_d_p6)

                    ; #20431: <==negation-removal== 74091 (pos)
                    (not (at_d_p1))

                    ; #41875: <==negation-removal== 89139 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (at_d_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #74091: origin
                    (not_at_d_p1)

                    ; #80971: origin
                    (at_d_p7)

                    ; #20431: <==negation-removal== 74091 (pos)
                    (not (at_d_p1))

                    ; #57982: <==negation-removal== 80971 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #41831: origin
                    (at_d_p8)

                    ; #74091: origin
                    (not_at_d_p1)

                    ; #20431: <==negation-removal== 74091 (pos)
                    (not (at_d_p1))

                    ; #59389: <==negation-removal== 41831 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #62513: origin
                    (at_d_p9)

                    ; #74091: origin
                    (not_at_d_p1)

                    ; #20431: <==negation-removal== 74091 (pos)
                    (not (at_d_p1))

                    ; #63683: <==negation-removal== 62513 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #20431: origin
                    (at_d_p1)

                    ; #29315: origin
                    (not_at_d_p2)

                    ; #19411: <==negation-removal== 29315 (pos)
                    (not (at_d_p2))

                    ; #74091: <==negation-removal== 20431 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #19411: origin
                    (at_d_p2)

                    ; #29315: origin
                    (not_at_d_p2)

                    ; #19411: <==negation-removal== 29315 (pos)
                    (not (at_d_p2))

                    ; #29315: <==negation-removal== 19411 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #29315: origin
                    (not_at_d_p2)

                    ; #37266: origin
                    (at_d_p3)

                    ; #19411: <==negation-removal== 29315 (pos)
                    (not (at_d_p2))

                    ; #62375: <==negation-removal== 37266 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2))
        :effect (and
                    ; #29315: origin
                    (not_at_d_p2)

                    ; #81503: origin
                    (at_d_p4)

                    ; #19411: <==negation-removal== 29315 (pos)
                    (not (at_d_p2))

                    ; #26131: <==negation-removal== 81503 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_d_p2))
        :effect (and
                    ; #29315: origin
                    (not_at_d_p2)

                    ; #41980: origin
                    (at_d_p5)

                    ; #19411: <==negation-removal== 29315 (pos)
                    (not (at_d_p2))

                    ; #38241: <==negation-removal== 41980 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #29315: origin
                    (not_at_d_p2)

                    ; #89139: origin
                    (at_d_p6)

                    ; #19411: <==negation-removal== 29315 (pos)
                    (not (at_d_p2))

                    ; #41875: <==negation-removal== 89139 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #29315: origin
                    (not_at_d_p2)

                    ; #80971: origin
                    (at_d_p7)

                    ; #19411: <==negation-removal== 29315 (pos)
                    (not (at_d_p2))

                    ; #57982: <==negation-removal== 80971 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #29315: origin
                    (not_at_d_p2)

                    ; #41831: origin
                    (at_d_p8)

                    ; #19411: <==negation-removal== 29315 (pos)
                    (not (at_d_p2))

                    ; #59389: <==negation-removal== 41831 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #29315: origin
                    (not_at_d_p2)

                    ; #62513: origin
                    (at_d_p9)

                    ; #19411: <==negation-removal== 29315 (pos)
                    (not (at_d_p2))

                    ; #63683: <==negation-removal== 62513 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #20431: origin
                    (at_d_p1)

                    ; #62375: origin
                    (not_at_d_p3)

                    ; #37266: <==negation-removal== 62375 (pos)
                    (not (at_d_p3))

                    ; #74091: <==negation-removal== 20431 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #19411: origin
                    (at_d_p2)

                    ; #62375: origin
                    (not_at_d_p3)

                    ; #29315: <==negation-removal== 19411 (pos)
                    (not (not_at_d_p2))

                    ; #37266: <==negation-removal== 62375 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #37266: origin
                    (at_d_p3)

                    ; #62375: origin
                    (not_at_d_p3)

                    ; #37266: <==negation-removal== 62375 (pos)
                    (not (at_d_p3))

                    ; #62375: <==negation-removal== 37266 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #62375: origin
                    (not_at_d_p3)

                    ; #81503: origin
                    (at_d_p4)

                    ; #26131: <==negation-removal== 81503 (pos)
                    (not (not_at_d_p4))

                    ; #37266: <==negation-removal== 62375 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #41980: origin
                    (at_d_p5)

                    ; #62375: origin
                    (not_at_d_p3)

                    ; #37266: <==negation-removal== 62375 (pos)
                    (not (at_d_p3))

                    ; #38241: <==negation-removal== 41980 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (at_d_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #62375: origin
                    (not_at_d_p3)

                    ; #89139: origin
                    (at_d_p6)

                    ; #37266: <==negation-removal== 62375 (pos)
                    (not (at_d_p3))

                    ; #41875: <==negation-removal== 89139 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #62375: origin
                    (not_at_d_p3)

                    ; #80971: origin
                    (at_d_p7)

                    ; #37266: <==negation-removal== 62375 (pos)
                    (not (at_d_p3))

                    ; #57982: <==negation-removal== 80971 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (at_d_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #41831: origin
                    (at_d_p8)

                    ; #62375: origin
                    (not_at_d_p3)

                    ; #37266: <==negation-removal== 62375 (pos)
                    (not (at_d_p3))

                    ; #59389: <==negation-removal== 41831 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (at_d_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #62375: origin
                    (not_at_d_p3)

                    ; #62513: origin
                    (at_d_p9)

                    ; #37266: <==negation-removal== 62375 (pos)
                    (not (at_d_p3))

                    ; #63683: <==negation-removal== 62513 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_d_p4))
        :effect (and
                    ; #20431: origin
                    (at_d_p1)

                    ; #26131: origin
                    (not_at_d_p4)

                    ; #74091: <==negation-removal== 20431 (pos)
                    (not (not_at_d_p1))

                    ; #81503: <==negation-removal== 26131 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_d_p4))
        :effect (and
                    ; #19411: origin
                    (at_d_p2)

                    ; #26131: origin
                    (not_at_d_p4)

                    ; #29315: <==negation-removal== 19411 (pos)
                    (not (not_at_d_p2))

                    ; #81503: <==negation-removal== 26131 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_d_p4))
        :effect (and
                    ; #26131: origin
                    (not_at_d_p4)

                    ; #37266: origin
                    (at_d_p3)

                    ; #62375: <==negation-removal== 37266 (pos)
                    (not (not_at_d_p3))

                    ; #81503: <==negation-removal== 26131 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4))
        :effect (and
                    ; #26131: origin
                    (not_at_d_p4)

                    ; #81503: origin
                    (at_d_p4)

                    ; #26131: <==negation-removal== 81503 (pos)
                    (not (not_at_d_p4))

                    ; #81503: <==negation-removal== 26131 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_d_p4))
        :effect (and
                    ; #26131: origin
                    (not_at_d_p4)

                    ; #41980: origin
                    (at_d_p5)

                    ; #38241: <==negation-removal== 41980 (pos)
                    (not (not_at_d_p5))

                    ; #81503: <==negation-removal== 26131 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_d_p4))
        :effect (and
                    ; #26131: origin
                    (not_at_d_p4)

                    ; #89139: origin
                    (at_d_p6)

                    ; #41875: <==negation-removal== 89139 (pos)
                    (not (not_at_d_p6))

                    ; #81503: <==negation-removal== 26131 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #26131: origin
                    (not_at_d_p4)

                    ; #80971: origin
                    (at_d_p7)

                    ; #57982: <==negation-removal== 80971 (pos)
                    (not (not_at_d_p7))

                    ; #81503: <==negation-removal== 26131 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4))
        :effect (and
                    ; #26131: origin
                    (not_at_d_p4)

                    ; #41831: origin
                    (at_d_p8)

                    ; #59389: <==negation-removal== 41831 (pos)
                    (not (not_at_d_p8))

                    ; #81503: <==negation-removal== 26131 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_d_p4))
        :effect (and
                    ; #26131: origin
                    (not_at_d_p4)

                    ; #62513: origin
                    (at_d_p9)

                    ; #63683: <==negation-removal== 62513 (pos)
                    (not (not_at_d_p9))

                    ; #81503: <==negation-removal== 26131 (pos)
                    (not (at_d_p4))))

    (:action move_d_p5_p1
        :precondition (and (at_d_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #20431: origin
                    (at_d_p1)

                    ; #38241: origin
                    (not_at_d_p5)

                    ; #41980: <==negation-removal== 38241 (pos)
                    (not (at_d_p5))

                    ; #74091: <==negation-removal== 20431 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p2
        :precondition (and (at_d_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #19411: origin
                    (at_d_p2)

                    ; #38241: origin
                    (not_at_d_p5)

                    ; #29315: <==negation-removal== 19411 (pos)
                    (not (not_at_d_p2))

                    ; #41980: <==negation-removal== 38241 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #37266: origin
                    (at_d_p3)

                    ; #38241: origin
                    (not_at_d_p5)

                    ; #41980: <==negation-removal== 38241 (pos)
                    (not (at_d_p5))

                    ; #62375: <==negation-removal== 37266 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (at_d_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #38241: origin
                    (not_at_d_p5)

                    ; #81503: origin
                    (at_d_p4)

                    ; #26131: <==negation-removal== 81503 (pos)
                    (not (not_at_d_p4))

                    ; #41980: <==negation-removal== 38241 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #38241: origin
                    (not_at_d_p5)

                    ; #41980: origin
                    (at_d_p5)

                    ; #38241: <==negation-removal== 41980 (pos)
                    (not (not_at_d_p5))

                    ; #41980: <==negation-removal== 38241 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #38241: origin
                    (not_at_d_p5)

                    ; #89139: origin
                    (at_d_p6)

                    ; #41875: <==negation-removal== 89139 (pos)
                    (not (not_at_d_p6))

                    ; #41980: <==negation-removal== 38241 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (at_d_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #38241: origin
                    (not_at_d_p5)

                    ; #80971: origin
                    (at_d_p7)

                    ; #41980: <==negation-removal== 38241 (pos)
                    (not (at_d_p5))

                    ; #57982: <==negation-removal== 80971 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #38241: origin
                    (not_at_d_p5)

                    ; #41831: origin
                    (at_d_p8)

                    ; #41980: <==negation-removal== 38241 (pos)
                    (not (at_d_p5))

                    ; #59389: <==negation-removal== 41831 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #38241: origin
                    (not_at_d_p5)

                    ; #62513: origin
                    (at_d_p9)

                    ; #41980: <==negation-removal== 38241 (pos)
                    (not (at_d_p5))

                    ; #63683: <==negation-removal== 62513 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #20431: origin
                    (at_d_p1)

                    ; #41875: origin
                    (not_at_d_p6)

                    ; #74091: <==negation-removal== 20431 (pos)
                    (not (not_at_d_p1))

                    ; #89139: <==negation-removal== 41875 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #19411: origin
                    (at_d_p2)

                    ; #41875: origin
                    (not_at_d_p6)

                    ; #29315: <==negation-removal== 19411 (pos)
                    (not (not_at_d_p2))

                    ; #89139: <==negation-removal== 41875 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #37266: origin
                    (at_d_p3)

                    ; #41875: origin
                    (not_at_d_p6)

                    ; #62375: <==negation-removal== 37266 (pos)
                    (not (not_at_d_p3))

                    ; #89139: <==negation-removal== 41875 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #41875: origin
                    (not_at_d_p6)

                    ; #81503: origin
                    (at_d_p4)

                    ; #26131: <==negation-removal== 81503 (pos)
                    (not (not_at_d_p4))

                    ; #89139: <==negation-removal== 41875 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #41875: origin
                    (not_at_d_p6)

                    ; #41980: origin
                    (at_d_p5)

                    ; #38241: <==negation-removal== 41980 (pos)
                    (not (not_at_d_p5))

                    ; #89139: <==negation-removal== 41875 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #41875: origin
                    (not_at_d_p6)

                    ; #89139: origin
                    (at_d_p6)

                    ; #41875: <==negation-removal== 89139 (pos)
                    (not (not_at_d_p6))

                    ; #89139: <==negation-removal== 41875 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #41875: origin
                    (not_at_d_p6)

                    ; #80971: origin
                    (at_d_p7)

                    ; #57982: <==negation-removal== 80971 (pos)
                    (not (not_at_d_p7))

                    ; #89139: <==negation-removal== 41875 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (at_d_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #41831: origin
                    (at_d_p8)

                    ; #41875: origin
                    (not_at_d_p6)

                    ; #59389: <==negation-removal== 41831 (pos)
                    (not (not_at_d_p8))

                    ; #89139: <==negation-removal== 41875 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #41875: origin
                    (not_at_d_p6)

                    ; #62513: origin
                    (at_d_p9)

                    ; #63683: <==negation-removal== 62513 (pos)
                    (not (not_at_d_p9))

                    ; #89139: <==negation-removal== 41875 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #20431: origin
                    (at_d_p1)

                    ; #57982: origin
                    (not_at_d_p7)

                    ; #74091: <==negation-removal== 20431 (pos)
                    (not (not_at_d_p1))

                    ; #80971: <==negation-removal== 57982 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #19411: origin
                    (at_d_p2)

                    ; #57982: origin
                    (not_at_d_p7)

                    ; #29315: <==negation-removal== 19411 (pos)
                    (not (not_at_d_p2))

                    ; #80971: <==negation-removal== 57982 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #37266: origin
                    (at_d_p3)

                    ; #57982: origin
                    (not_at_d_p7)

                    ; #62375: <==negation-removal== 37266 (pos)
                    (not (not_at_d_p3))

                    ; #80971: <==negation-removal== 57982 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #57982: origin
                    (not_at_d_p7)

                    ; #81503: origin
                    (at_d_p4)

                    ; #26131: <==negation-removal== 81503 (pos)
                    (not (not_at_d_p4))

                    ; #80971: <==negation-removal== 57982 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #41980: origin
                    (at_d_p5)

                    ; #57982: origin
                    (not_at_d_p7)

                    ; #38241: <==negation-removal== 41980 (pos)
                    (not (not_at_d_p5))

                    ; #80971: <==negation-removal== 57982 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #57982: origin
                    (not_at_d_p7)

                    ; #89139: origin
                    (at_d_p6)

                    ; #41875: <==negation-removal== 89139 (pos)
                    (not (not_at_d_p6))

                    ; #80971: <==negation-removal== 57982 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #57982: origin
                    (not_at_d_p7)

                    ; #80971: origin
                    (at_d_p7)

                    ; #57982: <==negation-removal== 80971 (pos)
                    (not (not_at_d_p7))

                    ; #80971: <==negation-removal== 57982 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #41831: origin
                    (at_d_p8)

                    ; #57982: origin
                    (not_at_d_p7)

                    ; #59389: <==negation-removal== 41831 (pos)
                    (not (not_at_d_p8))

                    ; #80971: <==negation-removal== 57982 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #57982: origin
                    (not_at_d_p7)

                    ; #62513: origin
                    (at_d_p9)

                    ; #63683: <==negation-removal== 62513 (pos)
                    (not (not_at_d_p9))

                    ; #80971: <==negation-removal== 57982 (pos)
                    (not (at_d_p7))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #20431: origin
                    (at_d_p1)

                    ; #59389: origin
                    (not_at_d_p8)

                    ; #41831: <==negation-removal== 59389 (pos)
                    (not (at_d_p8))

                    ; #74091: <==negation-removal== 20431 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #19411: origin
                    (at_d_p2)

                    ; #59389: origin
                    (not_at_d_p8)

                    ; #29315: <==negation-removal== 19411 (pos)
                    (not (not_at_d_p2))

                    ; #41831: <==negation-removal== 59389 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8))
        :effect (and
                    ; #37266: origin
                    (at_d_p3)

                    ; #59389: origin
                    (not_at_d_p8)

                    ; #41831: <==negation-removal== 59389 (pos)
                    (not (at_d_p8))

                    ; #62375: <==negation-removal== 37266 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #59389: origin
                    (not_at_d_p8)

                    ; #81503: origin
                    (at_d_p4)

                    ; #26131: <==negation-removal== 81503 (pos)
                    (not (not_at_d_p4))

                    ; #41831: <==negation-removal== 59389 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8))
        :effect (and
                    ; #41980: origin
                    (at_d_p5)

                    ; #59389: origin
                    (not_at_d_p8)

                    ; #38241: <==negation-removal== 41980 (pos)
                    (not (not_at_d_p5))

                    ; #41831: <==negation-removal== 59389 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_d_p8))
        :effect (and
                    ; #59389: origin
                    (not_at_d_p8)

                    ; #89139: origin
                    (at_d_p6)

                    ; #41831: <==negation-removal== 59389 (pos)
                    (not (at_d_p8))

                    ; #41875: <==negation-removal== 89139 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #59389: origin
                    (not_at_d_p8)

                    ; #80971: origin
                    (at_d_p7)

                    ; #41831: <==negation-removal== 59389 (pos)
                    (not (at_d_p8))

                    ; #57982: <==negation-removal== 80971 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8))
        :effect (and
                    ; #41831: origin
                    (at_d_p8)

                    ; #59389: origin
                    (not_at_d_p8)

                    ; #41831: <==negation-removal== 59389 (pos)
                    (not (at_d_p8))

                    ; #59389: <==negation-removal== 41831 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8))
        :effect (and
                    ; #59389: origin
                    (not_at_d_p8)

                    ; #62513: origin
                    (at_d_p9)

                    ; #41831: <==negation-removal== 59389 (pos)
                    (not (at_d_p8))

                    ; #63683: <==negation-removal== 62513 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9))
        :effect (and
                    ; #20431: origin
                    (at_d_p1)

                    ; #63683: origin
                    (not_at_d_p9)

                    ; #62513: <==negation-removal== 63683 (pos)
                    (not (at_d_p9))

                    ; #74091: <==negation-removal== 20431 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9))
        :effect (and
                    ; #19411: origin
                    (at_d_p2)

                    ; #63683: origin
                    (not_at_d_p9)

                    ; #29315: <==negation-removal== 19411 (pos)
                    (not (not_at_d_p2))

                    ; #62513: <==negation-removal== 63683 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #37266: origin
                    (at_d_p3)

                    ; #63683: origin
                    (not_at_d_p9)

                    ; #62375: <==negation-removal== 37266 (pos)
                    (not (not_at_d_p3))

                    ; #62513: <==negation-removal== 63683 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_d_p9))
        :effect (and
                    ; #63683: origin
                    (not_at_d_p9)

                    ; #81503: origin
                    (at_d_p4)

                    ; #26131: <==negation-removal== 81503 (pos)
                    (not (not_at_d_p4))

                    ; #62513: <==negation-removal== 63683 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #41980: origin
                    (at_d_p5)

                    ; #63683: origin
                    (not_at_d_p9)

                    ; #38241: <==negation-removal== 41980 (pos)
                    (not (not_at_d_p5))

                    ; #62513: <==negation-removal== 63683 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9))
        :effect (and
                    ; #63683: origin
                    (not_at_d_p9)

                    ; #89139: origin
                    (at_d_p6)

                    ; #41875: <==negation-removal== 89139 (pos)
                    (not (not_at_d_p6))

                    ; #62513: <==negation-removal== 63683 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #63683: origin
                    (not_at_d_p9)

                    ; #80971: origin
                    (at_d_p7)

                    ; #57982: <==negation-removal== 80971 (pos)
                    (not (not_at_d_p7))

                    ; #62513: <==negation-removal== 63683 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_d_p9))
        :effect (and
                    ; #41831: origin
                    (at_d_p8)

                    ; #63683: origin
                    (not_at_d_p9)

                    ; #59389: <==negation-removal== 41831 (pos)
                    (not (not_at_d_p8))

                    ; #62513: <==negation-removal== 63683 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #62513: origin
                    (at_d_p9)

                    ; #63683: origin
                    (not_at_d_p9)

                    ; #62513: <==negation-removal== 63683 (pos)
                    (not (at_d_p9))

                    ; #63683: <==negation-removal== 62513 (pos)
                    (not (not_at_d_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11455: <==commonly_known== 56045 (neg)
                    (Pc_checked_p1)

                    ; #12318: origin
                    (checked_p1)

                    ; #20628: <==commonly_known== 56045 (neg)
                    (Pd_checked_p1)

                    ; #23401: <==commonly_known== 56045 (neg)
                    (Pb_checked_p1)

                    ; #30059: <==closure== 43260 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #35533: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #43260: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #46243: <==commonly_known== 12318 (pos)
                    (Bb_checked_p1)

                    ; #63824: <==closure== 35533 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #65776: <==commonly_known== 12318 (pos)
                    (Bd_checked_p1)

                    ; #83806: <==commonly_known== 56045 (neg)
                    (Pa_checked_p1)

                    ; #86918: <==commonly_known== 12318 (pos)
                    (Ba_checked_p1)

                    ; #87986: <==commonly_known== 12318 (pos)
                    (Bc_checked_p1)

                    ; #25178: <==negation-removal== 46243 (pos)
                    (not (Pb_not_checked_p1))

                    ; #32658: <==negation-removal== 63824 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #34900: <==uncertain_firing== 35533 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #35005: <==negation-removal== 65776 (pos)
                    (not (Pd_not_checked_p1))

                    ; #38152: <==uncertain_firing== 30059 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #41752: <==negation-removal== 23401 (pos)
                    (not (Bb_not_checked_p1))

                    ; #46741: <==negation-removal== 20628 (pos)
                    (not (Bd_not_checked_p1))

                    ; #48513: <==negation-removal== 83806 (pos)
                    (not (Ba_not_checked_p1))

                    ; #51747: <==uncertain_firing== 63824 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #56045: <==negation-removal== 12318 (pos)
                    (not (not_checked_p1))

                    ; #57394: <==negation-removal== 86918 (pos)
                    (not (Pa_not_checked_p1))

                    ; #58924: <==negation-removal== 11455 (pos)
                    (not (Bc_not_checked_p1))

                    ; #60159: <==negation-removal== 87986 (pos)
                    (not (Pc_not_checked_p1))

                    ; #62750: <==negation-removal== 35533 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #64560: <==negation-removal== 43260 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #67283: <==negation-removal== 30059 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #91897: <==uncertain_firing== 43260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12622: <==commonly_known== 12388 (neg)
                    (Pc_checked_p2)

                    ; #22594: <==commonly_known== 12388 (neg)
                    (Pa_checked_p2)

                    ; #24403: <==closure== 88129 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #29792: <==commonly_known== 59068 (pos)
                    (Ba_checked_p2)

                    ; #50897: <==commonly_known== 59068 (pos)
                    (Bb_checked_p2)

                    ; #51834: <==closure== 62344 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #55974: <==commonly_known== 59068 (pos)
                    (Bc_checked_p2)

                    ; #59068: origin
                    (checked_p2)

                    ; #62344: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #67548: <==commonly_known== 12388 (neg)
                    (Pd_checked_p2)

                    ; #78879: <==commonly_known== 59068 (pos)
                    (Bd_checked_p2)

                    ; #83848: <==commonly_known== 12388 (neg)
                    (Pb_checked_p2)

                    ; #88129: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #12388: <==negation-removal== 59068 (pos)
                    (not (not_checked_p2))

                    ; #12457: <==negation-removal== 88129 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #16153: <==negation-removal== 83848 (pos)
                    (not (Bb_not_checked_p2))

                    ; #21572: <==negation-removal== 12622 (pos)
                    (not (Bc_not_checked_p2))

                    ; #24922: <==negation-removal== 22594 (pos)
                    (not (Ba_not_checked_p2))

                    ; #36880: <==negation-removal== 50897 (pos)
                    (not (Pb_not_checked_p2))

                    ; #38352: <==uncertain_firing== 88129 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #42874: <==uncertain_firing== 24403 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #45088: <==negation-removal== 62344 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #46962: <==negation-removal== 51834 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #80896: <==negation-removal== 78879 (pos)
                    (not (Pd_not_checked_p2))

                    ; #83565: <==negation-removal== 67548 (pos)
                    (not (Bd_not_checked_p2))

                    ; #86962: <==uncertain_firing== 62344 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #89286: <==uncertain_firing== 51834 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #90000: <==negation-removal== 55974 (pos)
                    (not (Pc_not_checked_p2))

                    ; #90721: <==negation-removal== 29792 (pos)
                    (not (Pa_not_checked_p2))

                    ; #98452: <==negation-removal== 24403 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13289: <==commonly_known== 46037 (pos)
                    (Bb_checked_p3)

                    ; #23705: <==commonly_known== 46037 (pos)
                    (Bc_checked_p3)

                    ; #27725: <==commonly_known== 46037 (pos)
                    (Bd_checked_p3)

                    ; #28916: <==closure== 70477 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #45465: <==commonly_known== 61606 (neg)
                    (Pa_checked_p3)

                    ; #46037: origin
                    (checked_p3)

                    ; #64445: <==commonly_known== 61606 (neg)
                    (Pd_checked_p3)

                    ; #64672: <==commonly_known== 46037 (pos)
                    (Ba_checked_p3)

                    ; #70477: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #73433: <==commonly_known== 61606 (neg)
                    (Pb_checked_p3)

                    ; #75318: <==closure== 79760 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #78146: <==commonly_known== 61606 (neg)
                    (Pc_checked_p3)

                    ; #79760: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #28869: <==uncertain_firing== 70477 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #29958: <==negation-removal== 70477 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #30490: <==negation-removal== 64445 (pos)
                    (not (Bd_not_checked_p3))

                    ; #35038: <==negation-removal== 28916 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #38949: <==uncertain_firing== 28916 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #55963: <==negation-removal== 75318 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #56848: <==negation-removal== 73433 (pos)
                    (not (Bb_not_checked_p3))

                    ; #59605: <==uncertain_firing== 75318 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #61606: <==negation-removal== 46037 (pos)
                    (not (not_checked_p3))

                    ; #67065: <==negation-removal== 79760 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #68687: <==negation-removal== 45465 (pos)
                    (not (Ba_not_checked_p3))

                    ; #71117: <==negation-removal== 23705 (pos)
                    (not (Pc_not_checked_p3))

                    ; #71578: <==negation-removal== 13289 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80858: <==negation-removal== 78146 (pos)
                    (not (Bc_not_checked_p3))

                    ; #86112: <==negation-removal== 64672 (pos)
                    (not (Pa_not_checked_p3))

                    ; #86324: <==uncertain_firing== 79760 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #89308: <==negation-removal== 27725 (pos)
                    (not (Pd_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #18813: <==commonly_known== 47608 (pos)
                    (Bc_checked_p4)

                    ; #20246: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #20292: <==commonly_known== 67271 (neg)
                    (Pd_checked_p4)

                    ; #34727: <==closure== 20246 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #38905: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #43097: <==commonly_known== 47608 (pos)
                    (Bd_checked_p4)

                    ; #47608: origin
                    (checked_p4)

                    ; #48021: <==closure== 38905 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #58170: <==commonly_known== 67271 (neg)
                    (Pa_checked_p4)

                    ; #59252: <==commonly_known== 67271 (neg)
                    (Pc_checked_p4)

                    ; #62122: <==commonly_known== 47608 (pos)
                    (Ba_checked_p4)

                    ; #63151: <==commonly_known== 47608 (pos)
                    (Bb_checked_p4)

                    ; #90160: <==commonly_known== 67271 (neg)
                    (Pb_checked_p4)

                    ; #16006: <==negation-removal== 38905 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #19059: <==uncertain_firing== 38905 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #35898: <==negation-removal== 48021 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #39178: <==negation-removal== 63151 (pos)
                    (not (Pb_not_checked_p4))

                    ; #44730: <==negation-removal== 58170 (pos)
                    (not (Ba_not_checked_p4))

                    ; #48233: <==negation-removal== 20292 (pos)
                    (not (Bd_not_checked_p4))

                    ; #48416: <==uncertain_firing== 48021 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #50633: <==negation-removal== 18813 (pos)
                    (not (Pc_not_checked_p4))

                    ; #53633: <==negation-removal== 20246 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #59473: <==uncertain_firing== 34727 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #64034: <==negation-removal== 90160 (pos)
                    (not (Bb_not_checked_p4))

                    ; #65954: <==negation-removal== 43097 (pos)
                    (not (Pd_not_checked_p4))

                    ; #67271: <==negation-removal== 47608 (pos)
                    (not (not_checked_p4))

                    ; #70613: <==uncertain_firing== 20246 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #75757: <==negation-removal== 34727 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #86493: <==negation-removal== 62122 (pos)
                    (not (Pa_not_checked_p4))

                    ; #86994: <==negation-removal== 59252 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #15796: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #19816: <==commonly_known== 57028 (pos)
                    (Bb_checked_p5)

                    ; #20396: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #20843: <==commonly_known== 14677 (neg)
                    (Pd_checked_p5)

                    ; #28119: <==closure== 15796 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #40849: <==commonly_known== 57028 (pos)
                    (Bd_checked_p5)

                    ; #57028: origin
                    (checked_p5)

                    ; #62033: <==commonly_known== 57028 (pos)
                    (Bc_checked_p5)

                    ; #69312: <==closure== 20396 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #74057: <==commonly_known== 14677 (neg)
                    (Pb_checked_p5)

                    ; #75758: <==commonly_known== 57028 (pos)
                    (Ba_checked_p5)

                    ; #76849: <==commonly_known== 14677 (neg)
                    (Pc_checked_p5)

                    ; #88447: <==commonly_known== 14677 (neg)
                    (Pa_checked_p5)

                    ; #10608: <==negation-removal== 88447 (pos)
                    (not (Ba_not_checked_p5))

                    ; #12143: <==negation-removal== 76849 (pos)
                    (not (Bc_not_checked_p5))

                    ; #13067: <==negation-removal== 28119 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #14677: <==negation-removal== 57028 (pos)
                    (not (not_checked_p5))

                    ; #15354: <==negation-removal== 62033 (pos)
                    (not (Pc_not_checked_p5))

                    ; #18636: <==negation-removal== 20843 (pos)
                    (not (Bd_not_checked_p5))

                    ; #19339: <==uncertain_firing== 15796 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #53209: <==negation-removal== 75758 (pos)
                    (not (Pa_not_checked_p5))

                    ; #55307: <==negation-removal== 20396 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #59379: <==negation-removal== 19816 (pos)
                    (not (Pb_not_checked_p5))

                    ; #65208: <==negation-removal== 40849 (pos)
                    (not (Pd_not_checked_p5))

                    ; #66660: <==negation-removal== 69312 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67655: <==negation-removal== 74057 (pos)
                    (not (Bb_not_checked_p5))

                    ; #68030: <==uncertain_firing== 69312 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #78774: <==negation-removal== 15796 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #79526: <==uncertain_firing== 20396 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #83715: <==uncertain_firing== 28119 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16307: <==commonly_known== 31588 (pos)
                    (Bc_checked_p6)

                    ; #21828: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #31588: origin
                    (checked_p6)

                    ; #34480: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #36225: <==commonly_known== 62202 (neg)
                    (Pc_checked_p6)

                    ; #42860: <==closure== 21828 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #45660: <==commonly_known== 62202 (neg)
                    (Pd_checked_p6)

                    ; #54584: <==commonly_known== 31588 (pos)
                    (Bd_checked_p6)

                    ; #62461: <==closure== 34480 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #67460: <==commonly_known== 31588 (pos)
                    (Ba_checked_p6)

                    ; #88486: <==commonly_known== 62202 (neg)
                    (Pb_checked_p6)

                    ; #89113: <==commonly_known== 62202 (neg)
                    (Pa_checked_p6)

                    ; #91220: <==commonly_known== 31588 (pos)
                    (Bb_checked_p6)

                    ; #12835: <==negation-removal== 62461 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #13770: <==uncertain_firing== 42860 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #18194: <==uncertain_firing== 21828 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #19718: <==negation-removal== 88486 (pos)
                    (not (Bb_not_checked_p6))

                    ; #21828: <==negation-removal== 34480 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #41629: <==negation-removal== 16307 (pos)
                    (not (Pc_not_checked_p6))

                    ; #42756: <==negation-removal== 36225 (pos)
                    (not (Bc_not_checked_p6))

                    ; #47761: <==negation-removal== 91220 (pos)
                    (not (Pb_not_checked_p6))

                    ; #57158: <==negation-removal== 45660 (pos)
                    (not (Bd_not_checked_p6))

                    ; #58725: <==negation-removal== 54584 (pos)
                    (not (Pd_not_checked_p6))

                    ; #62202: <==negation-removal== 31588 (pos)
                    (not (not_checked_p6))

                    ; #69593: <==uncertain_firing== 62461 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77061: <==negation-removal== 21828 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #77213: <==negation-removal== 89113 (pos)
                    (not (Ba_not_checked_p6))

                    ; #81332: <==negation-removal== 42860 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #83276: <==negation-removal== 67460 (pos)
                    (not (Pa_not_checked_p6))

                    ; #86535: <==uncertain_firing== 34480 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10393: <==commonly_known== 49567 (pos)
                    (Ba_checked_p7)

                    ; #16129: <==commonly_known== 49567 (pos)
                    (Bd_checked_p7)

                    ; #33375: <==commonly_known== 57805 (neg)
                    (Pb_checked_p7)

                    ; #43301: <==commonly_known== 57805 (neg)
                    (Pc_checked_p7)

                    ; #49567: origin
                    (checked_p7)

                    ; #51431: <==commonly_known== 49567 (pos)
                    (Bc_checked_p7)

                    ; #69996: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #71078: <==commonly_known== 49567 (pos)
                    (Bb_checked_p7)

                    ; #76046: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #81510: <==closure== 76046 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #82956: <==commonly_known== 57805 (neg)
                    (Pa_checked_p7)

                    ; #85953: <==closure== 69996 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #91522: <==commonly_known== 57805 (neg)
                    (Pd_checked_p7)

                    ; #12631: <==negation-removal== 43301 (pos)
                    (not (Bc_not_checked_p7))

                    ; #14543: <==negation-removal== 71078 (pos)
                    (not (Pb_not_checked_p7))

                    ; #19124: <==uncertain_firing== 81510 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #27786: <==negation-removal== 51431 (pos)
                    (not (Pc_not_checked_p7))

                    ; #32219: <==negation-removal== 33375 (pos)
                    (not (Bb_not_checked_p7))

                    ; #34129: <==negation-removal== 10393 (pos)
                    (not (Pa_not_checked_p7))

                    ; #37232: <==uncertain_firing== 85953 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #43463: <==uncertain_firing== 69996 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #43515: <==negation-removal== 69996 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #57805: <==negation-removal== 49567 (pos)
                    (not (not_checked_p7))

                    ; #62233: <==negation-removal== 16129 (pos)
                    (not (Pd_not_checked_p7))

                    ; #62429: <==negation-removal== 82956 (pos)
                    (not (Ba_not_checked_p7))

                    ; #68626: <==uncertain_firing== 76046 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #74294: <==negation-removal== 76046 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #81903: <==negation-removal== 81510 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #82929: <==negation-removal== 91522 (pos)
                    (not (Bd_not_checked_p7))

                    ; #86291: <==negation-removal== 85953 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19111: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #21864: <==commonly_known== 12977 (neg)
                    (Pa_checked_p8)

                    ; #36800: <==closure== 19111 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #44004: <==commonly_known== 12977 (neg)
                    (Pc_checked_p8)

                    ; #51463: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #56200: <==commonly_known== 82463 (pos)
                    (Bd_checked_p8)

                    ; #56483: <==commonly_known== 12977 (neg)
                    (Pd_checked_p8)

                    ; #56766: <==commonly_known== 82463 (pos)
                    (Bc_checked_p8)

                    ; #58461: <==commonly_known== 12977 (neg)
                    (Pb_checked_p8)

                    ; #74208: <==closure== 51463 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #82463: origin
                    (checked_p8)

                    ; #89264: <==commonly_known== 82463 (pos)
                    (Ba_checked_p8)

                    ; #91586: <==commonly_known== 82463 (pos)
                    (Bb_checked_p8)

                    ; #10575: <==negation-removal== 56483 (pos)
                    (not (Bd_not_checked_p8))

                    ; #12977: <==negation-removal== 82463 (pos)
                    (not (not_checked_p8))

                    ; #14724: <==negation-removal== 58461 (pos)
                    (not (Bb_not_checked_p8))

                    ; #31768: <==negation-removal== 74208 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #32895: <==negation-removal== 56200 (pos)
                    (not (Pd_not_checked_p8))

                    ; #46106: <==negation-removal== 51463 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #48271: <==uncertain_firing== 19111 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #49823: <==negation-removal== 21864 (pos)
                    (not (Ba_not_checked_p8))

                    ; #59095: <==uncertain_firing== 36800 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #69080: <==uncertain_firing== 74208 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #69403: <==uncertain_firing== 51463 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #74132: <==negation-removal== 19111 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #80403: <==negation-removal== 89264 (pos)
                    (not (Pa_not_checked_p8))

                    ; #83714: <==negation-removal== 44004 (pos)
                    (not (Bc_not_checked_p8))

                    ; #86699: <==negation-removal== 36800 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #90682: <==negation-removal== 56766 (pos)
                    (not (Pc_not_checked_p8))

                    ; #94223: <==negation-removal== 91586 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12069: origin
                    (checked_p9)

                    ; #17068: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #31861: <==commonly_known== 12069 (pos)
                    (Ba_checked_p9)

                    ; #36354: <==commonly_known== 74610 (neg)
                    (Pd_checked_p9)

                    ; #37080: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #42675: <==commonly_known== 12069 (pos)
                    (Bc_checked_p9)

                    ; #43970: <==closure== 37080 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #57630: <==commonly_known== 74610 (neg)
                    (Pc_checked_p9)

                    ; #59549: <==commonly_known== 12069 (pos)
                    (Bd_checked_p9)

                    ; #61199: <==commonly_known== 74610 (neg)
                    (Pa_checked_p9)

                    ; #78982: <==commonly_known== 12069 (pos)
                    (Bb_checked_p9)

                    ; #86206: <==closure== 17068 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #91657: <==commonly_known== 74610 (neg)
                    (Pb_checked_p9)

                    ; #13043: <==negation-removal== 31861 (pos)
                    (not (Pa_not_checked_p9))

                    ; #14001: <==negation-removal== 61199 (pos)
                    (not (Ba_not_checked_p9))

                    ; #15909: <==uncertain_firing== 86206 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #24093: <==negation-removal== 43970 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #24811: <==negation-removal== 86206 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #30145: <==uncertain_firing== 43970 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #39768: <==negation-removal== 36354 (pos)
                    (not (Bd_not_checked_p9))

                    ; #57886: <==negation-removal== 78982 (pos)
                    (not (Pb_not_checked_p9))

                    ; #67545: <==negation-removal== 59549 (pos)
                    (not (Pd_not_checked_p9))

                    ; #67866: <==uncertain_firing== 37080 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #68532: <==negation-removal== 57630 (pos)
                    (not (Bc_not_checked_p9))

                    ; #69572: <==uncertain_firing== 17068 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #74610: <==negation-removal== 12069 (pos)
                    (not (not_checked_p9))

                    ; #76609: <==negation-removal== 42675 (pos)
                    (not (Pc_not_checked_p9))

                    ; #78450: <==negation-removal== 17068 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #81115: <==negation-removal== 91657 (pos)
                    (not (Bb_not_checked_p9))

                    ; #82510: <==negation-removal== 37080 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11455: <==commonly_known== 56045 (neg)
                    (Pc_checked_p1)

                    ; #12318: origin
                    (checked_p1)

                    ; #20628: <==commonly_known== 56045 (neg)
                    (Pd_checked_p1)

                    ; #23401: <==commonly_known== 56045 (neg)
                    (Pb_checked_p1)

                    ; #27214: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #46243: <==commonly_known== 12318 (pos)
                    (Bb_checked_p1)

                    ; #51509: <==closure== 54609 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #54609: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #64997: <==closure== 27214 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #65776: <==commonly_known== 12318 (pos)
                    (Bd_checked_p1)

                    ; #83806: <==commonly_known== 56045 (neg)
                    (Pa_checked_p1)

                    ; #86918: <==commonly_known== 12318 (pos)
                    (Ba_checked_p1)

                    ; #87986: <==commonly_known== 12318 (pos)
                    (Bc_checked_p1)

                    ; #11555: <==negation-removal== 27214 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #11866: <==negation-removal== 64997 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #16200: <==uncertain_firing== 51509 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #25178: <==negation-removal== 46243 (pos)
                    (not (Pb_not_checked_p1))

                    ; #29455: <==negation-removal== 51509 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #35005: <==negation-removal== 65776 (pos)
                    (not (Pd_not_checked_p1))

                    ; #35617: <==uncertain_firing== 54609 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #41752: <==negation-removal== 23401 (pos)
                    (not (Bb_not_checked_p1))

                    ; #46741: <==negation-removal== 20628 (pos)
                    (not (Bd_not_checked_p1))

                    ; #48513: <==negation-removal== 83806 (pos)
                    (not (Ba_not_checked_p1))

                    ; #56045: <==negation-removal== 12318 (pos)
                    (not (not_checked_p1))

                    ; #57394: <==negation-removal== 86918 (pos)
                    (not (Pa_not_checked_p1))

                    ; #58924: <==negation-removal== 11455 (pos)
                    (not (Bc_not_checked_p1))

                    ; #60159: <==negation-removal== 87986 (pos)
                    (not (Pc_not_checked_p1))

                    ; #85847: <==uncertain_firing== 27214 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #86629: <==negation-removal== 54609 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #92080: <==uncertain_firing== 64997 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12622: <==commonly_known== 12388 (neg)
                    (Pc_checked_p2)

                    ; #18164: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #22594: <==commonly_known== 12388 (neg)
                    (Pa_checked_p2)

                    ; #29792: <==commonly_known== 59068 (pos)
                    (Ba_checked_p2)

                    ; #32178: <==closure== 82365 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #50897: <==commonly_known== 59068 (pos)
                    (Bb_checked_p2)

                    ; #55974: <==commonly_known== 59068 (pos)
                    (Bc_checked_p2)

                    ; #59068: origin
                    (checked_p2)

                    ; #67548: <==commonly_known== 12388 (neg)
                    (Pd_checked_p2)

                    ; #72950: <==closure== 18164 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #78879: <==commonly_known== 59068 (pos)
                    (Bd_checked_p2)

                    ; #82365: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #83848: <==commonly_known== 12388 (neg)
                    (Pb_checked_p2)

                    ; #12388: <==negation-removal== 59068 (pos)
                    (not (not_checked_p2))

                    ; #12682: <==negation-removal== 18164 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #16153: <==negation-removal== 83848 (pos)
                    (not (Bb_not_checked_p2))

                    ; #21572: <==negation-removal== 12622 (pos)
                    (not (Bc_not_checked_p2))

                    ; #24922: <==negation-removal== 22594 (pos)
                    (not (Ba_not_checked_p2))

                    ; #33486: <==negation-removal== 82365 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #34996: <==uncertain_firing== 32178 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #36880: <==negation-removal== 50897 (pos)
                    (not (Pb_not_checked_p2))

                    ; #40928: <==negation-removal== 72950 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #50270: <==uncertain_firing== 82365 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #80896: <==negation-removal== 78879 (pos)
                    (not (Pd_not_checked_p2))

                    ; #83565: <==negation-removal== 67548 (pos)
                    (not (Bd_not_checked_p2))

                    ; #83963: <==negation-removal== 32178 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #84584: <==uncertain_firing== 72950 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #87908: <==uncertain_firing== 18164 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #90000: <==negation-removal== 55974 (pos)
                    (not (Pc_not_checked_p2))

                    ; #90721: <==negation-removal== 29792 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13289: <==commonly_known== 46037 (pos)
                    (Bb_checked_p3)

                    ; #14452: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #18195: <==closure== 90661 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #23705: <==commonly_known== 46037 (pos)
                    (Bc_checked_p3)

                    ; #27725: <==commonly_known== 46037 (pos)
                    (Bd_checked_p3)

                    ; #29619: <==closure== 14452 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #45465: <==commonly_known== 61606 (neg)
                    (Pa_checked_p3)

                    ; #46037: origin
                    (checked_p3)

                    ; #64445: <==commonly_known== 61606 (neg)
                    (Pd_checked_p3)

                    ; #64672: <==commonly_known== 46037 (pos)
                    (Ba_checked_p3)

                    ; #73433: <==commonly_known== 61606 (neg)
                    (Pb_checked_p3)

                    ; #78146: <==commonly_known== 61606 (neg)
                    (Pc_checked_p3)

                    ; #90661: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #12110: <==negation-removal== 29619 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #17268: <==uncertain_firing== 14452 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #26989: <==negation-removal== 18195 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #28514: <==uncertain_firing== 90661 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #30490: <==negation-removal== 64445 (pos)
                    (not (Bd_not_checked_p3))

                    ; #36514: <==uncertain_firing== 29619 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #46117: <==negation-removal== 90661 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #56848: <==negation-removal== 73433 (pos)
                    (not (Bb_not_checked_p3))

                    ; #61606: <==negation-removal== 46037 (pos)
                    (not (not_checked_p3))

                    ; #68687: <==negation-removal== 45465 (pos)
                    (not (Ba_not_checked_p3))

                    ; #71117: <==negation-removal== 23705 (pos)
                    (not (Pc_not_checked_p3))

                    ; #71578: <==negation-removal== 13289 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80858: <==negation-removal== 78146 (pos)
                    (not (Bc_not_checked_p3))

                    ; #82718: <==negation-removal== 14452 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #86112: <==negation-removal== 64672 (pos)
                    (not (Pa_not_checked_p3))

                    ; #89308: <==negation-removal== 27725 (pos)
                    (not (Pd_not_checked_p3))

                    ; #92014: <==uncertain_firing== 18195 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #18813: <==commonly_known== 47608 (pos)
                    (Bc_checked_p4)

                    ; #20292: <==commonly_known== 67271 (neg)
                    (Pd_checked_p4)

                    ; #23166: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #42437: <==closure== 79167 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #43097: <==commonly_known== 47608 (pos)
                    (Bd_checked_p4)

                    ; #47608: origin
                    (checked_p4)

                    ; #56429: <==closure== 23166 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #58170: <==commonly_known== 67271 (neg)
                    (Pa_checked_p4)

                    ; #59252: <==commonly_known== 67271 (neg)
                    (Pc_checked_p4)

                    ; #62122: <==commonly_known== 47608 (pos)
                    (Ba_checked_p4)

                    ; #63151: <==commonly_known== 47608 (pos)
                    (Bb_checked_p4)

                    ; #79167: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #90160: <==commonly_known== 67271 (neg)
                    (Pb_checked_p4)

                    ; #11491: <==uncertain_firing== 56429 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #27399: <==uncertain_firing== 79167 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #39178: <==negation-removal== 63151 (pos)
                    (not (Pb_not_checked_p4))

                    ; #40280: <==negation-removal== 23166 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #42315: <==negation-removal== 79167 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #44730: <==negation-removal== 58170 (pos)
                    (not (Ba_not_checked_p4))

                    ; #45041: <==uncertain_firing== 42437 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #48233: <==negation-removal== 20292 (pos)
                    (not (Bd_not_checked_p4))

                    ; #50633: <==negation-removal== 18813 (pos)
                    (not (Pc_not_checked_p4))

                    ; #64034: <==negation-removal== 90160 (pos)
                    (not (Bb_not_checked_p4))

                    ; #65954: <==negation-removal== 43097 (pos)
                    (not (Pd_not_checked_p4))

                    ; #67271: <==negation-removal== 47608 (pos)
                    (not (not_checked_p4))

                    ; #75792: <==uncertain_firing== 23166 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #83996: <==negation-removal== 56429 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #84867: <==negation-removal== 42437 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #86493: <==negation-removal== 62122 (pos)
                    (not (Pa_not_checked_p4))

                    ; #86994: <==negation-removal== 59252 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #19816: <==commonly_known== 57028 (pos)
                    (Bb_checked_p5)

                    ; #20843: <==commonly_known== 14677 (neg)
                    (Pd_checked_p5)

                    ; #40849: <==commonly_known== 57028 (pos)
                    (Bd_checked_p5)

                    ; #52431: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #57028: origin
                    (checked_p5)

                    ; #62033: <==commonly_known== 57028 (pos)
                    (Bc_checked_p5)

                    ; #63019: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #74057: <==commonly_known== 14677 (neg)
                    (Pb_checked_p5)

                    ; #75758: <==commonly_known== 57028 (pos)
                    (Ba_checked_p5)

                    ; #76849: <==commonly_known== 14677 (neg)
                    (Pc_checked_p5)

                    ; #79893: <==closure== 52431 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #88447: <==commonly_known== 14677 (neg)
                    (Pa_checked_p5)

                    ; #91830: <==closure== 63019 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #10608: <==negation-removal== 88447 (pos)
                    (not (Ba_not_checked_p5))

                    ; #12143: <==negation-removal== 76849 (pos)
                    (not (Bc_not_checked_p5))

                    ; #14677: <==negation-removal== 57028 (pos)
                    (not (not_checked_p5))

                    ; #15354: <==negation-removal== 62033 (pos)
                    (not (Pc_not_checked_p5))

                    ; #17297: <==uncertain_firing== 91830 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #18636: <==negation-removal== 20843 (pos)
                    (not (Bd_not_checked_p5))

                    ; #52583: <==negation-removal== 63019 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #53209: <==negation-removal== 75758 (pos)
                    (not (Pa_not_checked_p5))

                    ; #55768: <==negation-removal== 79893 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #57869: <==uncertain_firing== 63019 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #59379: <==negation-removal== 19816 (pos)
                    (not (Pb_not_checked_p5))

                    ; #65208: <==negation-removal== 40849 (pos)
                    (not (Pd_not_checked_p5))

                    ; #67655: <==negation-removal== 74057 (pos)
                    (not (Bb_not_checked_p5))

                    ; #68787: <==uncertain_firing== 52431 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #68994: <==negation-removal== 52431 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #78654: <==uncertain_firing== 79893 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #79191: <==negation-removal== 91830 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16307: <==commonly_known== 31588 (pos)
                    (Bc_checked_p6)

                    ; #28052: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #31588: origin
                    (checked_p6)

                    ; #36225: <==commonly_known== 62202 (neg)
                    (Pc_checked_p6)

                    ; #45660: <==commonly_known== 62202 (neg)
                    (Pd_checked_p6)

                    ; #46843: <==closure== 50216 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #50216: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #54584: <==commonly_known== 31588 (pos)
                    (Bd_checked_p6)

                    ; #66061: <==closure== 28052 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #67460: <==commonly_known== 31588 (pos)
                    (Ba_checked_p6)

                    ; #88486: <==commonly_known== 62202 (neg)
                    (Pb_checked_p6)

                    ; #89113: <==commonly_known== 62202 (neg)
                    (Pa_checked_p6)

                    ; #91220: <==commonly_known== 31588 (pos)
                    (Bb_checked_p6)

                    ; #16872: <==negation-removal== 46843 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #19718: <==negation-removal== 88486 (pos)
                    (not (Bb_not_checked_p6))

                    ; #41629: <==negation-removal== 16307 (pos)
                    (not (Pc_not_checked_p6))

                    ; #42756: <==negation-removal== 36225 (pos)
                    (not (Bc_not_checked_p6))

                    ; #47761: <==negation-removal== 91220 (pos)
                    (not (Pb_not_checked_p6))

                    ; #52116: <==negation-removal== 66061 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #55041: <==negation-removal== 50216 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #57158: <==negation-removal== 45660 (pos)
                    (not (Bd_not_checked_p6))

                    ; #58725: <==negation-removal== 54584 (pos)
                    (not (Pd_not_checked_p6))

                    ; #62202: <==negation-removal== 31588 (pos)
                    (not (not_checked_p6))

                    ; #65274: <==negation-removal== 28052 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #73987: <==uncertain_firing== 50216 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #74282: <==uncertain_firing== 66061 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #77213: <==negation-removal== 89113 (pos)
                    (not (Ba_not_checked_p6))

                    ; #83276: <==negation-removal== 67460 (pos)
                    (not (Pa_not_checked_p6))

                    ; #85826: <==uncertain_firing== 28052 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #89578: <==uncertain_firing== 46843 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10393: <==commonly_known== 49567 (pos)
                    (Ba_checked_p7)

                    ; #16129: <==commonly_known== 49567 (pos)
                    (Bd_checked_p7)

                    ; #33375: <==commonly_known== 57805 (neg)
                    (Pb_checked_p7)

                    ; #42435: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #43301: <==commonly_known== 57805 (neg)
                    (Pc_checked_p7)

                    ; #43866: <==closure== 52539 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #49567: origin
                    (checked_p7)

                    ; #51431: <==commonly_known== 49567 (pos)
                    (Bc_checked_p7)

                    ; #52539: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #62428: <==closure== 42435 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #71078: <==commonly_known== 49567 (pos)
                    (Bb_checked_p7)

                    ; #82956: <==commonly_known== 57805 (neg)
                    (Pa_checked_p7)

                    ; #91522: <==commonly_known== 57805 (neg)
                    (Pd_checked_p7)

                    ; #12631: <==negation-removal== 43301 (pos)
                    (not (Bc_not_checked_p7))

                    ; #12881: <==negation-removal== 43866 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #14543: <==negation-removal== 71078 (pos)
                    (not (Pb_not_checked_p7))

                    ; #18677: <==negation-removal== 62428 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #27786: <==negation-removal== 51431 (pos)
                    (not (Pc_not_checked_p7))

                    ; #29143: <==uncertain_firing== 62428 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #31710: <==negation-removal== 42435 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #32219: <==negation-removal== 33375 (pos)
                    (not (Bb_not_checked_p7))

                    ; #34129: <==negation-removal== 10393 (pos)
                    (not (Pa_not_checked_p7))

                    ; #54835: <==uncertain_firing== 43866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #57805: <==negation-removal== 49567 (pos)
                    (not (not_checked_p7))

                    ; #61981: <==uncertain_firing== 42435 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #62233: <==negation-removal== 16129 (pos)
                    (not (Pd_not_checked_p7))

                    ; #62429: <==negation-removal== 82956 (pos)
                    (not (Ba_not_checked_p7))

                    ; #65422: <==negation-removal== 52539 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #82929: <==negation-removal== 91522 (pos)
                    (not (Bd_not_checked_p7))

                    ; #87880: <==uncertain_firing== 52539 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #21864: <==commonly_known== 12977 (neg)
                    (Pa_checked_p8)

                    ; #25156: <==closure== 44130 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #41734: <==closure== 70041 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #44004: <==commonly_known== 12977 (neg)
                    (Pc_checked_p8)

                    ; #44130: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #56200: <==commonly_known== 82463 (pos)
                    (Bd_checked_p8)

                    ; #56483: <==commonly_known== 12977 (neg)
                    (Pd_checked_p8)

                    ; #56766: <==commonly_known== 82463 (pos)
                    (Bc_checked_p8)

                    ; #58461: <==commonly_known== 12977 (neg)
                    (Pb_checked_p8)

                    ; #70041: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #82463: origin
                    (checked_p8)

                    ; #89264: <==commonly_known== 82463 (pos)
                    (Ba_checked_p8)

                    ; #91586: <==commonly_known== 82463 (pos)
                    (Bb_checked_p8)

                    ; #10575: <==negation-removal== 56483 (pos)
                    (not (Bd_not_checked_p8))

                    ; #11748: <==uncertain_firing== 70041 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #12627: <==uncertain_firing== 44130 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #12977: <==negation-removal== 82463 (pos)
                    (not (not_checked_p8))

                    ; #14724: <==negation-removal== 58461 (pos)
                    (not (Bb_not_checked_p8))

                    ; #21856: <==uncertain_firing== 41734 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #32895: <==negation-removal== 56200 (pos)
                    (not (Pd_not_checked_p8))

                    ; #36327: <==negation-removal== 41734 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #49823: <==negation-removal== 21864 (pos)
                    (not (Ba_not_checked_p8))

                    ; #51116: <==uncertain_firing== 25156 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56760: <==negation-removal== 70041 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #61951: <==negation-removal== 44130 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #73816: <==negation-removal== 25156 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #80403: <==negation-removal== 89264 (pos)
                    (not (Pa_not_checked_p8))

                    ; #83714: <==negation-removal== 44004 (pos)
                    (not (Bc_not_checked_p8))

                    ; #90682: <==negation-removal== 56766 (pos)
                    (not (Pc_not_checked_p8))

                    ; #94223: <==negation-removal== 91586 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12069: origin
                    (checked_p9)

                    ; #18792: <==closure== 60060 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #31861: <==commonly_known== 12069 (pos)
                    (Ba_checked_p9)

                    ; #36354: <==commonly_known== 74610 (neg)
                    (Pd_checked_p9)

                    ; #42675: <==commonly_known== 12069 (pos)
                    (Bc_checked_p9)

                    ; #57630: <==commonly_known== 74610 (neg)
                    (Pc_checked_p9)

                    ; #59549: <==commonly_known== 12069 (pos)
                    (Bd_checked_p9)

                    ; #60060: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #61199: <==commonly_known== 74610 (neg)
                    (Pa_checked_p9)

                    ; #63599: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #72148: <==closure== 63599 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #78982: <==commonly_known== 12069 (pos)
                    (Bb_checked_p9)

                    ; #91657: <==commonly_known== 74610 (neg)
                    (Pb_checked_p9)

                    ; #13043: <==negation-removal== 31861 (pos)
                    (not (Pa_not_checked_p9))

                    ; #13782: <==negation-removal== 18792 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #14001: <==negation-removal== 61199 (pos)
                    (not (Ba_not_checked_p9))

                    ; #21889: <==uncertain_firing== 72148 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #23150: <==uncertain_firing== 18792 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #37864: <==uncertain_firing== 63599 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #39768: <==negation-removal== 36354 (pos)
                    (not (Bd_not_checked_p9))

                    ; #43053: <==uncertain_firing== 60060 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #44380: <==negation-removal== 72148 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #46083: <==negation-removal== 60060 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #57886: <==negation-removal== 78982 (pos)
                    (not (Pb_not_checked_p9))

                    ; #67545: <==negation-removal== 59549 (pos)
                    (not (Pd_not_checked_p9))

                    ; #68532: <==negation-removal== 57630 (pos)
                    (not (Bc_not_checked_p9))

                    ; #74610: <==negation-removal== 12069 (pos)
                    (not (not_checked_p9))

                    ; #76609: <==negation-removal== 42675 (pos)
                    (not (Pc_not_checked_p9))

                    ; #78082: <==negation-removal== 63599 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #81115: <==negation-removal== 91657 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11455: <==commonly_known== 56045 (neg)
                    (Pc_checked_p1)

                    ; #12318: origin
                    (checked_p1)

                    ; #20628: <==commonly_known== 56045 (neg)
                    (Pd_checked_p1)

                    ; #23401: <==commonly_known== 56045 (neg)
                    (Pb_checked_p1)

                    ; #46243: <==commonly_known== 12318 (pos)
                    (Bb_checked_p1)

                    ; #65459: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #65776: <==commonly_known== 12318 (pos)
                    (Bd_checked_p1)

                    ; #68160: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #83806: <==commonly_known== 56045 (neg)
                    (Pa_checked_p1)

                    ; #86787: <==closure== 68160 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #86918: <==commonly_known== 12318 (pos)
                    (Ba_checked_p1)

                    ; #87986: <==commonly_known== 12318 (pos)
                    (Bc_checked_p1)

                    ; #92126: <==closure== 65459 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #18800: <==uncertain_firing== 86787 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #20385: <==uncertain_firing== 65459 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #25178: <==negation-removal== 46243 (pos)
                    (not (Pb_not_checked_p1))

                    ; #35005: <==negation-removal== 65776 (pos)
                    (not (Pd_not_checked_p1))

                    ; #41752: <==negation-removal== 23401 (pos)
                    (not (Bb_not_checked_p1))

                    ; #42425: <==uncertain_firing== 68160 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #44152: <==uncertain_firing== 92126 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #46741: <==negation-removal== 20628 (pos)
                    (not (Bd_not_checked_p1))

                    ; #48513: <==negation-removal== 83806 (pos)
                    (not (Ba_not_checked_p1))

                    ; #56045: <==negation-removal== 12318 (pos)
                    (not (not_checked_p1))

                    ; #57394: <==negation-removal== 86918 (pos)
                    (not (Pa_not_checked_p1))

                    ; #58924: <==negation-removal== 11455 (pos)
                    (not (Bc_not_checked_p1))

                    ; #60159: <==negation-removal== 87986 (pos)
                    (not (Pc_not_checked_p1))

                    ; #61297: <==negation-removal== 86787 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #68623: <==negation-removal== 92126 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #68868: <==negation-removal== 68160 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #71106: <==negation-removal== 65459 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12622: <==commonly_known== 12388 (neg)
                    (Pc_checked_p2)

                    ; #22594: <==commonly_known== 12388 (neg)
                    (Pa_checked_p2)

                    ; #28231: <==closure== 72518 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #29792: <==commonly_known== 59068 (pos)
                    (Ba_checked_p2)

                    ; #38411: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #50897: <==commonly_known== 59068 (pos)
                    (Bb_checked_p2)

                    ; #50961: <==closure== 38411 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #55974: <==commonly_known== 59068 (pos)
                    (Bc_checked_p2)

                    ; #59068: origin
                    (checked_p2)

                    ; #67548: <==commonly_known== 12388 (neg)
                    (Pd_checked_p2)

                    ; #72518: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #78879: <==commonly_known== 59068 (pos)
                    (Bd_checked_p2)

                    ; #83848: <==commonly_known== 12388 (neg)
                    (Pb_checked_p2)

                    ; #12388: <==negation-removal== 59068 (pos)
                    (not (not_checked_p2))

                    ; #16153: <==negation-removal== 83848 (pos)
                    (not (Bb_not_checked_p2))

                    ; #16925: <==uncertain_firing== 28231 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #18243: <==uncertain_firing== 50961 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #21346: <==negation-removal== 50961 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #21572: <==negation-removal== 12622 (pos)
                    (not (Bc_not_checked_p2))

                    ; #23938: <==negation-removal== 72518 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #24922: <==negation-removal== 22594 (pos)
                    (not (Ba_not_checked_p2))

                    ; #30819: <==negation-removal== 38411 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #36310: <==uncertain_firing== 38411 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #36880: <==negation-removal== 50897 (pos)
                    (not (Pb_not_checked_p2))

                    ; #64058: <==uncertain_firing== 72518 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #80896: <==negation-removal== 78879 (pos)
                    (not (Pd_not_checked_p2))

                    ; #81570: <==negation-removal== 28231 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #83565: <==negation-removal== 67548 (pos)
                    (not (Bd_not_checked_p2))

                    ; #90000: <==negation-removal== 55974 (pos)
                    (not (Pc_not_checked_p2))

                    ; #90721: <==negation-removal== 29792 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12791: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #13289: <==commonly_known== 46037 (pos)
                    (Bb_checked_p3)

                    ; #23705: <==commonly_known== 46037 (pos)
                    (Bc_checked_p3)

                    ; #27725: <==commonly_known== 46037 (pos)
                    (Bd_checked_p3)

                    ; #38112: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #45465: <==commonly_known== 61606 (neg)
                    (Pa_checked_p3)

                    ; #46037: origin
                    (checked_p3)

                    ; #61844: <==closure== 12791 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #64445: <==commonly_known== 61606 (neg)
                    (Pd_checked_p3)

                    ; #64672: <==commonly_known== 46037 (pos)
                    (Ba_checked_p3)

                    ; #73433: <==commonly_known== 61606 (neg)
                    (Pb_checked_p3)

                    ; #78146: <==commonly_known== 61606 (neg)
                    (Pc_checked_p3)

                    ; #82337: <==closure== 38112 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #12058: <==uncertain_firing== 82337 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #19786: <==uncertain_firing== 61844 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #30490: <==negation-removal== 64445 (pos)
                    (not (Bd_not_checked_p3))

                    ; #41986: <==uncertain_firing== 38112 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #45443: <==negation-removal== 38112 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #46017: <==negation-removal== 61844 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #53336: <==negation-removal== 12791 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #56848: <==negation-removal== 73433 (pos)
                    (not (Bb_not_checked_p3))

                    ; #58537: <==negation-removal== 82337 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #60712: <==uncertain_firing== 12791 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #61606: <==negation-removal== 46037 (pos)
                    (not (not_checked_p3))

                    ; #68687: <==negation-removal== 45465 (pos)
                    (not (Ba_not_checked_p3))

                    ; #71117: <==negation-removal== 23705 (pos)
                    (not (Pc_not_checked_p3))

                    ; #71578: <==negation-removal== 13289 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80858: <==negation-removal== 78146 (pos)
                    (not (Bc_not_checked_p3))

                    ; #86112: <==negation-removal== 64672 (pos)
                    (not (Pa_not_checked_p3))

                    ; #89308: <==negation-removal== 27725 (pos)
                    (not (Pd_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10619: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #18813: <==commonly_known== 47608 (pos)
                    (Bc_checked_p4)

                    ; #20292: <==commonly_known== 67271 (neg)
                    (Pd_checked_p4)

                    ; #21166: <==closure== 55161 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #31792: <==closure== 10619 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #43097: <==commonly_known== 47608 (pos)
                    (Bd_checked_p4)

                    ; #47608: origin
                    (checked_p4)

                    ; #55161: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #58170: <==commonly_known== 67271 (neg)
                    (Pa_checked_p4)

                    ; #59252: <==commonly_known== 67271 (neg)
                    (Pc_checked_p4)

                    ; #62122: <==commonly_known== 47608 (pos)
                    (Ba_checked_p4)

                    ; #63151: <==commonly_known== 47608 (pos)
                    (Bb_checked_p4)

                    ; #90160: <==commonly_known== 67271 (neg)
                    (Pb_checked_p4)

                    ; #10536: <==uncertain_firing== 55161 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #20896: <==uncertain_firing== 21166 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24973: <==uncertain_firing== 31792 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #27962: <==negation-removal== 21166 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #39178: <==negation-removal== 63151 (pos)
                    (not (Pb_not_checked_p4))

                    ; #44024: <==negation-removal== 10619 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #44730: <==negation-removal== 58170 (pos)
                    (not (Ba_not_checked_p4))

                    ; #48233: <==negation-removal== 20292 (pos)
                    (not (Bd_not_checked_p4))

                    ; #50633: <==negation-removal== 18813 (pos)
                    (not (Pc_not_checked_p4))

                    ; #58728: <==negation-removal== 31792 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #64034: <==negation-removal== 90160 (pos)
                    (not (Bb_not_checked_p4))

                    ; #65954: <==negation-removal== 43097 (pos)
                    (not (Pd_not_checked_p4))

                    ; #67271: <==negation-removal== 47608 (pos)
                    (not (not_checked_p4))

                    ; #70817: <==uncertain_firing== 10619 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #86333: <==negation-removal== 55161 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #86493: <==negation-removal== 62122 (pos)
                    (not (Pa_not_checked_p4))

                    ; #86994: <==negation-removal== 59252 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #19816: <==commonly_known== 57028 (pos)
                    (Bb_checked_p5)

                    ; #20843: <==commonly_known== 14677 (neg)
                    (Pd_checked_p5)

                    ; #20883: <==closure== 41651 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #40849: <==commonly_known== 57028 (pos)
                    (Bd_checked_p5)

                    ; #41651: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #57028: origin
                    (checked_p5)

                    ; #57223: <==closure== 69380 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #62033: <==commonly_known== 57028 (pos)
                    (Bc_checked_p5)

                    ; #69380: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #74057: <==commonly_known== 14677 (neg)
                    (Pb_checked_p5)

                    ; #75758: <==commonly_known== 57028 (pos)
                    (Ba_checked_p5)

                    ; #76849: <==commonly_known== 14677 (neg)
                    (Pc_checked_p5)

                    ; #88447: <==commonly_known== 14677 (neg)
                    (Pa_checked_p5)

                    ; #10608: <==negation-removal== 88447 (pos)
                    (not (Ba_not_checked_p5))

                    ; #12143: <==negation-removal== 76849 (pos)
                    (not (Bc_not_checked_p5))

                    ; #14677: <==negation-removal== 57028 (pos)
                    (not (not_checked_p5))

                    ; #15354: <==negation-removal== 62033 (pos)
                    (not (Pc_not_checked_p5))

                    ; #18636: <==negation-removal== 20843 (pos)
                    (not (Bd_not_checked_p5))

                    ; #28221: <==uncertain_firing== 69380 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #36286: <==uncertain_firing== 41651 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #37076: <==negation-removal== 41651 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #53209: <==negation-removal== 75758 (pos)
                    (not (Pa_not_checked_p5))

                    ; #59379: <==negation-removal== 19816 (pos)
                    (not (Pb_not_checked_p5))

                    ; #60379: <==uncertain_firing== 20883 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61034: <==negation-removal== 20883 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #63085: <==uncertain_firing== 57223 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #65208: <==negation-removal== 40849 (pos)
                    (not (Pd_not_checked_p5))

                    ; #67655: <==negation-removal== 74057 (pos)
                    (not (Bb_not_checked_p5))

                    ; #68818: <==negation-removal== 69380 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #78960: <==negation-removal== 57223 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16307: <==commonly_known== 31588 (pos)
                    (Bc_checked_p6)

                    ; #31588: origin
                    (checked_p6)

                    ; #36225: <==commonly_known== 62202 (neg)
                    (Pc_checked_p6)

                    ; #45660: <==commonly_known== 62202 (neg)
                    (Pd_checked_p6)

                    ; #53549: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #54584: <==commonly_known== 31588 (pos)
                    (Bd_checked_p6)

                    ; #67029: <==closure== 53549 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #67460: <==commonly_known== 31588 (pos)
                    (Ba_checked_p6)

                    ; #88486: <==commonly_known== 62202 (neg)
                    (Pb_checked_p6)

                    ; #89113: <==commonly_known== 62202 (neg)
                    (Pa_checked_p6)

                    ; #91220: <==commonly_known== 31588 (pos)
                    (Bb_checked_p6)

                    ; #91468: <==closure== 99816 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #99816: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #16947: <==negation-removal== 67029 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #19718: <==negation-removal== 88486 (pos)
                    (not (Bb_not_checked_p6))

                    ; #26204: <==negation-removal== 99816 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #28395: <==uncertain_firing== 53549 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #40647: <==uncertain_firing== 91468 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #41629: <==negation-removal== 16307 (pos)
                    (not (Pc_not_checked_p6))

                    ; #42756: <==negation-removal== 36225 (pos)
                    (not (Bc_not_checked_p6))

                    ; #47761: <==negation-removal== 91220 (pos)
                    (not (Pb_not_checked_p6))

                    ; #57158: <==negation-removal== 45660 (pos)
                    (not (Bd_not_checked_p6))

                    ; #58725: <==negation-removal== 54584 (pos)
                    (not (Pd_not_checked_p6))

                    ; #61869: <==negation-removal== 91468 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #62202: <==negation-removal== 31588 (pos)
                    (not (not_checked_p6))

                    ; #75235: <==uncertain_firing== 67029 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #76572: <==negation-removal== 53549 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #77213: <==negation-removal== 89113 (pos)
                    (not (Ba_not_checked_p6))

                    ; #83276: <==negation-removal== 67460 (pos)
                    (not (Pa_not_checked_p6))

                    ; #84591: <==uncertain_firing== 99816 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10393: <==commonly_known== 49567 (pos)
                    (Ba_checked_p7)

                    ; #16129: <==commonly_known== 49567 (pos)
                    (Bd_checked_p7)

                    ; #22396: <==closure== 28714 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #28714: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #33375: <==commonly_known== 57805 (neg)
                    (Pb_checked_p7)

                    ; #43301: <==commonly_known== 57805 (neg)
                    (Pc_checked_p7)

                    ; #49567: origin
                    (checked_p7)

                    ; #50314: <==closure== 82498 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #51431: <==commonly_known== 49567 (pos)
                    (Bc_checked_p7)

                    ; #71078: <==commonly_known== 49567 (pos)
                    (Bb_checked_p7)

                    ; #82498: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #82956: <==commonly_known== 57805 (neg)
                    (Pa_checked_p7)

                    ; #91522: <==commonly_known== 57805 (neg)
                    (Pd_checked_p7)

                    ; #12495: <==uncertain_firing== 22396 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #12631: <==negation-removal== 43301 (pos)
                    (not (Bc_not_checked_p7))

                    ; #12669: <==negation-removal== 82498 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #14543: <==negation-removal== 71078 (pos)
                    (not (Pb_not_checked_p7))

                    ; #19122: <==uncertain_firing== 82498 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #27616: <==uncertain_firing== 28714 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #27786: <==negation-removal== 51431 (pos)
                    (not (Pc_not_checked_p7))

                    ; #32219: <==negation-removal== 33375 (pos)
                    (not (Bb_not_checked_p7))

                    ; #34129: <==negation-removal== 10393 (pos)
                    (not (Pa_not_checked_p7))

                    ; #37692: <==negation-removal== 22396 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #57805: <==negation-removal== 49567 (pos)
                    (not (not_checked_p7))

                    ; #62233: <==negation-removal== 16129 (pos)
                    (not (Pd_not_checked_p7))

                    ; #62429: <==negation-removal== 82956 (pos)
                    (not (Ba_not_checked_p7))

                    ; #64538: <==negation-removal== 28714 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #68534: <==negation-removal== 50314 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #82929: <==negation-removal== 91522 (pos)
                    (not (Bd_not_checked_p7))

                    ; #84606: <==uncertain_firing== 50314 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17037: <==closure== 42970 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #21864: <==commonly_known== 12977 (neg)
                    (Pa_checked_p8)

                    ; #42970: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #44004: <==commonly_known== 12977 (neg)
                    (Pc_checked_p8)

                    ; #56200: <==commonly_known== 82463 (pos)
                    (Bd_checked_p8)

                    ; #56483: <==commonly_known== 12977 (neg)
                    (Pd_checked_p8)

                    ; #56766: <==commonly_known== 82463 (pos)
                    (Bc_checked_p8)

                    ; #58461: <==commonly_known== 12977 (neg)
                    (Pb_checked_p8)

                    ; #63107: <==closure== 84836 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #82463: origin
                    (checked_p8)

                    ; #84836: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #89264: <==commonly_known== 82463 (pos)
                    (Ba_checked_p8)

                    ; #91586: <==commonly_known== 82463 (pos)
                    (Bb_checked_p8)

                    ; #10575: <==negation-removal== 56483 (pos)
                    (not (Bd_not_checked_p8))

                    ; #12977: <==negation-removal== 82463 (pos)
                    (not (not_checked_p8))

                    ; #14280: <==negation-removal== 84836 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #14724: <==negation-removal== 58461 (pos)
                    (not (Bb_not_checked_p8))

                    ; #15568: <==uncertain_firing== 84836 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #32895: <==negation-removal== 56200 (pos)
                    (not (Pd_not_checked_p8))

                    ; #33683: <==negation-removal== 42970 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #44235: <==negation-removal== 17037 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #49823: <==negation-removal== 21864 (pos)
                    (not (Ba_not_checked_p8))

                    ; #66993: <==negation-removal== 63107 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #73864: <==uncertain_firing== 17037 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #79271: <==uncertain_firing== 42970 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #80403: <==negation-removal== 89264 (pos)
                    (not (Pa_not_checked_p8))

                    ; #83714: <==negation-removal== 44004 (pos)
                    (not (Bc_not_checked_p8))

                    ; #90682: <==negation-removal== 56766 (pos)
                    (not (Pc_not_checked_p8))

                    ; #94223: <==negation-removal== 91586 (pos)
                    (not (Pb_not_checked_p8))

                    ; #96335: <==uncertain_firing== 63107 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11708: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #12069: origin
                    (checked_p9)

                    ; #31861: <==commonly_known== 12069 (pos)
                    (Ba_checked_p9)

                    ; #36354: <==commonly_known== 74610 (neg)
                    (Pd_checked_p9)

                    ; #42675: <==commonly_known== 12069 (pos)
                    (Bc_checked_p9)

                    ; #49232: <==closure== 79717 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #57630: <==commonly_known== 74610 (neg)
                    (Pc_checked_p9)

                    ; #58028: <==closure== 11708 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #59549: <==commonly_known== 12069 (pos)
                    (Bd_checked_p9)

                    ; #61199: <==commonly_known== 74610 (neg)
                    (Pa_checked_p9)

                    ; #78982: <==commonly_known== 12069 (pos)
                    (Bb_checked_p9)

                    ; #79717: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #91657: <==commonly_known== 74610 (neg)
                    (Pb_checked_p9)

                    ; #13043: <==negation-removal== 31861 (pos)
                    (not (Pa_not_checked_p9))

                    ; #14001: <==negation-removal== 61199 (pos)
                    (not (Ba_not_checked_p9))

                    ; #14525: <==uncertain_firing== 49232 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #16105: <==negation-removal== 58028 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #16202: <==negation-removal== 11708 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #17058: <==negation-removal== 79717 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #20600: <==uncertain_firing== 79717 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #39768: <==negation-removal== 36354 (pos)
                    (not (Bd_not_checked_p9))

                    ; #52994: <==negation-removal== 49232 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #57886: <==negation-removal== 78982 (pos)
                    (not (Pb_not_checked_p9))

                    ; #67545: <==negation-removal== 59549 (pos)
                    (not (Pd_not_checked_p9))

                    ; #68532: <==negation-removal== 57630 (pos)
                    (not (Bc_not_checked_p9))

                    ; #74610: <==negation-removal== 12069 (pos)
                    (not (not_checked_p9))

                    ; #76609: <==negation-removal== 42675 (pos)
                    (not (Pc_not_checked_p9))

                    ; #77510: <==uncertain_firing== 58028 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #81115: <==negation-removal== 91657 (pos)
                    (not (Bb_not_checked_p9))

                    ; #86110: <==uncertain_firing== 11708 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11455: <==commonly_known== 56045 (neg)
                    (Pc_checked_p1)

                    ; #12318: origin
                    (checked_p1)

                    ; #13140: <==closure== 48314 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #14545: <==closure== 61288 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #20628: <==commonly_known== 56045 (neg)
                    (Pd_checked_p1)

                    ; #23401: <==commonly_known== 56045 (neg)
                    (Pb_checked_p1)

                    ; #46243: <==commonly_known== 12318 (pos)
                    (Bb_checked_p1)

                    ; #48314: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #61288: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #65776: <==commonly_known== 12318 (pos)
                    (Bd_checked_p1)

                    ; #83806: <==commonly_known== 56045 (neg)
                    (Pa_checked_p1)

                    ; #86918: <==commonly_known== 12318 (pos)
                    (Ba_checked_p1)

                    ; #87986: <==commonly_known== 12318 (pos)
                    (Bc_checked_p1)

                    ; #15767: <==negation-removal== 13140 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #16032: <==uncertain_firing== 13140 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #22417: <==negation-removal== 14545 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #25178: <==negation-removal== 46243 (pos)
                    (not (Pb_not_checked_p1))

                    ; #35005: <==negation-removal== 65776 (pos)
                    (not (Pd_not_checked_p1))

                    ; #41752: <==negation-removal== 23401 (pos)
                    (not (Bb_not_checked_p1))

                    ; #46741: <==negation-removal== 20628 (pos)
                    (not (Bd_not_checked_p1))

                    ; #48513: <==negation-removal== 83806 (pos)
                    (not (Ba_not_checked_p1))

                    ; #56045: <==negation-removal== 12318 (pos)
                    (not (not_checked_p1))

                    ; #57394: <==negation-removal== 86918 (pos)
                    (not (Pa_not_checked_p1))

                    ; #58924: <==negation-removal== 11455 (pos)
                    (not (Bc_not_checked_p1))

                    ; #60159: <==negation-removal== 87986 (pos)
                    (not (Pc_not_checked_p1))

                    ; #62104: <==uncertain_firing== 14545 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #63132: <==negation-removal== 61288 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #65091: <==uncertain_firing== 61288 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #70747: <==negation-removal== 48314 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #79360: <==uncertain_firing== 48314 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12622: <==commonly_known== 12388 (neg)
                    (Pc_checked_p2)

                    ; #18811: <==closure== 56694 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #22594: <==commonly_known== 12388 (neg)
                    (Pa_checked_p2)

                    ; #29792: <==commonly_known== 59068 (pos)
                    (Ba_checked_p2)

                    ; #50897: <==commonly_known== 59068 (pos)
                    (Bb_checked_p2)

                    ; #54807: <==closure== 69096 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #55974: <==commonly_known== 59068 (pos)
                    (Bc_checked_p2)

                    ; #56694: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #59068: origin
                    (checked_p2)

                    ; #67548: <==commonly_known== 12388 (neg)
                    (Pd_checked_p2)

                    ; #69096: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #78879: <==commonly_known== 59068 (pos)
                    (Bd_checked_p2)

                    ; #83848: <==commonly_known== 12388 (neg)
                    (Pb_checked_p2)

                    ; #12388: <==negation-removal== 59068 (pos)
                    (not (not_checked_p2))

                    ; #16153: <==negation-removal== 83848 (pos)
                    (not (Bb_not_checked_p2))

                    ; #21572: <==negation-removal== 12622 (pos)
                    (not (Bc_not_checked_p2))

                    ; #24922: <==negation-removal== 22594 (pos)
                    (not (Ba_not_checked_p2))

                    ; #34949: <==negation-removal== 54807 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #36880: <==negation-removal== 50897 (pos)
                    (not (Pb_not_checked_p2))

                    ; #46580: <==negation-removal== 69096 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #51172: <==uncertain_firing== 54807 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #72075: <==negation-removal== 56694 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #75396: <==uncertain_firing== 56694 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #80896: <==negation-removal== 78879 (pos)
                    (not (Pd_not_checked_p2))

                    ; #81018: <==uncertain_firing== 18811 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #83565: <==negation-removal== 67548 (pos)
                    (not (Bd_not_checked_p2))

                    ; #88581: <==negation-removal== 18811 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #90000: <==negation-removal== 55974 (pos)
                    (not (Pc_not_checked_p2))

                    ; #90721: <==negation-removal== 29792 (pos)
                    (not (Pa_not_checked_p2))

                    ; #92171: <==uncertain_firing== 69096 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13289: <==commonly_known== 46037 (pos)
                    (Bb_checked_p3)

                    ; #15040: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #22182: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #23705: <==commonly_known== 46037 (pos)
                    (Bc_checked_p3)

                    ; #27725: <==commonly_known== 46037 (pos)
                    (Bd_checked_p3)

                    ; #44835: <==closure== 15040 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #45465: <==commonly_known== 61606 (neg)
                    (Pa_checked_p3)

                    ; #46037: origin
                    (checked_p3)

                    ; #64445: <==commonly_known== 61606 (neg)
                    (Pd_checked_p3)

                    ; #64672: <==commonly_known== 46037 (pos)
                    (Ba_checked_p3)

                    ; #73433: <==commonly_known== 61606 (neg)
                    (Pb_checked_p3)

                    ; #77512: <==closure== 22182 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #78146: <==commonly_known== 61606 (neg)
                    (Pc_checked_p3)

                    ; #30490: <==negation-removal== 64445 (pos)
                    (not (Bd_not_checked_p3))

                    ; #42728: <==negation-removal== 44835 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #53444: <==negation-removal== 15040 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #56836: <==uncertain_firing== 15040 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #56848: <==negation-removal== 73433 (pos)
                    (not (Bb_not_checked_p3))

                    ; #58489: <==negation-removal== 22182 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #61606: <==negation-removal== 46037 (pos)
                    (not (not_checked_p3))

                    ; #68687: <==negation-removal== 45465 (pos)
                    (not (Ba_not_checked_p3))

                    ; #71117: <==negation-removal== 23705 (pos)
                    (not (Pc_not_checked_p3))

                    ; #71578: <==negation-removal== 13289 (pos)
                    (not (Pb_not_checked_p3))

                    ; #76684: <==uncertain_firing== 44835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #78393: <==uncertain_firing== 77512 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #80858: <==negation-removal== 78146 (pos)
                    (not (Bc_not_checked_p3))

                    ; #85557: <==negation-removal== 77512 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #86112: <==negation-removal== 64672 (pos)
                    (not (Pa_not_checked_p3))

                    ; #86577: <==uncertain_firing== 22182 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #89308: <==negation-removal== 27725 (pos)
                    (not (Pd_not_checked_p3))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #15093: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #18813: <==commonly_known== 47608 (pos)
                    (Bc_checked_p4)

                    ; #20292: <==commonly_known== 67271 (neg)
                    (Pd_checked_p4)

                    ; #29268: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #43097: <==commonly_known== 47608 (pos)
                    (Bd_checked_p4)

                    ; #44738: <==closure== 29268 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #47608: origin
                    (checked_p4)

                    ; #58170: <==commonly_known== 67271 (neg)
                    (Pa_checked_p4)

                    ; #59252: <==commonly_known== 67271 (neg)
                    (Pc_checked_p4)

                    ; #60023: <==closure== 15093 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #62122: <==commonly_known== 47608 (pos)
                    (Ba_checked_p4)

                    ; #63151: <==commonly_known== 47608 (pos)
                    (Bb_checked_p4)

                    ; #90160: <==commonly_known== 67271 (neg)
                    (Pb_checked_p4)

                    ; #10483: <==negation-removal== 15093 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #35574: <==uncertain_firing== 44738 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #35708: <==negation-removal== 29268 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #39178: <==negation-removal== 63151 (pos)
                    (not (Pb_not_checked_p4))

                    ; #44730: <==negation-removal== 58170 (pos)
                    (not (Ba_not_checked_p4))

                    ; #48233: <==negation-removal== 20292 (pos)
                    (not (Bd_not_checked_p4))

                    ; #50633: <==negation-removal== 18813 (pos)
                    (not (Pc_not_checked_p4))

                    ; #56736: <==uncertain_firing== 29268 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #64034: <==negation-removal== 90160 (pos)
                    (not (Bb_not_checked_p4))

                    ; #65954: <==negation-removal== 43097 (pos)
                    (not (Pd_not_checked_p4))

                    ; #66627: <==uncertain_firing== 60023 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #67271: <==negation-removal== 47608 (pos)
                    (not (not_checked_p4))

                    ; #85488: <==uncertain_firing== 15093 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #85838: <==negation-removal== 60023 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #86493: <==negation-removal== 62122 (pos)
                    (not (Pa_not_checked_p4))

                    ; #86994: <==negation-removal== 59252 (pos)
                    (not (Bc_not_checked_p4))

                    ; #87011: <==negation-removal== 44738 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #19816: <==commonly_known== 57028 (pos)
                    (Bb_checked_p5)

                    ; #20843: <==commonly_known== 14677 (neg)
                    (Pd_checked_p5)

                    ; #40849: <==commonly_known== 57028 (pos)
                    (Bd_checked_p5)

                    ; #49191: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #56928: <==closure== 49191 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #57028: origin
                    (checked_p5)

                    ; #61416: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #61725: <==closure== 61416 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #62033: <==commonly_known== 57028 (pos)
                    (Bc_checked_p5)

                    ; #74057: <==commonly_known== 14677 (neg)
                    (Pb_checked_p5)

                    ; #75758: <==commonly_known== 57028 (pos)
                    (Ba_checked_p5)

                    ; #76849: <==commonly_known== 14677 (neg)
                    (Pc_checked_p5)

                    ; #88447: <==commonly_known== 14677 (neg)
                    (Pa_checked_p5)

                    ; #10608: <==negation-removal== 88447 (pos)
                    (not (Ba_not_checked_p5))

                    ; #12143: <==negation-removal== 76849 (pos)
                    (not (Bc_not_checked_p5))

                    ; #14677: <==negation-removal== 57028 (pos)
                    (not (not_checked_p5))

                    ; #15354: <==negation-removal== 62033 (pos)
                    (not (Pc_not_checked_p5))

                    ; #15553: <==uncertain_firing== 49191 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #18636: <==negation-removal== 20843 (pos)
                    (not (Bd_not_checked_p5))

                    ; #25129: <==negation-removal== 56928 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #45185: <==uncertain_firing== 61416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #48193: <==uncertain_firing== 61725 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #53209: <==negation-removal== 75758 (pos)
                    (not (Pa_not_checked_p5))

                    ; #59379: <==negation-removal== 19816 (pos)
                    (not (Pb_not_checked_p5))

                    ; #65208: <==negation-removal== 40849 (pos)
                    (not (Pd_not_checked_p5))

                    ; #67655: <==negation-removal== 74057 (pos)
                    (not (Bb_not_checked_p5))

                    ; #73497: <==negation-removal== 61416 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #79297: <==negation-removal== 49191 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #86284: <==uncertain_firing== 56928 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #87750: <==negation-removal== 61725 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16307: <==commonly_known== 31588 (pos)
                    (Bc_checked_p6)

                    ; #31588: origin
                    (checked_p6)

                    ; #36225: <==commonly_known== 62202 (neg)
                    (Pc_checked_p6)

                    ; #41781: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #45660: <==commonly_known== 62202 (neg)
                    (Pd_checked_p6)

                    ; #46080: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #51957: <==closure== 46080 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #54584: <==commonly_known== 31588 (pos)
                    (Bd_checked_p6)

                    ; #67460: <==commonly_known== 31588 (pos)
                    (Ba_checked_p6)

                    ; #81490: <==closure== 41781 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #88486: <==commonly_known== 62202 (neg)
                    (Pb_checked_p6)

                    ; #89113: <==commonly_known== 62202 (neg)
                    (Pa_checked_p6)

                    ; #91220: <==commonly_known== 31588 (pos)
                    (Bb_checked_p6)

                    ; #14640: <==uncertain_firing== 51957 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #19718: <==negation-removal== 88486 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37733: <==uncertain_firing== 46080 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #41629: <==negation-removal== 16307 (pos)
                    (not (Pc_not_checked_p6))

                    ; #42756: <==negation-removal== 36225 (pos)
                    (not (Bc_not_checked_p6))

                    ; #47761: <==negation-removal== 91220 (pos)
                    (not (Pb_not_checked_p6))

                    ; #57158: <==negation-removal== 45660 (pos)
                    (not (Bd_not_checked_p6))

                    ; #58725: <==negation-removal== 54584 (pos)
                    (not (Pd_not_checked_p6))

                    ; #62202: <==negation-removal== 31588 (pos)
                    (not (not_checked_p6))

                    ; #76776: <==negation-removal== 51957 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #77213: <==negation-removal== 89113 (pos)
                    (not (Ba_not_checked_p6))

                    ; #80900: <==uncertain_firing== 81490 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #83276: <==negation-removal== 67460 (pos)
                    (not (Pa_not_checked_p6))

                    ; #85417: <==negation-removal== 46080 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #85647: <==negation-removal== 81490 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #86510: <==negation-removal== 41781 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #92652: <==uncertain_firing== 41781 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10393: <==commonly_known== 49567 (pos)
                    (Ba_checked_p7)

                    ; #16129: <==commonly_known== 49567 (pos)
                    (Bd_checked_p7)

                    ; #23186: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #33375: <==commonly_known== 57805 (neg)
                    (Pb_checked_p7)

                    ; #33836: <==closure== 23186 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #39162: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #43301: <==commonly_known== 57805 (neg)
                    (Pc_checked_p7)

                    ; #49567: origin
                    (checked_p7)

                    ; #51431: <==commonly_known== 49567 (pos)
                    (Bc_checked_p7)

                    ; #71078: <==commonly_known== 49567 (pos)
                    (Bb_checked_p7)

                    ; #82948: <==closure== 39162 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #82956: <==commonly_known== 57805 (neg)
                    (Pa_checked_p7)

                    ; #91522: <==commonly_known== 57805 (neg)
                    (Pd_checked_p7)

                    ; #12631: <==negation-removal== 43301 (pos)
                    (not (Bc_not_checked_p7))

                    ; #14543: <==negation-removal== 71078 (pos)
                    (not (Pb_not_checked_p7))

                    ; #17962: <==negation-removal== 33836 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #27786: <==negation-removal== 51431 (pos)
                    (not (Pc_not_checked_p7))

                    ; #32219: <==negation-removal== 33375 (pos)
                    (not (Bb_not_checked_p7))

                    ; #34129: <==negation-removal== 10393 (pos)
                    (not (Pa_not_checked_p7))

                    ; #35476: <==uncertain_firing== 23186 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #52367: <==negation-removal== 39162 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #54463: <==uncertain_firing== 39162 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #55651: <==uncertain_firing== 82948 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #57805: <==negation-removal== 49567 (pos)
                    (not (not_checked_p7))

                    ; #58830: <==uncertain_firing== 33836 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #61589: <==negation-removal== 23186 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #62190: <==negation-removal== 82948 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #62233: <==negation-removal== 16129 (pos)
                    (not (Pd_not_checked_p7))

                    ; #62429: <==negation-removal== 82956 (pos)
                    (not (Ba_not_checked_p7))

                    ; #82929: <==negation-removal== 91522 (pos)
                    (not (Bd_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #18911: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #21864: <==commonly_known== 12977 (neg)
                    (Pa_checked_p8)

                    ; #22077: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #44004: <==commonly_known== 12977 (neg)
                    (Pc_checked_p8)

                    ; #53127: <==closure== 22077 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #56200: <==commonly_known== 82463 (pos)
                    (Bd_checked_p8)

                    ; #56483: <==commonly_known== 12977 (neg)
                    (Pd_checked_p8)

                    ; #56766: <==commonly_known== 82463 (pos)
                    (Bc_checked_p8)

                    ; #58461: <==commonly_known== 12977 (neg)
                    (Pb_checked_p8)

                    ; #82463: origin
                    (checked_p8)

                    ; #85741: <==closure== 18911 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #89264: <==commonly_known== 82463 (pos)
                    (Ba_checked_p8)

                    ; #91586: <==commonly_known== 82463 (pos)
                    (Bb_checked_p8)

                    ; #10575: <==negation-removal== 56483 (pos)
                    (not (Bd_not_checked_p8))

                    ; #12977: <==negation-removal== 82463 (pos)
                    (not (not_checked_p8))

                    ; #14724: <==negation-removal== 58461 (pos)
                    (not (Bb_not_checked_p8))

                    ; #17659: <==uncertain_firing== 85741 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #32895: <==negation-removal== 56200 (pos)
                    (not (Pd_not_checked_p8))

                    ; #36036: <==negation-removal== 18911 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #36056: <==uncertain_firing== 53127 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #36192: <==uncertain_firing== 18911 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #36543: <==negation-removal== 22077 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #37375: <==negation-removal== 85741 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #49823: <==negation-removal== 21864 (pos)
                    (not (Ba_not_checked_p8))

                    ; #50213: <==negation-removal== 53127 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #78091: <==uncertain_firing== 22077 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #80403: <==negation-removal== 89264 (pos)
                    (not (Pa_not_checked_p8))

                    ; #83714: <==negation-removal== 44004 (pos)
                    (not (Bc_not_checked_p8))

                    ; #90682: <==negation-removal== 56766 (pos)
                    (not (Pc_not_checked_p8))

                    ; #94223: <==negation-removal== 91586 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12069: origin
                    (checked_p9)

                    ; #31861: <==commonly_known== 12069 (pos)
                    (Ba_checked_p9)

                    ; #36354: <==commonly_known== 74610 (neg)
                    (Pd_checked_p9)

                    ; #41445: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #42675: <==commonly_known== 12069 (pos)
                    (Bc_checked_p9)

                    ; #48336: <==closure== 41445 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #57630: <==commonly_known== 74610 (neg)
                    (Pc_checked_p9)

                    ; #58835: <==closure== 81527 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #59549: <==commonly_known== 12069 (pos)
                    (Bd_checked_p9)

                    ; #61199: <==commonly_known== 74610 (neg)
                    (Pa_checked_p9)

                    ; #78982: <==commonly_known== 12069 (pos)
                    (Bb_checked_p9)

                    ; #81527: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #91657: <==commonly_known== 74610 (neg)
                    (Pb_checked_p9)

                    ; #13043: <==negation-removal== 31861 (pos)
                    (not (Pa_not_checked_p9))

                    ; #14001: <==negation-removal== 61199 (pos)
                    (not (Ba_not_checked_p9))

                    ; #15833: <==uncertain_firing== 81527 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #29507: <==uncertain_firing== 41445 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #39768: <==negation-removal== 36354 (pos)
                    (not (Bd_not_checked_p9))

                    ; #46286: <==uncertain_firing== 58835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #48385: <==negation-removal== 58835 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #51642: <==negation-removal== 48336 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #57886: <==negation-removal== 78982 (pos)
                    (not (Pb_not_checked_p9))

                    ; #67545: <==negation-removal== 59549 (pos)
                    (not (Pd_not_checked_p9))

                    ; #68532: <==negation-removal== 57630 (pos)
                    (not (Bc_not_checked_p9))

                    ; #73336: <==negation-removal== 41445 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #74610: <==negation-removal== 12069 (pos)
                    (not (not_checked_p9))

                    ; #76609: <==negation-removal== 42675 (pos)
                    (not (Pc_not_checked_p9))

                    ; #79744: <==uncertain_firing== 48336 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #81115: <==negation-removal== 91657 (pos)
                    (not (Bb_not_checked_p9))

                    ; #88037: <==negation-removal== 81527 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))))

)