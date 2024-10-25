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
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #12563: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #22534: <==closure== 85546 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #35960: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #74833: <==closure== 35960 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #75971: <==closure== 12563 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #85546: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #85586: <==closure== 91690 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #91690: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #19695: <==uncertain_firing== 91690 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #27207: <==negation-removal== 85586 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #28030: <==negation-removal== 22534 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #39526: <==negation-removal== 91690 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #52268: <==uncertain_firing== 22534 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #52598: <==negation-removal== 75971 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #60006: <==uncertain_firing== 85546 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #67125: <==negation-removal== 35960 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #71530: <==negation-removal== 12563 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #71655: <==uncertain_firing== 35960 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #80452: <==uncertain_firing== 12563 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #83990: <==uncertain_firing== 85586 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #84284: <==negation-removal== 74833 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #85189: <==uncertain_firing== 75971 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #86572: <==negation-removal== 85546 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #86662: <==uncertain_firing== 74833 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #12563: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #22534: <==closure== 85546 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #35960: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #74833: <==closure== 35960 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #75971: <==closure== 12563 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #85546: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #85586: <==closure== 91690 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #91690: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #19695: <==uncertain_firing== 91690 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #27207: <==negation-removal== 85586 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #28030: <==negation-removal== 22534 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #39526: <==negation-removal== 91690 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #52268: <==uncertain_firing== 22534 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #52598: <==negation-removal== 75971 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #60006: <==uncertain_firing== 85546 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #67125: <==negation-removal== 35960 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #71530: <==negation-removal== 12563 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #71655: <==uncertain_firing== 35960 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #80452: <==uncertain_firing== 12563 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #83990: <==uncertain_firing== 85586 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #84284: <==negation-removal== 74833 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #85189: <==uncertain_firing== 75971 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #86572: <==negation-removal== 85546 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #86662: <==uncertain_firing== 74833 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #12563: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #22534: <==closure== 85546 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #35960: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #74833: <==closure== 35960 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #75971: <==closure== 12563 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #85546: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #85586: <==closure== 91690 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #91690: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #19695: <==uncertain_firing== 91690 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #27207: <==negation-removal== 85586 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #28030: <==negation-removal== 22534 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #39526: <==negation-removal== 91690 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #52268: <==uncertain_firing== 22534 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #52598: <==negation-removal== 75971 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #60006: <==uncertain_firing== 85546 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #67125: <==negation-removal== 35960 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #71530: <==negation-removal== 12563 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #71655: <==uncertain_firing== 35960 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #80452: <==uncertain_firing== 12563 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #83990: <==uncertain_firing== 85586 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #84284: <==negation-removal== 74833 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #85189: <==uncertain_firing== 75971 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #86572: <==negation-removal== 85546 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #86662: <==uncertain_firing== 74833 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #12563: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #22534: <==closure== 85546 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #35960: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #74833: <==closure== 35960 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #75971: <==closure== 12563 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #85546: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #85586: <==closure== 91690 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #91690: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #19695: <==uncertain_firing== 91690 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #27207: <==negation-removal== 85586 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #28030: <==negation-removal== 22534 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #39526: <==negation-removal== 91690 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #52268: <==uncertain_firing== 22534 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #52598: <==negation-removal== 75971 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #60006: <==uncertain_firing== 85546 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #67125: <==negation-removal== 35960 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #71530: <==negation-removal== 12563 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #71655: <==uncertain_firing== 35960 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #80452: <==uncertain_firing== 12563 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #83990: <==uncertain_firing== 85586 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #84284: <==negation-removal== 74833 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #85189: <==uncertain_firing== 75971 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #86572: <==negation-removal== 85546 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #86662: <==uncertain_firing== 74833 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #16323: <==closure== 30547 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #29676: <==closure== 73636 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #30547: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #33224: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #48552: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #52848: <==closure== 48552 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #53857: <==closure== 33224 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #73636: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #12110: <==uncertain_firing== 33224 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #17946: <==uncertain_firing== 73636 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #24644: <==negation-removal== 30547 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #37240: <==negation-removal== 29676 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #37451: <==negation-removal== 52848 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #39912: <==negation-removal== 16323 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #53653: <==negation-removal== 48552 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #68695: <==negation-removal== 33224 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #69199: <==uncertain_firing== 53857 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #72832: <==uncertain_firing== 16323 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #73628: <==negation-removal== 73636 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #74328: <==uncertain_firing== 30547 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #77403: <==negation-removal== 53857 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #81360: <==uncertain_firing== 48552 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #87188: <==uncertain_firing== 29676 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #89436: <==uncertain_firing== 52848 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #16323: <==closure== 30547 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #29676: <==closure== 73636 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #30547: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #33224: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #48552: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #52848: <==closure== 48552 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #53857: <==closure== 33224 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #73636: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #12110: <==uncertain_firing== 33224 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #17946: <==uncertain_firing== 73636 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #24644: <==negation-removal== 30547 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #37240: <==negation-removal== 29676 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #37451: <==negation-removal== 52848 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #39912: <==negation-removal== 16323 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #53653: <==negation-removal== 48552 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #68695: <==negation-removal== 33224 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #69199: <==uncertain_firing== 53857 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #72832: <==uncertain_firing== 16323 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #73628: <==negation-removal== 73636 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #74328: <==uncertain_firing== 30547 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #77403: <==negation-removal== 53857 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #81360: <==uncertain_firing== 48552 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #87188: <==uncertain_firing== 29676 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #89436: <==uncertain_firing== 52848 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #16323: <==closure== 30547 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #29676: <==closure== 73636 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #30547: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #33224: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #48552: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #52848: <==closure== 48552 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #53857: <==closure== 33224 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #73636: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #12110: <==uncertain_firing== 33224 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #17946: <==uncertain_firing== 73636 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #24644: <==negation-removal== 30547 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #37240: <==negation-removal== 29676 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #37451: <==negation-removal== 52848 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #39912: <==negation-removal== 16323 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #53653: <==negation-removal== 48552 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #68695: <==negation-removal== 33224 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #69199: <==uncertain_firing== 53857 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #72832: <==uncertain_firing== 16323 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #73628: <==negation-removal== 73636 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #74328: <==uncertain_firing== 30547 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #77403: <==negation-removal== 53857 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #81360: <==uncertain_firing== 48552 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #87188: <==uncertain_firing== 29676 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #89436: <==uncertain_firing== 52848 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #16323: <==closure== 30547 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #29676: <==closure== 73636 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #30547: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #33224: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #48552: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #52848: <==closure== 48552 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #53857: <==closure== 33224 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #73636: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #12110: <==uncertain_firing== 33224 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #17946: <==uncertain_firing== 73636 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #24644: <==negation-removal== 30547 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #37240: <==negation-removal== 29676 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #37451: <==negation-removal== 52848 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #39912: <==negation-removal== 16323 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #53653: <==negation-removal== 48552 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #68695: <==negation-removal== 33224 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #69199: <==uncertain_firing== 53857 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #72832: <==uncertain_firing== 16323 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #73628: <==negation-removal== 73636 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #74328: <==uncertain_firing== 30547 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #77403: <==negation-removal== 53857 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #81360: <==uncertain_firing== 48552 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #87188: <==uncertain_firing== 29676 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #89436: <==uncertain_firing== 52848 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #13563: <==closure== 50737 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #22612: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #40503: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #46947: <==closure== 40503 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #50737: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #66443: <==closure== 22612 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69102: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #86400: <==closure== 69102 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #17015: <==uncertain_firing== 69102 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #18130: <==negation-removal== 86400 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #20615: <==negation-removal== 22612 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #21792: <==negation-removal== 50737 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #24155: <==uncertain_firing== 22612 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #30593: <==uncertain_firing== 66443 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #36410: <==uncertain_firing== 46947 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #41909: <==negation-removal== 69102 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #47107: <==negation-removal== 13563 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #58596: <==negation-removal== 46947 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #61562: <==uncertain_firing== 50737 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #68742: <==negation-removal== 66443 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #75893: <==negation-removal== 40503 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #80845: <==uncertain_firing== 13563 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #88123: <==uncertain_firing== 40503 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #91565: <==uncertain_firing== 86400 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #13563: <==closure== 50737 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #22612: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #40503: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #46947: <==closure== 40503 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #50737: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #66443: <==closure== 22612 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69102: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #86400: <==closure== 69102 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #17015: <==uncertain_firing== 69102 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #18130: <==negation-removal== 86400 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #20615: <==negation-removal== 22612 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #21792: <==negation-removal== 50737 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #24155: <==uncertain_firing== 22612 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #30593: <==uncertain_firing== 66443 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #36410: <==uncertain_firing== 46947 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #41909: <==negation-removal== 69102 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #47107: <==negation-removal== 13563 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #58596: <==negation-removal== 46947 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #61562: <==uncertain_firing== 50737 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #68742: <==negation-removal== 66443 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #75893: <==negation-removal== 40503 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #80845: <==uncertain_firing== 13563 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #88123: <==uncertain_firing== 40503 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #91565: <==uncertain_firing== 86400 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #13563: <==closure== 50737 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #22612: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #40503: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #46947: <==closure== 40503 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #50737: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #66443: <==closure== 22612 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69102: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #86400: <==closure== 69102 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #17015: <==uncertain_firing== 69102 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #18130: <==negation-removal== 86400 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #20615: <==negation-removal== 22612 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #21792: <==negation-removal== 50737 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #24155: <==uncertain_firing== 22612 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #30593: <==uncertain_firing== 66443 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #36410: <==uncertain_firing== 46947 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #41909: <==negation-removal== 69102 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #47107: <==negation-removal== 13563 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #58596: <==negation-removal== 46947 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #61562: <==uncertain_firing== 50737 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #68742: <==negation-removal== 66443 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #75893: <==negation-removal== 40503 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #80845: <==uncertain_firing== 13563 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #88123: <==uncertain_firing== 40503 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #91565: <==uncertain_firing== 86400 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #13563: <==closure== 50737 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #22612: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #40503: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #46947: <==closure== 40503 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #50737: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #66443: <==closure== 22612 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69102: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #86400: <==closure== 69102 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #17015: <==uncertain_firing== 69102 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #18130: <==negation-removal== 86400 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #20615: <==negation-removal== 22612 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #21792: <==negation-removal== 50737 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #24155: <==uncertain_firing== 22612 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #30593: <==uncertain_firing== 66443 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #36410: <==uncertain_firing== 46947 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #41909: <==negation-removal== 69102 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #47107: <==negation-removal== 13563 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #58596: <==negation-removal== 46947 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #61562: <==uncertain_firing== 50737 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #68742: <==negation-removal== 66443 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #75893: <==negation-removal== 40503 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #80845: <==uncertain_firing== 13563 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #88123: <==uncertain_firing== 40503 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #91565: <==uncertain_firing== 86400 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #31364: <==closure== 69477 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #35855: <==closure== 88615 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #52450: <==closure== 56858 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #56858: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #69477: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #85214: <==closure== 85416 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #85416: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #88615: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #11430: <==uncertain_firing== 85214 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15952: <==negation-removal== 69477 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #23336: <==uncertain_firing== 85416 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #25048: <==negation-removal== 31364 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #34396: <==uncertain_firing== 69477 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #37015: <==negation-removal== 52450 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #37564: <==uncertain_firing== 52450 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #37760: <==uncertain_firing== 56858 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #43956: <==negation-removal== 56858 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #56722: <==negation-removal== 85416 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #59438: <==uncertain_firing== 35855 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #63827: <==uncertain_firing== 88615 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #70378: <==uncertain_firing== 31364 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #70453: <==negation-removal== 35855 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #77916: <==negation-removal== 85214 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #78678: <==negation-removal== 88615 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #31364: <==closure== 69477 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #35855: <==closure== 88615 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #52450: <==closure== 56858 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #56858: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #69477: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #85214: <==closure== 85416 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #85416: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #88615: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #11430: <==uncertain_firing== 85214 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15952: <==negation-removal== 69477 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #23336: <==uncertain_firing== 85416 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #25048: <==negation-removal== 31364 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #34396: <==uncertain_firing== 69477 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #37015: <==negation-removal== 52450 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #37564: <==uncertain_firing== 52450 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #37760: <==uncertain_firing== 56858 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #43956: <==negation-removal== 56858 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #56722: <==negation-removal== 85416 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #59438: <==uncertain_firing== 35855 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #63827: <==uncertain_firing== 88615 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #70378: <==uncertain_firing== 31364 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #70453: <==negation-removal== 35855 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #77916: <==negation-removal== 85214 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #78678: <==negation-removal== 88615 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #31364: <==closure== 69477 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #35855: <==closure== 88615 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #52450: <==closure== 56858 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #56858: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #69477: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #85214: <==closure== 85416 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #85416: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #88615: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #11430: <==uncertain_firing== 85214 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15952: <==negation-removal== 69477 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #23336: <==uncertain_firing== 85416 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #25048: <==negation-removal== 31364 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #34396: <==uncertain_firing== 69477 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #37015: <==negation-removal== 52450 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #37564: <==uncertain_firing== 52450 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #37760: <==uncertain_firing== 56858 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #43956: <==negation-removal== 56858 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #56722: <==negation-removal== 85416 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #59438: <==uncertain_firing== 35855 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #63827: <==uncertain_firing== 88615 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #70378: <==uncertain_firing== 31364 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #70453: <==negation-removal== 35855 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #77916: <==negation-removal== 85214 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #78678: <==negation-removal== 88615 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #31364: <==closure== 69477 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #35855: <==closure== 88615 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #52450: <==closure== 56858 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #56858: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #69477: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #85214: <==closure== 85416 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #85416: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #88615: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #11430: <==uncertain_firing== 85214 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15952: <==negation-removal== 69477 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #23336: <==uncertain_firing== 85416 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #25048: <==negation-removal== 31364 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #34396: <==uncertain_firing== 69477 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #37015: <==negation-removal== 52450 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #37564: <==uncertain_firing== 52450 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #37760: <==uncertain_firing== 56858 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #43956: <==negation-removal== 56858 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #56722: <==negation-removal== 85416 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #59438: <==uncertain_firing== 35855 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #63827: <==uncertain_firing== 88615 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #70378: <==uncertain_firing== 31364 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #70453: <==negation-removal== 35855 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #77916: <==negation-removal== 85214 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #78678: <==negation-removal== 88615 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #10878: <==closure== 30537 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #30537: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #30727: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #46547: <==closure== 30727 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #51479: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #61322: <==closure== 66735 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #66735: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #88720: <==closure== 51479 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #11933: <==uncertain_firing== 66735 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #16626: <==negation-removal== 30537 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #29141: <==uncertain_firing== 61322 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #29892: <==negation-removal== 66735 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #36844: <==uncertain_firing== 30727 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #37267: <==negation-removal== 10878 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #47183: <==negation-removal== 46547 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #55523: <==uncertain_firing== 10878 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #60375: <==negation-removal== 88720 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #61521: <==negation-removal== 30727 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #62281: <==uncertain_firing== 30537 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #72721: <==uncertain_firing== 51479 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #77580: <==negation-removal== 51479 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #85331: <==uncertain_firing== 88720 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #88533: <==uncertain_firing== 46547 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #92224: <==negation-removal== 61322 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #10878: <==closure== 30537 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #30537: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #30727: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #46547: <==closure== 30727 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #51479: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #61322: <==closure== 66735 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #66735: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #88720: <==closure== 51479 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #11933: <==uncertain_firing== 66735 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #16626: <==negation-removal== 30537 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #29141: <==uncertain_firing== 61322 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #29892: <==negation-removal== 66735 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #36844: <==uncertain_firing== 30727 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #37267: <==negation-removal== 10878 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #47183: <==negation-removal== 46547 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #55523: <==uncertain_firing== 10878 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #60375: <==negation-removal== 88720 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #61521: <==negation-removal== 30727 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #62281: <==uncertain_firing== 30537 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #72721: <==uncertain_firing== 51479 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #77580: <==negation-removal== 51479 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #85331: <==uncertain_firing== 88720 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #88533: <==uncertain_firing== 46547 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #92224: <==negation-removal== 61322 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #10878: <==closure== 30537 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #30537: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #30727: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #46547: <==closure== 30727 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #51479: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #61322: <==closure== 66735 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #66735: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #88720: <==closure== 51479 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #11933: <==uncertain_firing== 66735 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #16626: <==negation-removal== 30537 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #29141: <==uncertain_firing== 61322 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #29892: <==negation-removal== 66735 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #36844: <==uncertain_firing== 30727 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #37267: <==negation-removal== 10878 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #47183: <==negation-removal== 46547 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #55523: <==uncertain_firing== 10878 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #60375: <==negation-removal== 88720 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #61521: <==negation-removal== 30727 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #62281: <==uncertain_firing== 30537 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #72721: <==uncertain_firing== 51479 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #77580: <==negation-removal== 51479 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #85331: <==uncertain_firing== 88720 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #88533: <==uncertain_firing== 46547 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #92224: <==negation-removal== 61322 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (at_d_p5)
                           (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #10878: <==closure== 30537 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #30537: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #30727: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #46547: <==closure== 30727 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #51479: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #61322: <==closure== 66735 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #66735: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #88720: <==closure== 51479 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #11933: <==uncertain_firing== 66735 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #16626: <==negation-removal== 30537 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #29141: <==uncertain_firing== 61322 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #29892: <==negation-removal== 66735 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #36844: <==uncertain_firing== 30727 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #37267: <==negation-removal== 10878 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #47183: <==negation-removal== 46547 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #55523: <==uncertain_firing== 10878 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #60375: <==negation-removal== 88720 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #61521: <==negation-removal== 30727 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #62281: <==uncertain_firing== 30537 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #72721: <==uncertain_firing== 51479 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #77580: <==negation-removal== 51479 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #85331: <==uncertain_firing== 88720 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #88533: <==uncertain_firing== 46547 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #92224: <==negation-removal== 61322 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #29114: <==closure== 29837 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #29837: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #31907: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #37063: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #37953: <==closure== 31907 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #47733: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #52033: <==closure== 47733 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #52565: <==closure== 37063 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #11809: <==uncertain_firing== 37063 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #15728: <==uncertain_firing== 31907 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #18218: <==negation-removal== 47733 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #22123: <==uncertain_firing== 52565 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #30897: <==negation-removal== 52565 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #35025: <==negation-removal== 37063 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #43216: <==negation-removal== 31907 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #43368: <==negation-removal== 29837 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #43860: <==uncertain_firing== 29837 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #51172: <==uncertain_firing== 37953 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #56689: <==negation-removal== 52033 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74812: <==negation-removal== 37953 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #79436: <==uncertain_firing== 29114 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #81605: <==uncertain_firing== 52033 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #82233: <==uncertain_firing== 47733 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #86393: <==negation-removal== 29114 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #29114: <==closure== 29837 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #29837: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #31907: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #37063: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #37953: <==closure== 31907 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #47733: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #52033: <==closure== 47733 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #52565: <==closure== 37063 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #11809: <==uncertain_firing== 37063 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #15728: <==uncertain_firing== 31907 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #18218: <==negation-removal== 47733 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #22123: <==uncertain_firing== 52565 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #30897: <==negation-removal== 52565 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #35025: <==negation-removal== 37063 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #43216: <==negation-removal== 31907 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #43368: <==negation-removal== 29837 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #43860: <==uncertain_firing== 29837 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #51172: <==uncertain_firing== 37953 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #56689: <==negation-removal== 52033 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74812: <==negation-removal== 37953 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #79436: <==uncertain_firing== 29114 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #81605: <==uncertain_firing== 52033 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #82233: <==uncertain_firing== 47733 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #86393: <==negation-removal== 29114 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #29114: <==closure== 29837 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #29837: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #31907: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #37063: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #37953: <==closure== 31907 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #47733: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #52033: <==closure== 47733 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #52565: <==closure== 37063 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #11809: <==uncertain_firing== 37063 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #15728: <==uncertain_firing== 31907 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #18218: <==negation-removal== 47733 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #22123: <==uncertain_firing== 52565 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #30897: <==negation-removal== 52565 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #35025: <==negation-removal== 37063 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #43216: <==negation-removal== 31907 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #43368: <==negation-removal== 29837 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #43860: <==uncertain_firing== 29837 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #51172: <==uncertain_firing== 37953 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #56689: <==negation-removal== 52033 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74812: <==negation-removal== 37953 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #79436: <==uncertain_firing== 29114 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #81605: <==uncertain_firing== 52033 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #82233: <==uncertain_firing== 47733 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #86393: <==negation-removal== 29114 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #29114: <==closure== 29837 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #29837: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #31907: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #37063: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #37953: <==closure== 31907 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #47733: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #52033: <==closure== 47733 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #52565: <==closure== 37063 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #11809: <==uncertain_firing== 37063 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #15728: <==uncertain_firing== 31907 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #18218: <==negation-removal== 47733 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #22123: <==uncertain_firing== 52565 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #30897: <==negation-removal== 52565 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #35025: <==negation-removal== 37063 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #43216: <==negation-removal== 31907 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #43368: <==negation-removal== 29837 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #43860: <==uncertain_firing== 29837 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #51172: <==uncertain_firing== 37953 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #56689: <==negation-removal== 52033 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74812: <==negation-removal== 37953 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #79436: <==uncertain_firing== 29114 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #81605: <==uncertain_firing== 52033 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #82233: <==uncertain_firing== 47733 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #86393: <==negation-removal== 29114 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #35333: <==closure== 44078 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #39546: <==closure== 93157 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #44078: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #48504: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #51683: <==closure== 48504 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #71936: <==closure== 76639 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #76639: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #93157: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #14097: <==negation-removal== 44078 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #17067: <==negation-removal== 71936 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #24189: <==uncertain_firing== 51683 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #43446: <==uncertain_firing== 48504 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #49947: <==negation-removal== 48504 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #54835: <==uncertain_firing== 44078 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #59665: <==negation-removal== 35333 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #63021: <==uncertain_firing== 39546 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #65669: <==uncertain_firing== 76639 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #68484: <==uncertain_firing== 93157 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #70161: <==uncertain_firing== 35333 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #71001: <==negation-removal== 76639 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #78590: <==negation-removal== 51683 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #79998: <==negation-removal== 39546 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #83957: <==negation-removal== 93157 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #92223: <==uncertain_firing== 71936 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #35333: <==closure== 44078 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #39546: <==closure== 93157 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #44078: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #48504: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #51683: <==closure== 48504 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #71936: <==closure== 76639 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #76639: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #93157: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #14097: <==negation-removal== 44078 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #17067: <==negation-removal== 71936 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #24189: <==uncertain_firing== 51683 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #43446: <==uncertain_firing== 48504 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #49947: <==negation-removal== 48504 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #54835: <==uncertain_firing== 44078 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #59665: <==negation-removal== 35333 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #63021: <==uncertain_firing== 39546 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #65669: <==uncertain_firing== 76639 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #68484: <==uncertain_firing== 93157 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #70161: <==uncertain_firing== 35333 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #71001: <==negation-removal== 76639 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #78590: <==negation-removal== 51683 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #79998: <==negation-removal== 39546 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #83957: <==negation-removal== 93157 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #92223: <==uncertain_firing== 71936 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #35333: <==closure== 44078 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #39546: <==closure== 93157 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #44078: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #48504: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #51683: <==closure== 48504 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #71936: <==closure== 76639 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #76639: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #93157: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #14097: <==negation-removal== 44078 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #17067: <==negation-removal== 71936 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #24189: <==uncertain_firing== 51683 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #43446: <==uncertain_firing== 48504 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #49947: <==negation-removal== 48504 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #54835: <==uncertain_firing== 44078 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #59665: <==negation-removal== 35333 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #63021: <==uncertain_firing== 39546 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #65669: <==uncertain_firing== 76639 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #68484: <==uncertain_firing== 93157 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #70161: <==uncertain_firing== 35333 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #71001: <==negation-removal== 76639 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #78590: <==negation-removal== 51683 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #79998: <==negation-removal== 39546 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #83957: <==negation-removal== 93157 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #92223: <==uncertain_firing== 71936 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #35333: <==closure== 44078 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #39546: <==closure== 93157 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #44078: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #48504: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #51683: <==closure== 48504 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #71936: <==closure== 76639 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #76639: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #93157: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #14097: <==negation-removal== 44078 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #17067: <==negation-removal== 71936 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #24189: <==uncertain_firing== 51683 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #43446: <==uncertain_firing== 48504 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #49947: <==negation-removal== 48504 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #54835: <==uncertain_firing== 44078 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #59665: <==negation-removal== 35333 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #63021: <==uncertain_firing== 39546 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #65669: <==uncertain_firing== 76639 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #68484: <==uncertain_firing== 93157 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #70161: <==uncertain_firing== 35333 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #71001: <==negation-removal== 76639 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #78590: <==negation-removal== 51683 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #79998: <==negation-removal== 39546 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #83957: <==negation-removal== 93157 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #92223: <==uncertain_firing== 71936 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #10255: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #21251: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #29719: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #53203: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #60989: <==closure== 29719 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64395: <==closure== 21251 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #74407: <==closure== 10255 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #78693: <==closure== 53203 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #11440: <==uncertain_firing== 21251 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #12656: <==uncertain_firing== 78693 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #16936: <==uncertain_firing== 60989 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #23145: <==negation-removal== 53203 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #31375: <==negation-removal== 78693 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #50815: <==negation-removal== 21251 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #51899: <==negation-removal== 74407 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #54170: <==uncertain_firing== 64395 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #57840: <==uncertain_firing== 53203 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #59277: <==uncertain_firing== 10255 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #60193: <==negation-removal== 29719 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #62350: <==uncertain_firing== 29719 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #64542: <==negation-removal== 64395 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #66969: <==negation-removal== 60989 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #80244: <==negation-removal== 10255 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #82723: <==uncertain_firing== 74407 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #10255: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #21251: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #29719: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #53203: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #60989: <==closure== 29719 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64395: <==closure== 21251 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #74407: <==closure== 10255 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #78693: <==closure== 53203 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #11440: <==uncertain_firing== 21251 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #12656: <==uncertain_firing== 78693 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #16936: <==uncertain_firing== 60989 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #23145: <==negation-removal== 53203 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #31375: <==negation-removal== 78693 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #50815: <==negation-removal== 21251 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #51899: <==negation-removal== 74407 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #54170: <==uncertain_firing== 64395 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #57840: <==uncertain_firing== 53203 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #59277: <==uncertain_firing== 10255 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #60193: <==negation-removal== 29719 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #62350: <==uncertain_firing== 29719 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #64542: <==negation-removal== 64395 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #66969: <==negation-removal== 60989 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #80244: <==negation-removal== 10255 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #82723: <==uncertain_firing== 74407 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #10255: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #21251: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #29719: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #53203: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #60989: <==closure== 29719 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64395: <==closure== 21251 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #74407: <==closure== 10255 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #78693: <==closure== 53203 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #11440: <==uncertain_firing== 21251 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #12656: <==uncertain_firing== 78693 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #16936: <==uncertain_firing== 60989 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #23145: <==negation-removal== 53203 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #31375: <==negation-removal== 78693 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #50815: <==negation-removal== 21251 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #51899: <==negation-removal== 74407 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #54170: <==uncertain_firing== 64395 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #57840: <==uncertain_firing== 53203 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #59277: <==uncertain_firing== 10255 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #60193: <==negation-removal== 29719 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #62350: <==uncertain_firing== 29719 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #64542: <==negation-removal== 64395 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #66969: <==negation-removal== 60989 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #80244: <==negation-removal== 10255 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #82723: <==uncertain_firing== 74407 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #10255: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #21251: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #29719: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #53203: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #60989: <==closure== 29719 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64395: <==closure== 21251 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #74407: <==closure== 10255 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #78693: <==closure== 53203 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #11440: <==uncertain_firing== 21251 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #12656: <==uncertain_firing== 78693 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #16936: <==uncertain_firing== 60989 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #23145: <==negation-removal== 53203 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #31375: <==negation-removal== 78693 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #50815: <==negation-removal== 21251 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #51899: <==negation-removal== 74407 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #54170: <==uncertain_firing== 64395 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #57840: <==uncertain_firing== 53203 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #59277: <==uncertain_firing== 10255 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #60193: <==negation-removal== 29719 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #62350: <==uncertain_firing== 29719 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #64542: <==negation-removal== 64395 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #66969: <==negation-removal== 60989 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #80244: <==negation-removal== 10255 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #82723: <==uncertain_firing== 74407 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #19541: <==closure== 75110 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #22468: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #57824: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #73394: <==closure== 57824 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #75110: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #75975: <==closure== 22468 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #82967: <==closure== 88890 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #88890: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #12830: <==negation-removal== 88890 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #13040: <==negation-removal== 73394 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #14055: <==uncertain_firing== 22468 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #18335: <==negation-removal== 75110 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #18741: <==uncertain_firing== 73394 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #23661: <==uncertain_firing== 88890 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #23954: <==uncertain_firing== 75975 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #30946: <==negation-removal== 22468 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #38800: <==uncertain_firing== 19541 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #45781: <==negation-removal== 82967 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #49010: <==negation-removal== 75975 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #49847: <==uncertain_firing== 57824 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #70906: <==negation-removal== 57824 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #89462: <==negation-removal== 19541 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #89837: <==uncertain_firing== 75110 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #96650: <==uncertain_firing== 82967 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #19541: <==closure== 75110 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #22468: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #57824: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #73394: <==closure== 57824 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #75110: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #75975: <==closure== 22468 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #82967: <==closure== 88890 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #88890: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #12830: <==negation-removal== 88890 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #13040: <==negation-removal== 73394 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #14055: <==uncertain_firing== 22468 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #18335: <==negation-removal== 75110 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #18741: <==uncertain_firing== 73394 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #23661: <==uncertain_firing== 88890 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #23954: <==uncertain_firing== 75975 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #30946: <==negation-removal== 22468 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #38800: <==uncertain_firing== 19541 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #45781: <==negation-removal== 82967 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #49010: <==negation-removal== 75975 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #49847: <==uncertain_firing== 57824 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #70906: <==negation-removal== 57824 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #89462: <==negation-removal== 19541 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #89837: <==uncertain_firing== 75110 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #96650: <==uncertain_firing== 82967 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #19541: <==closure== 75110 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #22468: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #57824: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #73394: <==closure== 57824 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #75110: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #75975: <==closure== 22468 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #82967: <==closure== 88890 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #88890: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #12830: <==negation-removal== 88890 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #13040: <==negation-removal== 73394 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #14055: <==uncertain_firing== 22468 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #18335: <==negation-removal== 75110 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #18741: <==uncertain_firing== 73394 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #23661: <==uncertain_firing== 88890 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #23954: <==uncertain_firing== 75975 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #30946: <==negation-removal== 22468 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #38800: <==uncertain_firing== 19541 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #45781: <==negation-removal== 82967 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #49010: <==negation-removal== 75975 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #49847: <==uncertain_firing== 57824 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #70906: <==negation-removal== 57824 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #89462: <==negation-removal== 19541 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #89837: <==uncertain_firing== 75110 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #96650: <==uncertain_firing== 82967 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #19541: <==closure== 75110 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #22468: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #57824: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #73394: <==closure== 57824 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #75110: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #75975: <==closure== 22468 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #82967: <==closure== 88890 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #88890: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #12830: <==negation-removal== 88890 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #13040: <==negation-removal== 73394 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #14055: <==uncertain_firing== 22468 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #18335: <==negation-removal== 75110 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #18741: <==uncertain_firing== 73394 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #23661: <==uncertain_firing== 88890 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #23954: <==uncertain_firing== 75975 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #30946: <==negation-removal== 22468 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #38800: <==uncertain_firing== 19541 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #45781: <==negation-removal== 82967 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #49010: <==negation-removal== 75975 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #49847: <==uncertain_firing== 57824 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #70906: <==negation-removal== 57824 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #89462: <==negation-removal== 19541 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #89837: <==uncertain_firing== 75110 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #96650: <==uncertain_firing== 82967 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #24603: <==closure== 66272 (pos)
                    (Pa_survivorat_s_p1)

                    ; #51412: <==closure== 67502 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66272: origin
                    (Ba_survivorat_s_p1)

                    ; #67502: origin
                    (Bb_survivorat_s_p1)

                    ; #75282: origin
                    (Bc_survivorat_s_p1)

                    ; #81527: <==closure== 75282 (pos)
                    (Pc_survivorat_s_p1)

                    ; #81610: <==closure== 84474 (pos)
                    (Pd_survivorat_s_p1)

                    ; #84474: origin
                    (Bd_survivorat_s_p1)

                    ; #14600: <==negation-removal== 67502 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #40578: <==negation-removal== 51412 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #59352: <==negation-removal== 66272 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #60873: <==negation-removal== 84474 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #71954: <==negation-removal== 81527 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #72378: <==negation-removal== 75282 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #72832: <==negation-removal== 81610 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #89832: <==negation-removal== 24603 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #24603: <==closure== 66272 (pos)
                    (Pa_survivorat_s_p1)

                    ; #51412: <==closure== 67502 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66272: origin
                    (Ba_survivorat_s_p1)

                    ; #67502: origin
                    (Bb_survivorat_s_p1)

                    ; #75282: origin
                    (Bc_survivorat_s_p1)

                    ; #81527: <==closure== 75282 (pos)
                    (Pc_survivorat_s_p1)

                    ; #81610: <==closure== 84474 (pos)
                    (Pd_survivorat_s_p1)

                    ; #84474: origin
                    (Bd_survivorat_s_p1)

                    ; #14600: <==negation-removal== 67502 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #40578: <==negation-removal== 51412 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #59352: <==negation-removal== 66272 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #60873: <==negation-removal== 84474 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #71954: <==negation-removal== 81527 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #72378: <==negation-removal== 75282 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #72832: <==negation-removal== 81610 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #89832: <==negation-removal== 24603 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #24603: <==closure== 66272 (pos)
                    (Pa_survivorat_s_p1)

                    ; #51412: <==closure== 67502 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66272: origin
                    (Ba_survivorat_s_p1)

                    ; #67502: origin
                    (Bb_survivorat_s_p1)

                    ; #75282: origin
                    (Bc_survivorat_s_p1)

                    ; #81527: <==closure== 75282 (pos)
                    (Pc_survivorat_s_p1)

                    ; #81610: <==closure== 84474 (pos)
                    (Pd_survivorat_s_p1)

                    ; #84474: origin
                    (Bd_survivorat_s_p1)

                    ; #14600: <==negation-removal== 67502 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #40578: <==negation-removal== 51412 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #59352: <==negation-removal== 66272 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #60873: <==negation-removal== 84474 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #71954: <==negation-removal== 81527 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #72378: <==negation-removal== 75282 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #72832: <==negation-removal== 81610 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #89832: <==negation-removal== 24603 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #24603: <==closure== 66272 (pos)
                    (Pa_survivorat_s_p1)

                    ; #51412: <==closure== 67502 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66272: origin
                    (Ba_survivorat_s_p1)

                    ; #67502: origin
                    (Bb_survivorat_s_p1)

                    ; #75282: origin
                    (Bc_survivorat_s_p1)

                    ; #81527: <==closure== 75282 (pos)
                    (Pc_survivorat_s_p1)

                    ; #81610: <==closure== 84474 (pos)
                    (Pd_survivorat_s_p1)

                    ; #84474: origin
                    (Bd_survivorat_s_p1)

                    ; #14600: <==negation-removal== 67502 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #40578: <==negation-removal== 51412 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #59352: <==negation-removal== 66272 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #60873: <==negation-removal== 84474 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #71954: <==negation-removal== 81527 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #72378: <==negation-removal== 75282 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #72832: <==negation-removal== 81610 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #89832: <==negation-removal== 24603 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #17960: origin
                    (Ba_survivorat_s_p2)

                    ; #19150: origin
                    (Bd_survivorat_s_p2)

                    ; #25089: <==closure== 54018 (pos)
                    (Pc_survivorat_s_p2)

                    ; #38750: <==closure== 17960 (pos)
                    (Pa_survivorat_s_p2)

                    ; #54018: origin
                    (Bc_survivorat_s_p2)

                    ; #71105: <==closure== 71776 (pos)
                    (Pb_survivorat_s_p2)

                    ; #71776: origin
                    (Bb_survivorat_s_p2)

                    ; #88838: <==closure== 19150 (pos)
                    (Pd_survivorat_s_p2)

                    ; #21639: <==negation-removal== 88838 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #22465: <==negation-removal== 19150 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #26739: <==negation-removal== 25089 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41292: <==negation-removal== 54018 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #43003: <==negation-removal== 17960 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #59867: <==negation-removal== 71776 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67653: <==negation-removal== 71105 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #83781: <==negation-removal== 38750 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #17960: origin
                    (Ba_survivorat_s_p2)

                    ; #19150: origin
                    (Bd_survivorat_s_p2)

                    ; #25089: <==closure== 54018 (pos)
                    (Pc_survivorat_s_p2)

                    ; #38750: <==closure== 17960 (pos)
                    (Pa_survivorat_s_p2)

                    ; #54018: origin
                    (Bc_survivorat_s_p2)

                    ; #71105: <==closure== 71776 (pos)
                    (Pb_survivorat_s_p2)

                    ; #71776: origin
                    (Bb_survivorat_s_p2)

                    ; #88838: <==closure== 19150 (pos)
                    (Pd_survivorat_s_p2)

                    ; #21639: <==negation-removal== 88838 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #22465: <==negation-removal== 19150 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #26739: <==negation-removal== 25089 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41292: <==negation-removal== 54018 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #43003: <==negation-removal== 17960 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #59867: <==negation-removal== 71776 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67653: <==negation-removal== 71105 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #83781: <==negation-removal== 38750 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #17960: origin
                    (Ba_survivorat_s_p2)

                    ; #19150: origin
                    (Bd_survivorat_s_p2)

                    ; #25089: <==closure== 54018 (pos)
                    (Pc_survivorat_s_p2)

                    ; #38750: <==closure== 17960 (pos)
                    (Pa_survivorat_s_p2)

                    ; #54018: origin
                    (Bc_survivorat_s_p2)

                    ; #71105: <==closure== 71776 (pos)
                    (Pb_survivorat_s_p2)

                    ; #71776: origin
                    (Bb_survivorat_s_p2)

                    ; #88838: <==closure== 19150 (pos)
                    (Pd_survivorat_s_p2)

                    ; #21639: <==negation-removal== 88838 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #22465: <==negation-removal== 19150 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #26739: <==negation-removal== 25089 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41292: <==negation-removal== 54018 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #43003: <==negation-removal== 17960 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #59867: <==negation-removal== 71776 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67653: <==negation-removal== 71105 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #83781: <==negation-removal== 38750 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #17960: origin
                    (Ba_survivorat_s_p2)

                    ; #19150: origin
                    (Bd_survivorat_s_p2)

                    ; #25089: <==closure== 54018 (pos)
                    (Pc_survivorat_s_p2)

                    ; #38750: <==closure== 17960 (pos)
                    (Pa_survivorat_s_p2)

                    ; #54018: origin
                    (Bc_survivorat_s_p2)

                    ; #71105: <==closure== 71776 (pos)
                    (Pb_survivorat_s_p2)

                    ; #71776: origin
                    (Bb_survivorat_s_p2)

                    ; #88838: <==closure== 19150 (pos)
                    (Pd_survivorat_s_p2)

                    ; #21639: <==negation-removal== 88838 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #22465: <==negation-removal== 19150 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #26739: <==negation-removal== 25089 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41292: <==negation-removal== 54018 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #43003: <==negation-removal== 17960 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #59867: <==negation-removal== 71776 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67653: <==negation-removal== 71105 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #83781: <==negation-removal== 38750 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #16760: <==closure== 26556 (pos)
                    (Pb_survivorat_s_p3)

                    ; #17613: <==closure== 49267 (pos)
                    (Pc_survivorat_s_p3)

                    ; #26556: origin
                    (Bb_survivorat_s_p3)

                    ; #31625: <==closure== 60245 (pos)
                    (Pd_survivorat_s_p3)

                    ; #32991: <==closure== 43333 (pos)
                    (Pa_survivorat_s_p3)

                    ; #43333: origin
                    (Ba_survivorat_s_p3)

                    ; #49267: origin
                    (Bc_survivorat_s_p3)

                    ; #60245: origin
                    (Bd_survivorat_s_p3)

                    ; #18001: <==negation-removal== 43333 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #24565: <==negation-removal== 17613 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #34355: <==negation-removal== 32991 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #52963: <==negation-removal== 26556 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #80786: <==negation-removal== 60245 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #80963: <==negation-removal== 31625 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #82483: <==negation-removal== 16760 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92861: <==negation-removal== 49267 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #16760: <==closure== 26556 (pos)
                    (Pb_survivorat_s_p3)

                    ; #17613: <==closure== 49267 (pos)
                    (Pc_survivorat_s_p3)

                    ; #26556: origin
                    (Bb_survivorat_s_p3)

                    ; #31625: <==closure== 60245 (pos)
                    (Pd_survivorat_s_p3)

                    ; #32991: <==closure== 43333 (pos)
                    (Pa_survivorat_s_p3)

                    ; #43333: origin
                    (Ba_survivorat_s_p3)

                    ; #49267: origin
                    (Bc_survivorat_s_p3)

                    ; #60245: origin
                    (Bd_survivorat_s_p3)

                    ; #18001: <==negation-removal== 43333 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #24565: <==negation-removal== 17613 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #34355: <==negation-removal== 32991 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #52963: <==negation-removal== 26556 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #80786: <==negation-removal== 60245 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #80963: <==negation-removal== 31625 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #82483: <==negation-removal== 16760 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92861: <==negation-removal== 49267 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #16760: <==closure== 26556 (pos)
                    (Pb_survivorat_s_p3)

                    ; #17613: <==closure== 49267 (pos)
                    (Pc_survivorat_s_p3)

                    ; #26556: origin
                    (Bb_survivorat_s_p3)

                    ; #31625: <==closure== 60245 (pos)
                    (Pd_survivorat_s_p3)

                    ; #32991: <==closure== 43333 (pos)
                    (Pa_survivorat_s_p3)

                    ; #43333: origin
                    (Ba_survivorat_s_p3)

                    ; #49267: origin
                    (Bc_survivorat_s_p3)

                    ; #60245: origin
                    (Bd_survivorat_s_p3)

                    ; #18001: <==negation-removal== 43333 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #24565: <==negation-removal== 17613 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #34355: <==negation-removal== 32991 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #52963: <==negation-removal== 26556 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #80786: <==negation-removal== 60245 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #80963: <==negation-removal== 31625 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #82483: <==negation-removal== 16760 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92861: <==negation-removal== 49267 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #16760: <==closure== 26556 (pos)
                    (Pb_survivorat_s_p3)

                    ; #17613: <==closure== 49267 (pos)
                    (Pc_survivorat_s_p3)

                    ; #26556: origin
                    (Bb_survivorat_s_p3)

                    ; #31625: <==closure== 60245 (pos)
                    (Pd_survivorat_s_p3)

                    ; #32991: <==closure== 43333 (pos)
                    (Pa_survivorat_s_p3)

                    ; #43333: origin
                    (Ba_survivorat_s_p3)

                    ; #49267: origin
                    (Bc_survivorat_s_p3)

                    ; #60245: origin
                    (Bd_survivorat_s_p3)

                    ; #18001: <==negation-removal== 43333 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #24565: <==negation-removal== 17613 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #34355: <==negation-removal== 32991 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #52963: <==negation-removal== 26556 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #80786: <==negation-removal== 60245 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #80963: <==negation-removal== 31625 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #82483: <==negation-removal== 16760 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92861: <==negation-removal== 49267 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #17088: origin
                    (Bc_survivorat_s_p4)

                    ; #19357: origin
                    (Bb_survivorat_s_p4)

                    ; #26137: <==closure== 17088 (pos)
                    (Pc_survivorat_s_p4)

                    ; #38498: origin
                    (Bd_survivorat_s_p4)

                    ; #44289: <==closure== 38498 (pos)
                    (Pd_survivorat_s_p4)

                    ; #49424: <==closure== 53110 (pos)
                    (Pa_survivorat_s_p4)

                    ; #53110: origin
                    (Ba_survivorat_s_p4)

                    ; #75814: <==closure== 19357 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22780: <==negation-removal== 53110 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #28144: <==negation-removal== 17088 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #50650: <==negation-removal== 49424 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #65049: <==negation-removal== 44289 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #67023: <==negation-removal== 38498 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #69190: <==negation-removal== 75814 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #75590: <==negation-removal== 26137 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #88862: <==negation-removal== 19357 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #17088: origin
                    (Bc_survivorat_s_p4)

                    ; #19357: origin
                    (Bb_survivorat_s_p4)

                    ; #26137: <==closure== 17088 (pos)
                    (Pc_survivorat_s_p4)

                    ; #38498: origin
                    (Bd_survivorat_s_p4)

                    ; #44289: <==closure== 38498 (pos)
                    (Pd_survivorat_s_p4)

                    ; #49424: <==closure== 53110 (pos)
                    (Pa_survivorat_s_p4)

                    ; #53110: origin
                    (Ba_survivorat_s_p4)

                    ; #75814: <==closure== 19357 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22780: <==negation-removal== 53110 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #28144: <==negation-removal== 17088 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #50650: <==negation-removal== 49424 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #65049: <==negation-removal== 44289 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #67023: <==negation-removal== 38498 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #69190: <==negation-removal== 75814 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #75590: <==negation-removal== 26137 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #88862: <==negation-removal== 19357 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #17088: origin
                    (Bc_survivorat_s_p4)

                    ; #19357: origin
                    (Bb_survivorat_s_p4)

                    ; #26137: <==closure== 17088 (pos)
                    (Pc_survivorat_s_p4)

                    ; #38498: origin
                    (Bd_survivorat_s_p4)

                    ; #44289: <==closure== 38498 (pos)
                    (Pd_survivorat_s_p4)

                    ; #49424: <==closure== 53110 (pos)
                    (Pa_survivorat_s_p4)

                    ; #53110: origin
                    (Ba_survivorat_s_p4)

                    ; #75814: <==closure== 19357 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22780: <==negation-removal== 53110 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #28144: <==negation-removal== 17088 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #50650: <==negation-removal== 49424 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #65049: <==negation-removal== 44289 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #67023: <==negation-removal== 38498 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #69190: <==negation-removal== 75814 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #75590: <==negation-removal== 26137 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #88862: <==negation-removal== 19357 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #17088: origin
                    (Bc_survivorat_s_p4)

                    ; #19357: origin
                    (Bb_survivorat_s_p4)

                    ; #26137: <==closure== 17088 (pos)
                    (Pc_survivorat_s_p4)

                    ; #38498: origin
                    (Bd_survivorat_s_p4)

                    ; #44289: <==closure== 38498 (pos)
                    (Pd_survivorat_s_p4)

                    ; #49424: <==closure== 53110 (pos)
                    (Pa_survivorat_s_p4)

                    ; #53110: origin
                    (Ba_survivorat_s_p4)

                    ; #75814: <==closure== 19357 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22780: <==negation-removal== 53110 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #28144: <==negation-removal== 17088 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #50650: <==negation-removal== 49424 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #65049: <==negation-removal== 44289 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #67023: <==negation-removal== 38498 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #69190: <==negation-removal== 75814 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #75590: <==negation-removal== 26137 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #88862: <==negation-removal== 19357 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #30670: origin
                    (Bd_survivorat_s_p5)

                    ; #37551: <==closure== 30670 (pos)
                    (Pd_survivorat_s_p5)

                    ; #55205: <==closure== 60814 (pos)
                    (Pc_survivorat_s_p5)

                    ; #55952: origin
                    (Ba_survivorat_s_p5)

                    ; #60814: origin
                    (Bc_survivorat_s_p5)

                    ; #83220: origin
                    (Bb_survivorat_s_p5)

                    ; #88494: <==closure== 55952 (pos)
                    (Pa_survivorat_s_p5)

                    ; #88999: <==closure== 83220 (pos)
                    (Pb_survivorat_s_p5)

                    ; #22041: <==negation-removal== 30670 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #24251: <==negation-removal== 37551 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #28601: <==negation-removal== 55952 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #35153: <==negation-removal== 60814 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #42539: <==negation-removal== 55205 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46565: <==negation-removal== 83220 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #93799: <==negation-removal== 88999 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #94361: <==negation-removal== 88494 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #30670: origin
                    (Bd_survivorat_s_p5)

                    ; #37551: <==closure== 30670 (pos)
                    (Pd_survivorat_s_p5)

                    ; #55205: <==closure== 60814 (pos)
                    (Pc_survivorat_s_p5)

                    ; #55952: origin
                    (Ba_survivorat_s_p5)

                    ; #60814: origin
                    (Bc_survivorat_s_p5)

                    ; #83220: origin
                    (Bb_survivorat_s_p5)

                    ; #88494: <==closure== 55952 (pos)
                    (Pa_survivorat_s_p5)

                    ; #88999: <==closure== 83220 (pos)
                    (Pb_survivorat_s_p5)

                    ; #22041: <==negation-removal== 30670 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #24251: <==negation-removal== 37551 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #28601: <==negation-removal== 55952 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #35153: <==negation-removal== 60814 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #42539: <==negation-removal== 55205 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46565: <==negation-removal== 83220 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #93799: <==negation-removal== 88999 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #94361: <==negation-removal== 88494 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #30670: origin
                    (Bd_survivorat_s_p5)

                    ; #37551: <==closure== 30670 (pos)
                    (Pd_survivorat_s_p5)

                    ; #55205: <==closure== 60814 (pos)
                    (Pc_survivorat_s_p5)

                    ; #55952: origin
                    (Ba_survivorat_s_p5)

                    ; #60814: origin
                    (Bc_survivorat_s_p5)

                    ; #83220: origin
                    (Bb_survivorat_s_p5)

                    ; #88494: <==closure== 55952 (pos)
                    (Pa_survivorat_s_p5)

                    ; #88999: <==closure== 83220 (pos)
                    (Pb_survivorat_s_p5)

                    ; #22041: <==negation-removal== 30670 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #24251: <==negation-removal== 37551 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #28601: <==negation-removal== 55952 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #35153: <==negation-removal== 60814 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #42539: <==negation-removal== 55205 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46565: <==negation-removal== 83220 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #93799: <==negation-removal== 88999 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #94361: <==negation-removal== 88494 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (at_d_p5)
                           (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #30670: origin
                    (Bd_survivorat_s_p5)

                    ; #37551: <==closure== 30670 (pos)
                    (Pd_survivorat_s_p5)

                    ; #55205: <==closure== 60814 (pos)
                    (Pc_survivorat_s_p5)

                    ; #55952: origin
                    (Ba_survivorat_s_p5)

                    ; #60814: origin
                    (Bc_survivorat_s_p5)

                    ; #83220: origin
                    (Bb_survivorat_s_p5)

                    ; #88494: <==closure== 55952 (pos)
                    (Pa_survivorat_s_p5)

                    ; #88999: <==closure== 83220 (pos)
                    (Pb_survivorat_s_p5)

                    ; #22041: <==negation-removal== 30670 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #24251: <==negation-removal== 37551 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #28601: <==negation-removal== 55952 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #35153: <==negation-removal== 60814 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #42539: <==negation-removal== 55205 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46565: <==negation-removal== 83220 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #93799: <==negation-removal== 88999 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #94361: <==negation-removal== 88494 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #15463: <==closure== 37532 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34433: origin
                    (Bc_survivorat_s_p6)

                    ; #37532: origin
                    (Bb_survivorat_s_p6)

                    ; #49591: origin
                    (Ba_survivorat_s_p6)

                    ; #51239: <==closure== 49591 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63472: <==closure== 88585 (pos)
                    (Pd_survivorat_s_p6)

                    ; #84955: <==closure== 34433 (pos)
                    (Pc_survivorat_s_p6)

                    ; #88585: origin
                    (Bd_survivorat_s_p6)

                    ; #23726: <==negation-removal== 49591 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24646: <==negation-removal== 15463 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #28937: <==negation-removal== 37532 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #29807: <==negation-removal== 63472 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #76506: <==negation-removal== 34433 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #77326: <==negation-removal== 84955 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #77403: <==negation-removal== 88585 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #94534: <==negation-removal== 51239 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #15463: <==closure== 37532 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34433: origin
                    (Bc_survivorat_s_p6)

                    ; #37532: origin
                    (Bb_survivorat_s_p6)

                    ; #49591: origin
                    (Ba_survivorat_s_p6)

                    ; #51239: <==closure== 49591 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63472: <==closure== 88585 (pos)
                    (Pd_survivorat_s_p6)

                    ; #84955: <==closure== 34433 (pos)
                    (Pc_survivorat_s_p6)

                    ; #88585: origin
                    (Bd_survivorat_s_p6)

                    ; #23726: <==negation-removal== 49591 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24646: <==negation-removal== 15463 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #28937: <==negation-removal== 37532 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #29807: <==negation-removal== 63472 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #76506: <==negation-removal== 34433 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #77326: <==negation-removal== 84955 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #77403: <==negation-removal== 88585 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #94534: <==negation-removal== 51239 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #15463: <==closure== 37532 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34433: origin
                    (Bc_survivorat_s_p6)

                    ; #37532: origin
                    (Bb_survivorat_s_p6)

                    ; #49591: origin
                    (Ba_survivorat_s_p6)

                    ; #51239: <==closure== 49591 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63472: <==closure== 88585 (pos)
                    (Pd_survivorat_s_p6)

                    ; #84955: <==closure== 34433 (pos)
                    (Pc_survivorat_s_p6)

                    ; #88585: origin
                    (Bd_survivorat_s_p6)

                    ; #23726: <==negation-removal== 49591 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24646: <==negation-removal== 15463 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #28937: <==negation-removal== 37532 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #29807: <==negation-removal== 63472 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #76506: <==negation-removal== 34433 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #77326: <==negation-removal== 84955 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #77403: <==negation-removal== 88585 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #94534: <==negation-removal== 51239 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #15463: <==closure== 37532 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34433: origin
                    (Bc_survivorat_s_p6)

                    ; #37532: origin
                    (Bb_survivorat_s_p6)

                    ; #49591: origin
                    (Ba_survivorat_s_p6)

                    ; #51239: <==closure== 49591 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63472: <==closure== 88585 (pos)
                    (Pd_survivorat_s_p6)

                    ; #84955: <==closure== 34433 (pos)
                    (Pc_survivorat_s_p6)

                    ; #88585: origin
                    (Bd_survivorat_s_p6)

                    ; #23726: <==negation-removal== 49591 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24646: <==negation-removal== 15463 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #28937: <==negation-removal== 37532 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #29807: <==negation-removal== 63472 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #76506: <==negation-removal== 34433 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #77326: <==negation-removal== 84955 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #77403: <==negation-removal== 88585 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #94534: <==negation-removal== 51239 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #16211: origin
                    (Ba_survivorat_s_p7)

                    ; #19397: origin
                    (Bd_survivorat_s_p7)

                    ; #27501: <==closure== 16211 (pos)
                    (Pa_survivorat_s_p7)

                    ; #29546: <==closure== 67921 (pos)
                    (Pb_survivorat_s_p7)

                    ; #43028: <==closure== 19397 (pos)
                    (Pd_survivorat_s_p7)

                    ; #65084: origin
                    (Bc_survivorat_s_p7)

                    ; #67921: origin
                    (Bb_survivorat_s_p7)

                    ; #76441: <==closure== 65084 (pos)
                    (Pc_survivorat_s_p7)

                    ; #17542: <==negation-removal== 16211 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27120: <==negation-removal== 76441 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #52664: <==negation-removal== 27501 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #56858: <==negation-removal== 43028 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #58235: <==negation-removal== 29546 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #69435: <==negation-removal== 65084 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #87465: <==negation-removal== 19397 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #90511: <==negation-removal== 67921 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #16211: origin
                    (Ba_survivorat_s_p7)

                    ; #19397: origin
                    (Bd_survivorat_s_p7)

                    ; #27501: <==closure== 16211 (pos)
                    (Pa_survivorat_s_p7)

                    ; #29546: <==closure== 67921 (pos)
                    (Pb_survivorat_s_p7)

                    ; #43028: <==closure== 19397 (pos)
                    (Pd_survivorat_s_p7)

                    ; #65084: origin
                    (Bc_survivorat_s_p7)

                    ; #67921: origin
                    (Bb_survivorat_s_p7)

                    ; #76441: <==closure== 65084 (pos)
                    (Pc_survivorat_s_p7)

                    ; #17542: <==negation-removal== 16211 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27120: <==negation-removal== 76441 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #52664: <==negation-removal== 27501 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #56858: <==negation-removal== 43028 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #58235: <==negation-removal== 29546 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #69435: <==negation-removal== 65084 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #87465: <==negation-removal== 19397 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #90511: <==negation-removal== 67921 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #16211: origin
                    (Ba_survivorat_s_p7)

                    ; #19397: origin
                    (Bd_survivorat_s_p7)

                    ; #27501: <==closure== 16211 (pos)
                    (Pa_survivorat_s_p7)

                    ; #29546: <==closure== 67921 (pos)
                    (Pb_survivorat_s_p7)

                    ; #43028: <==closure== 19397 (pos)
                    (Pd_survivorat_s_p7)

                    ; #65084: origin
                    (Bc_survivorat_s_p7)

                    ; #67921: origin
                    (Bb_survivorat_s_p7)

                    ; #76441: <==closure== 65084 (pos)
                    (Pc_survivorat_s_p7)

                    ; #17542: <==negation-removal== 16211 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27120: <==negation-removal== 76441 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #52664: <==negation-removal== 27501 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #56858: <==negation-removal== 43028 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #58235: <==negation-removal== 29546 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #69435: <==negation-removal== 65084 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #87465: <==negation-removal== 19397 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #90511: <==negation-removal== 67921 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #16211: origin
                    (Ba_survivorat_s_p7)

                    ; #19397: origin
                    (Bd_survivorat_s_p7)

                    ; #27501: <==closure== 16211 (pos)
                    (Pa_survivorat_s_p7)

                    ; #29546: <==closure== 67921 (pos)
                    (Pb_survivorat_s_p7)

                    ; #43028: <==closure== 19397 (pos)
                    (Pd_survivorat_s_p7)

                    ; #65084: origin
                    (Bc_survivorat_s_p7)

                    ; #67921: origin
                    (Bb_survivorat_s_p7)

                    ; #76441: <==closure== 65084 (pos)
                    (Pc_survivorat_s_p7)

                    ; #17542: <==negation-removal== 16211 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27120: <==negation-removal== 76441 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #52664: <==negation-removal== 27501 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #56858: <==negation-removal== 43028 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #58235: <==negation-removal== 29546 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #69435: <==negation-removal== 65084 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #87465: <==negation-removal== 19397 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #90511: <==negation-removal== 67921 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #20665: origin
                    (Bb_survivorat_s_p8)

                    ; #25562: <==closure== 70922 (pos)
                    (Pd_survivorat_s_p8)

                    ; #54229: origin
                    (Bc_survivorat_s_p8)

                    ; #54594: <==closure== 60283 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55104: <==closure== 54229 (pos)
                    (Pc_survivorat_s_p8)

                    ; #60283: origin
                    (Ba_survivorat_s_p8)

                    ; #70922: origin
                    (Bd_survivorat_s_p8)

                    ; #82961: <==closure== 20665 (pos)
                    (Pb_survivorat_s_p8)

                    ; #12327: <==negation-removal== 82961 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #20614: <==negation-removal== 54229 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #28996: <==negation-removal== 60283 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #30886: <==negation-removal== 70922 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #60130: <==negation-removal== 55104 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #61789: <==negation-removal== 20665 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #67750: <==negation-removal== 25562 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #81412: <==negation-removal== 54594 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #20665: origin
                    (Bb_survivorat_s_p8)

                    ; #25562: <==closure== 70922 (pos)
                    (Pd_survivorat_s_p8)

                    ; #54229: origin
                    (Bc_survivorat_s_p8)

                    ; #54594: <==closure== 60283 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55104: <==closure== 54229 (pos)
                    (Pc_survivorat_s_p8)

                    ; #60283: origin
                    (Ba_survivorat_s_p8)

                    ; #70922: origin
                    (Bd_survivorat_s_p8)

                    ; #82961: <==closure== 20665 (pos)
                    (Pb_survivorat_s_p8)

                    ; #12327: <==negation-removal== 82961 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #20614: <==negation-removal== 54229 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #28996: <==negation-removal== 60283 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #30886: <==negation-removal== 70922 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #60130: <==negation-removal== 55104 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #61789: <==negation-removal== 20665 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #67750: <==negation-removal== 25562 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #81412: <==negation-removal== 54594 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #20665: origin
                    (Bb_survivorat_s_p8)

                    ; #25562: <==closure== 70922 (pos)
                    (Pd_survivorat_s_p8)

                    ; #54229: origin
                    (Bc_survivorat_s_p8)

                    ; #54594: <==closure== 60283 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55104: <==closure== 54229 (pos)
                    (Pc_survivorat_s_p8)

                    ; #60283: origin
                    (Ba_survivorat_s_p8)

                    ; #70922: origin
                    (Bd_survivorat_s_p8)

                    ; #82961: <==closure== 20665 (pos)
                    (Pb_survivorat_s_p8)

                    ; #12327: <==negation-removal== 82961 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #20614: <==negation-removal== 54229 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #28996: <==negation-removal== 60283 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #30886: <==negation-removal== 70922 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #60130: <==negation-removal== 55104 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #61789: <==negation-removal== 20665 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #67750: <==negation-removal== 25562 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #81412: <==negation-removal== 54594 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #20665: origin
                    (Bb_survivorat_s_p8)

                    ; #25562: <==closure== 70922 (pos)
                    (Pd_survivorat_s_p8)

                    ; #54229: origin
                    (Bc_survivorat_s_p8)

                    ; #54594: <==closure== 60283 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55104: <==closure== 54229 (pos)
                    (Pc_survivorat_s_p8)

                    ; #60283: origin
                    (Ba_survivorat_s_p8)

                    ; #70922: origin
                    (Bd_survivorat_s_p8)

                    ; #82961: <==closure== 20665 (pos)
                    (Pb_survivorat_s_p8)

                    ; #12327: <==negation-removal== 82961 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #20614: <==negation-removal== 54229 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #28996: <==negation-removal== 60283 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #30886: <==negation-removal== 70922 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #60130: <==negation-removal== 55104 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #61789: <==negation-removal== 20665 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #67750: <==negation-removal== 25562 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #81412: <==negation-removal== 54594 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #15648: <==closure== 47340 (pos)
                    (Pd_survivorat_s_p9)

                    ; #24524: origin
                    (Bc_survivorat_s_p9)

                    ; #47340: origin
                    (Bd_survivorat_s_p9)

                    ; #65316: origin
                    (Bb_survivorat_s_p9)

                    ; #66007: origin
                    (Ba_survivorat_s_p9)

                    ; #89431: <==closure== 66007 (pos)
                    (Pa_survivorat_s_p9)

                    ; #91572: <==closure== 24524 (pos)
                    (Pc_survivorat_s_p9)

                    ; #95132: <==closure== 65316 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12459: <==negation-removal== 65316 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #14714: <==negation-removal== 95132 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #20235: <==negation-removal== 89431 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #33382: <==negation-removal== 15648 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #42078: <==negation-removal== 47340 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #53650: <==negation-removal== 24524 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #65010: <==negation-removal== 66007 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #80255: <==negation-removal== 91572 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #15648: <==closure== 47340 (pos)
                    (Pd_survivorat_s_p9)

                    ; #24524: origin
                    (Bc_survivorat_s_p9)

                    ; #47340: origin
                    (Bd_survivorat_s_p9)

                    ; #65316: origin
                    (Bb_survivorat_s_p9)

                    ; #66007: origin
                    (Ba_survivorat_s_p9)

                    ; #89431: <==closure== 66007 (pos)
                    (Pa_survivorat_s_p9)

                    ; #91572: <==closure== 24524 (pos)
                    (Pc_survivorat_s_p9)

                    ; #95132: <==closure== 65316 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12459: <==negation-removal== 65316 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #14714: <==negation-removal== 95132 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #20235: <==negation-removal== 89431 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #33382: <==negation-removal== 15648 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #42078: <==negation-removal== 47340 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #53650: <==negation-removal== 24524 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #65010: <==negation-removal== 66007 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #80255: <==negation-removal== 91572 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #15648: <==closure== 47340 (pos)
                    (Pd_survivorat_s_p9)

                    ; #24524: origin
                    (Bc_survivorat_s_p9)

                    ; #47340: origin
                    (Bd_survivorat_s_p9)

                    ; #65316: origin
                    (Bb_survivorat_s_p9)

                    ; #66007: origin
                    (Ba_survivorat_s_p9)

                    ; #89431: <==closure== 66007 (pos)
                    (Pa_survivorat_s_p9)

                    ; #91572: <==closure== 24524 (pos)
                    (Pc_survivorat_s_p9)

                    ; #95132: <==closure== 65316 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12459: <==negation-removal== 65316 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #14714: <==negation-removal== 95132 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #20235: <==negation-removal== 89431 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #33382: <==negation-removal== 15648 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #42078: <==negation-removal== 47340 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #53650: <==negation-removal== 24524 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #65010: <==negation-removal== 66007 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #80255: <==negation-removal== 91572 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #15648: <==closure== 47340 (pos)
                    (Pd_survivorat_s_p9)

                    ; #24524: origin
                    (Bc_survivorat_s_p9)

                    ; #47340: origin
                    (Bd_survivorat_s_p9)

                    ; #65316: origin
                    (Bb_survivorat_s_p9)

                    ; #66007: origin
                    (Ba_survivorat_s_p9)

                    ; #89431: <==closure== 66007 (pos)
                    (Pa_survivorat_s_p9)

                    ; #91572: <==closure== 24524 (pos)
                    (Pc_survivorat_s_p9)

                    ; #95132: <==closure== 65316 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12459: <==negation-removal== 65316 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #14714: <==negation-removal== 95132 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #20235: <==negation-removal== 89431 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #33382: <==negation-removal== 15648 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #42078: <==negation-removal== 47340 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #53650: <==negation-removal== 24524 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #65010: <==negation-removal== 66007 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #80255: <==negation-removal== 91572 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #55640: origin
                    (not_at_a_p1)

                    ; #83005: origin
                    (at_a_p1)

                    ; #55640: <==negation-removal== 83005 (pos)
                    (not (not_at_a_p1))

                    ; #83005: <==negation-removal== 55640 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #55640: origin
                    (not_at_a_p1)

                    ; #59349: origin
                    (at_a_p2)

                    ; #35862: <==negation-removal== 59349 (pos)
                    (not (not_at_a_p2))

                    ; #83005: <==negation-removal== 55640 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #27032: origin
                    (at_a_p3)

                    ; #55640: origin
                    (not_at_a_p1)

                    ; #53135: <==negation-removal== 27032 (pos)
                    (not (not_at_a_p3))

                    ; #83005: <==negation-removal== 55640 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #25237: origin
                    (at_a_p4)

                    ; #55640: origin
                    (not_at_a_p1)

                    ; #53087: <==negation-removal== 25237 (pos)
                    (not (not_at_a_p4))

                    ; #83005: <==negation-removal== 55640 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #55640: origin
                    (not_at_a_p1)

                    ; #63789: origin
                    (at_a_p5)

                    ; #11438: <==negation-removal== 63789 (pos)
                    (not (not_at_a_p5))

                    ; #83005: <==negation-removal== 55640 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #16697: origin
                    (at_a_p6)

                    ; #55640: origin
                    (not_at_a_p1)

                    ; #27255: <==negation-removal== 16697 (pos)
                    (not (not_at_a_p6))

                    ; #83005: <==negation-removal== 55640 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #55640: origin
                    (not_at_a_p1)

                    ; #88223: origin
                    (at_a_p7)

                    ; #48961: <==negation-removal== 88223 (pos)
                    (not (not_at_a_p7))

                    ; #83005: <==negation-removal== 55640 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #38041: origin
                    (at_a_p8)

                    ; #55640: origin
                    (not_at_a_p1)

                    ; #82494: <==negation-removal== 38041 (pos)
                    (not (not_at_a_p8))

                    ; #83005: <==negation-removal== 55640 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #43356: origin
                    (at_a_p9)

                    ; #55640: origin
                    (not_at_a_p1)

                    ; #60919: <==negation-removal== 43356 (pos)
                    (not (not_at_a_p9))

                    ; #83005: <==negation-removal== 55640 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #35862: origin
                    (not_at_a_p2)

                    ; #83005: origin
                    (at_a_p1)

                    ; #55640: <==negation-removal== 83005 (pos)
                    (not (not_at_a_p1))

                    ; #59349: <==negation-removal== 35862 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #35862: origin
                    (not_at_a_p2)

                    ; #59349: origin
                    (at_a_p2)

                    ; #35862: <==negation-removal== 59349 (pos)
                    (not (not_at_a_p2))

                    ; #59349: <==negation-removal== 35862 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #27032: origin
                    (at_a_p3)

                    ; #35862: origin
                    (not_at_a_p2)

                    ; #53135: <==negation-removal== 27032 (pos)
                    (not (not_at_a_p3))

                    ; #59349: <==negation-removal== 35862 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #25237: origin
                    (at_a_p4)

                    ; #35862: origin
                    (not_at_a_p2)

                    ; #53087: <==negation-removal== 25237 (pos)
                    (not (not_at_a_p4))

                    ; #59349: <==negation-removal== 35862 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #35862: origin
                    (not_at_a_p2)

                    ; #63789: origin
                    (at_a_p5)

                    ; #11438: <==negation-removal== 63789 (pos)
                    (not (not_at_a_p5))

                    ; #59349: <==negation-removal== 35862 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #16697: origin
                    (at_a_p6)

                    ; #35862: origin
                    (not_at_a_p2)

                    ; #27255: <==negation-removal== 16697 (pos)
                    (not (not_at_a_p6))

                    ; #59349: <==negation-removal== 35862 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #35862: origin
                    (not_at_a_p2)

                    ; #88223: origin
                    (at_a_p7)

                    ; #48961: <==negation-removal== 88223 (pos)
                    (not (not_at_a_p7))

                    ; #59349: <==negation-removal== 35862 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #35862: origin
                    (not_at_a_p2)

                    ; #38041: origin
                    (at_a_p8)

                    ; #59349: <==negation-removal== 35862 (pos)
                    (not (at_a_p2))

                    ; #82494: <==negation-removal== 38041 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #35862: origin
                    (not_at_a_p2)

                    ; #43356: origin
                    (at_a_p9)

                    ; #59349: <==negation-removal== 35862 (pos)
                    (not (at_a_p2))

                    ; #60919: <==negation-removal== 43356 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #53135: origin
                    (not_at_a_p3)

                    ; #83005: origin
                    (at_a_p1)

                    ; #27032: <==negation-removal== 53135 (pos)
                    (not (at_a_p3))

                    ; #55640: <==negation-removal== 83005 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #53135: origin
                    (not_at_a_p3)

                    ; #59349: origin
                    (at_a_p2)

                    ; #27032: <==negation-removal== 53135 (pos)
                    (not (at_a_p3))

                    ; #35862: <==negation-removal== 59349 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #27032: origin
                    (at_a_p3)

                    ; #53135: origin
                    (not_at_a_p3)

                    ; #27032: <==negation-removal== 53135 (pos)
                    (not (at_a_p3))

                    ; #53135: <==negation-removal== 27032 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #25237: origin
                    (at_a_p4)

                    ; #53135: origin
                    (not_at_a_p3)

                    ; #27032: <==negation-removal== 53135 (pos)
                    (not (at_a_p3))

                    ; #53087: <==negation-removal== 25237 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #53135: origin
                    (not_at_a_p3)

                    ; #63789: origin
                    (at_a_p5)

                    ; #11438: <==negation-removal== 63789 (pos)
                    (not (not_at_a_p5))

                    ; #27032: <==negation-removal== 53135 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #16697: origin
                    (at_a_p6)

                    ; #53135: origin
                    (not_at_a_p3)

                    ; #27032: <==negation-removal== 53135 (pos)
                    (not (at_a_p3))

                    ; #27255: <==negation-removal== 16697 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #53135: origin
                    (not_at_a_p3)

                    ; #88223: origin
                    (at_a_p7)

                    ; #27032: <==negation-removal== 53135 (pos)
                    (not (at_a_p3))

                    ; #48961: <==negation-removal== 88223 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #38041: origin
                    (at_a_p8)

                    ; #53135: origin
                    (not_at_a_p3)

                    ; #27032: <==negation-removal== 53135 (pos)
                    (not (at_a_p3))

                    ; #82494: <==negation-removal== 38041 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #43356: origin
                    (at_a_p9)

                    ; #53135: origin
                    (not_at_a_p3)

                    ; #27032: <==negation-removal== 53135 (pos)
                    (not (at_a_p3))

                    ; #60919: <==negation-removal== 43356 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #53087: origin
                    (not_at_a_p4)

                    ; #83005: origin
                    (at_a_p1)

                    ; #25237: <==negation-removal== 53087 (pos)
                    (not (at_a_p4))

                    ; #55640: <==negation-removal== 83005 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #53087: origin
                    (not_at_a_p4)

                    ; #59349: origin
                    (at_a_p2)

                    ; #25237: <==negation-removal== 53087 (pos)
                    (not (at_a_p4))

                    ; #35862: <==negation-removal== 59349 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #27032: origin
                    (at_a_p3)

                    ; #53087: origin
                    (not_at_a_p4)

                    ; #25237: <==negation-removal== 53087 (pos)
                    (not (at_a_p4))

                    ; #53135: <==negation-removal== 27032 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #25237: origin
                    (at_a_p4)

                    ; #53087: origin
                    (not_at_a_p4)

                    ; #25237: <==negation-removal== 53087 (pos)
                    (not (at_a_p4))

                    ; #53087: <==negation-removal== 25237 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #53087: origin
                    (not_at_a_p4)

                    ; #63789: origin
                    (at_a_p5)

                    ; #11438: <==negation-removal== 63789 (pos)
                    (not (not_at_a_p5))

                    ; #25237: <==negation-removal== 53087 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #16697: origin
                    (at_a_p6)

                    ; #53087: origin
                    (not_at_a_p4)

                    ; #25237: <==negation-removal== 53087 (pos)
                    (not (at_a_p4))

                    ; #27255: <==negation-removal== 16697 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #53087: origin
                    (not_at_a_p4)

                    ; #88223: origin
                    (at_a_p7)

                    ; #25237: <==negation-removal== 53087 (pos)
                    (not (at_a_p4))

                    ; #48961: <==negation-removal== 88223 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #38041: origin
                    (at_a_p8)

                    ; #53087: origin
                    (not_at_a_p4)

                    ; #25237: <==negation-removal== 53087 (pos)
                    (not (at_a_p4))

                    ; #82494: <==negation-removal== 38041 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #43356: origin
                    (at_a_p9)

                    ; #53087: origin
                    (not_at_a_p4)

                    ; #25237: <==negation-removal== 53087 (pos)
                    (not (at_a_p4))

                    ; #60919: <==negation-removal== 43356 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #11438: origin
                    (not_at_a_p5)

                    ; #83005: origin
                    (at_a_p1)

                    ; #55640: <==negation-removal== 83005 (pos)
                    (not (not_at_a_p1))

                    ; #63789: <==negation-removal== 11438 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #11438: origin
                    (not_at_a_p5)

                    ; #59349: origin
                    (at_a_p2)

                    ; #35862: <==negation-removal== 59349 (pos)
                    (not (not_at_a_p2))

                    ; #63789: <==negation-removal== 11438 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #11438: origin
                    (not_at_a_p5)

                    ; #27032: origin
                    (at_a_p3)

                    ; #53135: <==negation-removal== 27032 (pos)
                    (not (not_at_a_p3))

                    ; #63789: <==negation-removal== 11438 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #11438: origin
                    (not_at_a_p5)

                    ; #25237: origin
                    (at_a_p4)

                    ; #53087: <==negation-removal== 25237 (pos)
                    (not (not_at_a_p4))

                    ; #63789: <==negation-removal== 11438 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #11438: origin
                    (not_at_a_p5)

                    ; #63789: origin
                    (at_a_p5)

                    ; #11438: <==negation-removal== 63789 (pos)
                    (not (not_at_a_p5))

                    ; #63789: <==negation-removal== 11438 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #11438: origin
                    (not_at_a_p5)

                    ; #16697: origin
                    (at_a_p6)

                    ; #27255: <==negation-removal== 16697 (pos)
                    (not (not_at_a_p6))

                    ; #63789: <==negation-removal== 11438 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #11438: origin
                    (not_at_a_p5)

                    ; #88223: origin
                    (at_a_p7)

                    ; #48961: <==negation-removal== 88223 (pos)
                    (not (not_at_a_p7))

                    ; #63789: <==negation-removal== 11438 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #11438: origin
                    (not_at_a_p5)

                    ; #38041: origin
                    (at_a_p8)

                    ; #63789: <==negation-removal== 11438 (pos)
                    (not (at_a_p5))

                    ; #82494: <==negation-removal== 38041 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #11438: origin
                    (not_at_a_p5)

                    ; #43356: origin
                    (at_a_p9)

                    ; #60919: <==negation-removal== 43356 (pos)
                    (not (not_at_a_p9))

                    ; #63789: <==negation-removal== 11438 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #27255: origin
                    (not_at_a_p6)

                    ; #83005: origin
                    (at_a_p1)

                    ; #16697: <==negation-removal== 27255 (pos)
                    (not (at_a_p6))

                    ; #55640: <==negation-removal== 83005 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #27255: origin
                    (not_at_a_p6)

                    ; #59349: origin
                    (at_a_p2)

                    ; #16697: <==negation-removal== 27255 (pos)
                    (not (at_a_p6))

                    ; #35862: <==negation-removal== 59349 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #27032: origin
                    (at_a_p3)

                    ; #27255: origin
                    (not_at_a_p6)

                    ; #16697: <==negation-removal== 27255 (pos)
                    (not (at_a_p6))

                    ; #53135: <==negation-removal== 27032 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #25237: origin
                    (at_a_p4)

                    ; #27255: origin
                    (not_at_a_p6)

                    ; #16697: <==negation-removal== 27255 (pos)
                    (not (at_a_p6))

                    ; #53087: <==negation-removal== 25237 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #27255: origin
                    (not_at_a_p6)

                    ; #63789: origin
                    (at_a_p5)

                    ; #11438: <==negation-removal== 63789 (pos)
                    (not (not_at_a_p5))

                    ; #16697: <==negation-removal== 27255 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #16697: origin
                    (at_a_p6)

                    ; #27255: origin
                    (not_at_a_p6)

                    ; #16697: <==negation-removal== 27255 (pos)
                    (not (at_a_p6))

                    ; #27255: <==negation-removal== 16697 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #27255: origin
                    (not_at_a_p6)

                    ; #88223: origin
                    (at_a_p7)

                    ; #16697: <==negation-removal== 27255 (pos)
                    (not (at_a_p6))

                    ; #48961: <==negation-removal== 88223 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #27255: origin
                    (not_at_a_p6)

                    ; #38041: origin
                    (at_a_p8)

                    ; #16697: <==negation-removal== 27255 (pos)
                    (not (at_a_p6))

                    ; #82494: <==negation-removal== 38041 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #27255: origin
                    (not_at_a_p6)

                    ; #43356: origin
                    (at_a_p9)

                    ; #16697: <==negation-removal== 27255 (pos)
                    (not (at_a_p6))

                    ; #60919: <==negation-removal== 43356 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #48961: origin
                    (not_at_a_p7)

                    ; #83005: origin
                    (at_a_p1)

                    ; #55640: <==negation-removal== 83005 (pos)
                    (not (not_at_a_p1))

                    ; #88223: <==negation-removal== 48961 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #48961: origin
                    (not_at_a_p7)

                    ; #59349: origin
                    (at_a_p2)

                    ; #35862: <==negation-removal== 59349 (pos)
                    (not (not_at_a_p2))

                    ; #88223: <==negation-removal== 48961 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #27032: origin
                    (at_a_p3)

                    ; #48961: origin
                    (not_at_a_p7)

                    ; #53135: <==negation-removal== 27032 (pos)
                    (not (not_at_a_p3))

                    ; #88223: <==negation-removal== 48961 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #25237: origin
                    (at_a_p4)

                    ; #48961: origin
                    (not_at_a_p7)

                    ; #53087: <==negation-removal== 25237 (pos)
                    (not (not_at_a_p4))

                    ; #88223: <==negation-removal== 48961 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #48961: origin
                    (not_at_a_p7)

                    ; #63789: origin
                    (at_a_p5)

                    ; #11438: <==negation-removal== 63789 (pos)
                    (not (not_at_a_p5))

                    ; #88223: <==negation-removal== 48961 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #16697: origin
                    (at_a_p6)

                    ; #48961: origin
                    (not_at_a_p7)

                    ; #27255: <==negation-removal== 16697 (pos)
                    (not (not_at_a_p6))

                    ; #88223: <==negation-removal== 48961 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #48961: origin
                    (not_at_a_p7)

                    ; #88223: origin
                    (at_a_p7)

                    ; #48961: <==negation-removal== 88223 (pos)
                    (not (not_at_a_p7))

                    ; #88223: <==negation-removal== 48961 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #38041: origin
                    (at_a_p8)

                    ; #48961: origin
                    (not_at_a_p7)

                    ; #82494: <==negation-removal== 38041 (pos)
                    (not (not_at_a_p8))

                    ; #88223: <==negation-removal== 48961 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #43356: origin
                    (at_a_p9)

                    ; #48961: origin
                    (not_at_a_p7)

                    ; #60919: <==negation-removal== 43356 (pos)
                    (not (not_at_a_p9))

                    ; #88223: <==negation-removal== 48961 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #82494: origin
                    (not_at_a_p8)

                    ; #83005: origin
                    (at_a_p1)

                    ; #38041: <==negation-removal== 82494 (pos)
                    (not (at_a_p8))

                    ; #55640: <==negation-removal== 83005 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #59349: origin
                    (at_a_p2)

                    ; #82494: origin
                    (not_at_a_p8)

                    ; #35862: <==negation-removal== 59349 (pos)
                    (not (not_at_a_p2))

                    ; #38041: <==negation-removal== 82494 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #27032: origin
                    (at_a_p3)

                    ; #82494: origin
                    (not_at_a_p8)

                    ; #38041: <==negation-removal== 82494 (pos)
                    (not (at_a_p8))

                    ; #53135: <==negation-removal== 27032 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #25237: origin
                    (at_a_p4)

                    ; #82494: origin
                    (not_at_a_p8)

                    ; #38041: <==negation-removal== 82494 (pos)
                    (not (at_a_p8))

                    ; #53087: <==negation-removal== 25237 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #63789: origin
                    (at_a_p5)

                    ; #82494: origin
                    (not_at_a_p8)

                    ; #11438: <==negation-removal== 63789 (pos)
                    (not (not_at_a_p5))

                    ; #38041: <==negation-removal== 82494 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #16697: origin
                    (at_a_p6)

                    ; #82494: origin
                    (not_at_a_p8)

                    ; #27255: <==negation-removal== 16697 (pos)
                    (not (not_at_a_p6))

                    ; #38041: <==negation-removal== 82494 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #82494: origin
                    (not_at_a_p8)

                    ; #88223: origin
                    (at_a_p7)

                    ; #38041: <==negation-removal== 82494 (pos)
                    (not (at_a_p8))

                    ; #48961: <==negation-removal== 88223 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #38041: origin
                    (at_a_p8)

                    ; #82494: origin
                    (not_at_a_p8)

                    ; #38041: <==negation-removal== 82494 (pos)
                    (not (at_a_p8))

                    ; #82494: <==negation-removal== 38041 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #43356: origin
                    (at_a_p9)

                    ; #82494: origin
                    (not_at_a_p8)

                    ; #38041: <==negation-removal== 82494 (pos)
                    (not (at_a_p8))

                    ; #60919: <==negation-removal== 43356 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #60919: origin
                    (not_at_a_p9)

                    ; #83005: origin
                    (at_a_p1)

                    ; #43356: <==negation-removal== 60919 (pos)
                    (not (at_a_p9))

                    ; #55640: <==negation-removal== 83005 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #59349: origin
                    (at_a_p2)

                    ; #60919: origin
                    (not_at_a_p9)

                    ; #35862: <==negation-removal== 59349 (pos)
                    (not (not_at_a_p2))

                    ; #43356: <==negation-removal== 60919 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #27032: origin
                    (at_a_p3)

                    ; #60919: origin
                    (not_at_a_p9)

                    ; #43356: <==negation-removal== 60919 (pos)
                    (not (at_a_p9))

                    ; #53135: <==negation-removal== 27032 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #25237: origin
                    (at_a_p4)

                    ; #60919: origin
                    (not_at_a_p9)

                    ; #43356: <==negation-removal== 60919 (pos)
                    (not (at_a_p9))

                    ; #53087: <==negation-removal== 25237 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #60919: origin
                    (not_at_a_p9)

                    ; #63789: origin
                    (at_a_p5)

                    ; #11438: <==negation-removal== 63789 (pos)
                    (not (not_at_a_p5))

                    ; #43356: <==negation-removal== 60919 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #16697: origin
                    (at_a_p6)

                    ; #60919: origin
                    (not_at_a_p9)

                    ; #27255: <==negation-removal== 16697 (pos)
                    (not (not_at_a_p6))

                    ; #43356: <==negation-removal== 60919 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #60919: origin
                    (not_at_a_p9)

                    ; #88223: origin
                    (at_a_p7)

                    ; #43356: <==negation-removal== 60919 (pos)
                    (not (at_a_p9))

                    ; #48961: <==negation-removal== 88223 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #38041: origin
                    (at_a_p8)

                    ; #60919: origin
                    (not_at_a_p9)

                    ; #43356: <==negation-removal== 60919 (pos)
                    (not (at_a_p9))

                    ; #82494: <==negation-removal== 38041 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #43356: origin
                    (at_a_p9)

                    ; #60919: origin
                    (not_at_a_p9)

                    ; #43356: <==negation-removal== 60919 (pos)
                    (not (at_a_p9))

                    ; #60919: <==negation-removal== 43356 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #60367: origin
                    (not_at_b_p1)

                    ; #79801: origin
                    (at_b_p1)

                    ; #60367: <==negation-removal== 79801 (pos)
                    (not (not_at_b_p1))

                    ; #79801: <==negation-removal== 60367 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #60367: origin
                    (not_at_b_p1)

                    ; #88789: origin
                    (at_b_p2)

                    ; #79801: <==negation-removal== 60367 (pos)
                    (not (at_b_p1))

                    ; #84064: <==negation-removal== 88789 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #44244: origin
                    (at_b_p3)

                    ; #60367: origin
                    (not_at_b_p1)

                    ; #69564: <==negation-removal== 44244 (pos)
                    (not (not_at_b_p3))

                    ; #79801: <==negation-removal== 60367 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #60367: origin
                    (not_at_b_p1)

                    ; #84747: origin
                    (at_b_p4)

                    ; #24238: <==negation-removal== 84747 (pos)
                    (not (not_at_b_p4))

                    ; #79801: <==negation-removal== 60367 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #60367: origin
                    (not_at_b_p1)

                    ; #63000: origin
                    (at_b_p5)

                    ; #79801: <==negation-removal== 60367 (pos)
                    (not (at_b_p1))

                    ; #82145: <==negation-removal== 63000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #20966: origin
                    (at_b_p6)

                    ; #60367: origin
                    (not_at_b_p1)

                    ; #34567: <==negation-removal== 20966 (pos)
                    (not (not_at_b_p6))

                    ; #79801: <==negation-removal== 60367 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #13267: origin
                    (at_b_p7)

                    ; #60367: origin
                    (not_at_b_p1)

                    ; #44164: <==negation-removal== 13267 (pos)
                    (not (not_at_b_p7))

                    ; #79801: <==negation-removal== 60367 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #35473: origin
                    (at_b_p8)

                    ; #60367: origin
                    (not_at_b_p1)

                    ; #44206: <==negation-removal== 35473 (pos)
                    (not (not_at_b_p8))

                    ; #79801: <==negation-removal== 60367 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #42259: origin
                    (at_b_p9)

                    ; #60367: origin
                    (not_at_b_p1)

                    ; #12599: <==negation-removal== 42259 (pos)
                    (not (not_at_b_p9))

                    ; #79801: <==negation-removal== 60367 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #79801: origin
                    (at_b_p1)

                    ; #84064: origin
                    (not_at_b_p2)

                    ; #60367: <==negation-removal== 79801 (pos)
                    (not (not_at_b_p1))

                    ; #88789: <==negation-removal== 84064 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #84064: origin
                    (not_at_b_p2)

                    ; #88789: origin
                    (at_b_p2)

                    ; #84064: <==negation-removal== 88789 (pos)
                    (not (not_at_b_p2))

                    ; #88789: <==negation-removal== 84064 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #44244: origin
                    (at_b_p3)

                    ; #84064: origin
                    (not_at_b_p2)

                    ; #69564: <==negation-removal== 44244 (pos)
                    (not (not_at_b_p3))

                    ; #88789: <==negation-removal== 84064 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #84064: origin
                    (not_at_b_p2)

                    ; #84747: origin
                    (at_b_p4)

                    ; #24238: <==negation-removal== 84747 (pos)
                    (not (not_at_b_p4))

                    ; #88789: <==negation-removal== 84064 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #63000: origin
                    (at_b_p5)

                    ; #84064: origin
                    (not_at_b_p2)

                    ; #82145: <==negation-removal== 63000 (pos)
                    (not (not_at_b_p5))

                    ; #88789: <==negation-removal== 84064 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #20966: origin
                    (at_b_p6)

                    ; #84064: origin
                    (not_at_b_p2)

                    ; #34567: <==negation-removal== 20966 (pos)
                    (not (not_at_b_p6))

                    ; #88789: <==negation-removal== 84064 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #13267: origin
                    (at_b_p7)

                    ; #84064: origin
                    (not_at_b_p2)

                    ; #44164: <==negation-removal== 13267 (pos)
                    (not (not_at_b_p7))

                    ; #88789: <==negation-removal== 84064 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #35473: origin
                    (at_b_p8)

                    ; #84064: origin
                    (not_at_b_p2)

                    ; #44206: <==negation-removal== 35473 (pos)
                    (not (not_at_b_p8))

                    ; #88789: <==negation-removal== 84064 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #42259: origin
                    (at_b_p9)

                    ; #84064: origin
                    (not_at_b_p2)

                    ; #12599: <==negation-removal== 42259 (pos)
                    (not (not_at_b_p9))

                    ; #88789: <==negation-removal== 84064 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #69564: origin
                    (not_at_b_p3)

                    ; #79801: origin
                    (at_b_p1)

                    ; #44244: <==negation-removal== 69564 (pos)
                    (not (at_b_p3))

                    ; #60367: <==negation-removal== 79801 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #69564: origin
                    (not_at_b_p3)

                    ; #88789: origin
                    (at_b_p2)

                    ; #44244: <==negation-removal== 69564 (pos)
                    (not (at_b_p3))

                    ; #84064: <==negation-removal== 88789 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #44244: origin
                    (at_b_p3)

                    ; #69564: origin
                    (not_at_b_p3)

                    ; #44244: <==negation-removal== 69564 (pos)
                    (not (at_b_p3))

                    ; #69564: <==negation-removal== 44244 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #69564: origin
                    (not_at_b_p3)

                    ; #84747: origin
                    (at_b_p4)

                    ; #24238: <==negation-removal== 84747 (pos)
                    (not (not_at_b_p4))

                    ; #44244: <==negation-removal== 69564 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #63000: origin
                    (at_b_p5)

                    ; #69564: origin
                    (not_at_b_p3)

                    ; #44244: <==negation-removal== 69564 (pos)
                    (not (at_b_p3))

                    ; #82145: <==negation-removal== 63000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #20966: origin
                    (at_b_p6)

                    ; #69564: origin
                    (not_at_b_p3)

                    ; #34567: <==negation-removal== 20966 (pos)
                    (not (not_at_b_p6))

                    ; #44244: <==negation-removal== 69564 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #13267: origin
                    (at_b_p7)

                    ; #69564: origin
                    (not_at_b_p3)

                    ; #44164: <==negation-removal== 13267 (pos)
                    (not (not_at_b_p7))

                    ; #44244: <==negation-removal== 69564 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #35473: origin
                    (at_b_p8)

                    ; #69564: origin
                    (not_at_b_p3)

                    ; #44206: <==negation-removal== 35473 (pos)
                    (not (not_at_b_p8))

                    ; #44244: <==negation-removal== 69564 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #42259: origin
                    (at_b_p9)

                    ; #69564: origin
                    (not_at_b_p3)

                    ; #12599: <==negation-removal== 42259 (pos)
                    (not (not_at_b_p9))

                    ; #44244: <==negation-removal== 69564 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #24238: origin
                    (not_at_b_p4)

                    ; #79801: origin
                    (at_b_p1)

                    ; #60367: <==negation-removal== 79801 (pos)
                    (not (not_at_b_p1))

                    ; #84747: <==negation-removal== 24238 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #24238: origin
                    (not_at_b_p4)

                    ; #88789: origin
                    (at_b_p2)

                    ; #84064: <==negation-removal== 88789 (pos)
                    (not (not_at_b_p2))

                    ; #84747: <==negation-removal== 24238 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #24238: origin
                    (not_at_b_p4)

                    ; #44244: origin
                    (at_b_p3)

                    ; #69564: <==negation-removal== 44244 (pos)
                    (not (not_at_b_p3))

                    ; #84747: <==negation-removal== 24238 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #24238: origin
                    (not_at_b_p4)

                    ; #84747: origin
                    (at_b_p4)

                    ; #24238: <==negation-removal== 84747 (pos)
                    (not (not_at_b_p4))

                    ; #84747: <==negation-removal== 24238 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #24238: origin
                    (not_at_b_p4)

                    ; #63000: origin
                    (at_b_p5)

                    ; #82145: <==negation-removal== 63000 (pos)
                    (not (not_at_b_p5))

                    ; #84747: <==negation-removal== 24238 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #20966: origin
                    (at_b_p6)

                    ; #24238: origin
                    (not_at_b_p4)

                    ; #34567: <==negation-removal== 20966 (pos)
                    (not (not_at_b_p6))

                    ; #84747: <==negation-removal== 24238 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #13267: origin
                    (at_b_p7)

                    ; #24238: origin
                    (not_at_b_p4)

                    ; #44164: <==negation-removal== 13267 (pos)
                    (not (not_at_b_p7))

                    ; #84747: <==negation-removal== 24238 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #24238: origin
                    (not_at_b_p4)

                    ; #35473: origin
                    (at_b_p8)

                    ; #44206: <==negation-removal== 35473 (pos)
                    (not (not_at_b_p8))

                    ; #84747: <==negation-removal== 24238 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #24238: origin
                    (not_at_b_p4)

                    ; #42259: origin
                    (at_b_p9)

                    ; #12599: <==negation-removal== 42259 (pos)
                    (not (not_at_b_p9))

                    ; #84747: <==negation-removal== 24238 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #79801: origin
                    (at_b_p1)

                    ; #82145: origin
                    (not_at_b_p5)

                    ; #60367: <==negation-removal== 79801 (pos)
                    (not (not_at_b_p1))

                    ; #63000: <==negation-removal== 82145 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #82145: origin
                    (not_at_b_p5)

                    ; #88789: origin
                    (at_b_p2)

                    ; #63000: <==negation-removal== 82145 (pos)
                    (not (at_b_p5))

                    ; #84064: <==negation-removal== 88789 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #44244: origin
                    (at_b_p3)

                    ; #82145: origin
                    (not_at_b_p5)

                    ; #63000: <==negation-removal== 82145 (pos)
                    (not (at_b_p5))

                    ; #69564: <==negation-removal== 44244 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #82145: origin
                    (not_at_b_p5)

                    ; #84747: origin
                    (at_b_p4)

                    ; #24238: <==negation-removal== 84747 (pos)
                    (not (not_at_b_p4))

                    ; #63000: <==negation-removal== 82145 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #63000: origin
                    (at_b_p5)

                    ; #82145: origin
                    (not_at_b_p5)

                    ; #63000: <==negation-removal== 82145 (pos)
                    (not (at_b_p5))

                    ; #82145: <==negation-removal== 63000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #20966: origin
                    (at_b_p6)

                    ; #82145: origin
                    (not_at_b_p5)

                    ; #34567: <==negation-removal== 20966 (pos)
                    (not (not_at_b_p6))

                    ; #63000: <==negation-removal== 82145 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #13267: origin
                    (at_b_p7)

                    ; #82145: origin
                    (not_at_b_p5)

                    ; #44164: <==negation-removal== 13267 (pos)
                    (not (not_at_b_p7))

                    ; #63000: <==negation-removal== 82145 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #35473: origin
                    (at_b_p8)

                    ; #82145: origin
                    (not_at_b_p5)

                    ; #44206: <==negation-removal== 35473 (pos)
                    (not (not_at_b_p8))

                    ; #63000: <==negation-removal== 82145 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #42259: origin
                    (at_b_p9)

                    ; #82145: origin
                    (not_at_b_p5)

                    ; #12599: <==negation-removal== 42259 (pos)
                    (not (not_at_b_p9))

                    ; #63000: <==negation-removal== 82145 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #34567: origin
                    (not_at_b_p6)

                    ; #79801: origin
                    (at_b_p1)

                    ; #20966: <==negation-removal== 34567 (pos)
                    (not (at_b_p6))

                    ; #60367: <==negation-removal== 79801 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #34567: origin
                    (not_at_b_p6)

                    ; #88789: origin
                    (at_b_p2)

                    ; #20966: <==negation-removal== 34567 (pos)
                    (not (at_b_p6))

                    ; #84064: <==negation-removal== 88789 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #34567: origin
                    (not_at_b_p6)

                    ; #44244: origin
                    (at_b_p3)

                    ; #20966: <==negation-removal== 34567 (pos)
                    (not (at_b_p6))

                    ; #69564: <==negation-removal== 44244 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #34567: origin
                    (not_at_b_p6)

                    ; #84747: origin
                    (at_b_p4)

                    ; #20966: <==negation-removal== 34567 (pos)
                    (not (at_b_p6))

                    ; #24238: <==negation-removal== 84747 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #34567: origin
                    (not_at_b_p6)

                    ; #63000: origin
                    (at_b_p5)

                    ; #20966: <==negation-removal== 34567 (pos)
                    (not (at_b_p6))

                    ; #82145: <==negation-removal== 63000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #20966: origin
                    (at_b_p6)

                    ; #34567: origin
                    (not_at_b_p6)

                    ; #20966: <==negation-removal== 34567 (pos)
                    (not (at_b_p6))

                    ; #34567: <==negation-removal== 20966 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #13267: origin
                    (at_b_p7)

                    ; #34567: origin
                    (not_at_b_p6)

                    ; #20966: <==negation-removal== 34567 (pos)
                    (not (at_b_p6))

                    ; #44164: <==negation-removal== 13267 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #34567: origin
                    (not_at_b_p6)

                    ; #35473: origin
                    (at_b_p8)

                    ; #20966: <==negation-removal== 34567 (pos)
                    (not (at_b_p6))

                    ; #44206: <==negation-removal== 35473 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #34567: origin
                    (not_at_b_p6)

                    ; #42259: origin
                    (at_b_p9)

                    ; #12599: <==negation-removal== 42259 (pos)
                    (not (not_at_b_p9))

                    ; #20966: <==negation-removal== 34567 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #44164: origin
                    (not_at_b_p7)

                    ; #79801: origin
                    (at_b_p1)

                    ; #13267: <==negation-removal== 44164 (pos)
                    (not (at_b_p7))

                    ; #60367: <==negation-removal== 79801 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #44164: origin
                    (not_at_b_p7)

                    ; #88789: origin
                    (at_b_p2)

                    ; #13267: <==negation-removal== 44164 (pos)
                    (not (at_b_p7))

                    ; #84064: <==negation-removal== 88789 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #44164: origin
                    (not_at_b_p7)

                    ; #44244: origin
                    (at_b_p3)

                    ; #13267: <==negation-removal== 44164 (pos)
                    (not (at_b_p7))

                    ; #69564: <==negation-removal== 44244 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #44164: origin
                    (not_at_b_p7)

                    ; #84747: origin
                    (at_b_p4)

                    ; #13267: <==negation-removal== 44164 (pos)
                    (not (at_b_p7))

                    ; #24238: <==negation-removal== 84747 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #44164: origin
                    (not_at_b_p7)

                    ; #63000: origin
                    (at_b_p5)

                    ; #13267: <==negation-removal== 44164 (pos)
                    (not (at_b_p7))

                    ; #82145: <==negation-removal== 63000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #20966: origin
                    (at_b_p6)

                    ; #44164: origin
                    (not_at_b_p7)

                    ; #13267: <==negation-removal== 44164 (pos)
                    (not (at_b_p7))

                    ; #34567: <==negation-removal== 20966 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #13267: origin
                    (at_b_p7)

                    ; #44164: origin
                    (not_at_b_p7)

                    ; #13267: <==negation-removal== 44164 (pos)
                    (not (at_b_p7))

                    ; #44164: <==negation-removal== 13267 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #35473: origin
                    (at_b_p8)

                    ; #44164: origin
                    (not_at_b_p7)

                    ; #13267: <==negation-removal== 44164 (pos)
                    (not (at_b_p7))

                    ; #44206: <==negation-removal== 35473 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #42259: origin
                    (at_b_p9)

                    ; #44164: origin
                    (not_at_b_p7)

                    ; #12599: <==negation-removal== 42259 (pos)
                    (not (not_at_b_p9))

                    ; #13267: <==negation-removal== 44164 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #44206: origin
                    (not_at_b_p8)

                    ; #79801: origin
                    (at_b_p1)

                    ; #35473: <==negation-removal== 44206 (pos)
                    (not (at_b_p8))

                    ; #60367: <==negation-removal== 79801 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #44206: origin
                    (not_at_b_p8)

                    ; #88789: origin
                    (at_b_p2)

                    ; #35473: <==negation-removal== 44206 (pos)
                    (not (at_b_p8))

                    ; #84064: <==negation-removal== 88789 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #44206: origin
                    (not_at_b_p8)

                    ; #44244: origin
                    (at_b_p3)

                    ; #35473: <==negation-removal== 44206 (pos)
                    (not (at_b_p8))

                    ; #69564: <==negation-removal== 44244 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #44206: origin
                    (not_at_b_p8)

                    ; #84747: origin
                    (at_b_p4)

                    ; #24238: <==negation-removal== 84747 (pos)
                    (not (not_at_b_p4))

                    ; #35473: <==negation-removal== 44206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #44206: origin
                    (not_at_b_p8)

                    ; #63000: origin
                    (at_b_p5)

                    ; #35473: <==negation-removal== 44206 (pos)
                    (not (at_b_p8))

                    ; #82145: <==negation-removal== 63000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #20966: origin
                    (at_b_p6)

                    ; #44206: origin
                    (not_at_b_p8)

                    ; #34567: <==negation-removal== 20966 (pos)
                    (not (not_at_b_p6))

                    ; #35473: <==negation-removal== 44206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #13267: origin
                    (at_b_p7)

                    ; #44206: origin
                    (not_at_b_p8)

                    ; #35473: <==negation-removal== 44206 (pos)
                    (not (at_b_p8))

                    ; #44164: <==negation-removal== 13267 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #35473: origin
                    (at_b_p8)

                    ; #44206: origin
                    (not_at_b_p8)

                    ; #35473: <==negation-removal== 44206 (pos)
                    (not (at_b_p8))

                    ; #44206: <==negation-removal== 35473 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #42259: origin
                    (at_b_p9)

                    ; #44206: origin
                    (not_at_b_p8)

                    ; #12599: <==negation-removal== 42259 (pos)
                    (not (not_at_b_p9))

                    ; #35473: <==negation-removal== 44206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #12599: origin
                    (not_at_b_p9)

                    ; #79801: origin
                    (at_b_p1)

                    ; #42259: <==negation-removal== 12599 (pos)
                    (not (at_b_p9))

                    ; #60367: <==negation-removal== 79801 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #12599: origin
                    (not_at_b_p9)

                    ; #88789: origin
                    (at_b_p2)

                    ; #42259: <==negation-removal== 12599 (pos)
                    (not (at_b_p9))

                    ; #84064: <==negation-removal== 88789 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #12599: origin
                    (not_at_b_p9)

                    ; #44244: origin
                    (at_b_p3)

                    ; #42259: <==negation-removal== 12599 (pos)
                    (not (at_b_p9))

                    ; #69564: <==negation-removal== 44244 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #12599: origin
                    (not_at_b_p9)

                    ; #84747: origin
                    (at_b_p4)

                    ; #24238: <==negation-removal== 84747 (pos)
                    (not (not_at_b_p4))

                    ; #42259: <==negation-removal== 12599 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #12599: origin
                    (not_at_b_p9)

                    ; #63000: origin
                    (at_b_p5)

                    ; #42259: <==negation-removal== 12599 (pos)
                    (not (at_b_p9))

                    ; #82145: <==negation-removal== 63000 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #12599: origin
                    (not_at_b_p9)

                    ; #20966: origin
                    (at_b_p6)

                    ; #34567: <==negation-removal== 20966 (pos)
                    (not (not_at_b_p6))

                    ; #42259: <==negation-removal== 12599 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #12599: origin
                    (not_at_b_p9)

                    ; #13267: origin
                    (at_b_p7)

                    ; #42259: <==negation-removal== 12599 (pos)
                    (not (at_b_p9))

                    ; #44164: <==negation-removal== 13267 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #12599: origin
                    (not_at_b_p9)

                    ; #35473: origin
                    (at_b_p8)

                    ; #42259: <==negation-removal== 12599 (pos)
                    (not (at_b_p9))

                    ; #44206: <==negation-removal== 35473 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #12599: origin
                    (not_at_b_p9)

                    ; #42259: origin
                    (at_b_p9)

                    ; #12599: <==negation-removal== 42259 (pos)
                    (not (not_at_b_p9))

                    ; #42259: <==negation-removal== 12599 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #63495: origin
                    (not_at_c_p1)

                    ; #67950: origin
                    (at_c_p1)

                    ; #63495: <==negation-removal== 67950 (pos)
                    (not (not_at_c_p1))

                    ; #67950: <==negation-removal== 63495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #63495: origin
                    (not_at_c_p1)

                    ; #89287: origin
                    (at_c_p2)

                    ; #31511: <==negation-removal== 89287 (pos)
                    (not (not_at_c_p2))

                    ; #67950: <==negation-removal== 63495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #19992: origin
                    (at_c_p3)

                    ; #63495: origin
                    (not_at_c_p1)

                    ; #67950: <==negation-removal== 63495 (pos)
                    (not (at_c_p1))

                    ; #78958: <==negation-removal== 19992 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #63495: origin
                    (not_at_c_p1)

                    ; #67996: origin
                    (at_c_p4)

                    ; #10613: <==negation-removal== 67996 (pos)
                    (not (not_at_c_p4))

                    ; #67950: <==negation-removal== 63495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #46706: origin
                    (at_c_p5)

                    ; #63495: origin
                    (not_at_c_p1)

                    ; #67950: <==negation-removal== 63495 (pos)
                    (not (at_c_p1))

                    ; #73646: <==negation-removal== 46706 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #58141: origin
                    (at_c_p6)

                    ; #63495: origin
                    (not_at_c_p1)

                    ; #67950: <==negation-removal== 63495 (pos)
                    (not (at_c_p1))

                    ; #97269: <==negation-removal== 58141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #35109: origin
                    (at_c_p7)

                    ; #63495: origin
                    (not_at_c_p1)

                    ; #67950: <==negation-removal== 63495 (pos)
                    (not (at_c_p1))

                    ; #78750: <==negation-removal== 35109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #23703: origin
                    (at_c_p8)

                    ; #63495: origin
                    (not_at_c_p1)

                    ; #60413: <==negation-removal== 23703 (pos)
                    (not (not_at_c_p8))

                    ; #67950: <==negation-removal== 63495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #63495: origin
                    (not_at_c_p1)

                    ; #72437: origin
                    (at_c_p9)

                    ; #42679: <==negation-removal== 72437 (pos)
                    (not (not_at_c_p9))

                    ; #67950: <==negation-removal== 63495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #31511: origin
                    (not_at_c_p2)

                    ; #67950: origin
                    (at_c_p1)

                    ; #63495: <==negation-removal== 67950 (pos)
                    (not (not_at_c_p1))

                    ; #89287: <==negation-removal== 31511 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #31511: origin
                    (not_at_c_p2)

                    ; #89287: origin
                    (at_c_p2)

                    ; #31511: <==negation-removal== 89287 (pos)
                    (not (not_at_c_p2))

                    ; #89287: <==negation-removal== 31511 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #19992: origin
                    (at_c_p3)

                    ; #31511: origin
                    (not_at_c_p2)

                    ; #78958: <==negation-removal== 19992 (pos)
                    (not (not_at_c_p3))

                    ; #89287: <==negation-removal== 31511 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #31511: origin
                    (not_at_c_p2)

                    ; #67996: origin
                    (at_c_p4)

                    ; #10613: <==negation-removal== 67996 (pos)
                    (not (not_at_c_p4))

                    ; #89287: <==negation-removal== 31511 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #31511: origin
                    (not_at_c_p2)

                    ; #46706: origin
                    (at_c_p5)

                    ; #73646: <==negation-removal== 46706 (pos)
                    (not (not_at_c_p5))

                    ; #89287: <==negation-removal== 31511 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #31511: origin
                    (not_at_c_p2)

                    ; #58141: origin
                    (at_c_p6)

                    ; #89287: <==negation-removal== 31511 (pos)
                    (not (at_c_p2))

                    ; #97269: <==negation-removal== 58141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #31511: origin
                    (not_at_c_p2)

                    ; #35109: origin
                    (at_c_p7)

                    ; #78750: <==negation-removal== 35109 (pos)
                    (not (not_at_c_p7))

                    ; #89287: <==negation-removal== 31511 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #23703: origin
                    (at_c_p8)

                    ; #31511: origin
                    (not_at_c_p2)

                    ; #60413: <==negation-removal== 23703 (pos)
                    (not (not_at_c_p8))

                    ; #89287: <==negation-removal== 31511 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #31511: origin
                    (not_at_c_p2)

                    ; #72437: origin
                    (at_c_p9)

                    ; #42679: <==negation-removal== 72437 (pos)
                    (not (not_at_c_p9))

                    ; #89287: <==negation-removal== 31511 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #67950: origin
                    (at_c_p1)

                    ; #78958: origin
                    (not_at_c_p3)

                    ; #19992: <==negation-removal== 78958 (pos)
                    (not (at_c_p3))

                    ; #63495: <==negation-removal== 67950 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #78958: origin
                    (not_at_c_p3)

                    ; #89287: origin
                    (at_c_p2)

                    ; #19992: <==negation-removal== 78958 (pos)
                    (not (at_c_p3))

                    ; #31511: <==negation-removal== 89287 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #19992: origin
                    (at_c_p3)

                    ; #78958: origin
                    (not_at_c_p3)

                    ; #19992: <==negation-removal== 78958 (pos)
                    (not (at_c_p3))

                    ; #78958: <==negation-removal== 19992 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #67996: origin
                    (at_c_p4)

                    ; #78958: origin
                    (not_at_c_p3)

                    ; #10613: <==negation-removal== 67996 (pos)
                    (not (not_at_c_p4))

                    ; #19992: <==negation-removal== 78958 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #46706: origin
                    (at_c_p5)

                    ; #78958: origin
                    (not_at_c_p3)

                    ; #19992: <==negation-removal== 78958 (pos)
                    (not (at_c_p3))

                    ; #73646: <==negation-removal== 46706 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #58141: origin
                    (at_c_p6)

                    ; #78958: origin
                    (not_at_c_p3)

                    ; #19992: <==negation-removal== 78958 (pos)
                    (not (at_c_p3))

                    ; #97269: <==negation-removal== 58141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #35109: origin
                    (at_c_p7)

                    ; #78958: origin
                    (not_at_c_p3)

                    ; #19992: <==negation-removal== 78958 (pos)
                    (not (at_c_p3))

                    ; #78750: <==negation-removal== 35109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #23703: origin
                    (at_c_p8)

                    ; #78958: origin
                    (not_at_c_p3)

                    ; #19992: <==negation-removal== 78958 (pos)
                    (not (at_c_p3))

                    ; #60413: <==negation-removal== 23703 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #72437: origin
                    (at_c_p9)

                    ; #78958: origin
                    (not_at_c_p3)

                    ; #19992: <==negation-removal== 78958 (pos)
                    (not (at_c_p3))

                    ; #42679: <==negation-removal== 72437 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #10613: origin
                    (not_at_c_p4)

                    ; #67950: origin
                    (at_c_p1)

                    ; #63495: <==negation-removal== 67950 (pos)
                    (not (not_at_c_p1))

                    ; #67996: <==negation-removal== 10613 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #10613: origin
                    (not_at_c_p4)

                    ; #89287: origin
                    (at_c_p2)

                    ; #31511: <==negation-removal== 89287 (pos)
                    (not (not_at_c_p2))

                    ; #67996: <==negation-removal== 10613 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #10613: origin
                    (not_at_c_p4)

                    ; #19992: origin
                    (at_c_p3)

                    ; #67996: <==negation-removal== 10613 (pos)
                    (not (at_c_p4))

                    ; #78958: <==negation-removal== 19992 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #10613: origin
                    (not_at_c_p4)

                    ; #67996: origin
                    (at_c_p4)

                    ; #10613: <==negation-removal== 67996 (pos)
                    (not (not_at_c_p4))

                    ; #67996: <==negation-removal== 10613 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #10613: origin
                    (not_at_c_p4)

                    ; #46706: origin
                    (at_c_p5)

                    ; #67996: <==negation-removal== 10613 (pos)
                    (not (at_c_p4))

                    ; #73646: <==negation-removal== 46706 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #10613: origin
                    (not_at_c_p4)

                    ; #58141: origin
                    (at_c_p6)

                    ; #67996: <==negation-removal== 10613 (pos)
                    (not (at_c_p4))

                    ; #97269: <==negation-removal== 58141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #10613: origin
                    (not_at_c_p4)

                    ; #35109: origin
                    (at_c_p7)

                    ; #67996: <==negation-removal== 10613 (pos)
                    (not (at_c_p4))

                    ; #78750: <==negation-removal== 35109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #10613: origin
                    (not_at_c_p4)

                    ; #23703: origin
                    (at_c_p8)

                    ; #60413: <==negation-removal== 23703 (pos)
                    (not (not_at_c_p8))

                    ; #67996: <==negation-removal== 10613 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #10613: origin
                    (not_at_c_p4)

                    ; #72437: origin
                    (at_c_p9)

                    ; #42679: <==negation-removal== 72437 (pos)
                    (not (not_at_c_p9))

                    ; #67996: <==negation-removal== 10613 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #67950: origin
                    (at_c_p1)

                    ; #73646: origin
                    (not_at_c_p5)

                    ; #46706: <==negation-removal== 73646 (pos)
                    (not (at_c_p5))

                    ; #63495: <==negation-removal== 67950 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #73646: origin
                    (not_at_c_p5)

                    ; #89287: origin
                    (at_c_p2)

                    ; #31511: <==negation-removal== 89287 (pos)
                    (not (not_at_c_p2))

                    ; #46706: <==negation-removal== 73646 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #19992: origin
                    (at_c_p3)

                    ; #73646: origin
                    (not_at_c_p5)

                    ; #46706: <==negation-removal== 73646 (pos)
                    (not (at_c_p5))

                    ; #78958: <==negation-removal== 19992 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #67996: origin
                    (at_c_p4)

                    ; #73646: origin
                    (not_at_c_p5)

                    ; #10613: <==negation-removal== 67996 (pos)
                    (not (not_at_c_p4))

                    ; #46706: <==negation-removal== 73646 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #46706: origin
                    (at_c_p5)

                    ; #73646: origin
                    (not_at_c_p5)

                    ; #46706: <==negation-removal== 73646 (pos)
                    (not (at_c_p5))

                    ; #73646: <==negation-removal== 46706 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #58141: origin
                    (at_c_p6)

                    ; #73646: origin
                    (not_at_c_p5)

                    ; #46706: <==negation-removal== 73646 (pos)
                    (not (at_c_p5))

                    ; #97269: <==negation-removal== 58141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #35109: origin
                    (at_c_p7)

                    ; #73646: origin
                    (not_at_c_p5)

                    ; #46706: <==negation-removal== 73646 (pos)
                    (not (at_c_p5))

                    ; #78750: <==negation-removal== 35109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #23703: origin
                    (at_c_p8)

                    ; #73646: origin
                    (not_at_c_p5)

                    ; #46706: <==negation-removal== 73646 (pos)
                    (not (at_c_p5))

                    ; #60413: <==negation-removal== 23703 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #72437: origin
                    (at_c_p9)

                    ; #73646: origin
                    (not_at_c_p5)

                    ; #42679: <==negation-removal== 72437 (pos)
                    (not (not_at_c_p9))

                    ; #46706: <==negation-removal== 73646 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #67950: origin
                    (at_c_p1)

                    ; #97269: origin
                    (not_at_c_p6)

                    ; #58141: <==negation-removal== 97269 (pos)
                    (not (at_c_p6))

                    ; #63495: <==negation-removal== 67950 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #89287: origin
                    (at_c_p2)

                    ; #97269: origin
                    (not_at_c_p6)

                    ; #31511: <==negation-removal== 89287 (pos)
                    (not (not_at_c_p2))

                    ; #58141: <==negation-removal== 97269 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #19992: origin
                    (at_c_p3)

                    ; #97269: origin
                    (not_at_c_p6)

                    ; #58141: <==negation-removal== 97269 (pos)
                    (not (at_c_p6))

                    ; #78958: <==negation-removal== 19992 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #67996: origin
                    (at_c_p4)

                    ; #97269: origin
                    (not_at_c_p6)

                    ; #10613: <==negation-removal== 67996 (pos)
                    (not (not_at_c_p4))

                    ; #58141: <==negation-removal== 97269 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #46706: origin
                    (at_c_p5)

                    ; #97269: origin
                    (not_at_c_p6)

                    ; #58141: <==negation-removal== 97269 (pos)
                    (not (at_c_p6))

                    ; #73646: <==negation-removal== 46706 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #58141: origin
                    (at_c_p6)

                    ; #97269: origin
                    (not_at_c_p6)

                    ; #58141: <==negation-removal== 97269 (pos)
                    (not (at_c_p6))

                    ; #97269: <==negation-removal== 58141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #35109: origin
                    (at_c_p7)

                    ; #97269: origin
                    (not_at_c_p6)

                    ; #58141: <==negation-removal== 97269 (pos)
                    (not (at_c_p6))

                    ; #78750: <==negation-removal== 35109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #23703: origin
                    (at_c_p8)

                    ; #97269: origin
                    (not_at_c_p6)

                    ; #58141: <==negation-removal== 97269 (pos)
                    (not (at_c_p6))

                    ; #60413: <==negation-removal== 23703 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #72437: origin
                    (at_c_p9)

                    ; #97269: origin
                    (not_at_c_p6)

                    ; #42679: <==negation-removal== 72437 (pos)
                    (not (not_at_c_p9))

                    ; #58141: <==negation-removal== 97269 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #67950: origin
                    (at_c_p1)

                    ; #78750: origin
                    (not_at_c_p7)

                    ; #35109: <==negation-removal== 78750 (pos)
                    (not (at_c_p7))

                    ; #63495: <==negation-removal== 67950 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #78750: origin
                    (not_at_c_p7)

                    ; #89287: origin
                    (at_c_p2)

                    ; #31511: <==negation-removal== 89287 (pos)
                    (not (not_at_c_p2))

                    ; #35109: <==negation-removal== 78750 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #19992: origin
                    (at_c_p3)

                    ; #78750: origin
                    (not_at_c_p7)

                    ; #35109: <==negation-removal== 78750 (pos)
                    (not (at_c_p7))

                    ; #78958: <==negation-removal== 19992 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #67996: origin
                    (at_c_p4)

                    ; #78750: origin
                    (not_at_c_p7)

                    ; #10613: <==negation-removal== 67996 (pos)
                    (not (not_at_c_p4))

                    ; #35109: <==negation-removal== 78750 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #46706: origin
                    (at_c_p5)

                    ; #78750: origin
                    (not_at_c_p7)

                    ; #35109: <==negation-removal== 78750 (pos)
                    (not (at_c_p7))

                    ; #73646: <==negation-removal== 46706 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #58141: origin
                    (at_c_p6)

                    ; #78750: origin
                    (not_at_c_p7)

                    ; #35109: <==negation-removal== 78750 (pos)
                    (not (at_c_p7))

                    ; #97269: <==negation-removal== 58141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #35109: origin
                    (at_c_p7)

                    ; #78750: origin
                    (not_at_c_p7)

                    ; #35109: <==negation-removal== 78750 (pos)
                    (not (at_c_p7))

                    ; #78750: <==negation-removal== 35109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #23703: origin
                    (at_c_p8)

                    ; #78750: origin
                    (not_at_c_p7)

                    ; #35109: <==negation-removal== 78750 (pos)
                    (not (at_c_p7))

                    ; #60413: <==negation-removal== 23703 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #72437: origin
                    (at_c_p9)

                    ; #78750: origin
                    (not_at_c_p7)

                    ; #35109: <==negation-removal== 78750 (pos)
                    (not (at_c_p7))

                    ; #42679: <==negation-removal== 72437 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #60413: origin
                    (not_at_c_p8)

                    ; #67950: origin
                    (at_c_p1)

                    ; #23703: <==negation-removal== 60413 (pos)
                    (not (at_c_p8))

                    ; #63495: <==negation-removal== 67950 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #60413: origin
                    (not_at_c_p8)

                    ; #89287: origin
                    (at_c_p2)

                    ; #23703: <==negation-removal== 60413 (pos)
                    (not (at_c_p8))

                    ; #31511: <==negation-removal== 89287 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #19992: origin
                    (at_c_p3)

                    ; #60413: origin
                    (not_at_c_p8)

                    ; #23703: <==negation-removal== 60413 (pos)
                    (not (at_c_p8))

                    ; #78958: <==negation-removal== 19992 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #60413: origin
                    (not_at_c_p8)

                    ; #67996: origin
                    (at_c_p4)

                    ; #10613: <==negation-removal== 67996 (pos)
                    (not (not_at_c_p4))

                    ; #23703: <==negation-removal== 60413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #46706: origin
                    (at_c_p5)

                    ; #60413: origin
                    (not_at_c_p8)

                    ; #23703: <==negation-removal== 60413 (pos)
                    (not (at_c_p8))

                    ; #73646: <==negation-removal== 46706 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #58141: origin
                    (at_c_p6)

                    ; #60413: origin
                    (not_at_c_p8)

                    ; #23703: <==negation-removal== 60413 (pos)
                    (not (at_c_p8))

                    ; #97269: <==negation-removal== 58141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #35109: origin
                    (at_c_p7)

                    ; #60413: origin
                    (not_at_c_p8)

                    ; #23703: <==negation-removal== 60413 (pos)
                    (not (at_c_p8))

                    ; #78750: <==negation-removal== 35109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #23703: origin
                    (at_c_p8)

                    ; #60413: origin
                    (not_at_c_p8)

                    ; #23703: <==negation-removal== 60413 (pos)
                    (not (at_c_p8))

                    ; #60413: <==negation-removal== 23703 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #60413: origin
                    (not_at_c_p8)

                    ; #72437: origin
                    (at_c_p9)

                    ; #23703: <==negation-removal== 60413 (pos)
                    (not (at_c_p8))

                    ; #42679: <==negation-removal== 72437 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #42679: origin
                    (not_at_c_p9)

                    ; #67950: origin
                    (at_c_p1)

                    ; #63495: <==negation-removal== 67950 (pos)
                    (not (not_at_c_p1))

                    ; #72437: <==negation-removal== 42679 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #42679: origin
                    (not_at_c_p9)

                    ; #89287: origin
                    (at_c_p2)

                    ; #31511: <==negation-removal== 89287 (pos)
                    (not (not_at_c_p2))

                    ; #72437: <==negation-removal== 42679 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #19992: origin
                    (at_c_p3)

                    ; #42679: origin
                    (not_at_c_p9)

                    ; #72437: <==negation-removal== 42679 (pos)
                    (not (at_c_p9))

                    ; #78958: <==negation-removal== 19992 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #42679: origin
                    (not_at_c_p9)

                    ; #67996: origin
                    (at_c_p4)

                    ; #10613: <==negation-removal== 67996 (pos)
                    (not (not_at_c_p4))

                    ; #72437: <==negation-removal== 42679 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #42679: origin
                    (not_at_c_p9)

                    ; #46706: origin
                    (at_c_p5)

                    ; #72437: <==negation-removal== 42679 (pos)
                    (not (at_c_p9))

                    ; #73646: <==negation-removal== 46706 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #42679: origin
                    (not_at_c_p9)

                    ; #58141: origin
                    (at_c_p6)

                    ; #72437: <==negation-removal== 42679 (pos)
                    (not (at_c_p9))

                    ; #97269: <==negation-removal== 58141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #35109: origin
                    (at_c_p7)

                    ; #42679: origin
                    (not_at_c_p9)

                    ; #72437: <==negation-removal== 42679 (pos)
                    (not (at_c_p9))

                    ; #78750: <==negation-removal== 35109 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #23703: origin
                    (at_c_p8)

                    ; #42679: origin
                    (not_at_c_p9)

                    ; #60413: <==negation-removal== 23703 (pos)
                    (not (not_at_c_p8))

                    ; #72437: <==negation-removal== 42679 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #42679: origin
                    (not_at_c_p9)

                    ; #72437: origin
                    (at_c_p9)

                    ; #42679: <==negation-removal== 72437 (pos)
                    (not (not_at_c_p9))

                    ; #72437: <==negation-removal== 42679 (pos)
                    (not (at_c_p9))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1))
        :effect (and
                    ; #58811: origin
                    (not_at_d_p1)

                    ; #91342: origin
                    (at_d_p1)

                    ; #58811: <==negation-removal== 91342 (pos)
                    (not (not_at_d_p1))

                    ; #91342: <==negation-removal== 58811 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #58811: origin
                    (not_at_d_p1)

                    ; #61405: origin
                    (at_d_p2)

                    ; #51426: <==negation-removal== 61405 (pos)
                    (not (not_at_d_p2))

                    ; #91342: <==negation-removal== 58811 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #24322: origin
                    (at_d_p3)

                    ; #58811: origin
                    (not_at_d_p1)

                    ; #48393: <==negation-removal== 24322 (pos)
                    (not (not_at_d_p3))

                    ; #91342: <==negation-removal== 58811 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1))
        :effect (and
                    ; #58811: origin
                    (not_at_d_p1)

                    ; #74884: origin
                    (at_d_p4)

                    ; #91342: <==negation-removal== 58811 (pos)
                    (not (at_d_p1))

                    ; #97146: <==negation-removal== 74884 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1))
        :effect (and
                    ; #58811: origin
                    (not_at_d_p1)

                    ; #80776: origin
                    (at_d_p5)

                    ; #63305: <==negation-removal== 80776 (pos)
                    (not (not_at_d_p5))

                    ; #91342: <==negation-removal== 58811 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1))
        :effect (and
                    ; #58811: origin
                    (not_at_d_p1)

                    ; #60402: origin
                    (at_d_p6)

                    ; #78485: <==negation-removal== 60402 (pos)
                    (not (not_at_d_p6))

                    ; #91342: <==negation-removal== 58811 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #58811: origin
                    (not_at_d_p1)

                    ; #70426: origin
                    (at_d_p7)

                    ; #60592: <==negation-removal== 70426 (pos)
                    (not (not_at_d_p7))

                    ; #91342: <==negation-removal== 58811 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1))
        :effect (and
                    ; #58811: origin
                    (not_at_d_p1)

                    ; #81374: origin
                    (at_d_p8)

                    ; #62160: <==negation-removal== 81374 (pos)
                    (not (not_at_d_p8))

                    ; #91342: <==negation-removal== 58811 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #30275: origin
                    (at_d_p9)

                    ; #58811: origin
                    (not_at_d_p1)

                    ; #86255: <==negation-removal== 30275 (pos)
                    (not (not_at_d_p9))

                    ; #91342: <==negation-removal== 58811 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #51426: origin
                    (not_at_d_p2)

                    ; #91342: origin
                    (at_d_p1)

                    ; #58811: <==negation-removal== 91342 (pos)
                    (not (not_at_d_p1))

                    ; #61405: <==negation-removal== 51426 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #51426: origin
                    (not_at_d_p2)

                    ; #61405: origin
                    (at_d_p2)

                    ; #51426: <==negation-removal== 61405 (pos)
                    (not (not_at_d_p2))

                    ; #61405: <==negation-removal== 51426 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #24322: origin
                    (at_d_p3)

                    ; #51426: origin
                    (not_at_d_p2)

                    ; #48393: <==negation-removal== 24322 (pos)
                    (not (not_at_d_p3))

                    ; #61405: <==negation-removal== 51426 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2))
        :effect (and
                    ; #51426: origin
                    (not_at_d_p2)

                    ; #74884: origin
                    (at_d_p4)

                    ; #61405: <==negation-removal== 51426 (pos)
                    (not (at_d_p2))

                    ; #97146: <==negation-removal== 74884 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_d_p2))
        :effect (and
                    ; #51426: origin
                    (not_at_d_p2)

                    ; #80776: origin
                    (at_d_p5)

                    ; #61405: <==negation-removal== 51426 (pos)
                    (not (at_d_p2))

                    ; #63305: <==negation-removal== 80776 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #51426: origin
                    (not_at_d_p2)

                    ; #60402: origin
                    (at_d_p6)

                    ; #61405: <==negation-removal== 51426 (pos)
                    (not (at_d_p2))

                    ; #78485: <==negation-removal== 60402 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #51426: origin
                    (not_at_d_p2)

                    ; #70426: origin
                    (at_d_p7)

                    ; #60592: <==negation-removal== 70426 (pos)
                    (not (not_at_d_p7))

                    ; #61405: <==negation-removal== 51426 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #51426: origin
                    (not_at_d_p2)

                    ; #81374: origin
                    (at_d_p8)

                    ; #61405: <==negation-removal== 51426 (pos)
                    (not (at_d_p2))

                    ; #62160: <==negation-removal== 81374 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #30275: origin
                    (at_d_p9)

                    ; #51426: origin
                    (not_at_d_p2)

                    ; #61405: <==negation-removal== 51426 (pos)
                    (not (at_d_p2))

                    ; #86255: <==negation-removal== 30275 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #48393: origin
                    (not_at_d_p3)

                    ; #91342: origin
                    (at_d_p1)

                    ; #24322: <==negation-removal== 48393 (pos)
                    (not (at_d_p3))

                    ; #58811: <==negation-removal== 91342 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p2
        :precondition (and (at_d_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #48393: origin
                    (not_at_d_p3)

                    ; #61405: origin
                    (at_d_p2)

                    ; #24322: <==negation-removal== 48393 (pos)
                    (not (at_d_p3))

                    ; #51426: <==negation-removal== 61405 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #24322: origin
                    (at_d_p3)

                    ; #48393: origin
                    (not_at_d_p3)

                    ; #24322: <==negation-removal== 48393 (pos)
                    (not (at_d_p3))

                    ; #48393: <==negation-removal== 24322 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #48393: origin
                    (not_at_d_p3)

                    ; #74884: origin
                    (at_d_p4)

                    ; #24322: <==negation-removal== 48393 (pos)
                    (not (at_d_p3))

                    ; #97146: <==negation-removal== 74884 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #48393: origin
                    (not_at_d_p3)

                    ; #80776: origin
                    (at_d_p5)

                    ; #24322: <==negation-removal== 48393 (pos)
                    (not (at_d_p3))

                    ; #63305: <==negation-removal== 80776 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (at_d_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #48393: origin
                    (not_at_d_p3)

                    ; #60402: origin
                    (at_d_p6)

                    ; #24322: <==negation-removal== 48393 (pos)
                    (not (at_d_p3))

                    ; #78485: <==negation-removal== 60402 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #48393: origin
                    (not_at_d_p3)

                    ; #70426: origin
                    (at_d_p7)

                    ; #24322: <==negation-removal== 48393 (pos)
                    (not (at_d_p3))

                    ; #60592: <==negation-removal== 70426 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (at_d_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #48393: origin
                    (not_at_d_p3)

                    ; #81374: origin
                    (at_d_p8)

                    ; #24322: <==negation-removal== 48393 (pos)
                    (not (at_d_p3))

                    ; #62160: <==negation-removal== 81374 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (at_d_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #30275: origin
                    (at_d_p9)

                    ; #48393: origin
                    (not_at_d_p3)

                    ; #24322: <==negation-removal== 48393 (pos)
                    (not (at_d_p3))

                    ; #86255: <==negation-removal== 30275 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #91342: origin
                    (at_d_p1)

                    ; #97146: origin
                    (not_at_d_p4)

                    ; #58811: <==negation-removal== 91342 (pos)
                    (not (not_at_d_p1))

                    ; #74884: <==negation-removal== 97146 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #61405: origin
                    (at_d_p2)

                    ; #97146: origin
                    (not_at_d_p4)

                    ; #51426: <==negation-removal== 61405 (pos)
                    (not (not_at_d_p2))

                    ; #74884: <==negation-removal== 97146 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #24322: origin
                    (at_d_p3)

                    ; #97146: origin
                    (not_at_d_p4)

                    ; #48393: <==negation-removal== 24322 (pos)
                    (not (not_at_d_p3))

                    ; #74884: <==negation-removal== 97146 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #74884: origin
                    (at_d_p4)

                    ; #97146: origin
                    (not_at_d_p4)

                    ; #74884: <==negation-removal== 97146 (pos)
                    (not (at_d_p4))

                    ; #97146: <==negation-removal== 74884 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #80776: origin
                    (at_d_p5)

                    ; #97146: origin
                    (not_at_d_p4)

                    ; #63305: <==negation-removal== 80776 (pos)
                    (not (not_at_d_p5))

                    ; #74884: <==negation-removal== 97146 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #60402: origin
                    (at_d_p6)

                    ; #97146: origin
                    (not_at_d_p4)

                    ; #74884: <==negation-removal== 97146 (pos)
                    (not (at_d_p4))

                    ; #78485: <==negation-removal== 60402 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #70426: origin
                    (at_d_p7)

                    ; #97146: origin
                    (not_at_d_p4)

                    ; #60592: <==negation-removal== 70426 (pos)
                    (not (not_at_d_p7))

                    ; #74884: <==negation-removal== 97146 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #81374: origin
                    (at_d_p8)

                    ; #97146: origin
                    (not_at_d_p4)

                    ; #62160: <==negation-removal== 81374 (pos)
                    (not (not_at_d_p8))

                    ; #74884: <==negation-removal== 97146 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #30275: origin
                    (at_d_p9)

                    ; #97146: origin
                    (not_at_d_p4)

                    ; #74884: <==negation-removal== 97146 (pos)
                    (not (at_d_p4))

                    ; #86255: <==negation-removal== 30275 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (at_d_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #63305: origin
                    (not_at_d_p5)

                    ; #91342: origin
                    (at_d_p1)

                    ; #58811: <==negation-removal== 91342 (pos)
                    (not (not_at_d_p1))

                    ; #80776: <==negation-removal== 63305 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #61405: origin
                    (at_d_p2)

                    ; #63305: origin
                    (not_at_d_p5)

                    ; #51426: <==negation-removal== 61405 (pos)
                    (not (not_at_d_p2))

                    ; #80776: <==negation-removal== 63305 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #24322: origin
                    (at_d_p3)

                    ; #63305: origin
                    (not_at_d_p5)

                    ; #48393: <==negation-removal== 24322 (pos)
                    (not (not_at_d_p3))

                    ; #80776: <==negation-removal== 63305 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #63305: origin
                    (not_at_d_p5)

                    ; #74884: origin
                    (at_d_p4)

                    ; #80776: <==negation-removal== 63305 (pos)
                    (not (at_d_p5))

                    ; #97146: <==negation-removal== 74884 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #63305: origin
                    (not_at_d_p5)

                    ; #80776: origin
                    (at_d_p5)

                    ; #63305: <==negation-removal== 80776 (pos)
                    (not (not_at_d_p5))

                    ; #80776: <==negation-removal== 63305 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #60402: origin
                    (at_d_p6)

                    ; #63305: origin
                    (not_at_d_p5)

                    ; #78485: <==negation-removal== 60402 (pos)
                    (not (not_at_d_p6))

                    ; #80776: <==negation-removal== 63305 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #63305: origin
                    (not_at_d_p5)

                    ; #70426: origin
                    (at_d_p7)

                    ; #60592: <==negation-removal== 70426 (pos)
                    (not (not_at_d_p7))

                    ; #80776: <==negation-removal== 63305 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #63305: origin
                    (not_at_d_p5)

                    ; #81374: origin
                    (at_d_p8)

                    ; #62160: <==negation-removal== 81374 (pos)
                    (not (not_at_d_p8))

                    ; #80776: <==negation-removal== 63305 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #30275: origin
                    (at_d_p9)

                    ; #63305: origin
                    (not_at_d_p5)

                    ; #80776: <==negation-removal== 63305 (pos)
                    (not (at_d_p5))

                    ; #86255: <==negation-removal== 30275 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (at_d_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #78485: origin
                    (not_at_d_p6)

                    ; #91342: origin
                    (at_d_p1)

                    ; #58811: <==negation-removal== 91342 (pos)
                    (not (not_at_d_p1))

                    ; #60402: <==negation-removal== 78485 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #61405: origin
                    (at_d_p2)

                    ; #78485: origin
                    (not_at_d_p6)

                    ; #51426: <==negation-removal== 61405 (pos)
                    (not (not_at_d_p2))

                    ; #60402: <==negation-removal== 78485 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6))
        :effect (and
                    ; #24322: origin
                    (at_d_p3)

                    ; #78485: origin
                    (not_at_d_p6)

                    ; #48393: <==negation-removal== 24322 (pos)
                    (not (not_at_d_p3))

                    ; #60402: <==negation-removal== 78485 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6))
        :effect (and
                    ; #74884: origin
                    (at_d_p4)

                    ; #78485: origin
                    (not_at_d_p6)

                    ; #60402: <==negation-removal== 78485 (pos)
                    (not (at_d_p6))

                    ; #97146: <==negation-removal== 74884 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #78485: origin
                    (not_at_d_p6)

                    ; #80776: origin
                    (at_d_p5)

                    ; #60402: <==negation-removal== 78485 (pos)
                    (not (at_d_p6))

                    ; #63305: <==negation-removal== 80776 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #60402: origin
                    (at_d_p6)

                    ; #78485: origin
                    (not_at_d_p6)

                    ; #60402: <==negation-removal== 78485 (pos)
                    (not (at_d_p6))

                    ; #78485: <==negation-removal== 60402 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #70426: origin
                    (at_d_p7)

                    ; #78485: origin
                    (not_at_d_p6)

                    ; #60402: <==negation-removal== 78485 (pos)
                    (not (at_d_p6))

                    ; #60592: <==negation-removal== 70426 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #78485: origin
                    (not_at_d_p6)

                    ; #81374: origin
                    (at_d_p8)

                    ; #60402: <==negation-removal== 78485 (pos)
                    (not (at_d_p6))

                    ; #62160: <==negation-removal== 81374 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #30275: origin
                    (at_d_p9)

                    ; #78485: origin
                    (not_at_d_p6)

                    ; #60402: <==negation-removal== 78485 (pos)
                    (not (at_d_p6))

                    ; #86255: <==negation-removal== 30275 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7))
        :effect (and
                    ; #60592: origin
                    (not_at_d_p7)

                    ; #91342: origin
                    (at_d_p1)

                    ; #58811: <==negation-removal== 91342 (pos)
                    (not (not_at_d_p1))

                    ; #70426: <==negation-removal== 60592 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7))
        :effect (and
                    ; #60592: origin
                    (not_at_d_p7)

                    ; #61405: origin
                    (at_d_p2)

                    ; #51426: <==negation-removal== 61405 (pos)
                    (not (not_at_d_p2))

                    ; #70426: <==negation-removal== 60592 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #24322: origin
                    (at_d_p3)

                    ; #60592: origin
                    (not_at_d_p7)

                    ; #48393: <==negation-removal== 24322 (pos)
                    (not (not_at_d_p3))

                    ; #70426: <==negation-removal== 60592 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7))
        :effect (and
                    ; #60592: origin
                    (not_at_d_p7)

                    ; #74884: origin
                    (at_d_p4)

                    ; #70426: <==negation-removal== 60592 (pos)
                    (not (at_d_p7))

                    ; #97146: <==negation-removal== 74884 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #60592: origin
                    (not_at_d_p7)

                    ; #80776: origin
                    (at_d_p5)

                    ; #63305: <==negation-removal== 80776 (pos)
                    (not (not_at_d_p5))

                    ; #70426: <==negation-removal== 60592 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7))
        :effect (and
                    ; #60402: origin
                    (at_d_p6)

                    ; #60592: origin
                    (not_at_d_p7)

                    ; #70426: <==negation-removal== 60592 (pos)
                    (not (at_d_p7))

                    ; #78485: <==negation-removal== 60402 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7))
        :effect (and
                    ; #60592: origin
                    (not_at_d_p7)

                    ; #70426: origin
                    (at_d_p7)

                    ; #60592: <==negation-removal== 70426 (pos)
                    (not (not_at_d_p7))

                    ; #70426: <==negation-removal== 60592 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_d_p7))
        :effect (and
                    ; #60592: origin
                    (not_at_d_p7)

                    ; #81374: origin
                    (at_d_p8)

                    ; #62160: <==negation-removal== 81374 (pos)
                    (not (not_at_d_p8))

                    ; #70426: <==negation-removal== 60592 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_d_p7))
        :effect (and
                    ; #30275: origin
                    (at_d_p9)

                    ; #60592: origin
                    (not_at_d_p7)

                    ; #70426: <==negation-removal== 60592 (pos)
                    (not (at_d_p7))

                    ; #86255: <==negation-removal== 30275 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #62160: origin
                    (not_at_d_p8)

                    ; #91342: origin
                    (at_d_p1)

                    ; #58811: <==negation-removal== 91342 (pos)
                    (not (not_at_d_p1))

                    ; #81374: <==negation-removal== 62160 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #61405: origin
                    (at_d_p2)

                    ; #62160: origin
                    (not_at_d_p8)

                    ; #51426: <==negation-removal== 61405 (pos)
                    (not (not_at_d_p2))

                    ; #81374: <==negation-removal== 62160 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #24322: origin
                    (at_d_p3)

                    ; #62160: origin
                    (not_at_d_p8)

                    ; #48393: <==negation-removal== 24322 (pos)
                    (not (not_at_d_p3))

                    ; #81374: <==negation-removal== 62160 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #62160: origin
                    (not_at_d_p8)

                    ; #74884: origin
                    (at_d_p4)

                    ; #81374: <==negation-removal== 62160 (pos)
                    (not (at_d_p8))

                    ; #97146: <==negation-removal== 74884 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #62160: origin
                    (not_at_d_p8)

                    ; #80776: origin
                    (at_d_p5)

                    ; #63305: <==negation-removal== 80776 (pos)
                    (not (not_at_d_p5))

                    ; #81374: <==negation-removal== 62160 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #60402: origin
                    (at_d_p6)

                    ; #62160: origin
                    (not_at_d_p8)

                    ; #78485: <==negation-removal== 60402 (pos)
                    (not (not_at_d_p6))

                    ; #81374: <==negation-removal== 62160 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #62160: origin
                    (not_at_d_p8)

                    ; #70426: origin
                    (at_d_p7)

                    ; #60592: <==negation-removal== 70426 (pos)
                    (not (not_at_d_p7))

                    ; #81374: <==negation-removal== 62160 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #62160: origin
                    (not_at_d_p8)

                    ; #81374: origin
                    (at_d_p8)

                    ; #62160: <==negation-removal== 81374 (pos)
                    (not (not_at_d_p8))

                    ; #81374: <==negation-removal== 62160 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #30275: origin
                    (at_d_p9)

                    ; #62160: origin
                    (not_at_d_p8)

                    ; #81374: <==negation-removal== 62160 (pos)
                    (not (at_d_p8))

                    ; #86255: <==negation-removal== 30275 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #86255: origin
                    (not_at_d_p9)

                    ; #91342: origin
                    (at_d_p1)

                    ; #30275: <==negation-removal== 86255 (pos)
                    (not (at_d_p9))

                    ; #58811: <==negation-removal== 91342 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #61405: origin
                    (at_d_p2)

                    ; #86255: origin
                    (not_at_d_p9)

                    ; #30275: <==negation-removal== 86255 (pos)
                    (not (at_d_p9))

                    ; #51426: <==negation-removal== 61405 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #24322: origin
                    (at_d_p3)

                    ; #86255: origin
                    (not_at_d_p9)

                    ; #30275: <==negation-removal== 86255 (pos)
                    (not (at_d_p9))

                    ; #48393: <==negation-removal== 24322 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #74884: origin
                    (at_d_p4)

                    ; #86255: origin
                    (not_at_d_p9)

                    ; #30275: <==negation-removal== 86255 (pos)
                    (not (at_d_p9))

                    ; #97146: <==negation-removal== 74884 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #80776: origin
                    (at_d_p5)

                    ; #86255: origin
                    (not_at_d_p9)

                    ; #30275: <==negation-removal== 86255 (pos)
                    (not (at_d_p9))

                    ; #63305: <==negation-removal== 80776 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #60402: origin
                    (at_d_p6)

                    ; #86255: origin
                    (not_at_d_p9)

                    ; #30275: <==negation-removal== 86255 (pos)
                    (not (at_d_p9))

                    ; #78485: <==negation-removal== 60402 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #70426: origin
                    (at_d_p7)

                    ; #86255: origin
                    (not_at_d_p9)

                    ; #30275: <==negation-removal== 86255 (pos)
                    (not (at_d_p9))

                    ; #60592: <==negation-removal== 70426 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #81374: origin
                    (at_d_p8)

                    ; #86255: origin
                    (not_at_d_p9)

                    ; #30275: <==negation-removal== 86255 (pos)
                    (not (at_d_p9))

                    ; #62160: <==negation-removal== 81374 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #30275: origin
                    (at_d_p9)

                    ; #86255: origin
                    (not_at_d_p9)

                    ; #30275: <==negation-removal== 86255 (pos)
                    (not (at_d_p9))

                    ; #86255: <==negation-removal== 30275 (pos)
                    (not (not_at_d_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10945: origin
                    (checked_p1)

                    ; #22455: <==commonly_known== 47517 (neg)
                    (Pc_checked_p1)

                    ; #26275: <==commonly_known== 10945 (pos)
                    (Bb_checked_p1)

                    ; #42763: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #44571: <==commonly_known== 47517 (neg)
                    (Pa_checked_p1)

                    ; #50503: <==commonly_known== 47517 (neg)
                    (Pb_checked_p1)

                    ; #60778: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #70085: <==commonly_known== 10945 (pos)
                    (Bd_checked_p1)

                    ; #73463: <==closure== 42763 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #74021: <==commonly_known== 10945 (pos)
                    (Bc_checked_p1)

                    ; #78825: <==commonly_known== 10945 (pos)
                    (Ba_checked_p1)

                    ; #87127: <==closure== 60778 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #88554: <==commonly_known== 47517 (neg)
                    (Pd_checked_p1)

                    ; #12546: <==negation-removal== 87127 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #15090: <==uncertain_firing== 87127 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #19672: <==negation-removal== 88554 (pos)
                    (not (Bd_not_checked_p1))

                    ; #27413: <==uncertain_firing== 73463 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #28796: <==uncertain_firing== 60778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #35161: <==negation-removal== 73463 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #36846: <==negation-removal== 44571 (pos)
                    (not (Ba_not_checked_p1))

                    ; #41745: <==uncertain_firing== 42763 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #42900: <==negation-removal== 78825 (pos)
                    (not (Pa_not_checked_p1))

                    ; #44222: <==negation-removal== 60778 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #46387: <==negation-removal== 50503 (pos)
                    (not (Bb_not_checked_p1))

                    ; #47517: <==negation-removal== 10945 (pos)
                    (not (not_checked_p1))

                    ; #53384: <==negation-removal== 42763 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #62235: <==negation-removal== 26275 (pos)
                    (not (Pb_not_checked_p1))

                    ; #72091: <==negation-removal== 70085 (pos)
                    (not (Pd_not_checked_p1))

                    ; #80123: <==negation-removal== 74021 (pos)
                    (not (Pc_not_checked_p1))

                    ; #92210: <==negation-removal== 22455 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #28210: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #28244: <==closure== 28210 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #34171: <==commonly_known== 70247 (pos)
                    (Ba_checked_p2)

                    ; #43109: <==commonly_known== 70247 (pos)
                    (Bb_checked_p2)

                    ; #53320: <==commonly_known== 35659 (neg)
                    (Pd_checked_p2)

                    ; #55236: <==commonly_known== 35659 (neg)
                    (Pb_checked_p2)

                    ; #55429: <==commonly_known== 70247 (pos)
                    (Bd_checked_p2)

                    ; #56235: <==commonly_known== 35659 (neg)
                    (Pa_checked_p2)

                    ; #61603: <==commonly_known== 35659 (neg)
                    (Pc_checked_p2)

                    ; #64611: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #70247: origin
                    (checked_p2)

                    ; #91953: <==commonly_known== 70247 (pos)
                    (Bc_checked_p2)

                    ; #91999: <==closure== 64611 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #20824: <==negation-removal== 28244 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #23740: <==negation-removal== 64611 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35187: <==negation-removal== 91953 (pos)
                    (not (Pc_not_checked_p2))

                    ; #35659: <==negation-removal== 70247 (pos)
                    (not (not_checked_p2))

                    ; #41472: <==negation-removal== 53320 (pos)
                    (not (Bd_not_checked_p2))

                    ; #45415: <==uncertain_firing== 28210 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #48321: <==negation-removal== 56235 (pos)
                    (not (Ba_not_checked_p2))

                    ; #50521: <==negation-removal== 91999 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #58204: <==negation-removal== 55429 (pos)
                    (not (Pd_not_checked_p2))

                    ; #58551: <==negation-removal== 34171 (pos)
                    (not (Pa_not_checked_p2))

                    ; #63010: <==negation-removal== 28210 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #63470: <==negation-removal== 61603 (pos)
                    (not (Bc_not_checked_p2))

                    ; #69055: <==negation-removal== 55236 (pos)
                    (not (Bb_not_checked_p2))

                    ; #70666: <==uncertain_firing== 28244 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #76816: <==negation-removal== 43109 (pos)
                    (not (Pb_not_checked_p2))

                    ; #82772: <==uncertain_firing== 91999 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #92140: <==uncertain_firing== 64611 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13609: <==commonly_known== 48446 (neg)
                    (Pc_checked_p3)

                    ; #14072: <==commonly_known== 60529 (pos)
                    (Ba_checked_p3)

                    ; #14530: <==closure== 68744 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #26609: <==closure== 51107 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #34823: <==commonly_known== 60529 (pos)
                    (Bb_checked_p3)

                    ; #37870: <==commonly_known== 48446 (neg)
                    (Pd_checked_p3)

                    ; #39428: <==commonly_known== 48446 (neg)
                    (Pa_checked_p3)

                    ; #51107: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #51788: <==commonly_known== 48446 (neg)
                    (Pb_checked_p3)

                    ; #55455: <==commonly_known== 60529 (pos)
                    (Bc_checked_p3)

                    ; #58458: <==commonly_known== 60529 (pos)
                    (Bd_checked_p3)

                    ; #60529: origin
                    (checked_p3)

                    ; #68744: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #15062: <==negation-removal== 55455 (pos)
                    (not (Pc_not_checked_p3))

                    ; #17802: <==negation-removal== 51788 (pos)
                    (not (Bb_not_checked_p3))

                    ; #18154: <==negation-removal== 26609 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #19649: <==negation-removal== 37870 (pos)
                    (not (Bd_not_checked_p3))

                    ; #21184: <==uncertain_firing== 68744 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #22158: <==uncertain_firing== 14530 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #26331: <==negation-removal== 51107 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #34426: <==negation-removal== 13609 (pos)
                    (not (Bc_not_checked_p3))

                    ; #36254: <==negation-removal== 14072 (pos)
                    (not (Pa_not_checked_p3))

                    ; #44475: <==negation-removal== 39428 (pos)
                    (not (Ba_not_checked_p3))

                    ; #48446: <==negation-removal== 60529 (pos)
                    (not (not_checked_p3))

                    ; #61222: <==negation-removal== 14530 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #66112: <==negation-removal== 58458 (pos)
                    (not (Pd_not_checked_p3))

                    ; #84607: <==uncertain_firing== 26609 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #86685: <==negation-removal== 34823 (pos)
                    (not (Pb_not_checked_p3))

                    ; #89608: <==uncertain_firing== 51107 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #94950: <==negation-removal== 68744 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #22332: <==commonly_known== 40612 (neg)
                    (Pc_checked_p4)

                    ; #27104: <==closure== 84269 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #31320: <==commonly_known== 80921 (pos)
                    (Bd_checked_p4)

                    ; #45113: <==commonly_known== 40612 (neg)
                    (Pa_checked_p4)

                    ; #45752: <==commonly_known== 80921 (pos)
                    (Bb_checked_p4)

                    ; #45898: <==commonly_known== 40612 (neg)
                    (Pb_checked_p4)

                    ; #46394: <==commonly_known== 80921 (pos)
                    (Ba_checked_p4)

                    ; #61860: <==commonly_known== 40612 (neg)
                    (Pd_checked_p4)

                    ; #62876: <==closure== 66596 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #64591: <==commonly_known== 80921 (pos)
                    (Bc_checked_p4)

                    ; #66596: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #80921: origin
                    (checked_p4)

                    ; #84269: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #14359: <==negation-removal== 62876 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #14698: <==negation-removal== 31320 (pos)
                    (not (Pd_not_checked_p4))

                    ; #17634: <==negation-removal== 46394 (pos)
                    (not (Pa_not_checked_p4))

                    ; #26043: <==uncertain_firing== 66596 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #29993: <==negation-removal== 45898 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37250: <==uncertain_firing== 62876 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #40612: <==negation-removal== 80921 (pos)
                    (not (not_checked_p4))

                    ; #45491: <==negation-removal== 45752 (pos)
                    (not (Pb_not_checked_p4))

                    ; #49562: <==uncertain_firing== 27104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #51687: <==negation-removal== 45113 (pos)
                    (not (Ba_not_checked_p4))

                    ; #53831: <==uncertain_firing== 84269 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #56187: <==negation-removal== 61860 (pos)
                    (not (Bd_not_checked_p4))

                    ; #58197: <==negation-removal== 66596 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #60341: <==negation-removal== 64591 (pos)
                    (not (Pc_not_checked_p4))

                    ; #70460: <==negation-removal== 27104 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #73765: <==negation-removal== 22332 (pos)
                    (not (Bc_not_checked_p4))

                    ; #87653: <==negation-removal== 84269 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12060: <==closure== 77507 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #15243: <==closure== 72580 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #25390: <==commonly_known== 91111 (neg)
                    (Pd_checked_p5)

                    ; #32282: <==commonly_known== 91111 (neg)
                    (Pb_checked_p5)

                    ; #39131: <==commonly_known== 91111 (neg)
                    (Pa_checked_p5)

                    ; #63366: <==commonly_known== 66108 (pos)
                    (Bb_checked_p5)

                    ; #66108: origin
                    (checked_p5)

                    ; #69450: <==commonly_known== 66108 (pos)
                    (Bd_checked_p5)

                    ; #72580: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #77507: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #79821: <==commonly_known== 66108 (pos)
                    (Ba_checked_p5)

                    ; #83787: <==commonly_known== 91111 (neg)
                    (Pc_checked_p5)

                    ; #90309: <==commonly_known== 66108 (pos)
                    (Bc_checked_p5)

                    ; #17868: <==uncertain_firing== 77507 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #18716: <==negation-removal== 90309 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31629: <==negation-removal== 63366 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34875: <==negation-removal== 25390 (pos)
                    (not (Bd_not_checked_p5))

                    ; #39331: <==uncertain_firing== 12060 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #39444: <==negation-removal== 12060 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #41074: <==negation-removal== 32282 (pos)
                    (not (Bb_not_checked_p5))

                    ; #44240: <==negation-removal== 79821 (pos)
                    (not (Pa_not_checked_p5))

                    ; #45274: <==negation-removal== 69450 (pos)
                    (not (Pd_not_checked_p5))

                    ; #47183: <==uncertain_firing== 15243 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #48074: <==negation-removal== 83787 (pos)
                    (not (Bc_not_checked_p5))

                    ; #69854: <==negation-removal== 39131 (pos)
                    (not (Ba_not_checked_p5))

                    ; #77266: <==negation-removal== 77507 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #79333: <==negation-removal== 72580 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #88818: <==uncertain_firing== 72580 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #89920: <==negation-removal== 15243 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #91111: <==negation-removal== 66108 (pos)
                    (not (not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #18720: <==commonly_known== 53590 (pos)
                    (Ba_checked_p6)

                    ; #21884: <==commonly_known== 76846 (neg)
                    (Pb_checked_p6)

                    ; #25735: <==commonly_known== 53590 (pos)
                    (Bd_checked_p6)

                    ; #43806: <==commonly_known== 76846 (neg)
                    (Pc_checked_p6)

                    ; #45600: <==closure== 79732 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #49806: <==commonly_known== 53590 (pos)
                    (Bb_checked_p6)

                    ; #53590: origin
                    (checked_p6)

                    ; #55754: <==commonly_known== 53590 (pos)
                    (Bc_checked_p6)

                    ; #70681: <==closure== 91688 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #79732: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #84704: <==commonly_known== 76846 (neg)
                    (Pa_checked_p6)

                    ; #91688: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #92703: <==commonly_known== 76846 (neg)
                    (Pd_checked_p6)

                    ; #13302: <==negation-removal== 84704 (pos)
                    (not (Ba_not_checked_p6))

                    ; #24414: <==negation-removal== 43806 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29557: <==uncertain_firing== 70681 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #29701: <==negation-removal== 49806 (pos)
                    (not (Pb_not_checked_p6))

                    ; #29978: <==negation-removal== 21884 (pos)
                    (not (Bb_not_checked_p6))

                    ; #32875: <==negation-removal== 55754 (pos)
                    (not (Pc_not_checked_p6))

                    ; #39502: <==negation-removal== 18720 (pos)
                    (not (Pa_not_checked_p6))

                    ; #43332: <==uncertain_firing== 91688 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #49120: <==negation-removal== 91688 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #60615: <==negation-removal== 45600 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #60925: <==negation-removal== 79732 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #68581: <==negation-removal== 70681 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #72891: <==negation-removal== 25735 (pos)
                    (not (Pd_not_checked_p6))

                    ; #74630: <==uncertain_firing== 79732 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #76846: <==negation-removal== 53590 (pos)
                    (not (not_checked_p6))

                    ; #84547: <==negation-removal== 92703 (pos)
                    (not (Bd_not_checked_p6))

                    ; #87991: <==uncertain_firing== 45600 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #20293: <==commonly_known== 30307 (pos)
                    (Bd_checked_p7)

                    ; #26806: <==commonly_known== 30307 (pos)
                    (Ba_checked_p7)

                    ; #30307: origin
                    (checked_p7)

                    ; #33236: <==commonly_known== 35267 (neg)
                    (Pd_checked_p7)

                    ; #33926: <==closure== 84627 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #44059: <==commonly_known== 30307 (pos)
                    (Bb_checked_p7)

                    ; #44250: <==commonly_known== 30307 (pos)
                    (Bc_checked_p7)

                    ; #49447: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #67361: <==commonly_known== 35267 (neg)
                    (Pc_checked_p7)

                    ; #82585: <==commonly_known== 35267 (neg)
                    (Pa_checked_p7)

                    ; #84627: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #92118: <==commonly_known== 35267 (neg)
                    (Pb_checked_p7)

                    ; #94132: <==closure== 49447 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #17480: <==negation-removal== 67361 (pos)
                    (not (Bc_not_checked_p7))

                    ; #26773: <==negation-removal== 49447 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #27835: <==uncertain_firing== 49447 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #33435: <==uncertain_firing== 84627 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #33983: <==negation-removal== 84627 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #34734: <==uncertain_firing== 94132 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #35267: <==negation-removal== 30307 (pos)
                    (not (not_checked_p7))

                    ; #35958: <==negation-removal== 20293 (pos)
                    (not (Pd_not_checked_p7))

                    ; #36022: <==negation-removal== 44250 (pos)
                    (not (Pc_not_checked_p7))

                    ; #40271: <==negation-removal== 33926 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #43184: <==negation-removal== 94132 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #46507: <==uncertain_firing== 33926 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #54505: <==negation-removal== 33236 (pos)
                    (not (Bd_not_checked_p7))

                    ; #77976: <==negation-removal== 82585 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79301: <==negation-removal== 44059 (pos)
                    (not (Pb_not_checked_p7))

                    ; #82007: <==negation-removal== 26806 (pos)
                    (not (Pa_not_checked_p7))

                    ; #94764: <==negation-removal== 92118 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10554: <==closure== 18574 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #10619: <==closure== 60983 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #18574: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #20191: <==commonly_known== 66552 (pos)
                    (Ba_checked_p8)

                    ; #22899: <==commonly_known== 66552 (pos)
                    (Bd_checked_p8)

                    ; #26767: <==commonly_known== 89426 (neg)
                    (Pd_checked_p8)

                    ; #28588: <==commonly_known== 66552 (pos)
                    (Bc_checked_p8)

                    ; #47528: <==commonly_known== 66552 (pos)
                    (Bb_checked_p8)

                    ; #60983: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #63244: <==commonly_known== 89426 (neg)
                    (Pc_checked_p8)

                    ; #66552: origin
                    (checked_p8)

                    ; #79384: <==commonly_known== 89426 (neg)
                    (Pa_checked_p8)

                    ; #85614: <==commonly_known== 89426 (neg)
                    (Pb_checked_p8)

                    ; #10745: <==negation-removal== 22899 (pos)
                    (not (Pd_not_checked_p8))

                    ; #12459: <==uncertain_firing== 60983 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #15486: <==negation-removal== 60983 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #20321: <==negation-removal== 79384 (pos)
                    (not (Ba_not_checked_p8))

                    ; #33241: <==negation-removal== 20191 (pos)
                    (not (Pa_not_checked_p8))

                    ; #34890: <==uncertain_firing== 10554 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #39265: <==negation-removal== 85614 (pos)
                    (not (Bb_not_checked_p8))

                    ; #44353: <==negation-removal== 10619 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #44761: <==negation-removal== 18574 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #47720: <==negation-removal== 47528 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53344: <==negation-removal== 63244 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55196: <==uncertain_firing== 18574 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #63250: <==negation-removal== 26767 (pos)
                    (not (Bd_not_checked_p8))

                    ; #67520: <==uncertain_firing== 10619 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #73154: <==negation-removal== 10554 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #84005: <==negation-removal== 28588 (pos)
                    (not (Pc_not_checked_p8))

                    ; #89426: <==negation-removal== 66552 (pos)
                    (not (not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #32427: <==commonly_known== 34398 (pos)
                    (Ba_checked_p9)

                    ; #34398: origin
                    (checked_p9)

                    ; #37892: <==commonly_known== 91597 (neg)
                    (Pd_checked_p9)

                    ; #45734: <==commonly_known== 91597 (neg)
                    (Pa_checked_p9)

                    ; #49664: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #50742: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #58095: <==closure== 50742 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #60010: <==closure== 49664 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #61815: <==commonly_known== 34398 (pos)
                    (Bb_checked_p9)

                    ; #73036: <==commonly_known== 91597 (neg)
                    (Pc_checked_p9)

                    ; #77037: <==commonly_known== 91597 (neg)
                    (Pb_checked_p9)

                    ; #81824: <==commonly_known== 34398 (pos)
                    (Bc_checked_p9)

                    ; #92029: <==commonly_known== 34398 (pos)
                    (Bd_checked_p9)

                    ; #19247: <==negation-removal== 92029 (pos)
                    (not (Pd_not_checked_p9))

                    ; #25563: <==negation-removal== 50742 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #39551: <==negation-removal== 32427 (pos)
                    (not (Pa_not_checked_p9))

                    ; #43090: <==uncertain_firing== 60010 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #52109: <==negation-removal== 45734 (pos)
                    (not (Ba_not_checked_p9))

                    ; #58676: <==uncertain_firing== 49664 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #64122: <==uncertain_firing== 58095 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #70599: <==negation-removal== 73036 (pos)
                    (not (Bc_not_checked_p9))

                    ; #70665: <==negation-removal== 77037 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73830: <==negation-removal== 49664 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #75232: <==negation-removal== 81824 (pos)
                    (not (Pc_not_checked_p9))

                    ; #79144: <==negation-removal== 37892 (pos)
                    (not (Bd_not_checked_p9))

                    ; #80612: <==negation-removal== 60010 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #84560: <==negation-removal== 61815 (pos)
                    (not (Pb_not_checked_p9))

                    ; #88776: <==uncertain_firing== 50742 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #91597: <==negation-removal== 34398 (pos)
                    (not (not_checked_p9))

                    ; #93001: <==negation-removal== 58095 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10945: origin
                    (checked_p1)

                    ; #18921: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #22455: <==commonly_known== 47517 (neg)
                    (Pc_checked_p1)

                    ; #26275: <==commonly_known== 10945 (pos)
                    (Bb_checked_p1)

                    ; #44571: <==commonly_known== 47517 (neg)
                    (Pa_checked_p1)

                    ; #44657: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #50503: <==commonly_known== 47517 (neg)
                    (Pb_checked_p1)

                    ; #59053: <==closure== 44657 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #59751: <==closure== 18921 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #70085: <==commonly_known== 10945 (pos)
                    (Bd_checked_p1)

                    ; #74021: <==commonly_known== 10945 (pos)
                    (Bc_checked_p1)

                    ; #78825: <==commonly_known== 10945 (pos)
                    (Ba_checked_p1)

                    ; #88554: <==commonly_known== 47517 (neg)
                    (Pd_checked_p1)

                    ; #19672: <==negation-removal== 88554 (pos)
                    (not (Bd_not_checked_p1))

                    ; #36846: <==negation-removal== 44571 (pos)
                    (not (Ba_not_checked_p1))

                    ; #42900: <==negation-removal== 78825 (pos)
                    (not (Pa_not_checked_p1))

                    ; #46387: <==negation-removal== 50503 (pos)
                    (not (Bb_not_checked_p1))

                    ; #46539: <==uncertain_firing== 44657 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #47517: <==negation-removal== 10945 (pos)
                    (not (not_checked_p1))

                    ; #59482: <==negation-removal== 18921 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #60684: <==uncertain_firing== 59053 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #60991: <==uncertain_firing== 18921 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #62235: <==negation-removal== 26275 (pos)
                    (not (Pb_not_checked_p1))

                    ; #70597: <==negation-removal== 44657 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #72091: <==negation-removal== 70085 (pos)
                    (not (Pd_not_checked_p1))

                    ; #80123: <==negation-removal== 74021 (pos)
                    (not (Pc_not_checked_p1))

                    ; #81350: <==uncertain_firing== 59751 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #82539: <==negation-removal== 59053 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #92074: <==negation-removal== 59751 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #92210: <==negation-removal== 22455 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #25552: <==closure== 84831 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #30478: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #34171: <==commonly_known== 70247 (pos)
                    (Ba_checked_p2)

                    ; #43109: <==commonly_known== 70247 (pos)
                    (Bb_checked_p2)

                    ; #49871: <==closure== 30478 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #53320: <==commonly_known== 35659 (neg)
                    (Pd_checked_p2)

                    ; #55236: <==commonly_known== 35659 (neg)
                    (Pb_checked_p2)

                    ; #55429: <==commonly_known== 70247 (pos)
                    (Bd_checked_p2)

                    ; #56235: <==commonly_known== 35659 (neg)
                    (Pa_checked_p2)

                    ; #61603: <==commonly_known== 35659 (neg)
                    (Pc_checked_p2)

                    ; #70247: origin
                    (checked_p2)

                    ; #84831: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #91953: <==commonly_known== 70247 (pos)
                    (Bc_checked_p2)

                    ; #21157: <==negation-removal== 49871 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #23396: <==negation-removal== 84831 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #32693: <==uncertain_firing== 25552 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #33841: <==negation-removal== 25552 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #35187: <==negation-removal== 91953 (pos)
                    (not (Pc_not_checked_p2))

                    ; #35659: <==negation-removal== 70247 (pos)
                    (not (not_checked_p2))

                    ; #39698: <==negation-removal== 30478 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #41472: <==negation-removal== 53320 (pos)
                    (not (Bd_not_checked_p2))

                    ; #48321: <==negation-removal== 56235 (pos)
                    (not (Ba_not_checked_p2))

                    ; #58204: <==negation-removal== 55429 (pos)
                    (not (Pd_not_checked_p2))

                    ; #58551: <==negation-removal== 34171 (pos)
                    (not (Pa_not_checked_p2))

                    ; #63470: <==negation-removal== 61603 (pos)
                    (not (Bc_not_checked_p2))

                    ; #69055: <==negation-removal== 55236 (pos)
                    (not (Bb_not_checked_p2))

                    ; #71348: <==uncertain_firing== 49871 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #76816: <==negation-removal== 43109 (pos)
                    (not (Pb_not_checked_p2))

                    ; #78626: <==uncertain_firing== 30478 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #86041: <==uncertain_firing== 84831 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13609: <==commonly_known== 48446 (neg)
                    (Pc_checked_p3)

                    ; #13707: <==closure== 80385 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #14072: <==commonly_known== 60529 (pos)
                    (Ba_checked_p3)

                    ; #25275: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #34823: <==commonly_known== 60529 (pos)
                    (Bb_checked_p3)

                    ; #37870: <==commonly_known== 48446 (neg)
                    (Pd_checked_p3)

                    ; #39428: <==commonly_known== 48446 (neg)
                    (Pa_checked_p3)

                    ; #51788: <==commonly_known== 48446 (neg)
                    (Pb_checked_p3)

                    ; #55455: <==commonly_known== 60529 (pos)
                    (Bc_checked_p3)

                    ; #58458: <==commonly_known== 60529 (pos)
                    (Bd_checked_p3)

                    ; #60529: origin
                    (checked_p3)

                    ; #77037: <==closure== 25275 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #80385: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #11005: <==negation-removal== 77037 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #15062: <==negation-removal== 55455 (pos)
                    (not (Pc_not_checked_p3))

                    ; #17802: <==negation-removal== 51788 (pos)
                    (not (Bb_not_checked_p3))

                    ; #19649: <==negation-removal== 37870 (pos)
                    (not (Bd_not_checked_p3))

                    ; #27870: <==uncertain_firing== 77037 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #31998: <==uncertain_firing== 25275 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #34426: <==negation-removal== 13609 (pos)
                    (not (Bc_not_checked_p3))

                    ; #35329: <==negation-removal== 25275 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #36254: <==negation-removal== 14072 (pos)
                    (not (Pa_not_checked_p3))

                    ; #36905: <==negation-removal== 80385 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #38166: <==negation-removal== 13707 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #44475: <==negation-removal== 39428 (pos)
                    (not (Ba_not_checked_p3))

                    ; #48446: <==negation-removal== 60529 (pos)
                    (not (not_checked_p3))

                    ; #52956: <==uncertain_firing== 80385 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #66112: <==negation-removal== 58458 (pos)
                    (not (Pd_not_checked_p3))

                    ; #69130: <==uncertain_firing== 13707 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #86685: <==negation-removal== 34823 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11480: <==closure== 69869 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #22332: <==commonly_known== 40612 (neg)
                    (Pc_checked_p4)

                    ; #23751: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #31320: <==commonly_known== 80921 (pos)
                    (Bd_checked_p4)

                    ; #45113: <==commonly_known== 40612 (neg)
                    (Pa_checked_p4)

                    ; #45752: <==commonly_known== 80921 (pos)
                    (Bb_checked_p4)

                    ; #45898: <==commonly_known== 40612 (neg)
                    (Pb_checked_p4)

                    ; #46394: <==commonly_known== 80921 (pos)
                    (Ba_checked_p4)

                    ; #50263: <==closure== 23751 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #61860: <==commonly_known== 40612 (neg)
                    (Pd_checked_p4)

                    ; #64591: <==commonly_known== 80921 (pos)
                    (Bc_checked_p4)

                    ; #69869: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #80921: origin
                    (checked_p4)

                    ; #14698: <==negation-removal== 31320 (pos)
                    (not (Pd_not_checked_p4))

                    ; #17634: <==negation-removal== 46394 (pos)
                    (not (Pa_not_checked_p4))

                    ; #19293: <==negation-removal== 11480 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #29993: <==negation-removal== 45898 (pos)
                    (not (Bb_not_checked_p4))

                    ; #40612: <==negation-removal== 80921 (pos)
                    (not (not_checked_p4))

                    ; #45491: <==negation-removal== 45752 (pos)
                    (not (Pb_not_checked_p4))

                    ; #48969: <==negation-removal== 23751 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #51687: <==negation-removal== 45113 (pos)
                    (not (Ba_not_checked_p4))

                    ; #52070: <==uncertain_firing== 11480 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #56187: <==negation-removal== 61860 (pos)
                    (not (Bd_not_checked_p4))

                    ; #60341: <==negation-removal== 64591 (pos)
                    (not (Pc_not_checked_p4))

                    ; #62122: <==negation-removal== 50263 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #64113: <==uncertain_firing== 50263 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #65540: <==uncertain_firing== 23751 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #73181: <==uncertain_firing== 69869 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #73765: <==negation-removal== 22332 (pos)
                    (not (Bc_not_checked_p4))

                    ; #90476: <==negation-removal== 69869 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #25390: <==commonly_known== 91111 (neg)
                    (Pd_checked_p5)

                    ; #32282: <==commonly_known== 91111 (neg)
                    (Pb_checked_p5)

                    ; #35616: <==closure== 49774 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #39131: <==commonly_known== 91111 (neg)
                    (Pa_checked_p5)

                    ; #49774: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #60034: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #63366: <==commonly_known== 66108 (pos)
                    (Bb_checked_p5)

                    ; #66108: origin
                    (checked_p5)

                    ; #69450: <==commonly_known== 66108 (pos)
                    (Bd_checked_p5)

                    ; #79821: <==commonly_known== 66108 (pos)
                    (Ba_checked_p5)

                    ; #83787: <==commonly_known== 91111 (neg)
                    (Pc_checked_p5)

                    ; #90309: <==commonly_known== 66108 (pos)
                    (Bc_checked_p5)

                    ; #90381: <==closure== 60034 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #15108: <==negation-removal== 35616 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #15580: <==uncertain_firing== 60034 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #16734: <==negation-removal== 60034 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #18716: <==negation-removal== 90309 (pos)
                    (not (Pc_not_checked_p5))

                    ; #23758: <==negation-removal== 90381 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #31629: <==negation-removal== 63366 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34875: <==negation-removal== 25390 (pos)
                    (not (Bd_not_checked_p5))

                    ; #41074: <==negation-removal== 32282 (pos)
                    (not (Bb_not_checked_p5))

                    ; #44240: <==negation-removal== 79821 (pos)
                    (not (Pa_not_checked_p5))

                    ; #45274: <==negation-removal== 69450 (pos)
                    (not (Pd_not_checked_p5))

                    ; #46716: <==uncertain_firing== 35616 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #48074: <==negation-removal== 83787 (pos)
                    (not (Bc_not_checked_p5))

                    ; #48449: <==uncertain_firing== 49774 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #52761: <==uncertain_firing== 90381 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #69854: <==negation-removal== 39131 (pos)
                    (not (Ba_not_checked_p5))

                    ; #91111: <==negation-removal== 66108 (pos)
                    (not (not_checked_p5))

                    ; #91718: <==negation-removal== 49774 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #18720: <==commonly_known== 53590 (pos)
                    (Ba_checked_p6)

                    ; #21884: <==commonly_known== 76846 (neg)
                    (Pb_checked_p6)

                    ; #25735: <==commonly_known== 53590 (pos)
                    (Bd_checked_p6)

                    ; #26360: <==closure== 65386 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #43806: <==commonly_known== 76846 (neg)
                    (Pc_checked_p6)

                    ; #49806: <==commonly_known== 53590 (pos)
                    (Bb_checked_p6)

                    ; #50514: <==closure== 69300 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #53590: origin
                    (checked_p6)

                    ; #55754: <==commonly_known== 53590 (pos)
                    (Bc_checked_p6)

                    ; #65386: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #69300: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #84704: <==commonly_known== 76846 (neg)
                    (Pa_checked_p6)

                    ; #92703: <==commonly_known== 76846 (neg)
                    (Pd_checked_p6)

                    ; #13302: <==negation-removal== 84704 (pos)
                    (not (Ba_not_checked_p6))

                    ; #24414: <==negation-removal== 43806 (pos)
                    (not (Bc_not_checked_p6))

                    ; #28029: <==negation-removal== 50514 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #29701: <==negation-removal== 49806 (pos)
                    (not (Pb_not_checked_p6))

                    ; #29978: <==negation-removal== 21884 (pos)
                    (not (Bb_not_checked_p6))

                    ; #32875: <==negation-removal== 55754 (pos)
                    (not (Pc_not_checked_p6))

                    ; #39502: <==negation-removal== 18720 (pos)
                    (not (Pa_not_checked_p6))

                    ; #60996: <==uncertain_firing== 26360 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #61815: <==uncertain_firing== 50514 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #66798: <==negation-removal== 26360 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #72891: <==negation-removal== 25735 (pos)
                    (not (Pd_not_checked_p6))

                    ; #76846: <==negation-removal== 53590 (pos)
                    (not (not_checked_p6))

                    ; #84458: <==negation-removal== 65386 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #84547: <==negation-removal== 92703 (pos)
                    (not (Bd_not_checked_p6))

                    ; #87539: <==uncertain_firing== 65386 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #88551: <==negation-removal== 69300 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #92080: <==uncertain_firing== 69300 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #20293: <==commonly_known== 30307 (pos)
                    (Bd_checked_p7)

                    ; #26806: <==commonly_known== 30307 (pos)
                    (Ba_checked_p7)

                    ; #30307: origin
                    (checked_p7)

                    ; #33236: <==commonly_known== 35267 (neg)
                    (Pd_checked_p7)

                    ; #44059: <==commonly_known== 30307 (pos)
                    (Bb_checked_p7)

                    ; #44250: <==commonly_known== 30307 (pos)
                    (Bc_checked_p7)

                    ; #65011: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #67361: <==commonly_known== 35267 (neg)
                    (Pc_checked_p7)

                    ; #73748: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #82092: <==closure== 65011 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #82585: <==commonly_known== 35267 (neg)
                    (Pa_checked_p7)

                    ; #90977: <==closure== 73748 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #92118: <==commonly_known== 35267 (neg)
                    (Pb_checked_p7)

                    ; #17480: <==negation-removal== 67361 (pos)
                    (not (Bc_not_checked_p7))

                    ; #17524: <==negation-removal== 90977 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #23716: <==negation-removal== 82092 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #35267: <==negation-removal== 30307 (pos)
                    (not (not_checked_p7))

                    ; #35958: <==negation-removal== 20293 (pos)
                    (not (Pd_not_checked_p7))

                    ; #36022: <==negation-removal== 44250 (pos)
                    (not (Pc_not_checked_p7))

                    ; #39584: <==uncertain_firing== 65011 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #45663: <==uncertain_firing== 90977 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #54505: <==negation-removal== 33236 (pos)
                    (not (Bd_not_checked_p7))

                    ; #69628: <==uncertain_firing== 73748 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #77976: <==negation-removal== 82585 (pos)
                    (not (Ba_not_checked_p7))

                    ; #78948: <==negation-removal== 73748 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #79301: <==negation-removal== 44059 (pos)
                    (not (Pb_not_checked_p7))

                    ; #82007: <==negation-removal== 26806 (pos)
                    (not (Pa_not_checked_p7))

                    ; #83043: <==uncertain_firing== 82092 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #94764: <==negation-removal== 92118 (pos)
                    (not (Bb_not_checked_p7))

                    ; #98655: <==negation-removal== 65011 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17838: <==closure== 45731 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #20191: <==commonly_known== 66552 (pos)
                    (Ba_checked_p8)

                    ; #21374: <==closure== 41408 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #22899: <==commonly_known== 66552 (pos)
                    (Bd_checked_p8)

                    ; #26767: <==commonly_known== 89426 (neg)
                    (Pd_checked_p8)

                    ; #28588: <==commonly_known== 66552 (pos)
                    (Bc_checked_p8)

                    ; #41408: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #45731: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #47528: <==commonly_known== 66552 (pos)
                    (Bb_checked_p8)

                    ; #63244: <==commonly_known== 89426 (neg)
                    (Pc_checked_p8)

                    ; #66552: origin
                    (checked_p8)

                    ; #79384: <==commonly_known== 89426 (neg)
                    (Pa_checked_p8)

                    ; #85614: <==commonly_known== 89426 (neg)
                    (Pb_checked_p8)

                    ; #10745: <==negation-removal== 22899 (pos)
                    (not (Pd_not_checked_p8))

                    ; #16150: <==uncertain_firing== 21374 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #20321: <==negation-removal== 79384 (pos)
                    (not (Ba_not_checked_p8))

                    ; #22902: <==negation-removal== 17838 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #26946: <==uncertain_firing== 41408 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #32734: <==uncertain_firing== 17838 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #33241: <==negation-removal== 20191 (pos)
                    (not (Pa_not_checked_p8))

                    ; #36793: <==uncertain_firing== 45731 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #39265: <==negation-removal== 85614 (pos)
                    (not (Bb_not_checked_p8))

                    ; #45485: <==negation-removal== 21374 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #47720: <==negation-removal== 47528 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53344: <==negation-removal== 63244 (pos)
                    (not (Bc_not_checked_p8))

                    ; #63250: <==negation-removal== 26767 (pos)
                    (not (Bd_not_checked_p8))

                    ; #65044: <==negation-removal== 41408 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #84005: <==negation-removal== 28588 (pos)
                    (not (Pc_not_checked_p8))

                    ; #85927: <==negation-removal== 45731 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #89426: <==negation-removal== 66552 (pos)
                    (not (not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10354: <==closure== 61949 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #32427: <==commonly_known== 34398 (pos)
                    (Ba_checked_p9)

                    ; #34398: origin
                    (checked_p9)

                    ; #37892: <==commonly_known== 91597 (neg)
                    (Pd_checked_p9)

                    ; #45734: <==commonly_known== 91597 (neg)
                    (Pa_checked_p9)

                    ; #58876: <==closure== 91681 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #61815: <==commonly_known== 34398 (pos)
                    (Bb_checked_p9)

                    ; #61949: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #73036: <==commonly_known== 91597 (neg)
                    (Pc_checked_p9)

                    ; #77037: <==commonly_known== 91597 (neg)
                    (Pb_checked_p9)

                    ; #81824: <==commonly_known== 34398 (pos)
                    (Bc_checked_p9)

                    ; #91681: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #92029: <==commonly_known== 34398 (pos)
                    (Bd_checked_p9)

                    ; #11730: <==uncertain_firing== 91681 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #18081: <==negation-removal== 61949 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #19247: <==negation-removal== 92029 (pos)
                    (not (Pd_not_checked_p9))

                    ; #29587: <==negation-removal== 58876 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #39438: <==negation-removal== 91681 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #39551: <==negation-removal== 32427 (pos)
                    (not (Pa_not_checked_p9))

                    ; #44552: <==uncertain_firing== 10354 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #52109: <==negation-removal== 45734 (pos)
                    (not (Ba_not_checked_p9))

                    ; #53558: <==uncertain_firing== 61949 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #70599: <==negation-removal== 73036 (pos)
                    (not (Bc_not_checked_p9))

                    ; #70665: <==negation-removal== 77037 (pos)
                    (not (Bb_not_checked_p9))

                    ; #75232: <==negation-removal== 81824 (pos)
                    (not (Pc_not_checked_p9))

                    ; #79144: <==negation-removal== 37892 (pos)
                    (not (Bd_not_checked_p9))

                    ; #84560: <==negation-removal== 61815 (pos)
                    (not (Pb_not_checked_p9))

                    ; #84879: <==uncertain_firing== 58876 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #90554: <==negation-removal== 10354 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #91597: <==negation-removal== 34398 (pos)
                    (not (not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10945: origin
                    (checked_p1)

                    ; #17118: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #22455: <==commonly_known== 47517 (neg)
                    (Pc_checked_p1)

                    ; #26275: <==commonly_known== 10945 (pos)
                    (Bb_checked_p1)

                    ; #39451: <==closure== 49071 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #44571: <==commonly_known== 47517 (neg)
                    (Pa_checked_p1)

                    ; #49071: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #50503: <==commonly_known== 47517 (neg)
                    (Pb_checked_p1)

                    ; #70085: <==commonly_known== 10945 (pos)
                    (Bd_checked_p1)

                    ; #74021: <==commonly_known== 10945 (pos)
                    (Bc_checked_p1)

                    ; #78825: <==commonly_known== 10945 (pos)
                    (Ba_checked_p1)

                    ; #82353: <==closure== 17118 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #88554: <==commonly_known== 47517 (neg)
                    (Pd_checked_p1)

                    ; #19672: <==negation-removal== 88554 (pos)
                    (not (Bd_not_checked_p1))

                    ; #20786: <==negation-removal== 39451 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #25965: <==uncertain_firing== 82353 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #27084: <==uncertain_firing== 17118 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #30704: <==uncertain_firing== 39451 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #36846: <==negation-removal== 44571 (pos)
                    (not (Ba_not_checked_p1))

                    ; #42864: <==negation-removal== 82353 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #42900: <==negation-removal== 78825 (pos)
                    (not (Pa_not_checked_p1))

                    ; #46387: <==negation-removal== 50503 (pos)
                    (not (Bb_not_checked_p1))

                    ; #47517: <==negation-removal== 10945 (pos)
                    (not (not_checked_p1))

                    ; #50265: <==negation-removal== 17118 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #57540: <==negation-removal== 49071 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #59628: <==uncertain_firing== 49071 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #62235: <==negation-removal== 26275 (pos)
                    (not (Pb_not_checked_p1))

                    ; #72091: <==negation-removal== 70085 (pos)
                    (not (Pd_not_checked_p1))

                    ; #80123: <==negation-removal== 74021 (pos)
                    (not (Pc_not_checked_p1))

                    ; #92210: <==negation-removal== 22455 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #13008: <==closure== 19471 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #19471: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #34171: <==commonly_known== 70247 (pos)
                    (Ba_checked_p2)

                    ; #43109: <==commonly_known== 70247 (pos)
                    (Bb_checked_p2)

                    ; #53320: <==commonly_known== 35659 (neg)
                    (Pd_checked_p2)

                    ; #55236: <==commonly_known== 35659 (neg)
                    (Pb_checked_p2)

                    ; #55429: <==commonly_known== 70247 (pos)
                    (Bd_checked_p2)

                    ; #56235: <==commonly_known== 35659 (neg)
                    (Pa_checked_p2)

                    ; #61603: <==commonly_known== 35659 (neg)
                    (Pc_checked_p2)

                    ; #67952: <==closure== 78553 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #70247: origin
                    (checked_p2)

                    ; #78553: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #91953: <==commonly_known== 70247 (pos)
                    (Bc_checked_p2)

                    ; #18754: <==negation-removal== 19471 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #18859: <==uncertain_firing== 19471 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #27403: <==uncertain_firing== 13008 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #33495: <==negation-removal== 78553 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #35187: <==negation-removal== 91953 (pos)
                    (not (Pc_not_checked_p2))

                    ; #35659: <==negation-removal== 70247 (pos)
                    (not (not_checked_p2))

                    ; #41472: <==negation-removal== 53320 (pos)
                    (not (Bd_not_checked_p2))

                    ; #41928: <==negation-removal== 67952 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43954: <==uncertain_firing== 78553 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #48321: <==negation-removal== 56235 (pos)
                    (not (Ba_not_checked_p2))

                    ; #58204: <==negation-removal== 55429 (pos)
                    (not (Pd_not_checked_p2))

                    ; #58551: <==negation-removal== 34171 (pos)
                    (not (Pa_not_checked_p2))

                    ; #63470: <==negation-removal== 61603 (pos)
                    (not (Bc_not_checked_p2))

                    ; #63845: <==uncertain_firing== 67952 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #69055: <==negation-removal== 55236 (pos)
                    (not (Bb_not_checked_p2))

                    ; #76816: <==negation-removal== 43109 (pos)
                    (not (Pb_not_checked_p2))

                    ; #78198: <==negation-removal== 13008 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #10083: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #13609: <==commonly_known== 48446 (neg)
                    (Pc_checked_p3)

                    ; #14072: <==commonly_known== 60529 (pos)
                    (Ba_checked_p3)

                    ; #34823: <==commonly_known== 60529 (pos)
                    (Bb_checked_p3)

                    ; #37870: <==commonly_known== 48446 (neg)
                    (Pd_checked_p3)

                    ; #39428: <==commonly_known== 48446 (neg)
                    (Pa_checked_p3)

                    ; #51788: <==commonly_known== 48446 (neg)
                    (Pb_checked_p3)

                    ; #55455: <==commonly_known== 60529 (pos)
                    (Bc_checked_p3)

                    ; #56300: <==closure== 58094 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #58094: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #58458: <==commonly_known== 60529 (pos)
                    (Bd_checked_p3)

                    ; #60529: origin
                    (checked_p3)

                    ; #73034: <==closure== 10083 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #14910: <==negation-removal== 10083 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #15062: <==negation-removal== 55455 (pos)
                    (not (Pc_not_checked_p3))

                    ; #15633: <==uncertain_firing== 56300 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #17802: <==negation-removal== 51788 (pos)
                    (not (Bb_not_checked_p3))

                    ; #18318: <==negation-removal== 58094 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #19649: <==negation-removal== 37870 (pos)
                    (not (Bd_not_checked_p3))

                    ; #25329: <==negation-removal== 73034 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #34426: <==negation-removal== 13609 (pos)
                    (not (Bc_not_checked_p3))

                    ; #36254: <==negation-removal== 14072 (pos)
                    (not (Pa_not_checked_p3))

                    ; #43661: <==uncertain_firing== 10083 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #44475: <==negation-removal== 39428 (pos)
                    (not (Ba_not_checked_p3))

                    ; #48446: <==negation-removal== 60529 (pos)
                    (not (not_checked_p3))

                    ; #49625: <==uncertain_firing== 58094 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #53588: <==uncertain_firing== 73034 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #66112: <==negation-removal== 58458 (pos)
                    (not (Pd_not_checked_p3))

                    ; #81857: <==negation-removal== 56300 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #86685: <==negation-removal== 34823 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #22332: <==commonly_known== 40612 (neg)
                    (Pc_checked_p4)

                    ; #31320: <==commonly_known== 80921 (pos)
                    (Bd_checked_p4)

                    ; #38522: <==closure== 52396 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #45113: <==commonly_known== 40612 (neg)
                    (Pa_checked_p4)

                    ; #45752: <==commonly_known== 80921 (pos)
                    (Bb_checked_p4)

                    ; #45898: <==commonly_known== 40612 (neg)
                    (Pb_checked_p4)

                    ; #46394: <==commonly_known== 80921 (pos)
                    (Ba_checked_p4)

                    ; #52396: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #59438: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #61860: <==commonly_known== 40612 (neg)
                    (Pd_checked_p4)

                    ; #64591: <==commonly_known== 80921 (pos)
                    (Bc_checked_p4)

                    ; #80921: origin
                    (checked_p4)

                    ; #86053: <==closure== 59438 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #14698: <==negation-removal== 31320 (pos)
                    (not (Pd_not_checked_p4))

                    ; #14993: <==uncertain_firing== 86053 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #17634: <==negation-removal== 46394 (pos)
                    (not (Pa_not_checked_p4))

                    ; #29993: <==negation-removal== 45898 (pos)
                    (not (Bb_not_checked_p4))

                    ; #38488: <==uncertain_firing== 59438 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #40612: <==negation-removal== 80921 (pos)
                    (not (not_checked_p4))

                    ; #41839: <==negation-removal== 52396 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #45491: <==negation-removal== 45752 (pos)
                    (not (Pb_not_checked_p4))

                    ; #51687: <==negation-removal== 45113 (pos)
                    (not (Ba_not_checked_p4))

                    ; #56187: <==negation-removal== 61860 (pos)
                    (not (Bd_not_checked_p4))

                    ; #60341: <==negation-removal== 64591 (pos)
                    (not (Pc_not_checked_p4))

                    ; #61561: <==uncertain_firing== 52396 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #73765: <==negation-removal== 22332 (pos)
                    (not (Bc_not_checked_p4))

                    ; #77959: <==negation-removal== 59438 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80387: <==negation-removal== 38522 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #82997: <==negation-removal== 86053 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #87996: <==uncertain_firing== 38522 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #25390: <==commonly_known== 91111 (neg)
                    (Pd_checked_p5)

                    ; #32282: <==commonly_known== 91111 (neg)
                    (Pb_checked_p5)

                    ; #35699: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #39131: <==commonly_known== 91111 (neg)
                    (Pa_checked_p5)

                    ; #55807: <==closure== 81271 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #63366: <==commonly_known== 66108 (pos)
                    (Bb_checked_p5)

                    ; #66108: origin
                    (checked_p5)

                    ; #69450: <==commonly_known== 66108 (pos)
                    (Bd_checked_p5)

                    ; #79614: <==closure== 35699 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #79821: <==commonly_known== 66108 (pos)
                    (Ba_checked_p5)

                    ; #81271: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #83787: <==commonly_known== 91111 (neg)
                    (Pc_checked_p5)

                    ; #90309: <==commonly_known== 66108 (pos)
                    (Bc_checked_p5)

                    ; #14007: <==negation-removal== 55807 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #15226: <==uncertain_firing== 81271 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #18716: <==negation-removal== 90309 (pos)
                    (not (Pc_not_checked_p5))

                    ; #30346: <==negation-removal== 79614 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #31629: <==negation-removal== 63366 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34875: <==negation-removal== 25390 (pos)
                    (not (Bd_not_checked_p5))

                    ; #41074: <==negation-removal== 32282 (pos)
                    (not (Bb_not_checked_p5))

                    ; #44240: <==negation-removal== 79821 (pos)
                    (not (Pa_not_checked_p5))

                    ; #45274: <==negation-removal== 69450 (pos)
                    (not (Pd_not_checked_p5))

                    ; #48074: <==negation-removal== 83787 (pos)
                    (not (Bc_not_checked_p5))

                    ; #49841: <==uncertain_firing== 55807 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #54648: <==uncertain_firing== 79614 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #66885: <==uncertain_firing== 35699 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #69854: <==negation-removal== 39131 (pos)
                    (not (Ba_not_checked_p5))

                    ; #75554: <==negation-removal== 35699 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #87856: <==negation-removal== 81271 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #91111: <==negation-removal== 66108 (pos)
                    (not (not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #18720: <==commonly_known== 53590 (pos)
                    (Ba_checked_p6)

                    ; #19658: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #21884: <==commonly_known== 76846 (neg)
                    (Pb_checked_p6)

                    ; #25735: <==commonly_known== 53590 (pos)
                    (Bd_checked_p6)

                    ; #26194: <==closure== 19658 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #38529: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #41334: <==closure== 38529 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #43806: <==commonly_known== 76846 (neg)
                    (Pc_checked_p6)

                    ; #49806: <==commonly_known== 53590 (pos)
                    (Bb_checked_p6)

                    ; #53590: origin
                    (checked_p6)

                    ; #55754: <==commonly_known== 53590 (pos)
                    (Bc_checked_p6)

                    ; #84704: <==commonly_known== 76846 (neg)
                    (Pa_checked_p6)

                    ; #92703: <==commonly_known== 76846 (neg)
                    (Pd_checked_p6)

                    ; #13302: <==negation-removal== 84704 (pos)
                    (not (Ba_not_checked_p6))

                    ; #14052: <==negation-removal== 26194 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #24414: <==negation-removal== 43806 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29701: <==negation-removal== 49806 (pos)
                    (not (Pb_not_checked_p6))

                    ; #29978: <==negation-removal== 21884 (pos)
                    (not (Bb_not_checked_p6))

                    ; #32875: <==negation-removal== 55754 (pos)
                    (not (Pc_not_checked_p6))

                    ; #36307: <==uncertain_firing== 19658 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #38314: <==uncertain_firing== 26194 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #39502: <==negation-removal== 18720 (pos)
                    (not (Pa_not_checked_p6))

                    ; #51029: <==negation-removal== 19658 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #67586: <==uncertain_firing== 41334 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #72891: <==negation-removal== 25735 (pos)
                    (not (Pd_not_checked_p6))

                    ; #76164: <==uncertain_firing== 38529 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #76846: <==negation-removal== 53590 (pos)
                    (not (not_checked_p6))

                    ; #78280: <==negation-removal== 41334 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #84547: <==negation-removal== 92703 (pos)
                    (not (Bd_not_checked_p6))

                    ; #91204: <==negation-removal== 38529 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #16475: <==closure== 64197 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #20293: <==commonly_known== 30307 (pos)
                    (Bd_checked_p7)

                    ; #26806: <==commonly_known== 30307 (pos)
                    (Ba_checked_p7)

                    ; #30307: origin
                    (checked_p7)

                    ; #33236: <==commonly_known== 35267 (neg)
                    (Pd_checked_p7)

                    ; #37684: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #44059: <==commonly_known== 30307 (pos)
                    (Bb_checked_p7)

                    ; #44250: <==commonly_known== 30307 (pos)
                    (Bc_checked_p7)

                    ; #64197: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #67361: <==commonly_known== 35267 (neg)
                    (Pc_checked_p7)

                    ; #78782: <==closure== 37684 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #82585: <==commonly_known== 35267 (neg)
                    (Pa_checked_p7)

                    ; #92118: <==commonly_known== 35267 (neg)
                    (Pb_checked_p7)

                    ; #17480: <==negation-removal== 67361 (pos)
                    (not (Bc_not_checked_p7))

                    ; #18715: <==negation-removal== 37684 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #20788: <==negation-removal== 64197 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #21908: <==uncertain_firing== 16475 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #23159: <==uncertain_firing== 64197 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #34247: <==uncertain_firing== 37684 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #35267: <==negation-removal== 30307 (pos)
                    (not (not_checked_p7))

                    ; #35958: <==negation-removal== 20293 (pos)
                    (not (Pd_not_checked_p7))

                    ; #36022: <==negation-removal== 44250 (pos)
                    (not (Pc_not_checked_p7))

                    ; #48225: <==negation-removal== 16475 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #53997: <==uncertain_firing== 78782 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #54505: <==negation-removal== 33236 (pos)
                    (not (Bd_not_checked_p7))

                    ; #55516: <==negation-removal== 78782 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #77976: <==negation-removal== 82585 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79301: <==negation-removal== 44059 (pos)
                    (not (Pb_not_checked_p7))

                    ; #82007: <==negation-removal== 26806 (pos)
                    (not (Pa_not_checked_p7))

                    ; #94764: <==negation-removal== 92118 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #20191: <==commonly_known== 66552 (pos)
                    (Ba_checked_p8)

                    ; #20225: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #22899: <==commonly_known== 66552 (pos)
                    (Bd_checked_p8)

                    ; #26767: <==commonly_known== 89426 (neg)
                    (Pd_checked_p8)

                    ; #28588: <==commonly_known== 66552 (pos)
                    (Bc_checked_p8)

                    ; #47528: <==commonly_known== 66552 (pos)
                    (Bb_checked_p8)

                    ; #49292: <==closure== 20225 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #63244: <==commonly_known== 89426 (neg)
                    (Pc_checked_p8)

                    ; #66552: origin
                    (checked_p8)

                    ; #76523: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #79384: <==commonly_known== 89426 (neg)
                    (Pa_checked_p8)

                    ; #80293: <==closure== 76523 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #85614: <==commonly_known== 89426 (neg)
                    (Pb_checked_p8)

                    ; #10745: <==negation-removal== 22899 (pos)
                    (not (Pd_not_checked_p8))

                    ; #14061: <==negation-removal== 76523 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #20321: <==negation-removal== 79384 (pos)
                    (not (Ba_not_checked_p8))

                    ; #24683: <==negation-removal== 49292 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #26383: <==negation-removal== 80293 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #33241: <==negation-removal== 20191 (pos)
                    (not (Pa_not_checked_p8))

                    ; #39265: <==negation-removal== 85614 (pos)
                    (not (Bb_not_checked_p8))

                    ; #40139: <==uncertain_firing== 20225 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #47720: <==negation-removal== 47528 (pos)
                    (not (Pb_not_checked_p8))

                    ; #49877: <==uncertain_firing== 80293 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #53344: <==negation-removal== 63244 (pos)
                    (not (Bc_not_checked_p8))

                    ; #63250: <==negation-removal== 26767 (pos)
                    (not (Bd_not_checked_p8))

                    ; #68724: <==negation-removal== 20225 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #76751: <==uncertain_firing== 76523 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #84005: <==negation-removal== 28588 (pos)
                    (not (Pc_not_checked_p8))

                    ; #89426: <==negation-removal== 66552 (pos)
                    (not (not_checked_p8))

                    ; #91661: <==uncertain_firing== 49292 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #32427: <==commonly_known== 34398 (pos)
                    (Ba_checked_p9)

                    ; #34398: origin
                    (checked_p9)

                    ; #37892: <==commonly_known== 91597 (neg)
                    (Pd_checked_p9)

                    ; #45694: <==closure== 70401 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #45734: <==commonly_known== 91597 (neg)
                    (Pa_checked_p9)

                    ; #61815: <==commonly_known== 34398 (pos)
                    (Bb_checked_p9)

                    ; #62279: <==closure== 63049 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #63049: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #70401: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #73036: <==commonly_known== 91597 (neg)
                    (Pc_checked_p9)

                    ; #77037: <==commonly_known== 91597 (neg)
                    (Pb_checked_p9)

                    ; #81824: <==commonly_known== 34398 (pos)
                    (Bc_checked_p9)

                    ; #92029: <==commonly_known== 34398 (pos)
                    (Bd_checked_p9)

                    ; #17938: <==negation-removal== 62279 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #19247: <==negation-removal== 92029 (pos)
                    (not (Pd_not_checked_p9))

                    ; #26021: <==negation-removal== 45694 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #39551: <==negation-removal== 32427 (pos)
                    (not (Pa_not_checked_p9))

                    ; #43250: <==uncertain_firing== 45694 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #52109: <==negation-removal== 45734 (pos)
                    (not (Ba_not_checked_p9))

                    ; #53070: <==negation-removal== 70401 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #60301: <==uncertain_firing== 62279 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #65530: <==negation-removal== 63049 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #70599: <==negation-removal== 73036 (pos)
                    (not (Bc_not_checked_p9))

                    ; #70665: <==negation-removal== 77037 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73740: <==uncertain_firing== 70401 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #75232: <==negation-removal== 81824 (pos)
                    (not (Pc_not_checked_p9))

                    ; #79144: <==negation-removal== 37892 (pos)
                    (not (Bd_not_checked_p9))

                    ; #83558: <==uncertain_firing== 63049 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #84560: <==negation-removal== 61815 (pos)
                    (not (Pb_not_checked_p9))

                    ; #91597: <==negation-removal== 34398 (pos)
                    (not (not_checked_p9))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10945: origin
                    (checked_p1)

                    ; #20975: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #22455: <==commonly_known== 47517 (neg)
                    (Pc_checked_p1)

                    ; #26275: <==commonly_known== 10945 (pos)
                    (Bb_checked_p1)

                    ; #44571: <==commonly_known== 47517 (neg)
                    (Pa_checked_p1)

                    ; #50503: <==commonly_known== 47517 (neg)
                    (Pb_checked_p1)

                    ; #55300: <==closure== 20975 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #60647: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #70085: <==commonly_known== 10945 (pos)
                    (Bd_checked_p1)

                    ; #74021: <==commonly_known== 10945 (pos)
                    (Bc_checked_p1)

                    ; #78825: <==commonly_known== 10945 (pos)
                    (Ba_checked_p1)

                    ; #86891: <==closure== 60647 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #88554: <==commonly_known== 47517 (neg)
                    (Pd_checked_p1)

                    ; #12446: <==uncertain_firing== 20975 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #18410: <==negation-removal== 60647 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #19672: <==negation-removal== 88554 (pos)
                    (not (Bd_not_checked_p1))

                    ; #36846: <==negation-removal== 44571 (pos)
                    (not (Ba_not_checked_p1))

                    ; #42900: <==negation-removal== 78825 (pos)
                    (not (Pa_not_checked_p1))

                    ; #46387: <==negation-removal== 50503 (pos)
                    (not (Bb_not_checked_p1))

                    ; #47517: <==negation-removal== 10945 (pos)
                    (not (not_checked_p1))

                    ; #51914: <==negation-removal== 55300 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #53840: <==uncertain_firing== 86891 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #54952: <==negation-removal== 20975 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #55984: <==negation-removal== 86891 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #62235: <==negation-removal== 26275 (pos)
                    (not (Pb_not_checked_p1))

                    ; #67860: <==uncertain_firing== 55300 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #72091: <==negation-removal== 70085 (pos)
                    (not (Pd_not_checked_p1))

                    ; #75281: <==uncertain_firing== 60647 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #80123: <==negation-removal== 74021 (pos)
                    (not (Pc_not_checked_p1))

                    ; #92210: <==negation-removal== 22455 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #26198: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #32175: <==closure== 26198 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #34171: <==commonly_known== 70247 (pos)
                    (Ba_checked_p2)

                    ; #43109: <==commonly_known== 70247 (pos)
                    (Bb_checked_p2)

                    ; #53320: <==commonly_known== 35659 (neg)
                    (Pd_checked_p2)

                    ; #55236: <==commonly_known== 35659 (neg)
                    (Pb_checked_p2)

                    ; #55429: <==commonly_known== 70247 (pos)
                    (Bd_checked_p2)

                    ; #56235: <==commonly_known== 35659 (neg)
                    (Pa_checked_p2)

                    ; #61603: <==commonly_known== 35659 (neg)
                    (Pc_checked_p2)

                    ; #70247: origin
                    (checked_p2)

                    ; #70355: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #88463: <==closure== 70355 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #91953: <==commonly_known== 70247 (pos)
                    (Bc_checked_p2)

                    ; #17859: <==negation-removal== 88463 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #19450: <==uncertain_firing== 26198 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #35187: <==negation-removal== 91953 (pos)
                    (not (Pc_not_checked_p2))

                    ; #35659: <==negation-removal== 70247 (pos)
                    (not (not_checked_p2))

                    ; #38269: <==uncertain_firing== 32175 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #41472: <==negation-removal== 53320 (pos)
                    (not (Bd_not_checked_p2))

                    ; #41951: <==uncertain_firing== 70355 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #48321: <==negation-removal== 56235 (pos)
                    (not (Ba_not_checked_p2))

                    ; #53419: <==negation-removal== 70355 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #56977: <==uncertain_firing== 88463 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #58204: <==negation-removal== 55429 (pos)
                    (not (Pd_not_checked_p2))

                    ; #58551: <==negation-removal== 34171 (pos)
                    (not (Pa_not_checked_p2))

                    ; #63470: <==negation-removal== 61603 (pos)
                    (not (Bc_not_checked_p2))

                    ; #69055: <==negation-removal== 55236 (pos)
                    (not (Bb_not_checked_p2))

                    ; #73232: <==negation-removal== 26198 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #76816: <==negation-removal== 43109 (pos)
                    (not (Pb_not_checked_p2))

                    ; #79092: <==negation-removal== 32175 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13609: <==commonly_known== 48446 (neg)
                    (Pc_checked_p3)

                    ; #14072: <==commonly_known== 60529 (pos)
                    (Ba_checked_p3)

                    ; #19344: <==closure== 57425 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #22819: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #34823: <==commonly_known== 60529 (pos)
                    (Bb_checked_p3)

                    ; #37870: <==commonly_known== 48446 (neg)
                    (Pd_checked_p3)

                    ; #39428: <==commonly_known== 48446 (neg)
                    (Pa_checked_p3)

                    ; #51788: <==commonly_known== 48446 (neg)
                    (Pb_checked_p3)

                    ; #55455: <==commonly_known== 60529 (pos)
                    (Bc_checked_p3)

                    ; #57425: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #58458: <==commonly_known== 60529 (pos)
                    (Bd_checked_p3)

                    ; #60529: origin
                    (checked_p3)

                    ; #92123: <==closure== 22819 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #15062: <==negation-removal== 55455 (pos)
                    (not (Pc_not_checked_p3))

                    ; #17802: <==negation-removal== 51788 (pos)
                    (not (Bb_not_checked_p3))

                    ; #18217: <==uncertain_firing== 22819 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #19649: <==negation-removal== 37870 (pos)
                    (not (Bd_not_checked_p3))

                    ; #25568: <==uncertain_firing== 57425 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #32290: <==negation-removal== 57425 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #34426: <==negation-removal== 13609 (pos)
                    (not (Bc_not_checked_p3))

                    ; #36254: <==negation-removal== 14072 (pos)
                    (not (Pa_not_checked_p3))

                    ; #39327: <==negation-removal== 19344 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #40793: <==uncertain_firing== 92123 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #44475: <==negation-removal== 39428 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45863: <==negation-removal== 92123 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #48446: <==negation-removal== 60529 (pos)
                    (not (not_checked_p3))

                    ; #66112: <==negation-removal== 58458 (pos)
                    (not (Pd_not_checked_p3))

                    ; #74870: <==uncertain_firing== 19344 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #86685: <==negation-removal== 34823 (pos)
                    (not (Pb_not_checked_p3))

                    ; #92071: <==negation-removal== 22819 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #22332: <==commonly_known== 40612 (neg)
                    (Pc_checked_p4)

                    ; #25425: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #31320: <==commonly_known== 80921 (pos)
                    (Bd_checked_p4)

                    ; #45113: <==commonly_known== 40612 (neg)
                    (Pa_checked_p4)

                    ; #45752: <==commonly_known== 80921 (pos)
                    (Bb_checked_p4)

                    ; #45898: <==commonly_known== 40612 (neg)
                    (Pb_checked_p4)

                    ; #46394: <==commonly_known== 80921 (pos)
                    (Ba_checked_p4)

                    ; #61860: <==commonly_known== 40612 (neg)
                    (Pd_checked_p4)

                    ; #63057: <==closure== 25425 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #64591: <==commonly_known== 80921 (pos)
                    (Bc_checked_p4)

                    ; #80921: origin
                    (checked_p4)

                    ; #82546: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #83420: <==closure== 82546 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #14698: <==negation-removal== 31320 (pos)
                    (not (Pd_not_checked_p4))

                    ; #17634: <==negation-removal== 46394 (pos)
                    (not (Pa_not_checked_p4))

                    ; #28906: <==negation-removal== 82546 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #29993: <==negation-removal== 45898 (pos)
                    (not (Bb_not_checked_p4))

                    ; #31385: <==negation-removal== 63057 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #33269: <==negation-removal== 83420 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #40612: <==negation-removal== 80921 (pos)
                    (not (not_checked_p4))

                    ; #41690: <==uncertain_firing== 82546 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #45491: <==negation-removal== 45752 (pos)
                    (not (Pb_not_checked_p4))

                    ; #51687: <==negation-removal== 45113 (pos)
                    (not (Ba_not_checked_p4))

                    ; #56187: <==negation-removal== 61860 (pos)
                    (not (Bd_not_checked_p4))

                    ; #60341: <==negation-removal== 64591 (pos)
                    (not (Pc_not_checked_p4))

                    ; #66102: <==negation-removal== 25425 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #72352: <==uncertain_firing== 25425 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #73765: <==negation-removal== 22332 (pos)
                    (not (Bc_not_checked_p4))

                    ; #77779: <==uncertain_firing== 83420 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #79045: <==uncertain_firing== 63057 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #25390: <==commonly_known== 91111 (neg)
                    (Pd_checked_p5)

                    ; #32282: <==commonly_known== 91111 (neg)
                    (Pb_checked_p5)

                    ; #39109: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #39131: <==commonly_known== 91111 (neg)
                    (Pa_checked_p5)

                    ; #52606: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #52828: <==closure== 39109 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #57249: <==closure== 52606 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #63366: <==commonly_known== 66108 (pos)
                    (Bb_checked_p5)

                    ; #66108: origin
                    (checked_p5)

                    ; #69450: <==commonly_known== 66108 (pos)
                    (Bd_checked_p5)

                    ; #79821: <==commonly_known== 66108 (pos)
                    (Ba_checked_p5)

                    ; #83787: <==commonly_known== 91111 (neg)
                    (Pc_checked_p5)

                    ; #90309: <==commonly_known== 66108 (pos)
                    (Bc_checked_p5)

                    ; #11073: <==negation-removal== 39109 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #11313: <==uncertain_firing== 52828 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #12160: <==uncertain_firing== 52606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #13310: <==uncertain_firing== 39109 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #18716: <==negation-removal== 90309 (pos)
                    (not (Pc_not_checked_p5))

                    ; #19622: <==negation-removal== 52828 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #31629: <==negation-removal== 63366 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34875: <==negation-removal== 25390 (pos)
                    (not (Bd_not_checked_p5))

                    ; #37495: <==negation-removal== 52606 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #41074: <==negation-removal== 32282 (pos)
                    (not (Bb_not_checked_p5))

                    ; #44240: <==negation-removal== 79821 (pos)
                    (not (Pa_not_checked_p5))

                    ; #45274: <==negation-removal== 69450 (pos)
                    (not (Pd_not_checked_p5))

                    ; #46127: <==negation-removal== 57249 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #48074: <==negation-removal== 83787 (pos)
                    (not (Bc_not_checked_p5))

                    ; #69854: <==negation-removal== 39131 (pos)
                    (not (Ba_not_checked_p5))

                    ; #82766: <==uncertain_firing== 57249 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #91111: <==negation-removal== 66108 (pos)
                    (not (not_checked_p5))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #18720: <==commonly_known== 53590 (pos)
                    (Ba_checked_p6)

                    ; #21884: <==commonly_known== 76846 (neg)
                    (Pb_checked_p6)

                    ; #25735: <==commonly_known== 53590 (pos)
                    (Bd_checked_p6)

                    ; #31848: <==closure== 91533 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #43806: <==commonly_known== 76846 (neg)
                    (Pc_checked_p6)

                    ; #49806: <==commonly_known== 53590 (pos)
                    (Bb_checked_p6)

                    ; #53590: origin
                    (checked_p6)

                    ; #55754: <==commonly_known== 53590 (pos)
                    (Bc_checked_p6)

                    ; #71505: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #78039: <==closure== 71505 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #84704: <==commonly_known== 76846 (neg)
                    (Pa_checked_p6)

                    ; #91533: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #92703: <==commonly_known== 76846 (neg)
                    (Pd_checked_p6)

                    ; #10621: <==uncertain_firing== 71505 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #13302: <==negation-removal== 84704 (pos)
                    (not (Ba_not_checked_p6))

                    ; #16880: <==negation-removal== 71505 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #24414: <==negation-removal== 43806 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29701: <==negation-removal== 49806 (pos)
                    (not (Pb_not_checked_p6))

                    ; #29978: <==negation-removal== 21884 (pos)
                    (not (Bb_not_checked_p6))

                    ; #32875: <==negation-removal== 55754 (pos)
                    (not (Pc_not_checked_p6))

                    ; #39502: <==negation-removal== 18720 (pos)
                    (not (Pa_not_checked_p6))

                    ; #49079: <==uncertain_firing== 31848 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #65186: <==negation-removal== 31848 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #68022: <==negation-removal== 78039 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #72891: <==negation-removal== 25735 (pos)
                    (not (Pd_not_checked_p6))

                    ; #76846: <==negation-removal== 53590 (pos)
                    (not (not_checked_p6))

                    ; #77472: <==uncertain_firing== 78039 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #77599: <==negation-removal== 91533 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #80240: <==uncertain_firing== 91533 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #84547: <==negation-removal== 92703 (pos)
                    (not (Bd_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #20293: <==commonly_known== 30307 (pos)
                    (Bd_checked_p7)

                    ; #26806: <==commonly_known== 30307 (pos)
                    (Ba_checked_p7)

                    ; #30307: origin
                    (checked_p7)

                    ; #30736: <==closure== 37617 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #33236: <==commonly_known== 35267 (neg)
                    (Pd_checked_p7)

                    ; #37617: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #44059: <==commonly_known== 30307 (pos)
                    (Bb_checked_p7)

                    ; #44250: <==commonly_known== 30307 (pos)
                    (Bc_checked_p7)

                    ; #64911: <==closure== 84508 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #67361: <==commonly_known== 35267 (neg)
                    (Pc_checked_p7)

                    ; #82585: <==commonly_known== 35267 (neg)
                    (Pa_checked_p7)

                    ; #84508: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #92118: <==commonly_known== 35267 (neg)
                    (Pb_checked_p7)

                    ; #17480: <==negation-removal== 67361 (pos)
                    (not (Bc_not_checked_p7))

                    ; #27103: <==negation-removal== 30736 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #35267: <==negation-removal== 30307 (pos)
                    (not (not_checked_p7))

                    ; #35958: <==negation-removal== 20293 (pos)
                    (not (Pd_not_checked_p7))

                    ; #36022: <==negation-removal== 44250 (pos)
                    (not (Pc_not_checked_p7))

                    ; #39914: <==uncertain_firing== 30736 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #51016: <==negation-removal== 64911 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #54505: <==negation-removal== 33236 (pos)
                    (not (Bd_not_checked_p7))

                    ; #56190: <==uncertain_firing== 84508 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #65818: <==negation-removal== 84508 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #67648: <==negation-removal== 37617 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #77976: <==negation-removal== 82585 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79301: <==negation-removal== 44059 (pos)
                    (not (Pb_not_checked_p7))

                    ; #82007: <==negation-removal== 26806 (pos)
                    (not (Pa_not_checked_p7))

                    ; #82131: <==uncertain_firing== 64911 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #84907: <==uncertain_firing== 37617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #94764: <==negation-removal== 92118 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #20191: <==commonly_known== 66552 (pos)
                    (Ba_checked_p8)

                    ; #22899: <==commonly_known== 66552 (pos)
                    (Bd_checked_p8)

                    ; #26767: <==commonly_known== 89426 (neg)
                    (Pd_checked_p8)

                    ; #28588: <==commonly_known== 66552 (pos)
                    (Bc_checked_p8)

                    ; #29141: <==closure== 51269 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #47528: <==commonly_known== 66552 (pos)
                    (Bb_checked_p8)

                    ; #51269: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #63244: <==commonly_known== 89426 (neg)
                    (Pc_checked_p8)

                    ; #66552: origin
                    (checked_p8)

                    ; #73953: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #74440: <==closure== 73953 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #79384: <==commonly_known== 89426 (neg)
                    (Pa_checked_p8)

                    ; #85614: <==commonly_known== 89426 (neg)
                    (Pb_checked_p8)

                    ; #10745: <==negation-removal== 22899 (pos)
                    (not (Pd_not_checked_p8))

                    ; #19752: <==negation-removal== 73953 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #20321: <==negation-removal== 79384 (pos)
                    (not (Ba_not_checked_p8))

                    ; #23626: <==uncertain_firing== 51269 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #25606: <==negation-removal== 29141 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #33241: <==negation-removal== 20191 (pos)
                    (not (Pa_not_checked_p8))

                    ; #39265: <==negation-removal== 85614 (pos)
                    (not (Bb_not_checked_p8))

                    ; #47720: <==negation-removal== 47528 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53344: <==negation-removal== 63244 (pos)
                    (not (Bc_not_checked_p8))

                    ; #63250: <==negation-removal== 26767 (pos)
                    (not (Bd_not_checked_p8))

                    ; #68043: <==negation-removal== 74440 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #68095: <==uncertain_firing== 74440 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #71498: <==uncertain_firing== 73953 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #74087: <==negation-removal== 51269 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #84005: <==negation-removal== 28588 (pos)
                    (not (Pc_not_checked_p8))

                    ; #89426: <==negation-removal== 66552 (pos)
                    (not (not_checked_p8))

                    ; #89540: <==uncertain_firing== 29141 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11356: <==closure== 76225 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #32427: <==commonly_known== 34398 (pos)
                    (Ba_checked_p9)

                    ; #34398: origin
                    (checked_p9)

                    ; #37892: <==commonly_known== 91597 (neg)
                    (Pd_checked_p9)

                    ; #45719: <==closure== 88081 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #45734: <==commonly_known== 91597 (neg)
                    (Pa_checked_p9)

                    ; #61815: <==commonly_known== 34398 (pos)
                    (Bb_checked_p9)

                    ; #73036: <==commonly_known== 91597 (neg)
                    (Pc_checked_p9)

                    ; #76225: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #77037: <==commonly_known== 91597 (neg)
                    (Pb_checked_p9)

                    ; #81824: <==commonly_known== 34398 (pos)
                    (Bc_checked_p9)

                    ; #88081: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #92029: <==commonly_known== 34398 (pos)
                    (Bd_checked_p9)

                    ; #19247: <==negation-removal== 92029 (pos)
                    (not (Pd_not_checked_p9))

                    ; #20495: <==negation-removal== 76225 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #28274: <==uncertain_firing== 11356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #38848: <==uncertain_firing== 45719 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #39551: <==negation-removal== 32427 (pos)
                    (not (Pa_not_checked_p9))

                    ; #52109: <==negation-removal== 45734 (pos)
                    (not (Ba_not_checked_p9))

                    ; #62133: <==negation-removal== 11356 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #66695: <==negation-removal== 88081 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #68550: <==uncertain_firing== 76225 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #70599: <==negation-removal== 73036 (pos)
                    (not (Bc_not_checked_p9))

                    ; #70665: <==negation-removal== 77037 (pos)
                    (not (Bb_not_checked_p9))

                    ; #75232: <==negation-removal== 81824 (pos)
                    (not (Pc_not_checked_p9))

                    ; #75479: <==negation-removal== 45719 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #79144: <==negation-removal== 37892 (pos)
                    (not (Bd_not_checked_p9))

                    ; #84560: <==negation-removal== 61815 (pos)
                    (not (Pb_not_checked_p9))

                    ; #90500: <==uncertain_firing== 88081 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #91597: <==negation-removal== 34398 (pos)
                    (not (not_checked_p9))))

)