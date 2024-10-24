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
                    ; #23046: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #35376: <==closure== 39381 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #37667: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #38691: <==closure== 23046 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #39381: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #42594: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #61066: <==closure== 42594 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #79326: <==closure== 37667 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11402: <==negation-removal== 61066 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #23322: <==uncertain_firing== 42594 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #26463: <==uncertain_firing== 79326 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #39160: <==negation-removal== 39381 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #41301: <==negation-removal== 79326 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #41403: <==uncertain_firing== 39381 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #49946: <==uncertain_firing== 61066 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #50496: <==uncertain_firing== 38691 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #51107: <==negation-removal== 35376 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #54207: <==uncertain_firing== 37667 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #58548: <==uncertain_firing== 35376 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #69426: <==uncertain_firing== 23046 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #74432: <==negation-removal== 42594 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #83012: <==negation-removal== 38691 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #85754: <==negation-removal== 37667 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #86645: <==negation-removal== 23046 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #23046: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #35376: <==closure== 39381 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #37667: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #38691: <==closure== 23046 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #39381: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #42594: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #61066: <==closure== 42594 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #79326: <==closure== 37667 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11402: <==negation-removal== 61066 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #23322: <==uncertain_firing== 42594 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #26463: <==uncertain_firing== 79326 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #39160: <==negation-removal== 39381 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #41301: <==negation-removal== 79326 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #41403: <==uncertain_firing== 39381 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #49946: <==uncertain_firing== 61066 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #50496: <==uncertain_firing== 38691 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #51107: <==negation-removal== 35376 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #54207: <==uncertain_firing== 37667 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #58548: <==uncertain_firing== 35376 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #69426: <==uncertain_firing== 23046 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #74432: <==negation-removal== 42594 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #83012: <==negation-removal== 38691 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #85754: <==negation-removal== 37667 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #86645: <==negation-removal== 23046 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #23046: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #35376: <==closure== 39381 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #37667: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #38691: <==closure== 23046 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #39381: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #42594: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #61066: <==closure== 42594 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #79326: <==closure== 37667 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11402: <==negation-removal== 61066 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #23322: <==uncertain_firing== 42594 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #26463: <==uncertain_firing== 79326 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #39160: <==negation-removal== 39381 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #41301: <==negation-removal== 79326 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #41403: <==uncertain_firing== 39381 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #49946: <==uncertain_firing== 61066 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #50496: <==uncertain_firing== 38691 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #51107: <==negation-removal== 35376 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #54207: <==uncertain_firing== 37667 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #58548: <==uncertain_firing== 35376 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #69426: <==uncertain_firing== 23046 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #74432: <==negation-removal== 42594 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #83012: <==negation-removal== 38691 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #85754: <==negation-removal== 37667 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #86645: <==negation-removal== 23046 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #23046: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #35376: <==closure== 39381 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #37667: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #38691: <==closure== 23046 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #39381: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #42594: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #61066: <==closure== 42594 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #79326: <==closure== 37667 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11402: <==negation-removal== 61066 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #23322: <==uncertain_firing== 42594 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #26463: <==uncertain_firing== 79326 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #39160: <==negation-removal== 39381 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #41301: <==negation-removal== 79326 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #41403: <==uncertain_firing== 39381 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #49946: <==uncertain_firing== 61066 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #50496: <==uncertain_firing== 38691 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #51107: <==negation-removal== 35376 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #54207: <==uncertain_firing== 37667 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #58548: <==uncertain_firing== 35376 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #69426: <==uncertain_firing== 23046 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #74432: <==negation-removal== 42594 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #83012: <==negation-removal== 38691 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #85754: <==negation-removal== 37667 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #86645: <==negation-removal== 23046 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #19574: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #31295: <==closure== 74790 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #53639: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #70494: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #74790: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #80927: <==closure== 70494 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #89007: <==closure== 19574 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #90022: <==closure== 53639 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #17267: <==negation-removal== 90022 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #20738: <==uncertain_firing== 31295 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #21570: <==negation-removal== 74790 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #29572: <==uncertain_firing== 90022 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #29879: <==negation-removal== 70494 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #34108: <==negation-removal== 19574 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #38888: <==negation-removal== 80927 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #49830: <==negation-removal== 89007 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #53599: <==uncertain_firing== 89007 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #57110: <==uncertain_firing== 53639 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #57688: <==uncertain_firing== 70494 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #58043: <==uncertain_firing== 19574 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #64075: <==uncertain_firing== 74790 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #69357: <==negation-removal== 53639 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #81581: <==negation-removal== 31295 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #98614: <==uncertain_firing== 80927 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #19574: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #31295: <==closure== 74790 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #53639: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #70494: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #74790: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #80927: <==closure== 70494 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #89007: <==closure== 19574 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #90022: <==closure== 53639 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #17267: <==negation-removal== 90022 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #20738: <==uncertain_firing== 31295 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #21570: <==negation-removal== 74790 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #29572: <==uncertain_firing== 90022 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #29879: <==negation-removal== 70494 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #34108: <==negation-removal== 19574 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #38888: <==negation-removal== 80927 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #49830: <==negation-removal== 89007 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #53599: <==uncertain_firing== 89007 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #57110: <==uncertain_firing== 53639 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #57688: <==uncertain_firing== 70494 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #58043: <==uncertain_firing== 19574 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #64075: <==uncertain_firing== 74790 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #69357: <==negation-removal== 53639 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #81581: <==negation-removal== 31295 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #98614: <==uncertain_firing== 80927 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #19574: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #31295: <==closure== 74790 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #53639: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #70494: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #74790: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #80927: <==closure== 70494 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #89007: <==closure== 19574 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #90022: <==closure== 53639 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #17267: <==negation-removal== 90022 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #20738: <==uncertain_firing== 31295 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #21570: <==negation-removal== 74790 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #29572: <==uncertain_firing== 90022 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #29879: <==negation-removal== 70494 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #34108: <==negation-removal== 19574 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #38888: <==negation-removal== 80927 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #49830: <==negation-removal== 89007 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #53599: <==uncertain_firing== 89007 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #57110: <==uncertain_firing== 53639 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #57688: <==uncertain_firing== 70494 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #58043: <==uncertain_firing== 19574 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #64075: <==uncertain_firing== 74790 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #69357: <==negation-removal== 53639 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #81581: <==negation-removal== 31295 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #98614: <==uncertain_firing== 80927 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #19574: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #31295: <==closure== 74790 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #53639: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #70494: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #74790: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #80927: <==closure== 70494 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #89007: <==closure== 19574 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #90022: <==closure== 53639 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #17267: <==negation-removal== 90022 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #20738: <==uncertain_firing== 31295 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #21570: <==negation-removal== 74790 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #29572: <==uncertain_firing== 90022 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #29879: <==negation-removal== 70494 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #34108: <==negation-removal== 19574 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #38888: <==negation-removal== 80927 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #49830: <==negation-removal== 89007 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #53599: <==uncertain_firing== 89007 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #57110: <==uncertain_firing== 53639 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #57688: <==uncertain_firing== 70494 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #58043: <==uncertain_firing== 19574 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #64075: <==uncertain_firing== 74790 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #69357: <==negation-removal== 53639 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #81581: <==negation-removal== 31295 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #98614: <==uncertain_firing== 80927 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #13652: <==closure== 39483 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #19112: <==closure== 21374 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #21374: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #39483: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #45078: <==closure== 46991 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #45750: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #46991: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #86339: <==closure== 45750 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #13205: <==uncertain_firing== 39483 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #19465: <==negation-removal== 46991 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #20871: <==uncertain_firing== 45750 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24781: <==uncertain_firing== 19112 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #29562: <==uncertain_firing== 45078 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #36149: <==uncertain_firing== 86339 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #38046: <==negation-removal== 19112 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #42377: <==negation-removal== 86339 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #49619: <==negation-removal== 45750 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #61770: <==uncertain_firing== 21374 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #78826: <==negation-removal== 45078 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #79344: <==negation-removal== 13652 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #85093: <==negation-removal== 39483 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #88305: <==negation-removal== 21374 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #89596: <==uncertain_firing== 13652 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #91207: <==uncertain_firing== 46991 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #13652: <==closure== 39483 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #19112: <==closure== 21374 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #21374: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #39483: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #45078: <==closure== 46991 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #45750: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #46991: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #86339: <==closure== 45750 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #13205: <==uncertain_firing== 39483 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #19465: <==negation-removal== 46991 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #20871: <==uncertain_firing== 45750 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24781: <==uncertain_firing== 19112 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #29562: <==uncertain_firing== 45078 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #36149: <==uncertain_firing== 86339 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #38046: <==negation-removal== 19112 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #42377: <==negation-removal== 86339 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #49619: <==negation-removal== 45750 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #61770: <==uncertain_firing== 21374 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #78826: <==negation-removal== 45078 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #79344: <==negation-removal== 13652 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #85093: <==negation-removal== 39483 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #88305: <==negation-removal== 21374 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #89596: <==uncertain_firing== 13652 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #91207: <==uncertain_firing== 46991 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #13652: <==closure== 39483 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #19112: <==closure== 21374 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #21374: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #39483: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #45078: <==closure== 46991 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #45750: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #46991: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #86339: <==closure== 45750 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #13205: <==uncertain_firing== 39483 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #19465: <==negation-removal== 46991 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #20871: <==uncertain_firing== 45750 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24781: <==uncertain_firing== 19112 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #29562: <==uncertain_firing== 45078 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #36149: <==uncertain_firing== 86339 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #38046: <==negation-removal== 19112 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #42377: <==negation-removal== 86339 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #49619: <==negation-removal== 45750 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #61770: <==uncertain_firing== 21374 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #78826: <==negation-removal== 45078 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #79344: <==negation-removal== 13652 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #85093: <==negation-removal== 39483 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #88305: <==negation-removal== 21374 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #89596: <==uncertain_firing== 13652 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #91207: <==uncertain_firing== 46991 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #13652: <==closure== 39483 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #19112: <==closure== 21374 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #21374: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #39483: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #45078: <==closure== 46991 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #45750: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #46991: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #86339: <==closure== 45750 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #13205: <==uncertain_firing== 39483 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #19465: <==negation-removal== 46991 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #20871: <==uncertain_firing== 45750 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24781: <==uncertain_firing== 19112 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #29562: <==uncertain_firing== 45078 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #36149: <==uncertain_firing== 86339 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #38046: <==negation-removal== 19112 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #42377: <==negation-removal== 86339 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #49619: <==negation-removal== 45750 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #61770: <==uncertain_firing== 21374 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #78826: <==negation-removal== 45078 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #79344: <==negation-removal== 13652 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #85093: <==negation-removal== 39483 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #88305: <==negation-removal== 21374 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #89596: <==uncertain_firing== 13652 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #91207: <==uncertain_firing== 46991 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #13104: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #21387: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #47543: <==closure== 70820 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #62394: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #63171: <==closure== 21387 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #70047: <==closure== 62394 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #70820: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81010: <==closure== 13104 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #23657: <==uncertain_firing== 81010 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #31637: <==uncertain_firing== 47543 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #39180: <==uncertain_firing== 70820 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #42243: <==negation-removal== 47543 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #43782: <==negation-removal== 13104 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #44203: <==negation-removal== 81010 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #51995: <==uncertain_firing== 62394 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #53855: <==uncertain_firing== 70047 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #59247: <==negation-removal== 21387 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #71857: <==negation-removal== 63171 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #74011: <==negation-removal== 70047 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #81013: <==uncertain_firing== 21387 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #84017: <==negation-removal== 62394 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #86520: <==negation-removal== 70820 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #87370: <==uncertain_firing== 63171 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #88539: <==uncertain_firing== 13104 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #13104: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #21387: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #47543: <==closure== 70820 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #62394: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #63171: <==closure== 21387 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #70047: <==closure== 62394 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #70820: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81010: <==closure== 13104 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #23657: <==uncertain_firing== 81010 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #31637: <==uncertain_firing== 47543 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #39180: <==uncertain_firing== 70820 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #42243: <==negation-removal== 47543 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #43782: <==negation-removal== 13104 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #44203: <==negation-removal== 81010 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #51995: <==uncertain_firing== 62394 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #53855: <==uncertain_firing== 70047 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #59247: <==negation-removal== 21387 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #71857: <==negation-removal== 63171 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #74011: <==negation-removal== 70047 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #81013: <==uncertain_firing== 21387 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #84017: <==negation-removal== 62394 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #86520: <==negation-removal== 70820 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #87370: <==uncertain_firing== 63171 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #88539: <==uncertain_firing== 13104 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #13104: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #21387: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #47543: <==closure== 70820 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #62394: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #63171: <==closure== 21387 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #70047: <==closure== 62394 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #70820: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81010: <==closure== 13104 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #23657: <==uncertain_firing== 81010 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #31637: <==uncertain_firing== 47543 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #39180: <==uncertain_firing== 70820 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #42243: <==negation-removal== 47543 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #43782: <==negation-removal== 13104 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #44203: <==negation-removal== 81010 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #51995: <==uncertain_firing== 62394 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #53855: <==uncertain_firing== 70047 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #59247: <==negation-removal== 21387 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #71857: <==negation-removal== 63171 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #74011: <==negation-removal== 70047 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #81013: <==uncertain_firing== 21387 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #84017: <==negation-removal== 62394 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #86520: <==negation-removal== 70820 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #87370: <==uncertain_firing== 63171 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #88539: <==uncertain_firing== 13104 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #13104: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #21387: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #47543: <==closure== 70820 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #62394: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #63171: <==closure== 21387 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #70047: <==closure== 62394 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #70820: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81010: <==closure== 13104 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #23657: <==uncertain_firing== 81010 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #31637: <==uncertain_firing== 47543 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #39180: <==uncertain_firing== 70820 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #42243: <==negation-removal== 47543 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #43782: <==negation-removal== 13104 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #44203: <==negation-removal== 81010 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #51995: <==uncertain_firing== 62394 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #53855: <==uncertain_firing== 70047 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #59247: <==negation-removal== 21387 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #71857: <==negation-removal== 63171 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #74011: <==negation-removal== 70047 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #81013: <==uncertain_firing== 21387 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #84017: <==negation-removal== 62394 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #86520: <==negation-removal== 70820 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #87370: <==uncertain_firing== 63171 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #88539: <==uncertain_firing== 13104 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #21022: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #45367: <==closure== 87413 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #54912: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #77887: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #81577: <==closure== 54912 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #87413: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #87536: <==closure== 21022 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #99437: <==closure== 77887 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #14103: <==uncertain_firing== 45367 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #23351: <==uncertain_firing== 81577 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #26227: <==uncertain_firing== 99437 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #34594: <==negation-removal== 21022 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #41377: <==uncertain_firing== 54912 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #43442: <==uncertain_firing== 87536 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #53353: <==negation-removal== 87413 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #62383: <==uncertain_firing== 77887 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #63444: <==negation-removal== 45367 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #78733: <==uncertain_firing== 87413 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #80929: <==negation-removal== 87536 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #82069: <==negation-removal== 99437 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #86481: <==uncertain_firing== 21022 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #86520: <==negation-removal== 77887 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #87224: <==negation-removal== 81577 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #89784: <==negation-removal== 54912 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #21022: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #45367: <==closure== 87413 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #54912: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #77887: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #81577: <==closure== 54912 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #87413: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #87536: <==closure== 21022 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #99437: <==closure== 77887 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #14103: <==uncertain_firing== 45367 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #23351: <==uncertain_firing== 81577 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #26227: <==uncertain_firing== 99437 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #34594: <==negation-removal== 21022 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #41377: <==uncertain_firing== 54912 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #43442: <==uncertain_firing== 87536 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #53353: <==negation-removal== 87413 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #62383: <==uncertain_firing== 77887 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #63444: <==negation-removal== 45367 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #78733: <==uncertain_firing== 87413 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #80929: <==negation-removal== 87536 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #82069: <==negation-removal== 99437 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #86481: <==uncertain_firing== 21022 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #86520: <==negation-removal== 77887 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #87224: <==negation-removal== 81577 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #89784: <==negation-removal== 54912 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #21022: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #45367: <==closure== 87413 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #54912: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #77887: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #81577: <==closure== 54912 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #87413: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #87536: <==closure== 21022 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #99437: <==closure== 77887 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #14103: <==uncertain_firing== 45367 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #23351: <==uncertain_firing== 81577 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #26227: <==uncertain_firing== 99437 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #34594: <==negation-removal== 21022 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #41377: <==uncertain_firing== 54912 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #43442: <==uncertain_firing== 87536 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #53353: <==negation-removal== 87413 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #62383: <==uncertain_firing== 77887 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #63444: <==negation-removal== 45367 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #78733: <==uncertain_firing== 87413 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #80929: <==negation-removal== 87536 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #82069: <==negation-removal== 99437 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #86481: <==uncertain_firing== 21022 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #86520: <==negation-removal== 77887 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #87224: <==negation-removal== 81577 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #89784: <==negation-removal== 54912 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #21022: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #45367: <==closure== 87413 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #54912: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #77887: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #81577: <==closure== 54912 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #87413: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #87536: <==closure== 21022 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #99437: <==closure== 77887 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #14103: <==uncertain_firing== 45367 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #23351: <==uncertain_firing== 81577 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #26227: <==uncertain_firing== 99437 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #34594: <==negation-removal== 21022 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #41377: <==uncertain_firing== 54912 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #43442: <==uncertain_firing== 87536 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #53353: <==negation-removal== 87413 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #62383: <==uncertain_firing== 77887 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #63444: <==negation-removal== 45367 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #78733: <==uncertain_firing== 87413 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #80929: <==negation-removal== 87536 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #82069: <==negation-removal== 99437 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #86481: <==uncertain_firing== 21022 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #86520: <==negation-removal== 77887 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #87224: <==negation-removal== 81577 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #89784: <==negation-removal== 54912 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #12975: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #22504: <==closure== 12975 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #25259: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #29702: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #44577: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #55446: <==closure== 29702 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #70313: <==closure== 44577 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #99728: <==closure== 25259 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #25033: <==uncertain_firing== 22504 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #33148: <==uncertain_firing== 44577 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #33338: <==negation-removal== 22504 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #33676: <==negation-removal== 29702 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #40210: <==negation-removal== 12975 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #42291: <==uncertain_firing== 29702 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #42341: <==uncertain_firing== 12975 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #46909: <==uncertain_firing== 70313 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #53367: <==negation-removal== 44577 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #56161: <==uncertain_firing== 99728 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #65865: <==negation-removal== 55446 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #67426: <==negation-removal== 25259 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #74829: <==uncertain_firing== 25259 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #76629: <==negation-removal== 99728 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #84826: <==uncertain_firing== 55446 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #91154: <==negation-removal== 70313 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #12975: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #22504: <==closure== 12975 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #25259: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #29702: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #44577: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #55446: <==closure== 29702 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #70313: <==closure== 44577 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #99728: <==closure== 25259 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #25033: <==uncertain_firing== 22504 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #33148: <==uncertain_firing== 44577 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #33338: <==negation-removal== 22504 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #33676: <==negation-removal== 29702 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #40210: <==negation-removal== 12975 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #42291: <==uncertain_firing== 29702 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #42341: <==uncertain_firing== 12975 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #46909: <==uncertain_firing== 70313 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #53367: <==negation-removal== 44577 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #56161: <==uncertain_firing== 99728 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #65865: <==negation-removal== 55446 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #67426: <==negation-removal== 25259 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #74829: <==uncertain_firing== 25259 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #76629: <==negation-removal== 99728 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #84826: <==uncertain_firing== 55446 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #91154: <==negation-removal== 70313 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #12975: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #22504: <==closure== 12975 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #25259: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #29702: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #44577: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #55446: <==closure== 29702 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #70313: <==closure== 44577 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #99728: <==closure== 25259 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #25033: <==uncertain_firing== 22504 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #33148: <==uncertain_firing== 44577 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #33338: <==negation-removal== 22504 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #33676: <==negation-removal== 29702 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #40210: <==negation-removal== 12975 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #42291: <==uncertain_firing== 29702 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #42341: <==uncertain_firing== 12975 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #46909: <==uncertain_firing== 70313 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #53367: <==negation-removal== 44577 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #56161: <==uncertain_firing== 99728 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #65865: <==negation-removal== 55446 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #67426: <==negation-removal== 25259 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #74829: <==uncertain_firing== 25259 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #76629: <==negation-removal== 99728 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #84826: <==uncertain_firing== 55446 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #91154: <==negation-removal== 70313 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #12975: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #22504: <==closure== 12975 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #25259: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #29702: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #44577: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #55446: <==closure== 29702 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #70313: <==closure== 44577 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #99728: <==closure== 25259 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #25033: <==uncertain_firing== 22504 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #33148: <==uncertain_firing== 44577 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #33338: <==negation-removal== 22504 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #33676: <==negation-removal== 29702 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #40210: <==negation-removal== 12975 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #42291: <==uncertain_firing== 29702 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #42341: <==uncertain_firing== 12975 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #46909: <==uncertain_firing== 70313 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #53367: <==negation-removal== 44577 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #56161: <==uncertain_firing== 99728 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #65865: <==negation-removal== 55446 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #67426: <==negation-removal== 25259 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #74829: <==uncertain_firing== 25259 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #76629: <==negation-removal== 99728 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #84826: <==uncertain_firing== 55446 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #91154: <==negation-removal== 70313 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #53178: <==closure== 90832 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #53443: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #60341: <==closure== 71098 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #61966: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #62473: <==closure== 53443 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #71098: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #82453: <==closure== 61966 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #90832: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #10043: <==uncertain_firing== 90832 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #10618: <==uncertain_firing== 62473 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #14905: <==negation-removal== 90832 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #18202: <==negation-removal== 60341 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #18377: <==uncertain_firing== 61966 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #22325: <==negation-removal== 62473 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #24131: <==uncertain_firing== 53443 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #25493: <==negation-removal== 61966 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #35035: <==uncertain_firing== 71098 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #40555: <==negation-removal== 53178 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #42333: <==uncertain_firing== 82453 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #46769: <==negation-removal== 53443 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #60218: <==uncertain_firing== 53178 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #71455: <==negation-removal== 82453 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #77271: <==uncertain_firing== 60341 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81118: <==negation-removal== 71098 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #53178: <==closure== 90832 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #53443: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #60341: <==closure== 71098 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #61966: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #62473: <==closure== 53443 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #71098: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #82453: <==closure== 61966 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #90832: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #10043: <==uncertain_firing== 90832 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #10618: <==uncertain_firing== 62473 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #14905: <==negation-removal== 90832 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #18202: <==negation-removal== 60341 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #18377: <==uncertain_firing== 61966 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #22325: <==negation-removal== 62473 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #24131: <==uncertain_firing== 53443 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #25493: <==negation-removal== 61966 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #35035: <==uncertain_firing== 71098 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #40555: <==negation-removal== 53178 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #42333: <==uncertain_firing== 82453 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #46769: <==negation-removal== 53443 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #60218: <==uncertain_firing== 53178 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #71455: <==negation-removal== 82453 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #77271: <==uncertain_firing== 60341 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81118: <==negation-removal== 71098 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #53178: <==closure== 90832 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #53443: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #60341: <==closure== 71098 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #61966: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #62473: <==closure== 53443 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #71098: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #82453: <==closure== 61966 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #90832: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #10043: <==uncertain_firing== 90832 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #10618: <==uncertain_firing== 62473 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #14905: <==negation-removal== 90832 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #18202: <==negation-removal== 60341 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #18377: <==uncertain_firing== 61966 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #22325: <==negation-removal== 62473 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #24131: <==uncertain_firing== 53443 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #25493: <==negation-removal== 61966 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #35035: <==uncertain_firing== 71098 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #40555: <==negation-removal== 53178 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #42333: <==uncertain_firing== 82453 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #46769: <==negation-removal== 53443 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #60218: <==uncertain_firing== 53178 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #71455: <==negation-removal== 82453 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #77271: <==uncertain_firing== 60341 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81118: <==negation-removal== 71098 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #53178: <==closure== 90832 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #53443: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #60341: <==closure== 71098 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #61966: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #62473: <==closure== 53443 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #71098: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #82453: <==closure== 61966 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #90832: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #10043: <==uncertain_firing== 90832 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #10618: <==uncertain_firing== 62473 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #14905: <==negation-removal== 90832 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #18202: <==negation-removal== 60341 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #18377: <==uncertain_firing== 61966 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #22325: <==negation-removal== 62473 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #24131: <==uncertain_firing== 53443 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #25493: <==negation-removal== 61966 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #35035: <==uncertain_firing== 71098 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #40555: <==negation-removal== 53178 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #42333: <==uncertain_firing== 82453 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #46769: <==negation-removal== 53443 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #60218: <==uncertain_firing== 53178 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #71455: <==negation-removal== 82453 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #77271: <==uncertain_firing== 60341 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81118: <==negation-removal== 71098 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #11501: <==closure== 51408 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #26299: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #30504: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #31966: <==closure== 26299 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #50772: <==closure== 97862 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #51408: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #84028: <==closure== 30504 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #97862: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #17411: <==negation-removal== 26299 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #18373: <==uncertain_firing== 30504 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #32580: <==uncertain_firing== 26299 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #35316: <==negation-removal== 51408 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #38386: <==negation-removal== 97862 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #42692: <==negation-removal== 31966 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #54660: <==uncertain_firing== 97862 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #59394: <==negation-removal== 50772 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #59649: <==negation-removal== 30504 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #61557: <==uncertain_firing== 50772 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #68523: <==negation-removal== 11501 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #74674: <==uncertain_firing== 84028 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #78222: <==uncertain_firing== 51408 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #83791: <==negation-removal== 84028 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #91870: <==uncertain_firing== 11501 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #97439: <==uncertain_firing== 31966 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #11501: <==closure== 51408 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #26299: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #30504: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #31966: <==closure== 26299 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #50772: <==closure== 97862 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #51408: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #84028: <==closure== 30504 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #97862: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #17411: <==negation-removal== 26299 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #18373: <==uncertain_firing== 30504 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #32580: <==uncertain_firing== 26299 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #35316: <==negation-removal== 51408 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #38386: <==negation-removal== 97862 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #42692: <==negation-removal== 31966 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #54660: <==uncertain_firing== 97862 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #59394: <==negation-removal== 50772 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #59649: <==negation-removal== 30504 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #61557: <==uncertain_firing== 50772 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #68523: <==negation-removal== 11501 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #74674: <==uncertain_firing== 84028 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #78222: <==uncertain_firing== 51408 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #83791: <==negation-removal== 84028 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #91870: <==uncertain_firing== 11501 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #97439: <==uncertain_firing== 31966 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #11501: <==closure== 51408 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #26299: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #30504: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #31966: <==closure== 26299 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #50772: <==closure== 97862 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #51408: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #84028: <==closure== 30504 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #97862: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #17411: <==negation-removal== 26299 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #18373: <==uncertain_firing== 30504 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #32580: <==uncertain_firing== 26299 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #35316: <==negation-removal== 51408 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #38386: <==negation-removal== 97862 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #42692: <==negation-removal== 31966 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #54660: <==uncertain_firing== 97862 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #59394: <==negation-removal== 50772 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #59649: <==negation-removal== 30504 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #61557: <==uncertain_firing== 50772 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #68523: <==negation-removal== 11501 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #74674: <==uncertain_firing== 84028 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #78222: <==uncertain_firing== 51408 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #83791: <==negation-removal== 84028 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #91870: <==uncertain_firing== 11501 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #97439: <==uncertain_firing== 31966 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #11501: <==closure== 51408 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #26299: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #30504: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #31966: <==closure== 26299 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #50772: <==closure== 97862 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #51408: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #84028: <==closure== 30504 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #97862: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #17411: <==negation-removal== 26299 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #18373: <==uncertain_firing== 30504 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #32580: <==uncertain_firing== 26299 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #35316: <==negation-removal== 51408 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #38386: <==negation-removal== 97862 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #42692: <==negation-removal== 31966 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #54660: <==uncertain_firing== 97862 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #59394: <==negation-removal== 50772 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #59649: <==negation-removal== 30504 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #61557: <==uncertain_firing== 50772 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #68523: <==negation-removal== 11501 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #74674: <==uncertain_firing== 84028 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #78222: <==uncertain_firing== 51408 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #83791: <==negation-removal== 84028 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #91870: <==uncertain_firing== 11501 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #97439: <==uncertain_firing== 31966 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #25346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #32461: <==closure== 25346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #46191: <==closure== 86373 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #51633: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #63764: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #63783: <==closure== 63764 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77816: <==closure== 51633 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #86373: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #19464: <==negation-removal== 25346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #24405: <==negation-removal== 86373 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #29156: <==negation-removal== 32461 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #29646: <==negation-removal== 63783 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #30149: <==uncertain_firing== 63764 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #35491: <==uncertain_firing== 32461 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36335: <==uncertain_firing== 46191 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #43017: <==uncertain_firing== 51633 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #43033: <==uncertain_firing== 63783 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43495: <==negation-removal== 77816 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #60533: <==negation-removal== 63764 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #62471: <==uncertain_firing== 77816 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #67013: <==negation-removal== 51633 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #82854: <==uncertain_firing== 25346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #87809: <==negation-removal== 46191 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #91874: <==uncertain_firing== 86373 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #25346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #32461: <==closure== 25346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #46191: <==closure== 86373 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #51633: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #63764: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #63783: <==closure== 63764 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77816: <==closure== 51633 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #86373: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #19464: <==negation-removal== 25346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #24405: <==negation-removal== 86373 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #29156: <==negation-removal== 32461 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #29646: <==negation-removal== 63783 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #30149: <==uncertain_firing== 63764 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #35491: <==uncertain_firing== 32461 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36335: <==uncertain_firing== 46191 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #43017: <==uncertain_firing== 51633 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #43033: <==uncertain_firing== 63783 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43495: <==negation-removal== 77816 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #60533: <==negation-removal== 63764 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #62471: <==uncertain_firing== 77816 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #67013: <==negation-removal== 51633 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #82854: <==uncertain_firing== 25346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #87809: <==negation-removal== 46191 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #91874: <==uncertain_firing== 86373 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #25346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #32461: <==closure== 25346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #46191: <==closure== 86373 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #51633: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #63764: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #63783: <==closure== 63764 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77816: <==closure== 51633 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #86373: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #19464: <==negation-removal== 25346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #24405: <==negation-removal== 86373 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #29156: <==negation-removal== 32461 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #29646: <==negation-removal== 63783 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #30149: <==uncertain_firing== 63764 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #35491: <==uncertain_firing== 32461 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36335: <==uncertain_firing== 46191 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #43017: <==uncertain_firing== 51633 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #43033: <==uncertain_firing== 63783 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43495: <==negation-removal== 77816 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #60533: <==negation-removal== 63764 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #62471: <==uncertain_firing== 77816 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #67013: <==negation-removal== 51633 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #82854: <==uncertain_firing== 25346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #87809: <==negation-removal== 46191 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #91874: <==uncertain_firing== 86373 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #25346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #32461: <==closure== 25346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #46191: <==closure== 86373 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #51633: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #63764: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #63783: <==closure== 63764 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77816: <==closure== 51633 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #86373: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #19464: <==negation-removal== 25346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #24405: <==negation-removal== 86373 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #29156: <==negation-removal== 32461 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #29646: <==negation-removal== 63783 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #30149: <==uncertain_firing== 63764 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #35491: <==uncertain_firing== 32461 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36335: <==uncertain_firing== 46191 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #43017: <==uncertain_firing== 51633 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #43033: <==uncertain_firing== 63783 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43495: <==negation-removal== 77816 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #60533: <==negation-removal== 63764 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #62471: <==uncertain_firing== 77816 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #67013: <==negation-removal== 51633 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #82854: <==uncertain_firing== 25346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #87809: <==negation-removal== 46191 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #91874: <==uncertain_firing== 86373 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #13022: origin
                    (Bd_survivorat_s_p1)

                    ; #15709: origin
                    (Ba_survivorat_s_p1)

                    ; #17714: origin
                    (Bc_survivorat_s_p1)

                    ; #42674: <==closure== 15709 (pos)
                    (Pa_survivorat_s_p1)

                    ; #51693: <==closure== 17714 (pos)
                    (Pc_survivorat_s_p1)

                    ; #54725: <==closure== 13022 (pos)
                    (Pd_survivorat_s_p1)

                    ; #82760: origin
                    (Bb_survivorat_s_p1)

                    ; #84899: <==closure== 82760 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14089: <==negation-removal== 13022 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #15425: <==negation-removal== 54725 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #19242: <==negation-removal== 17714 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #36849: <==negation-removal== 51693 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #38008: <==negation-removal== 84899 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #60755: <==negation-removal== 82760 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72686: <==negation-removal== 15709 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #88850: <==negation-removal== 42674 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #13022: origin
                    (Bd_survivorat_s_p1)

                    ; #15709: origin
                    (Ba_survivorat_s_p1)

                    ; #17714: origin
                    (Bc_survivorat_s_p1)

                    ; #42674: <==closure== 15709 (pos)
                    (Pa_survivorat_s_p1)

                    ; #51693: <==closure== 17714 (pos)
                    (Pc_survivorat_s_p1)

                    ; #54725: <==closure== 13022 (pos)
                    (Pd_survivorat_s_p1)

                    ; #82760: origin
                    (Bb_survivorat_s_p1)

                    ; #84899: <==closure== 82760 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14089: <==negation-removal== 13022 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #15425: <==negation-removal== 54725 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #19242: <==negation-removal== 17714 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #36849: <==negation-removal== 51693 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #38008: <==negation-removal== 84899 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #60755: <==negation-removal== 82760 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72686: <==negation-removal== 15709 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #88850: <==negation-removal== 42674 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #13022: origin
                    (Bd_survivorat_s_p1)

                    ; #15709: origin
                    (Ba_survivorat_s_p1)

                    ; #17714: origin
                    (Bc_survivorat_s_p1)

                    ; #42674: <==closure== 15709 (pos)
                    (Pa_survivorat_s_p1)

                    ; #51693: <==closure== 17714 (pos)
                    (Pc_survivorat_s_p1)

                    ; #54725: <==closure== 13022 (pos)
                    (Pd_survivorat_s_p1)

                    ; #82760: origin
                    (Bb_survivorat_s_p1)

                    ; #84899: <==closure== 82760 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14089: <==negation-removal== 13022 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #15425: <==negation-removal== 54725 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #19242: <==negation-removal== 17714 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #36849: <==negation-removal== 51693 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #38008: <==negation-removal== 84899 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #60755: <==negation-removal== 82760 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72686: <==negation-removal== 15709 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #88850: <==negation-removal== 42674 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #13022: origin
                    (Bd_survivorat_s_p1)

                    ; #15709: origin
                    (Ba_survivorat_s_p1)

                    ; #17714: origin
                    (Bc_survivorat_s_p1)

                    ; #42674: <==closure== 15709 (pos)
                    (Pa_survivorat_s_p1)

                    ; #51693: <==closure== 17714 (pos)
                    (Pc_survivorat_s_p1)

                    ; #54725: <==closure== 13022 (pos)
                    (Pd_survivorat_s_p1)

                    ; #82760: origin
                    (Bb_survivorat_s_p1)

                    ; #84899: <==closure== 82760 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14089: <==negation-removal== 13022 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #15425: <==negation-removal== 54725 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #19242: <==negation-removal== 17714 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #36849: <==negation-removal== 51693 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #38008: <==negation-removal== 84899 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #60755: <==negation-removal== 82760 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72686: <==negation-removal== 15709 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #88850: <==negation-removal== 42674 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #15792: <==closure== 72705 (pos)
                    (Pc_survivorat_s_p2)

                    ; #17872: origin
                    (Ba_survivorat_s_p2)

                    ; #26886: origin
                    (Bb_survivorat_s_p2)

                    ; #27165: origin
                    (Bd_survivorat_s_p2)

                    ; #44624: <==closure== 17872 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56720: <==closure== 27165 (pos)
                    (Pd_survivorat_s_p2)

                    ; #72705: origin
                    (Bc_survivorat_s_p2)

                    ; #77757: <==closure== 26886 (pos)
                    (Pb_survivorat_s_p2)

                    ; #14295: <==negation-removal== 44624 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #18871: <==negation-removal== 17872 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #28075: <==negation-removal== 72705 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #35544: <==negation-removal== 26886 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #43028: <==negation-removal== 15792 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #64759: <==negation-removal== 56720 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #86748: <==negation-removal== 27165 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #88392: <==negation-removal== 77757 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #15792: <==closure== 72705 (pos)
                    (Pc_survivorat_s_p2)

                    ; #17872: origin
                    (Ba_survivorat_s_p2)

                    ; #26886: origin
                    (Bb_survivorat_s_p2)

                    ; #27165: origin
                    (Bd_survivorat_s_p2)

                    ; #44624: <==closure== 17872 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56720: <==closure== 27165 (pos)
                    (Pd_survivorat_s_p2)

                    ; #72705: origin
                    (Bc_survivorat_s_p2)

                    ; #77757: <==closure== 26886 (pos)
                    (Pb_survivorat_s_p2)

                    ; #14295: <==negation-removal== 44624 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #18871: <==negation-removal== 17872 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #28075: <==negation-removal== 72705 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #35544: <==negation-removal== 26886 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #43028: <==negation-removal== 15792 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #64759: <==negation-removal== 56720 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #86748: <==negation-removal== 27165 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #88392: <==negation-removal== 77757 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #15792: <==closure== 72705 (pos)
                    (Pc_survivorat_s_p2)

                    ; #17872: origin
                    (Ba_survivorat_s_p2)

                    ; #26886: origin
                    (Bb_survivorat_s_p2)

                    ; #27165: origin
                    (Bd_survivorat_s_p2)

                    ; #44624: <==closure== 17872 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56720: <==closure== 27165 (pos)
                    (Pd_survivorat_s_p2)

                    ; #72705: origin
                    (Bc_survivorat_s_p2)

                    ; #77757: <==closure== 26886 (pos)
                    (Pb_survivorat_s_p2)

                    ; #14295: <==negation-removal== 44624 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #18871: <==negation-removal== 17872 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #28075: <==negation-removal== 72705 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #35544: <==negation-removal== 26886 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #43028: <==negation-removal== 15792 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #64759: <==negation-removal== 56720 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #86748: <==negation-removal== 27165 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #88392: <==negation-removal== 77757 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #15792: <==closure== 72705 (pos)
                    (Pc_survivorat_s_p2)

                    ; #17872: origin
                    (Ba_survivorat_s_p2)

                    ; #26886: origin
                    (Bb_survivorat_s_p2)

                    ; #27165: origin
                    (Bd_survivorat_s_p2)

                    ; #44624: <==closure== 17872 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56720: <==closure== 27165 (pos)
                    (Pd_survivorat_s_p2)

                    ; #72705: origin
                    (Bc_survivorat_s_p2)

                    ; #77757: <==closure== 26886 (pos)
                    (Pb_survivorat_s_p2)

                    ; #14295: <==negation-removal== 44624 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #18871: <==negation-removal== 17872 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #28075: <==negation-removal== 72705 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #35544: <==negation-removal== 26886 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #43028: <==negation-removal== 15792 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #64759: <==negation-removal== 56720 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #86748: <==negation-removal== 27165 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #88392: <==negation-removal== 77757 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #21947: <==closure== 59927 (pos)
                    (Pc_survivorat_s_p3)

                    ; #32437: <==closure== 49714 (pos)
                    (Pb_survivorat_s_p3)

                    ; #34159: origin
                    (Bd_survivorat_s_p3)

                    ; #49714: origin
                    (Bb_survivorat_s_p3)

                    ; #59927: origin
                    (Bc_survivorat_s_p3)

                    ; #69611: <==closure== 78739 (pos)
                    (Pa_survivorat_s_p3)

                    ; #78739: origin
                    (Ba_survivorat_s_p3)

                    ; #89023: <==closure== 34159 (pos)
                    (Pd_survivorat_s_p3)

                    ; #39241: <==negation-removal== 32437 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #45079: <==negation-removal== 34159 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #55751: <==negation-removal== 89023 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #57360: <==negation-removal== 78739 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #74352: <==negation-removal== 49714 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #77793: <==negation-removal== 21947 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #79119: <==negation-removal== 59927 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #86812: <==negation-removal== 69611 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #21947: <==closure== 59927 (pos)
                    (Pc_survivorat_s_p3)

                    ; #32437: <==closure== 49714 (pos)
                    (Pb_survivorat_s_p3)

                    ; #34159: origin
                    (Bd_survivorat_s_p3)

                    ; #49714: origin
                    (Bb_survivorat_s_p3)

                    ; #59927: origin
                    (Bc_survivorat_s_p3)

                    ; #69611: <==closure== 78739 (pos)
                    (Pa_survivorat_s_p3)

                    ; #78739: origin
                    (Ba_survivorat_s_p3)

                    ; #89023: <==closure== 34159 (pos)
                    (Pd_survivorat_s_p3)

                    ; #39241: <==negation-removal== 32437 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #45079: <==negation-removal== 34159 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #55751: <==negation-removal== 89023 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #57360: <==negation-removal== 78739 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #74352: <==negation-removal== 49714 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #77793: <==negation-removal== 21947 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #79119: <==negation-removal== 59927 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #86812: <==negation-removal== 69611 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #21947: <==closure== 59927 (pos)
                    (Pc_survivorat_s_p3)

                    ; #32437: <==closure== 49714 (pos)
                    (Pb_survivorat_s_p3)

                    ; #34159: origin
                    (Bd_survivorat_s_p3)

                    ; #49714: origin
                    (Bb_survivorat_s_p3)

                    ; #59927: origin
                    (Bc_survivorat_s_p3)

                    ; #69611: <==closure== 78739 (pos)
                    (Pa_survivorat_s_p3)

                    ; #78739: origin
                    (Ba_survivorat_s_p3)

                    ; #89023: <==closure== 34159 (pos)
                    (Pd_survivorat_s_p3)

                    ; #39241: <==negation-removal== 32437 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #45079: <==negation-removal== 34159 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #55751: <==negation-removal== 89023 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #57360: <==negation-removal== 78739 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #74352: <==negation-removal== 49714 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #77793: <==negation-removal== 21947 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #79119: <==negation-removal== 59927 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #86812: <==negation-removal== 69611 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #21947: <==closure== 59927 (pos)
                    (Pc_survivorat_s_p3)

                    ; #32437: <==closure== 49714 (pos)
                    (Pb_survivorat_s_p3)

                    ; #34159: origin
                    (Bd_survivorat_s_p3)

                    ; #49714: origin
                    (Bb_survivorat_s_p3)

                    ; #59927: origin
                    (Bc_survivorat_s_p3)

                    ; #69611: <==closure== 78739 (pos)
                    (Pa_survivorat_s_p3)

                    ; #78739: origin
                    (Ba_survivorat_s_p3)

                    ; #89023: <==closure== 34159 (pos)
                    (Pd_survivorat_s_p3)

                    ; #39241: <==negation-removal== 32437 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #45079: <==negation-removal== 34159 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #55751: <==negation-removal== 89023 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #57360: <==negation-removal== 78739 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #74352: <==negation-removal== 49714 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #77793: <==negation-removal== 21947 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #79119: <==negation-removal== 59927 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #86812: <==negation-removal== 69611 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #31442: origin
                    (Bd_survivorat_s_p4)

                    ; #31462: origin
                    (Ba_survivorat_s_p4)

                    ; #34602: <==closure== 70481 (pos)
                    (Pc_survivorat_s_p4)

                    ; #42721: <==closure== 31462 (pos)
                    (Pa_survivorat_s_p4)

                    ; #61642: origin
                    (Bb_survivorat_s_p4)

                    ; #70481: origin
                    (Bc_survivorat_s_p4)

                    ; #85124: <==closure== 31442 (pos)
                    (Pd_survivorat_s_p4)

                    ; #89321: <==closure== 61642 (pos)
                    (Pb_survivorat_s_p4)

                    ; #23253: <==negation-removal== 34602 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #24679: <==negation-removal== 85124 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #33021: <==negation-removal== 42721 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #41527: <==negation-removal== 70481 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #52234: <==negation-removal== 31462 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #66911: <==negation-removal== 31442 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #89976: <==negation-removal== 61642 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #90476: <==negation-removal== 89321 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #31442: origin
                    (Bd_survivorat_s_p4)

                    ; #31462: origin
                    (Ba_survivorat_s_p4)

                    ; #34602: <==closure== 70481 (pos)
                    (Pc_survivorat_s_p4)

                    ; #42721: <==closure== 31462 (pos)
                    (Pa_survivorat_s_p4)

                    ; #61642: origin
                    (Bb_survivorat_s_p4)

                    ; #70481: origin
                    (Bc_survivorat_s_p4)

                    ; #85124: <==closure== 31442 (pos)
                    (Pd_survivorat_s_p4)

                    ; #89321: <==closure== 61642 (pos)
                    (Pb_survivorat_s_p4)

                    ; #23253: <==negation-removal== 34602 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #24679: <==negation-removal== 85124 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #33021: <==negation-removal== 42721 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #41527: <==negation-removal== 70481 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #52234: <==negation-removal== 31462 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #66911: <==negation-removal== 31442 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #89976: <==negation-removal== 61642 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #90476: <==negation-removal== 89321 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #31442: origin
                    (Bd_survivorat_s_p4)

                    ; #31462: origin
                    (Ba_survivorat_s_p4)

                    ; #34602: <==closure== 70481 (pos)
                    (Pc_survivorat_s_p4)

                    ; #42721: <==closure== 31462 (pos)
                    (Pa_survivorat_s_p4)

                    ; #61642: origin
                    (Bb_survivorat_s_p4)

                    ; #70481: origin
                    (Bc_survivorat_s_p4)

                    ; #85124: <==closure== 31442 (pos)
                    (Pd_survivorat_s_p4)

                    ; #89321: <==closure== 61642 (pos)
                    (Pb_survivorat_s_p4)

                    ; #23253: <==negation-removal== 34602 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #24679: <==negation-removal== 85124 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #33021: <==negation-removal== 42721 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #41527: <==negation-removal== 70481 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #52234: <==negation-removal== 31462 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #66911: <==negation-removal== 31442 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #89976: <==negation-removal== 61642 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #90476: <==negation-removal== 89321 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #31442: origin
                    (Bd_survivorat_s_p4)

                    ; #31462: origin
                    (Ba_survivorat_s_p4)

                    ; #34602: <==closure== 70481 (pos)
                    (Pc_survivorat_s_p4)

                    ; #42721: <==closure== 31462 (pos)
                    (Pa_survivorat_s_p4)

                    ; #61642: origin
                    (Bb_survivorat_s_p4)

                    ; #70481: origin
                    (Bc_survivorat_s_p4)

                    ; #85124: <==closure== 31442 (pos)
                    (Pd_survivorat_s_p4)

                    ; #89321: <==closure== 61642 (pos)
                    (Pb_survivorat_s_p4)

                    ; #23253: <==negation-removal== 34602 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #24679: <==negation-removal== 85124 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #33021: <==negation-removal== 42721 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #41527: <==negation-removal== 70481 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #52234: <==negation-removal== 31462 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #66911: <==negation-removal== 31442 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #89976: <==negation-removal== 61642 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #90476: <==negation-removal== 89321 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #13142: <==closure== 73294 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16739: origin
                    (Bd_survivorat_s_p5)

                    ; #19248: <==closure== 70591 (pos)
                    (Pb_survivorat_s_p5)

                    ; #47982: <==closure== 77459 (pos)
                    (Pc_survivorat_s_p5)

                    ; #70591: origin
                    (Bb_survivorat_s_p5)

                    ; #73294: origin
                    (Ba_survivorat_s_p5)

                    ; #77459: origin
                    (Bc_survivorat_s_p5)

                    ; #88572: <==closure== 16739 (pos)
                    (Pd_survivorat_s_p5)

                    ; #18549: <==negation-removal== 70591 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #25173: <==negation-removal== 13142 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #25276: <==negation-removal== 16739 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #27208: <==negation-removal== 47982 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #47414: <==negation-removal== 88572 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #63772: <==negation-removal== 77459 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #77860: <==negation-removal== 73294 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #89969: <==negation-removal== 19248 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #13142: <==closure== 73294 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16739: origin
                    (Bd_survivorat_s_p5)

                    ; #19248: <==closure== 70591 (pos)
                    (Pb_survivorat_s_p5)

                    ; #47982: <==closure== 77459 (pos)
                    (Pc_survivorat_s_p5)

                    ; #70591: origin
                    (Bb_survivorat_s_p5)

                    ; #73294: origin
                    (Ba_survivorat_s_p5)

                    ; #77459: origin
                    (Bc_survivorat_s_p5)

                    ; #88572: <==closure== 16739 (pos)
                    (Pd_survivorat_s_p5)

                    ; #18549: <==negation-removal== 70591 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #25173: <==negation-removal== 13142 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #25276: <==negation-removal== 16739 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #27208: <==negation-removal== 47982 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #47414: <==negation-removal== 88572 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #63772: <==negation-removal== 77459 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #77860: <==negation-removal== 73294 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #89969: <==negation-removal== 19248 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #13142: <==closure== 73294 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16739: origin
                    (Bd_survivorat_s_p5)

                    ; #19248: <==closure== 70591 (pos)
                    (Pb_survivorat_s_p5)

                    ; #47982: <==closure== 77459 (pos)
                    (Pc_survivorat_s_p5)

                    ; #70591: origin
                    (Bb_survivorat_s_p5)

                    ; #73294: origin
                    (Ba_survivorat_s_p5)

                    ; #77459: origin
                    (Bc_survivorat_s_p5)

                    ; #88572: <==closure== 16739 (pos)
                    (Pd_survivorat_s_p5)

                    ; #18549: <==negation-removal== 70591 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #25173: <==negation-removal== 13142 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #25276: <==negation-removal== 16739 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #27208: <==negation-removal== 47982 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #47414: <==negation-removal== 88572 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #63772: <==negation-removal== 77459 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #77860: <==negation-removal== 73294 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #89969: <==negation-removal== 19248 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #13142: <==closure== 73294 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16739: origin
                    (Bd_survivorat_s_p5)

                    ; #19248: <==closure== 70591 (pos)
                    (Pb_survivorat_s_p5)

                    ; #47982: <==closure== 77459 (pos)
                    (Pc_survivorat_s_p5)

                    ; #70591: origin
                    (Bb_survivorat_s_p5)

                    ; #73294: origin
                    (Ba_survivorat_s_p5)

                    ; #77459: origin
                    (Bc_survivorat_s_p5)

                    ; #88572: <==closure== 16739 (pos)
                    (Pd_survivorat_s_p5)

                    ; #18549: <==negation-removal== 70591 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #25173: <==negation-removal== 13142 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #25276: <==negation-removal== 16739 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #27208: <==negation-removal== 47982 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #47414: <==negation-removal== 88572 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #63772: <==negation-removal== 77459 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #77860: <==negation-removal== 73294 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #89969: <==negation-removal== 19248 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #13961: origin
                    (Bc_survivorat_s_p6)

                    ; #18671: origin
                    (Bb_survivorat_s_p6)

                    ; #37262: origin
                    (Bd_survivorat_s_p6)

                    ; #44370: <==closure== 37262 (pos)
                    (Pd_survivorat_s_p6)

                    ; #53759: <==closure== 18671 (pos)
                    (Pb_survivorat_s_p6)

                    ; #60851: origin
                    (Ba_survivorat_s_p6)

                    ; #78979: <==closure== 13961 (pos)
                    (Pc_survivorat_s_p6)

                    ; #85626: <==closure== 60851 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19256: <==negation-removal== 78979 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #34697: <==negation-removal== 18671 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #44262: <==negation-removal== 53759 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #50679: <==negation-removal== 13961 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #57207: <==negation-removal== 60851 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #79420: <==negation-removal== 37262 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #87635: <==negation-removal== 44370 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #89617: <==negation-removal== 85626 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #13961: origin
                    (Bc_survivorat_s_p6)

                    ; #18671: origin
                    (Bb_survivorat_s_p6)

                    ; #37262: origin
                    (Bd_survivorat_s_p6)

                    ; #44370: <==closure== 37262 (pos)
                    (Pd_survivorat_s_p6)

                    ; #53759: <==closure== 18671 (pos)
                    (Pb_survivorat_s_p6)

                    ; #60851: origin
                    (Ba_survivorat_s_p6)

                    ; #78979: <==closure== 13961 (pos)
                    (Pc_survivorat_s_p6)

                    ; #85626: <==closure== 60851 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19256: <==negation-removal== 78979 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #34697: <==negation-removal== 18671 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #44262: <==negation-removal== 53759 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #50679: <==negation-removal== 13961 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #57207: <==negation-removal== 60851 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #79420: <==negation-removal== 37262 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #87635: <==negation-removal== 44370 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #89617: <==negation-removal== 85626 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #13961: origin
                    (Bc_survivorat_s_p6)

                    ; #18671: origin
                    (Bb_survivorat_s_p6)

                    ; #37262: origin
                    (Bd_survivorat_s_p6)

                    ; #44370: <==closure== 37262 (pos)
                    (Pd_survivorat_s_p6)

                    ; #53759: <==closure== 18671 (pos)
                    (Pb_survivorat_s_p6)

                    ; #60851: origin
                    (Ba_survivorat_s_p6)

                    ; #78979: <==closure== 13961 (pos)
                    (Pc_survivorat_s_p6)

                    ; #85626: <==closure== 60851 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19256: <==negation-removal== 78979 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #34697: <==negation-removal== 18671 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #44262: <==negation-removal== 53759 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #50679: <==negation-removal== 13961 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #57207: <==negation-removal== 60851 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #79420: <==negation-removal== 37262 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #87635: <==negation-removal== 44370 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #89617: <==negation-removal== 85626 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #13961: origin
                    (Bc_survivorat_s_p6)

                    ; #18671: origin
                    (Bb_survivorat_s_p6)

                    ; #37262: origin
                    (Bd_survivorat_s_p6)

                    ; #44370: <==closure== 37262 (pos)
                    (Pd_survivorat_s_p6)

                    ; #53759: <==closure== 18671 (pos)
                    (Pb_survivorat_s_p6)

                    ; #60851: origin
                    (Ba_survivorat_s_p6)

                    ; #78979: <==closure== 13961 (pos)
                    (Pc_survivorat_s_p6)

                    ; #85626: <==closure== 60851 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19256: <==negation-removal== 78979 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #34697: <==negation-removal== 18671 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #44262: <==negation-removal== 53759 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #50679: <==negation-removal== 13961 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #57207: <==negation-removal== 60851 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #79420: <==negation-removal== 37262 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #87635: <==negation-removal== 44370 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #89617: <==negation-removal== 85626 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #31402: origin
                    (Bc_survivorat_s_p7)

                    ; #35062: origin
                    (Ba_survivorat_s_p7)

                    ; #42012: <==closure== 48010 (pos)
                    (Pb_survivorat_s_p7)

                    ; #46939: origin
                    (Bd_survivorat_s_p7)

                    ; #48010: origin
                    (Bb_survivorat_s_p7)

                    ; #68920: <==closure== 31402 (pos)
                    (Pc_survivorat_s_p7)

                    ; #71994: <==closure== 46939 (pos)
                    (Pd_survivorat_s_p7)

                    ; #91407: <==closure== 35062 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14239: <==negation-removal== 48010 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #14631: <==negation-removal== 46939 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #16228: <==negation-removal== 71994 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #42726: <==negation-removal== 68920 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56306: <==negation-removal== 42012 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #80296: <==negation-removal== 31402 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #86112: <==negation-removal== 35062 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #90596: <==negation-removal== 91407 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #31402: origin
                    (Bc_survivorat_s_p7)

                    ; #35062: origin
                    (Ba_survivorat_s_p7)

                    ; #42012: <==closure== 48010 (pos)
                    (Pb_survivorat_s_p7)

                    ; #46939: origin
                    (Bd_survivorat_s_p7)

                    ; #48010: origin
                    (Bb_survivorat_s_p7)

                    ; #68920: <==closure== 31402 (pos)
                    (Pc_survivorat_s_p7)

                    ; #71994: <==closure== 46939 (pos)
                    (Pd_survivorat_s_p7)

                    ; #91407: <==closure== 35062 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14239: <==negation-removal== 48010 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #14631: <==negation-removal== 46939 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #16228: <==negation-removal== 71994 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #42726: <==negation-removal== 68920 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56306: <==negation-removal== 42012 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #80296: <==negation-removal== 31402 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #86112: <==negation-removal== 35062 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #90596: <==negation-removal== 91407 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #31402: origin
                    (Bc_survivorat_s_p7)

                    ; #35062: origin
                    (Ba_survivorat_s_p7)

                    ; #42012: <==closure== 48010 (pos)
                    (Pb_survivorat_s_p7)

                    ; #46939: origin
                    (Bd_survivorat_s_p7)

                    ; #48010: origin
                    (Bb_survivorat_s_p7)

                    ; #68920: <==closure== 31402 (pos)
                    (Pc_survivorat_s_p7)

                    ; #71994: <==closure== 46939 (pos)
                    (Pd_survivorat_s_p7)

                    ; #91407: <==closure== 35062 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14239: <==negation-removal== 48010 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #14631: <==negation-removal== 46939 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #16228: <==negation-removal== 71994 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #42726: <==negation-removal== 68920 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56306: <==negation-removal== 42012 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #80296: <==negation-removal== 31402 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #86112: <==negation-removal== 35062 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #90596: <==negation-removal== 91407 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #31402: origin
                    (Bc_survivorat_s_p7)

                    ; #35062: origin
                    (Ba_survivorat_s_p7)

                    ; #42012: <==closure== 48010 (pos)
                    (Pb_survivorat_s_p7)

                    ; #46939: origin
                    (Bd_survivorat_s_p7)

                    ; #48010: origin
                    (Bb_survivorat_s_p7)

                    ; #68920: <==closure== 31402 (pos)
                    (Pc_survivorat_s_p7)

                    ; #71994: <==closure== 46939 (pos)
                    (Pd_survivorat_s_p7)

                    ; #91407: <==closure== 35062 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14239: <==negation-removal== 48010 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #14631: <==negation-removal== 46939 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #16228: <==negation-removal== 71994 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #42726: <==negation-removal== 68920 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56306: <==negation-removal== 42012 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #80296: <==negation-removal== 31402 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #86112: <==negation-removal== 35062 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #90596: <==negation-removal== 91407 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #30639: <==closure== 88106 (pos)
                    (Pd_survivorat_s_p8)

                    ; #40222: <==closure== 74558 (pos)
                    (Pc_survivorat_s_p8)

                    ; #45244: origin
                    (Ba_survivorat_s_p8)

                    ; #48135: <==closure== 53531 (pos)
                    (Pb_survivorat_s_p8)

                    ; #53531: origin
                    (Bb_survivorat_s_p8)

                    ; #54011: <==closure== 45244 (pos)
                    (Pa_survivorat_s_p8)

                    ; #74558: origin
                    (Bc_survivorat_s_p8)

                    ; #88106: origin
                    (Bd_survivorat_s_p8)

                    ; #15563: <==negation-removal== 54011 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #39747: <==negation-removal== 88106 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #53857: <==negation-removal== 30639 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #54794: <==negation-removal== 40222 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #65469: <==negation-removal== 48135 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #76563: <==negation-removal== 53531 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #86014: <==negation-removal== 45244 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #90181: <==negation-removal== 74558 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #30639: <==closure== 88106 (pos)
                    (Pd_survivorat_s_p8)

                    ; #40222: <==closure== 74558 (pos)
                    (Pc_survivorat_s_p8)

                    ; #45244: origin
                    (Ba_survivorat_s_p8)

                    ; #48135: <==closure== 53531 (pos)
                    (Pb_survivorat_s_p8)

                    ; #53531: origin
                    (Bb_survivorat_s_p8)

                    ; #54011: <==closure== 45244 (pos)
                    (Pa_survivorat_s_p8)

                    ; #74558: origin
                    (Bc_survivorat_s_p8)

                    ; #88106: origin
                    (Bd_survivorat_s_p8)

                    ; #15563: <==negation-removal== 54011 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #39747: <==negation-removal== 88106 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #53857: <==negation-removal== 30639 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #54794: <==negation-removal== 40222 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #65469: <==negation-removal== 48135 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #76563: <==negation-removal== 53531 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #86014: <==negation-removal== 45244 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #90181: <==negation-removal== 74558 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #30639: <==closure== 88106 (pos)
                    (Pd_survivorat_s_p8)

                    ; #40222: <==closure== 74558 (pos)
                    (Pc_survivorat_s_p8)

                    ; #45244: origin
                    (Ba_survivorat_s_p8)

                    ; #48135: <==closure== 53531 (pos)
                    (Pb_survivorat_s_p8)

                    ; #53531: origin
                    (Bb_survivorat_s_p8)

                    ; #54011: <==closure== 45244 (pos)
                    (Pa_survivorat_s_p8)

                    ; #74558: origin
                    (Bc_survivorat_s_p8)

                    ; #88106: origin
                    (Bd_survivorat_s_p8)

                    ; #15563: <==negation-removal== 54011 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #39747: <==negation-removal== 88106 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #53857: <==negation-removal== 30639 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #54794: <==negation-removal== 40222 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #65469: <==negation-removal== 48135 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #76563: <==negation-removal== 53531 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #86014: <==negation-removal== 45244 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #90181: <==negation-removal== 74558 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #30639: <==closure== 88106 (pos)
                    (Pd_survivorat_s_p8)

                    ; #40222: <==closure== 74558 (pos)
                    (Pc_survivorat_s_p8)

                    ; #45244: origin
                    (Ba_survivorat_s_p8)

                    ; #48135: <==closure== 53531 (pos)
                    (Pb_survivorat_s_p8)

                    ; #53531: origin
                    (Bb_survivorat_s_p8)

                    ; #54011: <==closure== 45244 (pos)
                    (Pa_survivorat_s_p8)

                    ; #74558: origin
                    (Bc_survivorat_s_p8)

                    ; #88106: origin
                    (Bd_survivorat_s_p8)

                    ; #15563: <==negation-removal== 54011 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #39747: <==negation-removal== 88106 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #53857: <==negation-removal== 30639 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #54794: <==negation-removal== 40222 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #65469: <==negation-removal== 48135 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #76563: <==negation-removal== 53531 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #86014: <==negation-removal== 45244 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #90181: <==negation-removal== 74558 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #25721: origin
                    (Bc_survivorat_s_p9)

                    ; #27086: <==closure== 78288 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47359: <==closure== 25721 (pos)
                    (Pc_survivorat_s_p9)

                    ; #68214: <==closure== 96111 (pos)
                    (Pd_survivorat_s_p9)

                    ; #78288: origin
                    (Bb_survivorat_s_p9)

                    ; #78925: <==closure== 90794 (pos)
                    (Pa_survivorat_s_p9)

                    ; #90794: origin
                    (Ba_survivorat_s_p9)

                    ; #96111: origin
                    (Bd_survivorat_s_p9)

                    ; #12825: <==negation-removal== 78925 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #28115: <==negation-removal== 27086 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #48067: <==negation-removal== 96111 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #48122: <==negation-removal== 68214 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #63852: <==negation-removal== 47359 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #68086: <==negation-removal== 25721 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #77275: <==negation-removal== 90794 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #82569: <==negation-removal== 78288 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #25721: origin
                    (Bc_survivorat_s_p9)

                    ; #27086: <==closure== 78288 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47359: <==closure== 25721 (pos)
                    (Pc_survivorat_s_p9)

                    ; #68214: <==closure== 96111 (pos)
                    (Pd_survivorat_s_p9)

                    ; #78288: origin
                    (Bb_survivorat_s_p9)

                    ; #78925: <==closure== 90794 (pos)
                    (Pa_survivorat_s_p9)

                    ; #90794: origin
                    (Ba_survivorat_s_p9)

                    ; #96111: origin
                    (Bd_survivorat_s_p9)

                    ; #12825: <==negation-removal== 78925 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #28115: <==negation-removal== 27086 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #48067: <==negation-removal== 96111 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #48122: <==negation-removal== 68214 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #63852: <==negation-removal== 47359 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #68086: <==negation-removal== 25721 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #77275: <==negation-removal== 90794 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #82569: <==negation-removal== 78288 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #25721: origin
                    (Bc_survivorat_s_p9)

                    ; #27086: <==closure== 78288 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47359: <==closure== 25721 (pos)
                    (Pc_survivorat_s_p9)

                    ; #68214: <==closure== 96111 (pos)
                    (Pd_survivorat_s_p9)

                    ; #78288: origin
                    (Bb_survivorat_s_p9)

                    ; #78925: <==closure== 90794 (pos)
                    (Pa_survivorat_s_p9)

                    ; #90794: origin
                    (Ba_survivorat_s_p9)

                    ; #96111: origin
                    (Bd_survivorat_s_p9)

                    ; #12825: <==negation-removal== 78925 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #28115: <==negation-removal== 27086 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #48067: <==negation-removal== 96111 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #48122: <==negation-removal== 68214 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #63852: <==negation-removal== 47359 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #68086: <==negation-removal== 25721 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #77275: <==negation-removal== 90794 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #82569: <==negation-removal== 78288 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #25721: origin
                    (Bc_survivorat_s_p9)

                    ; #27086: <==closure== 78288 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47359: <==closure== 25721 (pos)
                    (Pc_survivorat_s_p9)

                    ; #68214: <==closure== 96111 (pos)
                    (Pd_survivorat_s_p9)

                    ; #78288: origin
                    (Bb_survivorat_s_p9)

                    ; #78925: <==closure== 90794 (pos)
                    (Pa_survivorat_s_p9)

                    ; #90794: origin
                    (Ba_survivorat_s_p9)

                    ; #96111: origin
                    (Bd_survivorat_s_p9)

                    ; #12825: <==negation-removal== 78925 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #28115: <==negation-removal== 27086 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #48067: <==negation-removal== 96111 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #48122: <==negation-removal== 68214 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #63852: <==negation-removal== 47359 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #68086: <==negation-removal== 25721 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #77275: <==negation-removal== 90794 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #82569: <==negation-removal== 78288 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #13340: origin
                    (at_a_p1)

                    ; #81685: origin
                    (not_at_a_p1)

                    ; #13340: <==negation-removal== 81685 (pos)
                    (not (at_a_p1))

                    ; #81685: <==negation-removal== 13340 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #70031: origin
                    (at_a_p2)

                    ; #81685: origin
                    (not_at_a_p1)

                    ; #13340: <==negation-removal== 81685 (pos)
                    (not (at_a_p1))

                    ; #77649: <==negation-removal== 70031 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #80279: origin
                    (at_a_p3)

                    ; #81685: origin
                    (not_at_a_p1)

                    ; #13340: <==negation-removal== 81685 (pos)
                    (not (at_a_p1))

                    ; #52398: <==negation-removal== 80279 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #81500: origin
                    (at_a_p4)

                    ; #81685: origin
                    (not_at_a_p1)

                    ; #13340: <==negation-removal== 81685 (pos)
                    (not (at_a_p1))

                    ; #49476: <==negation-removal== 81500 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #81685: origin
                    (not_at_a_p1)

                    ; #85601: origin
                    (at_a_p5)

                    ; #13340: <==negation-removal== 81685 (pos)
                    (not (at_a_p1))

                    ; #38324: <==negation-removal== 85601 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #28286: origin
                    (at_a_p6)

                    ; #81685: origin
                    (not_at_a_p1)

                    ; #13340: <==negation-removal== 81685 (pos)
                    (not (at_a_p1))

                    ; #70686: <==negation-removal== 28286 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #81685: origin
                    (not_at_a_p1)

                    ; #87519: origin
                    (at_a_p7)

                    ; #13340: <==negation-removal== 81685 (pos)
                    (not (at_a_p1))

                    ; #43979: <==negation-removal== 87519 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #14513: origin
                    (at_a_p8)

                    ; #81685: origin
                    (not_at_a_p1)

                    ; #13340: <==negation-removal== 81685 (pos)
                    (not (at_a_p1))

                    ; #60325: <==negation-removal== 14513 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #17848: origin
                    (at_a_p9)

                    ; #81685: origin
                    (not_at_a_p1)

                    ; #12863: <==negation-removal== 17848 (pos)
                    (not (not_at_a_p9))

                    ; #13340: <==negation-removal== 81685 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #13340: origin
                    (at_a_p1)

                    ; #77649: origin
                    (not_at_a_p2)

                    ; #70031: <==negation-removal== 77649 (pos)
                    (not (at_a_p2))

                    ; #81685: <==negation-removal== 13340 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #70031: origin
                    (at_a_p2)

                    ; #77649: origin
                    (not_at_a_p2)

                    ; #70031: <==negation-removal== 77649 (pos)
                    (not (at_a_p2))

                    ; #77649: <==negation-removal== 70031 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #77649: origin
                    (not_at_a_p2)

                    ; #80279: origin
                    (at_a_p3)

                    ; #52398: <==negation-removal== 80279 (pos)
                    (not (not_at_a_p3))

                    ; #70031: <==negation-removal== 77649 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #77649: origin
                    (not_at_a_p2)

                    ; #81500: origin
                    (at_a_p4)

                    ; #49476: <==negation-removal== 81500 (pos)
                    (not (not_at_a_p4))

                    ; #70031: <==negation-removal== 77649 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #77649: origin
                    (not_at_a_p2)

                    ; #85601: origin
                    (at_a_p5)

                    ; #38324: <==negation-removal== 85601 (pos)
                    (not (not_at_a_p5))

                    ; #70031: <==negation-removal== 77649 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #28286: origin
                    (at_a_p6)

                    ; #77649: origin
                    (not_at_a_p2)

                    ; #70031: <==negation-removal== 77649 (pos)
                    (not (at_a_p2))

                    ; #70686: <==negation-removal== 28286 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #77649: origin
                    (not_at_a_p2)

                    ; #87519: origin
                    (at_a_p7)

                    ; #43979: <==negation-removal== 87519 (pos)
                    (not (not_at_a_p7))

                    ; #70031: <==negation-removal== 77649 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #14513: origin
                    (at_a_p8)

                    ; #77649: origin
                    (not_at_a_p2)

                    ; #60325: <==negation-removal== 14513 (pos)
                    (not (not_at_a_p8))

                    ; #70031: <==negation-removal== 77649 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #17848: origin
                    (at_a_p9)

                    ; #77649: origin
                    (not_at_a_p2)

                    ; #12863: <==negation-removal== 17848 (pos)
                    (not (not_at_a_p9))

                    ; #70031: <==negation-removal== 77649 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #13340: origin
                    (at_a_p1)

                    ; #52398: origin
                    (not_at_a_p3)

                    ; #80279: <==negation-removal== 52398 (pos)
                    (not (at_a_p3))

                    ; #81685: <==negation-removal== 13340 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #52398: origin
                    (not_at_a_p3)

                    ; #70031: origin
                    (at_a_p2)

                    ; #77649: <==negation-removal== 70031 (pos)
                    (not (not_at_a_p2))

                    ; #80279: <==negation-removal== 52398 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #52398: origin
                    (not_at_a_p3)

                    ; #80279: origin
                    (at_a_p3)

                    ; #52398: <==negation-removal== 80279 (pos)
                    (not (not_at_a_p3))

                    ; #80279: <==negation-removal== 52398 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #52398: origin
                    (not_at_a_p3)

                    ; #81500: origin
                    (at_a_p4)

                    ; #49476: <==negation-removal== 81500 (pos)
                    (not (not_at_a_p4))

                    ; #80279: <==negation-removal== 52398 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #52398: origin
                    (not_at_a_p3)

                    ; #85601: origin
                    (at_a_p5)

                    ; #38324: <==negation-removal== 85601 (pos)
                    (not (not_at_a_p5))

                    ; #80279: <==negation-removal== 52398 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #28286: origin
                    (at_a_p6)

                    ; #52398: origin
                    (not_at_a_p3)

                    ; #70686: <==negation-removal== 28286 (pos)
                    (not (not_at_a_p6))

                    ; #80279: <==negation-removal== 52398 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #52398: origin
                    (not_at_a_p3)

                    ; #87519: origin
                    (at_a_p7)

                    ; #43979: <==negation-removal== 87519 (pos)
                    (not (not_at_a_p7))

                    ; #80279: <==negation-removal== 52398 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #14513: origin
                    (at_a_p8)

                    ; #52398: origin
                    (not_at_a_p3)

                    ; #60325: <==negation-removal== 14513 (pos)
                    (not (not_at_a_p8))

                    ; #80279: <==negation-removal== 52398 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #17848: origin
                    (at_a_p9)

                    ; #52398: origin
                    (not_at_a_p3)

                    ; #12863: <==negation-removal== 17848 (pos)
                    (not (not_at_a_p9))

                    ; #80279: <==negation-removal== 52398 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #13340: origin
                    (at_a_p1)

                    ; #49476: origin
                    (not_at_a_p4)

                    ; #81500: <==negation-removal== 49476 (pos)
                    (not (at_a_p4))

                    ; #81685: <==negation-removal== 13340 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #49476: origin
                    (not_at_a_p4)

                    ; #70031: origin
                    (at_a_p2)

                    ; #77649: <==negation-removal== 70031 (pos)
                    (not (not_at_a_p2))

                    ; #81500: <==negation-removal== 49476 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #49476: origin
                    (not_at_a_p4)

                    ; #80279: origin
                    (at_a_p3)

                    ; #52398: <==negation-removal== 80279 (pos)
                    (not (not_at_a_p3))

                    ; #81500: <==negation-removal== 49476 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #49476: origin
                    (not_at_a_p4)

                    ; #81500: origin
                    (at_a_p4)

                    ; #49476: <==negation-removal== 81500 (pos)
                    (not (not_at_a_p4))

                    ; #81500: <==negation-removal== 49476 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #49476: origin
                    (not_at_a_p4)

                    ; #85601: origin
                    (at_a_p5)

                    ; #38324: <==negation-removal== 85601 (pos)
                    (not (not_at_a_p5))

                    ; #81500: <==negation-removal== 49476 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #28286: origin
                    (at_a_p6)

                    ; #49476: origin
                    (not_at_a_p4)

                    ; #70686: <==negation-removal== 28286 (pos)
                    (not (not_at_a_p6))

                    ; #81500: <==negation-removal== 49476 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #49476: origin
                    (not_at_a_p4)

                    ; #87519: origin
                    (at_a_p7)

                    ; #43979: <==negation-removal== 87519 (pos)
                    (not (not_at_a_p7))

                    ; #81500: <==negation-removal== 49476 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #14513: origin
                    (at_a_p8)

                    ; #49476: origin
                    (not_at_a_p4)

                    ; #60325: <==negation-removal== 14513 (pos)
                    (not (not_at_a_p8))

                    ; #81500: <==negation-removal== 49476 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #17848: origin
                    (at_a_p9)

                    ; #49476: origin
                    (not_at_a_p4)

                    ; #12863: <==negation-removal== 17848 (pos)
                    (not (not_at_a_p9))

                    ; #81500: <==negation-removal== 49476 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #13340: origin
                    (at_a_p1)

                    ; #38324: origin
                    (not_at_a_p5)

                    ; #81685: <==negation-removal== 13340 (pos)
                    (not (not_at_a_p1))

                    ; #85601: <==negation-removal== 38324 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #38324: origin
                    (not_at_a_p5)

                    ; #70031: origin
                    (at_a_p2)

                    ; #77649: <==negation-removal== 70031 (pos)
                    (not (not_at_a_p2))

                    ; #85601: <==negation-removal== 38324 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #38324: origin
                    (not_at_a_p5)

                    ; #80279: origin
                    (at_a_p3)

                    ; #52398: <==negation-removal== 80279 (pos)
                    (not (not_at_a_p3))

                    ; #85601: <==negation-removal== 38324 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #38324: origin
                    (not_at_a_p5)

                    ; #81500: origin
                    (at_a_p4)

                    ; #49476: <==negation-removal== 81500 (pos)
                    (not (not_at_a_p4))

                    ; #85601: <==negation-removal== 38324 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #38324: origin
                    (not_at_a_p5)

                    ; #85601: origin
                    (at_a_p5)

                    ; #38324: <==negation-removal== 85601 (pos)
                    (not (not_at_a_p5))

                    ; #85601: <==negation-removal== 38324 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #28286: origin
                    (at_a_p6)

                    ; #38324: origin
                    (not_at_a_p5)

                    ; #70686: <==negation-removal== 28286 (pos)
                    (not (not_at_a_p6))

                    ; #85601: <==negation-removal== 38324 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #38324: origin
                    (not_at_a_p5)

                    ; #87519: origin
                    (at_a_p7)

                    ; #43979: <==negation-removal== 87519 (pos)
                    (not (not_at_a_p7))

                    ; #85601: <==negation-removal== 38324 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #14513: origin
                    (at_a_p8)

                    ; #38324: origin
                    (not_at_a_p5)

                    ; #60325: <==negation-removal== 14513 (pos)
                    (not (not_at_a_p8))

                    ; #85601: <==negation-removal== 38324 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #17848: origin
                    (at_a_p9)

                    ; #38324: origin
                    (not_at_a_p5)

                    ; #12863: <==negation-removal== 17848 (pos)
                    (not (not_at_a_p9))

                    ; #85601: <==negation-removal== 38324 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #13340: origin
                    (at_a_p1)

                    ; #70686: origin
                    (not_at_a_p6)

                    ; #28286: <==negation-removal== 70686 (pos)
                    (not (at_a_p6))

                    ; #81685: <==negation-removal== 13340 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #70031: origin
                    (at_a_p2)

                    ; #70686: origin
                    (not_at_a_p6)

                    ; #28286: <==negation-removal== 70686 (pos)
                    (not (at_a_p6))

                    ; #77649: <==negation-removal== 70031 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #70686: origin
                    (not_at_a_p6)

                    ; #80279: origin
                    (at_a_p3)

                    ; #28286: <==negation-removal== 70686 (pos)
                    (not (at_a_p6))

                    ; #52398: <==negation-removal== 80279 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #70686: origin
                    (not_at_a_p6)

                    ; #81500: origin
                    (at_a_p4)

                    ; #28286: <==negation-removal== 70686 (pos)
                    (not (at_a_p6))

                    ; #49476: <==negation-removal== 81500 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #70686: origin
                    (not_at_a_p6)

                    ; #85601: origin
                    (at_a_p5)

                    ; #28286: <==negation-removal== 70686 (pos)
                    (not (at_a_p6))

                    ; #38324: <==negation-removal== 85601 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #28286: origin
                    (at_a_p6)

                    ; #70686: origin
                    (not_at_a_p6)

                    ; #28286: <==negation-removal== 70686 (pos)
                    (not (at_a_p6))

                    ; #70686: <==negation-removal== 28286 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #70686: origin
                    (not_at_a_p6)

                    ; #87519: origin
                    (at_a_p7)

                    ; #28286: <==negation-removal== 70686 (pos)
                    (not (at_a_p6))

                    ; #43979: <==negation-removal== 87519 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #14513: origin
                    (at_a_p8)

                    ; #70686: origin
                    (not_at_a_p6)

                    ; #28286: <==negation-removal== 70686 (pos)
                    (not (at_a_p6))

                    ; #60325: <==negation-removal== 14513 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #17848: origin
                    (at_a_p9)

                    ; #70686: origin
                    (not_at_a_p6)

                    ; #12863: <==negation-removal== 17848 (pos)
                    (not (not_at_a_p9))

                    ; #28286: <==negation-removal== 70686 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #13340: origin
                    (at_a_p1)

                    ; #43979: origin
                    (not_at_a_p7)

                    ; #81685: <==negation-removal== 13340 (pos)
                    (not (not_at_a_p1))

                    ; #87519: <==negation-removal== 43979 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #43979: origin
                    (not_at_a_p7)

                    ; #70031: origin
                    (at_a_p2)

                    ; #77649: <==negation-removal== 70031 (pos)
                    (not (not_at_a_p2))

                    ; #87519: <==negation-removal== 43979 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #43979: origin
                    (not_at_a_p7)

                    ; #80279: origin
                    (at_a_p3)

                    ; #52398: <==negation-removal== 80279 (pos)
                    (not (not_at_a_p3))

                    ; #87519: <==negation-removal== 43979 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #43979: origin
                    (not_at_a_p7)

                    ; #81500: origin
                    (at_a_p4)

                    ; #49476: <==negation-removal== 81500 (pos)
                    (not (not_at_a_p4))

                    ; #87519: <==negation-removal== 43979 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #43979: origin
                    (not_at_a_p7)

                    ; #85601: origin
                    (at_a_p5)

                    ; #38324: <==negation-removal== 85601 (pos)
                    (not (not_at_a_p5))

                    ; #87519: <==negation-removal== 43979 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #28286: origin
                    (at_a_p6)

                    ; #43979: origin
                    (not_at_a_p7)

                    ; #70686: <==negation-removal== 28286 (pos)
                    (not (not_at_a_p6))

                    ; #87519: <==negation-removal== 43979 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #43979: origin
                    (not_at_a_p7)

                    ; #87519: origin
                    (at_a_p7)

                    ; #43979: <==negation-removal== 87519 (pos)
                    (not (not_at_a_p7))

                    ; #87519: <==negation-removal== 43979 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #14513: origin
                    (at_a_p8)

                    ; #43979: origin
                    (not_at_a_p7)

                    ; #60325: <==negation-removal== 14513 (pos)
                    (not (not_at_a_p8))

                    ; #87519: <==negation-removal== 43979 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #17848: origin
                    (at_a_p9)

                    ; #43979: origin
                    (not_at_a_p7)

                    ; #12863: <==negation-removal== 17848 (pos)
                    (not (not_at_a_p9))

                    ; #87519: <==negation-removal== 43979 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #13340: origin
                    (at_a_p1)

                    ; #60325: origin
                    (not_at_a_p8)

                    ; #14513: <==negation-removal== 60325 (pos)
                    (not (at_a_p8))

                    ; #81685: <==negation-removal== 13340 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #60325: origin
                    (not_at_a_p8)

                    ; #70031: origin
                    (at_a_p2)

                    ; #14513: <==negation-removal== 60325 (pos)
                    (not (at_a_p8))

                    ; #77649: <==negation-removal== 70031 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #60325: origin
                    (not_at_a_p8)

                    ; #80279: origin
                    (at_a_p3)

                    ; #14513: <==negation-removal== 60325 (pos)
                    (not (at_a_p8))

                    ; #52398: <==negation-removal== 80279 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #60325: origin
                    (not_at_a_p8)

                    ; #81500: origin
                    (at_a_p4)

                    ; #14513: <==negation-removal== 60325 (pos)
                    (not (at_a_p8))

                    ; #49476: <==negation-removal== 81500 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #60325: origin
                    (not_at_a_p8)

                    ; #85601: origin
                    (at_a_p5)

                    ; #14513: <==negation-removal== 60325 (pos)
                    (not (at_a_p8))

                    ; #38324: <==negation-removal== 85601 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #28286: origin
                    (at_a_p6)

                    ; #60325: origin
                    (not_at_a_p8)

                    ; #14513: <==negation-removal== 60325 (pos)
                    (not (at_a_p8))

                    ; #70686: <==negation-removal== 28286 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #60325: origin
                    (not_at_a_p8)

                    ; #87519: origin
                    (at_a_p7)

                    ; #14513: <==negation-removal== 60325 (pos)
                    (not (at_a_p8))

                    ; #43979: <==negation-removal== 87519 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #14513: origin
                    (at_a_p8)

                    ; #60325: origin
                    (not_at_a_p8)

                    ; #14513: <==negation-removal== 60325 (pos)
                    (not (at_a_p8))

                    ; #60325: <==negation-removal== 14513 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #17848: origin
                    (at_a_p9)

                    ; #60325: origin
                    (not_at_a_p8)

                    ; #12863: <==negation-removal== 17848 (pos)
                    (not (not_at_a_p9))

                    ; #14513: <==negation-removal== 60325 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #12863: origin
                    (not_at_a_p9)

                    ; #13340: origin
                    (at_a_p1)

                    ; #17848: <==negation-removal== 12863 (pos)
                    (not (at_a_p9))

                    ; #81685: <==negation-removal== 13340 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #12863: origin
                    (not_at_a_p9)

                    ; #70031: origin
                    (at_a_p2)

                    ; #17848: <==negation-removal== 12863 (pos)
                    (not (at_a_p9))

                    ; #77649: <==negation-removal== 70031 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #12863: origin
                    (not_at_a_p9)

                    ; #80279: origin
                    (at_a_p3)

                    ; #17848: <==negation-removal== 12863 (pos)
                    (not (at_a_p9))

                    ; #52398: <==negation-removal== 80279 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #12863: origin
                    (not_at_a_p9)

                    ; #81500: origin
                    (at_a_p4)

                    ; #17848: <==negation-removal== 12863 (pos)
                    (not (at_a_p9))

                    ; #49476: <==negation-removal== 81500 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #12863: origin
                    (not_at_a_p9)

                    ; #85601: origin
                    (at_a_p5)

                    ; #17848: <==negation-removal== 12863 (pos)
                    (not (at_a_p9))

                    ; #38324: <==negation-removal== 85601 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #12863: origin
                    (not_at_a_p9)

                    ; #28286: origin
                    (at_a_p6)

                    ; #17848: <==negation-removal== 12863 (pos)
                    (not (at_a_p9))

                    ; #70686: <==negation-removal== 28286 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #12863: origin
                    (not_at_a_p9)

                    ; #87519: origin
                    (at_a_p7)

                    ; #17848: <==negation-removal== 12863 (pos)
                    (not (at_a_p9))

                    ; #43979: <==negation-removal== 87519 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #12863: origin
                    (not_at_a_p9)

                    ; #14513: origin
                    (at_a_p8)

                    ; #17848: <==negation-removal== 12863 (pos)
                    (not (at_a_p9))

                    ; #60325: <==negation-removal== 14513 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #12863: origin
                    (not_at_a_p9)

                    ; #17848: origin
                    (at_a_p9)

                    ; #12863: <==negation-removal== 17848 (pos)
                    (not (not_at_a_p9))

                    ; #17848: <==negation-removal== 12863 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #61458: origin
                    (not_at_b_p1)

                    ; #66507: origin
                    (at_b_p1)

                    ; #61458: <==negation-removal== 66507 (pos)
                    (not (not_at_b_p1))

                    ; #66507: <==negation-removal== 61458 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #61458: origin
                    (not_at_b_p1)

                    ; #90447: origin
                    (at_b_p2)

                    ; #24219: <==negation-removal== 90447 (pos)
                    (not (not_at_b_p2))

                    ; #66507: <==negation-removal== 61458 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #61458: origin
                    (not_at_b_p1)

                    ; #63043: origin
                    (at_b_p3)

                    ; #29931: <==negation-removal== 63043 (pos)
                    (not (not_at_b_p3))

                    ; #66507: <==negation-removal== 61458 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #28144: origin
                    (at_b_p4)

                    ; #61458: origin
                    (not_at_b_p1)

                    ; #48634: <==negation-removal== 28144 (pos)
                    (not (not_at_b_p4))

                    ; #66507: <==negation-removal== 61458 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #42402: origin
                    (at_b_p5)

                    ; #61458: origin
                    (not_at_b_p1)

                    ; #60302: <==negation-removal== 42402 (pos)
                    (not (not_at_b_p5))

                    ; #66507: <==negation-removal== 61458 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #12164: origin
                    (at_b_p6)

                    ; #61458: origin
                    (not_at_b_p1)

                    ; #59988: <==negation-removal== 12164 (pos)
                    (not (not_at_b_p6))

                    ; #66507: <==negation-removal== 61458 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #60320: origin
                    (at_b_p7)

                    ; #61458: origin
                    (not_at_b_p1)

                    ; #11119: <==negation-removal== 60320 (pos)
                    (not (not_at_b_p7))

                    ; #66507: <==negation-removal== 61458 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #26586: origin
                    (at_b_p8)

                    ; #61458: origin
                    (not_at_b_p1)

                    ; #66507: <==negation-removal== 61458 (pos)
                    (not (at_b_p1))

                    ; #76312: <==negation-removal== 26586 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #27480: origin
                    (at_b_p9)

                    ; #61458: origin
                    (not_at_b_p1)

                    ; #38587: <==negation-removal== 27480 (pos)
                    (not (not_at_b_p9))

                    ; #66507: <==negation-removal== 61458 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #24219: origin
                    (not_at_b_p2)

                    ; #66507: origin
                    (at_b_p1)

                    ; #61458: <==negation-removal== 66507 (pos)
                    (not (not_at_b_p1))

                    ; #90447: <==negation-removal== 24219 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #24219: origin
                    (not_at_b_p2)

                    ; #90447: origin
                    (at_b_p2)

                    ; #24219: <==negation-removal== 90447 (pos)
                    (not (not_at_b_p2))

                    ; #90447: <==negation-removal== 24219 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #24219: origin
                    (not_at_b_p2)

                    ; #63043: origin
                    (at_b_p3)

                    ; #29931: <==negation-removal== 63043 (pos)
                    (not (not_at_b_p3))

                    ; #90447: <==negation-removal== 24219 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #24219: origin
                    (not_at_b_p2)

                    ; #28144: origin
                    (at_b_p4)

                    ; #48634: <==negation-removal== 28144 (pos)
                    (not (not_at_b_p4))

                    ; #90447: <==negation-removal== 24219 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #24219: origin
                    (not_at_b_p2)

                    ; #42402: origin
                    (at_b_p5)

                    ; #60302: <==negation-removal== 42402 (pos)
                    (not (not_at_b_p5))

                    ; #90447: <==negation-removal== 24219 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #12164: origin
                    (at_b_p6)

                    ; #24219: origin
                    (not_at_b_p2)

                    ; #59988: <==negation-removal== 12164 (pos)
                    (not (not_at_b_p6))

                    ; #90447: <==negation-removal== 24219 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #24219: origin
                    (not_at_b_p2)

                    ; #60320: origin
                    (at_b_p7)

                    ; #11119: <==negation-removal== 60320 (pos)
                    (not (not_at_b_p7))

                    ; #90447: <==negation-removal== 24219 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #24219: origin
                    (not_at_b_p2)

                    ; #26586: origin
                    (at_b_p8)

                    ; #76312: <==negation-removal== 26586 (pos)
                    (not (not_at_b_p8))

                    ; #90447: <==negation-removal== 24219 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #24219: origin
                    (not_at_b_p2)

                    ; #27480: origin
                    (at_b_p9)

                    ; #38587: <==negation-removal== 27480 (pos)
                    (not (not_at_b_p9))

                    ; #90447: <==negation-removal== 24219 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #29931: origin
                    (not_at_b_p3)

                    ; #66507: origin
                    (at_b_p1)

                    ; #61458: <==negation-removal== 66507 (pos)
                    (not (not_at_b_p1))

                    ; #63043: <==negation-removal== 29931 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #29931: origin
                    (not_at_b_p3)

                    ; #90447: origin
                    (at_b_p2)

                    ; #24219: <==negation-removal== 90447 (pos)
                    (not (not_at_b_p2))

                    ; #63043: <==negation-removal== 29931 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #29931: origin
                    (not_at_b_p3)

                    ; #63043: origin
                    (at_b_p3)

                    ; #29931: <==negation-removal== 63043 (pos)
                    (not (not_at_b_p3))

                    ; #63043: <==negation-removal== 29931 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #28144: origin
                    (at_b_p4)

                    ; #29931: origin
                    (not_at_b_p3)

                    ; #48634: <==negation-removal== 28144 (pos)
                    (not (not_at_b_p4))

                    ; #63043: <==negation-removal== 29931 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #29931: origin
                    (not_at_b_p3)

                    ; #42402: origin
                    (at_b_p5)

                    ; #60302: <==negation-removal== 42402 (pos)
                    (not (not_at_b_p5))

                    ; #63043: <==negation-removal== 29931 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #12164: origin
                    (at_b_p6)

                    ; #29931: origin
                    (not_at_b_p3)

                    ; #59988: <==negation-removal== 12164 (pos)
                    (not (not_at_b_p6))

                    ; #63043: <==negation-removal== 29931 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #29931: origin
                    (not_at_b_p3)

                    ; #60320: origin
                    (at_b_p7)

                    ; #11119: <==negation-removal== 60320 (pos)
                    (not (not_at_b_p7))

                    ; #63043: <==negation-removal== 29931 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #26586: origin
                    (at_b_p8)

                    ; #29931: origin
                    (not_at_b_p3)

                    ; #63043: <==negation-removal== 29931 (pos)
                    (not (at_b_p3))

                    ; #76312: <==negation-removal== 26586 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #27480: origin
                    (at_b_p9)

                    ; #29931: origin
                    (not_at_b_p3)

                    ; #38587: <==negation-removal== 27480 (pos)
                    (not (not_at_b_p9))

                    ; #63043: <==negation-removal== 29931 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #48634: origin
                    (not_at_b_p4)

                    ; #66507: origin
                    (at_b_p1)

                    ; #28144: <==negation-removal== 48634 (pos)
                    (not (at_b_p4))

                    ; #61458: <==negation-removal== 66507 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #48634: origin
                    (not_at_b_p4)

                    ; #90447: origin
                    (at_b_p2)

                    ; #24219: <==negation-removal== 90447 (pos)
                    (not (not_at_b_p2))

                    ; #28144: <==negation-removal== 48634 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #48634: origin
                    (not_at_b_p4)

                    ; #63043: origin
                    (at_b_p3)

                    ; #28144: <==negation-removal== 48634 (pos)
                    (not (at_b_p4))

                    ; #29931: <==negation-removal== 63043 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #28144: origin
                    (at_b_p4)

                    ; #48634: origin
                    (not_at_b_p4)

                    ; #28144: <==negation-removal== 48634 (pos)
                    (not (at_b_p4))

                    ; #48634: <==negation-removal== 28144 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #42402: origin
                    (at_b_p5)

                    ; #48634: origin
                    (not_at_b_p4)

                    ; #28144: <==negation-removal== 48634 (pos)
                    (not (at_b_p4))

                    ; #60302: <==negation-removal== 42402 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #12164: origin
                    (at_b_p6)

                    ; #48634: origin
                    (not_at_b_p4)

                    ; #28144: <==negation-removal== 48634 (pos)
                    (not (at_b_p4))

                    ; #59988: <==negation-removal== 12164 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #48634: origin
                    (not_at_b_p4)

                    ; #60320: origin
                    (at_b_p7)

                    ; #11119: <==negation-removal== 60320 (pos)
                    (not (not_at_b_p7))

                    ; #28144: <==negation-removal== 48634 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #26586: origin
                    (at_b_p8)

                    ; #48634: origin
                    (not_at_b_p4)

                    ; #28144: <==negation-removal== 48634 (pos)
                    (not (at_b_p4))

                    ; #76312: <==negation-removal== 26586 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #27480: origin
                    (at_b_p9)

                    ; #48634: origin
                    (not_at_b_p4)

                    ; #28144: <==negation-removal== 48634 (pos)
                    (not (at_b_p4))

                    ; #38587: <==negation-removal== 27480 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #60302: origin
                    (not_at_b_p5)

                    ; #66507: origin
                    (at_b_p1)

                    ; #42402: <==negation-removal== 60302 (pos)
                    (not (at_b_p5))

                    ; #61458: <==negation-removal== 66507 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #60302: origin
                    (not_at_b_p5)

                    ; #90447: origin
                    (at_b_p2)

                    ; #24219: <==negation-removal== 90447 (pos)
                    (not (not_at_b_p2))

                    ; #42402: <==negation-removal== 60302 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #60302: origin
                    (not_at_b_p5)

                    ; #63043: origin
                    (at_b_p3)

                    ; #29931: <==negation-removal== 63043 (pos)
                    (not (not_at_b_p3))

                    ; #42402: <==negation-removal== 60302 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #28144: origin
                    (at_b_p4)

                    ; #60302: origin
                    (not_at_b_p5)

                    ; #42402: <==negation-removal== 60302 (pos)
                    (not (at_b_p5))

                    ; #48634: <==negation-removal== 28144 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #42402: origin
                    (at_b_p5)

                    ; #60302: origin
                    (not_at_b_p5)

                    ; #42402: <==negation-removal== 60302 (pos)
                    (not (at_b_p5))

                    ; #60302: <==negation-removal== 42402 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #12164: origin
                    (at_b_p6)

                    ; #60302: origin
                    (not_at_b_p5)

                    ; #42402: <==negation-removal== 60302 (pos)
                    (not (at_b_p5))

                    ; #59988: <==negation-removal== 12164 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #60302: origin
                    (not_at_b_p5)

                    ; #60320: origin
                    (at_b_p7)

                    ; #11119: <==negation-removal== 60320 (pos)
                    (not (not_at_b_p7))

                    ; #42402: <==negation-removal== 60302 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #26586: origin
                    (at_b_p8)

                    ; #60302: origin
                    (not_at_b_p5)

                    ; #42402: <==negation-removal== 60302 (pos)
                    (not (at_b_p5))

                    ; #76312: <==negation-removal== 26586 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #27480: origin
                    (at_b_p9)

                    ; #60302: origin
                    (not_at_b_p5)

                    ; #38587: <==negation-removal== 27480 (pos)
                    (not (not_at_b_p9))

                    ; #42402: <==negation-removal== 60302 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #59988: origin
                    (not_at_b_p6)

                    ; #66507: origin
                    (at_b_p1)

                    ; #12164: <==negation-removal== 59988 (pos)
                    (not (at_b_p6))

                    ; #61458: <==negation-removal== 66507 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #59988: origin
                    (not_at_b_p6)

                    ; #90447: origin
                    (at_b_p2)

                    ; #12164: <==negation-removal== 59988 (pos)
                    (not (at_b_p6))

                    ; #24219: <==negation-removal== 90447 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #59988: origin
                    (not_at_b_p6)

                    ; #63043: origin
                    (at_b_p3)

                    ; #12164: <==negation-removal== 59988 (pos)
                    (not (at_b_p6))

                    ; #29931: <==negation-removal== 63043 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #28144: origin
                    (at_b_p4)

                    ; #59988: origin
                    (not_at_b_p6)

                    ; #12164: <==negation-removal== 59988 (pos)
                    (not (at_b_p6))

                    ; #48634: <==negation-removal== 28144 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #42402: origin
                    (at_b_p5)

                    ; #59988: origin
                    (not_at_b_p6)

                    ; #12164: <==negation-removal== 59988 (pos)
                    (not (at_b_p6))

                    ; #60302: <==negation-removal== 42402 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #12164: origin
                    (at_b_p6)

                    ; #59988: origin
                    (not_at_b_p6)

                    ; #12164: <==negation-removal== 59988 (pos)
                    (not (at_b_p6))

                    ; #59988: <==negation-removal== 12164 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #59988: origin
                    (not_at_b_p6)

                    ; #60320: origin
                    (at_b_p7)

                    ; #11119: <==negation-removal== 60320 (pos)
                    (not (not_at_b_p7))

                    ; #12164: <==negation-removal== 59988 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #26586: origin
                    (at_b_p8)

                    ; #59988: origin
                    (not_at_b_p6)

                    ; #12164: <==negation-removal== 59988 (pos)
                    (not (at_b_p6))

                    ; #76312: <==negation-removal== 26586 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #27480: origin
                    (at_b_p9)

                    ; #59988: origin
                    (not_at_b_p6)

                    ; #12164: <==negation-removal== 59988 (pos)
                    (not (at_b_p6))

                    ; #38587: <==negation-removal== 27480 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #11119: origin
                    (not_at_b_p7)

                    ; #66507: origin
                    (at_b_p1)

                    ; #60320: <==negation-removal== 11119 (pos)
                    (not (at_b_p7))

                    ; #61458: <==negation-removal== 66507 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #11119: origin
                    (not_at_b_p7)

                    ; #90447: origin
                    (at_b_p2)

                    ; #24219: <==negation-removal== 90447 (pos)
                    (not (not_at_b_p2))

                    ; #60320: <==negation-removal== 11119 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #11119: origin
                    (not_at_b_p7)

                    ; #63043: origin
                    (at_b_p3)

                    ; #29931: <==negation-removal== 63043 (pos)
                    (not (not_at_b_p3))

                    ; #60320: <==negation-removal== 11119 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #11119: origin
                    (not_at_b_p7)

                    ; #28144: origin
                    (at_b_p4)

                    ; #48634: <==negation-removal== 28144 (pos)
                    (not (not_at_b_p4))

                    ; #60320: <==negation-removal== 11119 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #11119: origin
                    (not_at_b_p7)

                    ; #42402: origin
                    (at_b_p5)

                    ; #60302: <==negation-removal== 42402 (pos)
                    (not (not_at_b_p5))

                    ; #60320: <==negation-removal== 11119 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #11119: origin
                    (not_at_b_p7)

                    ; #12164: origin
                    (at_b_p6)

                    ; #59988: <==negation-removal== 12164 (pos)
                    (not (not_at_b_p6))

                    ; #60320: <==negation-removal== 11119 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #11119: origin
                    (not_at_b_p7)

                    ; #60320: origin
                    (at_b_p7)

                    ; #11119: <==negation-removal== 60320 (pos)
                    (not (not_at_b_p7))

                    ; #60320: <==negation-removal== 11119 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #11119: origin
                    (not_at_b_p7)

                    ; #26586: origin
                    (at_b_p8)

                    ; #60320: <==negation-removal== 11119 (pos)
                    (not (at_b_p7))

                    ; #76312: <==negation-removal== 26586 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #11119: origin
                    (not_at_b_p7)

                    ; #27480: origin
                    (at_b_p9)

                    ; #38587: <==negation-removal== 27480 (pos)
                    (not (not_at_b_p9))

                    ; #60320: <==negation-removal== 11119 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #66507: origin
                    (at_b_p1)

                    ; #76312: origin
                    (not_at_b_p8)

                    ; #26586: <==negation-removal== 76312 (pos)
                    (not (at_b_p8))

                    ; #61458: <==negation-removal== 66507 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #76312: origin
                    (not_at_b_p8)

                    ; #90447: origin
                    (at_b_p2)

                    ; #24219: <==negation-removal== 90447 (pos)
                    (not (not_at_b_p2))

                    ; #26586: <==negation-removal== 76312 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #63043: origin
                    (at_b_p3)

                    ; #76312: origin
                    (not_at_b_p8)

                    ; #26586: <==negation-removal== 76312 (pos)
                    (not (at_b_p8))

                    ; #29931: <==negation-removal== 63043 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #28144: origin
                    (at_b_p4)

                    ; #76312: origin
                    (not_at_b_p8)

                    ; #26586: <==negation-removal== 76312 (pos)
                    (not (at_b_p8))

                    ; #48634: <==negation-removal== 28144 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #42402: origin
                    (at_b_p5)

                    ; #76312: origin
                    (not_at_b_p8)

                    ; #26586: <==negation-removal== 76312 (pos)
                    (not (at_b_p8))

                    ; #60302: <==negation-removal== 42402 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #12164: origin
                    (at_b_p6)

                    ; #76312: origin
                    (not_at_b_p8)

                    ; #26586: <==negation-removal== 76312 (pos)
                    (not (at_b_p8))

                    ; #59988: <==negation-removal== 12164 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #60320: origin
                    (at_b_p7)

                    ; #76312: origin
                    (not_at_b_p8)

                    ; #11119: <==negation-removal== 60320 (pos)
                    (not (not_at_b_p7))

                    ; #26586: <==negation-removal== 76312 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #26586: origin
                    (at_b_p8)

                    ; #76312: origin
                    (not_at_b_p8)

                    ; #26586: <==negation-removal== 76312 (pos)
                    (not (at_b_p8))

                    ; #76312: <==negation-removal== 26586 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #27480: origin
                    (at_b_p9)

                    ; #76312: origin
                    (not_at_b_p8)

                    ; #26586: <==negation-removal== 76312 (pos)
                    (not (at_b_p8))

                    ; #38587: <==negation-removal== 27480 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #38587: origin
                    (not_at_b_p9)

                    ; #66507: origin
                    (at_b_p1)

                    ; #27480: <==negation-removal== 38587 (pos)
                    (not (at_b_p9))

                    ; #61458: <==negation-removal== 66507 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #38587: origin
                    (not_at_b_p9)

                    ; #90447: origin
                    (at_b_p2)

                    ; #24219: <==negation-removal== 90447 (pos)
                    (not (not_at_b_p2))

                    ; #27480: <==negation-removal== 38587 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #38587: origin
                    (not_at_b_p9)

                    ; #63043: origin
                    (at_b_p3)

                    ; #27480: <==negation-removal== 38587 (pos)
                    (not (at_b_p9))

                    ; #29931: <==negation-removal== 63043 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #28144: origin
                    (at_b_p4)

                    ; #38587: origin
                    (not_at_b_p9)

                    ; #27480: <==negation-removal== 38587 (pos)
                    (not (at_b_p9))

                    ; #48634: <==negation-removal== 28144 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #38587: origin
                    (not_at_b_p9)

                    ; #42402: origin
                    (at_b_p5)

                    ; #27480: <==negation-removal== 38587 (pos)
                    (not (at_b_p9))

                    ; #60302: <==negation-removal== 42402 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #12164: origin
                    (at_b_p6)

                    ; #38587: origin
                    (not_at_b_p9)

                    ; #27480: <==negation-removal== 38587 (pos)
                    (not (at_b_p9))

                    ; #59988: <==negation-removal== 12164 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #38587: origin
                    (not_at_b_p9)

                    ; #60320: origin
                    (at_b_p7)

                    ; #11119: <==negation-removal== 60320 (pos)
                    (not (not_at_b_p7))

                    ; #27480: <==negation-removal== 38587 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #26586: origin
                    (at_b_p8)

                    ; #38587: origin
                    (not_at_b_p9)

                    ; #27480: <==negation-removal== 38587 (pos)
                    (not (at_b_p9))

                    ; #76312: <==negation-removal== 26586 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #27480: origin
                    (at_b_p9)

                    ; #38587: origin
                    (not_at_b_p9)

                    ; #27480: <==negation-removal== 38587 (pos)
                    (not (at_b_p9))

                    ; #38587: <==negation-removal== 27480 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #32895: origin
                    (not_at_c_p1)

                    ; #38990: origin
                    (at_c_p1)

                    ; #32895: <==negation-removal== 38990 (pos)
                    (not (not_at_c_p1))

                    ; #38990: <==negation-removal== 32895 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #32895: origin
                    (not_at_c_p1)

                    ; #67376: origin
                    (at_c_p2)

                    ; #38990: <==negation-removal== 32895 (pos)
                    (not (at_c_p1))

                    ; #83992: <==negation-removal== 67376 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #32895: origin
                    (not_at_c_p1)

                    ; #88332: origin
                    (at_c_p3)

                    ; #38990: <==negation-removal== 32895 (pos)
                    (not (at_c_p1))

                    ; #64005: <==negation-removal== 88332 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #32895: origin
                    (not_at_c_p1)

                    ; #64153: origin
                    (at_c_p4)

                    ; #38990: <==negation-removal== 32895 (pos)
                    (not (at_c_p1))

                    ; #71259: <==negation-removal== 64153 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #32895: origin
                    (not_at_c_p1)

                    ; #33069: origin
                    (at_c_p5)

                    ; #38990: <==negation-removal== 32895 (pos)
                    (not (at_c_p1))

                    ; #78381: <==negation-removal== 33069 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #32895: origin
                    (not_at_c_p1)

                    ; #36041: origin
                    (at_c_p6)

                    ; #36737: <==negation-removal== 36041 (pos)
                    (not (not_at_c_p6))

                    ; #38990: <==negation-removal== 32895 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #32895: origin
                    (not_at_c_p1)

                    ; #54253: origin
                    (at_c_p7)

                    ; #17857: <==negation-removal== 54253 (pos)
                    (not (not_at_c_p7))

                    ; #38990: <==negation-removal== 32895 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #32895: origin
                    (not_at_c_p1)

                    ; #91345: origin
                    (at_c_p8)

                    ; #38990: <==negation-removal== 32895 (pos)
                    (not (at_c_p1))

                    ; #40090: <==negation-removal== 91345 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #32895: origin
                    (not_at_c_p1)

                    ; #75958: origin
                    (at_c_p9)

                    ; #14586: <==negation-removal== 75958 (pos)
                    (not (not_at_c_p9))

                    ; #38990: <==negation-removal== 32895 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #38990: origin
                    (at_c_p1)

                    ; #83992: origin
                    (not_at_c_p2)

                    ; #32895: <==negation-removal== 38990 (pos)
                    (not (not_at_c_p1))

                    ; #67376: <==negation-removal== 83992 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #67376: origin
                    (at_c_p2)

                    ; #83992: origin
                    (not_at_c_p2)

                    ; #67376: <==negation-removal== 83992 (pos)
                    (not (at_c_p2))

                    ; #83992: <==negation-removal== 67376 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #83992: origin
                    (not_at_c_p2)

                    ; #88332: origin
                    (at_c_p3)

                    ; #64005: <==negation-removal== 88332 (pos)
                    (not (not_at_c_p3))

                    ; #67376: <==negation-removal== 83992 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #64153: origin
                    (at_c_p4)

                    ; #83992: origin
                    (not_at_c_p2)

                    ; #67376: <==negation-removal== 83992 (pos)
                    (not (at_c_p2))

                    ; #71259: <==negation-removal== 64153 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #33069: origin
                    (at_c_p5)

                    ; #83992: origin
                    (not_at_c_p2)

                    ; #67376: <==negation-removal== 83992 (pos)
                    (not (at_c_p2))

                    ; #78381: <==negation-removal== 33069 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #36041: origin
                    (at_c_p6)

                    ; #83992: origin
                    (not_at_c_p2)

                    ; #36737: <==negation-removal== 36041 (pos)
                    (not (not_at_c_p6))

                    ; #67376: <==negation-removal== 83992 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #54253: origin
                    (at_c_p7)

                    ; #83992: origin
                    (not_at_c_p2)

                    ; #17857: <==negation-removal== 54253 (pos)
                    (not (not_at_c_p7))

                    ; #67376: <==negation-removal== 83992 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #83992: origin
                    (not_at_c_p2)

                    ; #91345: origin
                    (at_c_p8)

                    ; #40090: <==negation-removal== 91345 (pos)
                    (not (not_at_c_p8))

                    ; #67376: <==negation-removal== 83992 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #75958: origin
                    (at_c_p9)

                    ; #83992: origin
                    (not_at_c_p2)

                    ; #14586: <==negation-removal== 75958 (pos)
                    (not (not_at_c_p9))

                    ; #67376: <==negation-removal== 83992 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #38990: origin
                    (at_c_p1)

                    ; #64005: origin
                    (not_at_c_p3)

                    ; #32895: <==negation-removal== 38990 (pos)
                    (not (not_at_c_p1))

                    ; #88332: <==negation-removal== 64005 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #64005: origin
                    (not_at_c_p3)

                    ; #67376: origin
                    (at_c_p2)

                    ; #83992: <==negation-removal== 67376 (pos)
                    (not (not_at_c_p2))

                    ; #88332: <==negation-removal== 64005 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #64005: origin
                    (not_at_c_p3)

                    ; #88332: origin
                    (at_c_p3)

                    ; #64005: <==negation-removal== 88332 (pos)
                    (not (not_at_c_p3))

                    ; #88332: <==negation-removal== 64005 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #64005: origin
                    (not_at_c_p3)

                    ; #64153: origin
                    (at_c_p4)

                    ; #71259: <==negation-removal== 64153 (pos)
                    (not (not_at_c_p4))

                    ; #88332: <==negation-removal== 64005 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #33069: origin
                    (at_c_p5)

                    ; #64005: origin
                    (not_at_c_p3)

                    ; #78381: <==negation-removal== 33069 (pos)
                    (not (not_at_c_p5))

                    ; #88332: <==negation-removal== 64005 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #36041: origin
                    (at_c_p6)

                    ; #64005: origin
                    (not_at_c_p3)

                    ; #36737: <==negation-removal== 36041 (pos)
                    (not (not_at_c_p6))

                    ; #88332: <==negation-removal== 64005 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #54253: origin
                    (at_c_p7)

                    ; #64005: origin
                    (not_at_c_p3)

                    ; #17857: <==negation-removal== 54253 (pos)
                    (not (not_at_c_p7))

                    ; #88332: <==negation-removal== 64005 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #64005: origin
                    (not_at_c_p3)

                    ; #91345: origin
                    (at_c_p8)

                    ; #40090: <==negation-removal== 91345 (pos)
                    (not (not_at_c_p8))

                    ; #88332: <==negation-removal== 64005 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #64005: origin
                    (not_at_c_p3)

                    ; #75958: origin
                    (at_c_p9)

                    ; #14586: <==negation-removal== 75958 (pos)
                    (not (not_at_c_p9))

                    ; #88332: <==negation-removal== 64005 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #38990: origin
                    (at_c_p1)

                    ; #71259: origin
                    (not_at_c_p4)

                    ; #32895: <==negation-removal== 38990 (pos)
                    (not (not_at_c_p1))

                    ; #64153: <==negation-removal== 71259 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #67376: origin
                    (at_c_p2)

                    ; #71259: origin
                    (not_at_c_p4)

                    ; #64153: <==negation-removal== 71259 (pos)
                    (not (at_c_p4))

                    ; #83992: <==negation-removal== 67376 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #71259: origin
                    (not_at_c_p4)

                    ; #88332: origin
                    (at_c_p3)

                    ; #64005: <==negation-removal== 88332 (pos)
                    (not (not_at_c_p3))

                    ; #64153: <==negation-removal== 71259 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #64153: origin
                    (at_c_p4)

                    ; #71259: origin
                    (not_at_c_p4)

                    ; #64153: <==negation-removal== 71259 (pos)
                    (not (at_c_p4))

                    ; #71259: <==negation-removal== 64153 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #33069: origin
                    (at_c_p5)

                    ; #71259: origin
                    (not_at_c_p4)

                    ; #64153: <==negation-removal== 71259 (pos)
                    (not (at_c_p4))

                    ; #78381: <==negation-removal== 33069 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #36041: origin
                    (at_c_p6)

                    ; #71259: origin
                    (not_at_c_p4)

                    ; #36737: <==negation-removal== 36041 (pos)
                    (not (not_at_c_p6))

                    ; #64153: <==negation-removal== 71259 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #54253: origin
                    (at_c_p7)

                    ; #71259: origin
                    (not_at_c_p4)

                    ; #17857: <==negation-removal== 54253 (pos)
                    (not (not_at_c_p7))

                    ; #64153: <==negation-removal== 71259 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #71259: origin
                    (not_at_c_p4)

                    ; #91345: origin
                    (at_c_p8)

                    ; #40090: <==negation-removal== 91345 (pos)
                    (not (not_at_c_p8))

                    ; #64153: <==negation-removal== 71259 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #71259: origin
                    (not_at_c_p4)

                    ; #75958: origin
                    (at_c_p9)

                    ; #14586: <==negation-removal== 75958 (pos)
                    (not (not_at_c_p9))

                    ; #64153: <==negation-removal== 71259 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #38990: origin
                    (at_c_p1)

                    ; #78381: origin
                    (not_at_c_p5)

                    ; #32895: <==negation-removal== 38990 (pos)
                    (not (not_at_c_p1))

                    ; #33069: <==negation-removal== 78381 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #67376: origin
                    (at_c_p2)

                    ; #78381: origin
                    (not_at_c_p5)

                    ; #33069: <==negation-removal== 78381 (pos)
                    (not (at_c_p5))

                    ; #83992: <==negation-removal== 67376 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #78381: origin
                    (not_at_c_p5)

                    ; #88332: origin
                    (at_c_p3)

                    ; #33069: <==negation-removal== 78381 (pos)
                    (not (at_c_p5))

                    ; #64005: <==negation-removal== 88332 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #64153: origin
                    (at_c_p4)

                    ; #78381: origin
                    (not_at_c_p5)

                    ; #33069: <==negation-removal== 78381 (pos)
                    (not (at_c_p5))

                    ; #71259: <==negation-removal== 64153 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #33069: origin
                    (at_c_p5)

                    ; #78381: origin
                    (not_at_c_p5)

                    ; #33069: <==negation-removal== 78381 (pos)
                    (not (at_c_p5))

                    ; #78381: <==negation-removal== 33069 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #36041: origin
                    (at_c_p6)

                    ; #78381: origin
                    (not_at_c_p5)

                    ; #33069: <==negation-removal== 78381 (pos)
                    (not (at_c_p5))

                    ; #36737: <==negation-removal== 36041 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #54253: origin
                    (at_c_p7)

                    ; #78381: origin
                    (not_at_c_p5)

                    ; #17857: <==negation-removal== 54253 (pos)
                    (not (not_at_c_p7))

                    ; #33069: <==negation-removal== 78381 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #78381: origin
                    (not_at_c_p5)

                    ; #91345: origin
                    (at_c_p8)

                    ; #33069: <==negation-removal== 78381 (pos)
                    (not (at_c_p5))

                    ; #40090: <==negation-removal== 91345 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #75958: origin
                    (at_c_p9)

                    ; #78381: origin
                    (not_at_c_p5)

                    ; #14586: <==negation-removal== 75958 (pos)
                    (not (not_at_c_p9))

                    ; #33069: <==negation-removal== 78381 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #36737: origin
                    (not_at_c_p6)

                    ; #38990: origin
                    (at_c_p1)

                    ; #32895: <==negation-removal== 38990 (pos)
                    (not (not_at_c_p1))

                    ; #36041: <==negation-removal== 36737 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #36737: origin
                    (not_at_c_p6)

                    ; #67376: origin
                    (at_c_p2)

                    ; #36041: <==negation-removal== 36737 (pos)
                    (not (at_c_p6))

                    ; #83992: <==negation-removal== 67376 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #36737: origin
                    (not_at_c_p6)

                    ; #88332: origin
                    (at_c_p3)

                    ; #36041: <==negation-removal== 36737 (pos)
                    (not (at_c_p6))

                    ; #64005: <==negation-removal== 88332 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #36737: origin
                    (not_at_c_p6)

                    ; #64153: origin
                    (at_c_p4)

                    ; #36041: <==negation-removal== 36737 (pos)
                    (not (at_c_p6))

                    ; #71259: <==negation-removal== 64153 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #33069: origin
                    (at_c_p5)

                    ; #36737: origin
                    (not_at_c_p6)

                    ; #36041: <==negation-removal== 36737 (pos)
                    (not (at_c_p6))

                    ; #78381: <==negation-removal== 33069 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #36041: origin
                    (at_c_p6)

                    ; #36737: origin
                    (not_at_c_p6)

                    ; #36041: <==negation-removal== 36737 (pos)
                    (not (at_c_p6))

                    ; #36737: <==negation-removal== 36041 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #36737: origin
                    (not_at_c_p6)

                    ; #54253: origin
                    (at_c_p7)

                    ; #17857: <==negation-removal== 54253 (pos)
                    (not (not_at_c_p7))

                    ; #36041: <==negation-removal== 36737 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #36737: origin
                    (not_at_c_p6)

                    ; #91345: origin
                    (at_c_p8)

                    ; #36041: <==negation-removal== 36737 (pos)
                    (not (at_c_p6))

                    ; #40090: <==negation-removal== 91345 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #36737: origin
                    (not_at_c_p6)

                    ; #75958: origin
                    (at_c_p9)

                    ; #14586: <==negation-removal== 75958 (pos)
                    (not (not_at_c_p9))

                    ; #36041: <==negation-removal== 36737 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #17857: origin
                    (not_at_c_p7)

                    ; #38990: origin
                    (at_c_p1)

                    ; #32895: <==negation-removal== 38990 (pos)
                    (not (not_at_c_p1))

                    ; #54253: <==negation-removal== 17857 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #17857: origin
                    (not_at_c_p7)

                    ; #67376: origin
                    (at_c_p2)

                    ; #54253: <==negation-removal== 17857 (pos)
                    (not (at_c_p7))

                    ; #83992: <==negation-removal== 67376 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #17857: origin
                    (not_at_c_p7)

                    ; #88332: origin
                    (at_c_p3)

                    ; #54253: <==negation-removal== 17857 (pos)
                    (not (at_c_p7))

                    ; #64005: <==negation-removal== 88332 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #17857: origin
                    (not_at_c_p7)

                    ; #64153: origin
                    (at_c_p4)

                    ; #54253: <==negation-removal== 17857 (pos)
                    (not (at_c_p7))

                    ; #71259: <==negation-removal== 64153 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #17857: origin
                    (not_at_c_p7)

                    ; #33069: origin
                    (at_c_p5)

                    ; #54253: <==negation-removal== 17857 (pos)
                    (not (at_c_p7))

                    ; #78381: <==negation-removal== 33069 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #17857: origin
                    (not_at_c_p7)

                    ; #36041: origin
                    (at_c_p6)

                    ; #36737: <==negation-removal== 36041 (pos)
                    (not (not_at_c_p6))

                    ; #54253: <==negation-removal== 17857 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #17857: origin
                    (not_at_c_p7)

                    ; #54253: origin
                    (at_c_p7)

                    ; #17857: <==negation-removal== 54253 (pos)
                    (not (not_at_c_p7))

                    ; #54253: <==negation-removal== 17857 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #17857: origin
                    (not_at_c_p7)

                    ; #91345: origin
                    (at_c_p8)

                    ; #40090: <==negation-removal== 91345 (pos)
                    (not (not_at_c_p8))

                    ; #54253: <==negation-removal== 17857 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #17857: origin
                    (not_at_c_p7)

                    ; #75958: origin
                    (at_c_p9)

                    ; #14586: <==negation-removal== 75958 (pos)
                    (not (not_at_c_p9))

                    ; #54253: <==negation-removal== 17857 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #38990: origin
                    (at_c_p1)

                    ; #40090: origin
                    (not_at_c_p8)

                    ; #32895: <==negation-removal== 38990 (pos)
                    (not (not_at_c_p1))

                    ; #91345: <==negation-removal== 40090 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #40090: origin
                    (not_at_c_p8)

                    ; #67376: origin
                    (at_c_p2)

                    ; #83992: <==negation-removal== 67376 (pos)
                    (not (not_at_c_p2))

                    ; #91345: <==negation-removal== 40090 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #40090: origin
                    (not_at_c_p8)

                    ; #88332: origin
                    (at_c_p3)

                    ; #64005: <==negation-removal== 88332 (pos)
                    (not (not_at_c_p3))

                    ; #91345: <==negation-removal== 40090 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #40090: origin
                    (not_at_c_p8)

                    ; #64153: origin
                    (at_c_p4)

                    ; #71259: <==negation-removal== 64153 (pos)
                    (not (not_at_c_p4))

                    ; #91345: <==negation-removal== 40090 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #33069: origin
                    (at_c_p5)

                    ; #40090: origin
                    (not_at_c_p8)

                    ; #78381: <==negation-removal== 33069 (pos)
                    (not (not_at_c_p5))

                    ; #91345: <==negation-removal== 40090 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #36041: origin
                    (at_c_p6)

                    ; #40090: origin
                    (not_at_c_p8)

                    ; #36737: <==negation-removal== 36041 (pos)
                    (not (not_at_c_p6))

                    ; #91345: <==negation-removal== 40090 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #40090: origin
                    (not_at_c_p8)

                    ; #54253: origin
                    (at_c_p7)

                    ; #17857: <==negation-removal== 54253 (pos)
                    (not (not_at_c_p7))

                    ; #91345: <==negation-removal== 40090 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #40090: origin
                    (not_at_c_p8)

                    ; #91345: origin
                    (at_c_p8)

                    ; #40090: <==negation-removal== 91345 (pos)
                    (not (not_at_c_p8))

                    ; #91345: <==negation-removal== 40090 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #40090: origin
                    (not_at_c_p8)

                    ; #75958: origin
                    (at_c_p9)

                    ; #14586: <==negation-removal== 75958 (pos)
                    (not (not_at_c_p9))

                    ; #91345: <==negation-removal== 40090 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #14586: origin
                    (not_at_c_p9)

                    ; #38990: origin
                    (at_c_p1)

                    ; #32895: <==negation-removal== 38990 (pos)
                    (not (not_at_c_p1))

                    ; #75958: <==negation-removal== 14586 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #14586: origin
                    (not_at_c_p9)

                    ; #67376: origin
                    (at_c_p2)

                    ; #75958: <==negation-removal== 14586 (pos)
                    (not (at_c_p9))

                    ; #83992: <==negation-removal== 67376 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #14586: origin
                    (not_at_c_p9)

                    ; #88332: origin
                    (at_c_p3)

                    ; #64005: <==negation-removal== 88332 (pos)
                    (not (not_at_c_p3))

                    ; #75958: <==negation-removal== 14586 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #14586: origin
                    (not_at_c_p9)

                    ; #64153: origin
                    (at_c_p4)

                    ; #71259: <==negation-removal== 64153 (pos)
                    (not (not_at_c_p4))

                    ; #75958: <==negation-removal== 14586 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #14586: origin
                    (not_at_c_p9)

                    ; #33069: origin
                    (at_c_p5)

                    ; #75958: <==negation-removal== 14586 (pos)
                    (not (at_c_p9))

                    ; #78381: <==negation-removal== 33069 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #14586: origin
                    (not_at_c_p9)

                    ; #36041: origin
                    (at_c_p6)

                    ; #36737: <==negation-removal== 36041 (pos)
                    (not (not_at_c_p6))

                    ; #75958: <==negation-removal== 14586 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #14586: origin
                    (not_at_c_p9)

                    ; #54253: origin
                    (at_c_p7)

                    ; #17857: <==negation-removal== 54253 (pos)
                    (not (not_at_c_p7))

                    ; #75958: <==negation-removal== 14586 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #14586: origin
                    (not_at_c_p9)

                    ; #91345: origin
                    (at_c_p8)

                    ; #40090: <==negation-removal== 91345 (pos)
                    (not (not_at_c_p8))

                    ; #75958: <==negation-removal== 14586 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #14586: origin
                    (not_at_c_p9)

                    ; #75958: origin
                    (at_c_p9)

                    ; #14586: <==negation-removal== 75958 (pos)
                    (not (not_at_c_p9))

                    ; #75958: <==negation-removal== 14586 (pos)
                    (not (at_c_p9))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1))
        :effect (and
                    ; #66581: origin
                    (not_at_d_p1)

                    ; #76358: origin
                    (at_d_p1)

                    ; #66581: <==negation-removal== 76358 (pos)
                    (not (not_at_d_p1))

                    ; #76358: <==negation-removal== 66581 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #66581: origin
                    (not_at_d_p1)

                    ; #74111: origin
                    (at_d_p2)

                    ; #24077: <==negation-removal== 74111 (pos)
                    (not (not_at_d_p2))

                    ; #76358: <==negation-removal== 66581 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p3
        :precondition (and (at_d_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #66581: origin
                    (not_at_d_p1)

                    ; #74395: origin
                    (at_d_p3)

                    ; #76358: <==negation-removal== 66581 (pos)
                    (not (at_d_p1))

                    ; #86906: <==negation-removal== 74395 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #25476: origin
                    (at_d_p4)

                    ; #66581: origin
                    (not_at_d_p1)

                    ; #10432: <==negation-removal== 25476 (pos)
                    (not (not_at_d_p4))

                    ; #76358: <==negation-removal== 66581 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #45909: origin
                    (at_d_p5)

                    ; #66581: origin
                    (not_at_d_p1)

                    ; #27699: <==negation-removal== 45909 (pos)
                    (not (not_at_d_p5))

                    ; #76358: <==negation-removal== 66581 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #43756: origin
                    (at_d_p6)

                    ; #66581: origin
                    (not_at_d_p1)

                    ; #60679: <==negation-removal== 43756 (pos)
                    (not (not_at_d_p6))

                    ; #76358: <==negation-removal== 66581 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #10188: origin
                    (at_d_p7)

                    ; #66581: origin
                    (not_at_d_p1)

                    ; #60807: <==negation-removal== 10188 (pos)
                    (not (not_at_d_p7))

                    ; #76358: <==negation-removal== 66581 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #66581: origin
                    (not_at_d_p1)

                    ; #85992: origin
                    (at_d_p8)

                    ; #58168: <==negation-removal== 85992 (pos)
                    (not (not_at_d_p8))

                    ; #76358: <==negation-removal== 66581 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #54596: origin
                    (at_d_p9)

                    ; #66581: origin
                    (not_at_d_p1)

                    ; #76358: <==negation-removal== 66581 (pos)
                    (not (at_d_p1))

                    ; #76960: <==negation-removal== 54596 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #24077: origin
                    (not_at_d_p2)

                    ; #76358: origin
                    (at_d_p1)

                    ; #66581: <==negation-removal== 76358 (pos)
                    (not (not_at_d_p1))

                    ; #74111: <==negation-removal== 24077 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #24077: origin
                    (not_at_d_p2)

                    ; #74111: origin
                    (at_d_p2)

                    ; #24077: <==negation-removal== 74111 (pos)
                    (not (not_at_d_p2))

                    ; #74111: <==negation-removal== 24077 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #24077: origin
                    (not_at_d_p2)

                    ; #74395: origin
                    (at_d_p3)

                    ; #74111: <==negation-removal== 24077 (pos)
                    (not (at_d_p2))

                    ; #86906: <==negation-removal== 74395 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #24077: origin
                    (not_at_d_p2)

                    ; #25476: origin
                    (at_d_p4)

                    ; #10432: <==negation-removal== 25476 (pos)
                    (not (not_at_d_p4))

                    ; #74111: <==negation-removal== 24077 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #24077: origin
                    (not_at_d_p2)

                    ; #45909: origin
                    (at_d_p5)

                    ; #27699: <==negation-removal== 45909 (pos)
                    (not (not_at_d_p5))

                    ; #74111: <==negation-removal== 24077 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (at_d_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #24077: origin
                    (not_at_d_p2)

                    ; #43756: origin
                    (at_d_p6)

                    ; #60679: <==negation-removal== 43756 (pos)
                    (not (not_at_d_p6))

                    ; #74111: <==negation-removal== 24077 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #10188: origin
                    (at_d_p7)

                    ; #24077: origin
                    (not_at_d_p2)

                    ; #60807: <==negation-removal== 10188 (pos)
                    (not (not_at_d_p7))

                    ; #74111: <==negation-removal== 24077 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #24077: origin
                    (not_at_d_p2)

                    ; #85992: origin
                    (at_d_p8)

                    ; #58168: <==negation-removal== 85992 (pos)
                    (not (not_at_d_p8))

                    ; #74111: <==negation-removal== 24077 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #24077: origin
                    (not_at_d_p2)

                    ; #54596: origin
                    (at_d_p9)

                    ; #74111: <==negation-removal== 24077 (pos)
                    (not (at_d_p2))

                    ; #76960: <==negation-removal== 54596 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #76358: origin
                    (at_d_p1)

                    ; #86906: origin
                    (not_at_d_p3)

                    ; #66581: <==negation-removal== 76358 (pos)
                    (not (not_at_d_p1))

                    ; #74395: <==negation-removal== 86906 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #74111: origin
                    (at_d_p2)

                    ; #86906: origin
                    (not_at_d_p3)

                    ; #24077: <==negation-removal== 74111 (pos)
                    (not (not_at_d_p2))

                    ; #74395: <==negation-removal== 86906 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #74395: origin
                    (at_d_p3)

                    ; #86906: origin
                    (not_at_d_p3)

                    ; #74395: <==negation-removal== 86906 (pos)
                    (not (at_d_p3))

                    ; #86906: <==negation-removal== 74395 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #25476: origin
                    (at_d_p4)

                    ; #86906: origin
                    (not_at_d_p3)

                    ; #10432: <==negation-removal== 25476 (pos)
                    (not (not_at_d_p4))

                    ; #74395: <==negation-removal== 86906 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #45909: origin
                    (at_d_p5)

                    ; #86906: origin
                    (not_at_d_p3)

                    ; #27699: <==negation-removal== 45909 (pos)
                    (not (not_at_d_p5))

                    ; #74395: <==negation-removal== 86906 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #43756: origin
                    (at_d_p6)

                    ; #86906: origin
                    (not_at_d_p3)

                    ; #60679: <==negation-removal== 43756 (pos)
                    (not (not_at_d_p6))

                    ; #74395: <==negation-removal== 86906 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #10188: origin
                    (at_d_p7)

                    ; #86906: origin
                    (not_at_d_p3)

                    ; #60807: <==negation-removal== 10188 (pos)
                    (not (not_at_d_p7))

                    ; #74395: <==negation-removal== 86906 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (at_d_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #85992: origin
                    (at_d_p8)

                    ; #86906: origin
                    (not_at_d_p3)

                    ; #58168: <==negation-removal== 85992 (pos)
                    (not (not_at_d_p8))

                    ; #74395: <==negation-removal== 86906 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #54596: origin
                    (at_d_p9)

                    ; #86906: origin
                    (not_at_d_p3)

                    ; #74395: <==negation-removal== 86906 (pos)
                    (not (at_d_p3))

                    ; #76960: <==negation-removal== 54596 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #10432: origin
                    (not_at_d_p4)

                    ; #76358: origin
                    (at_d_p1)

                    ; #25476: <==negation-removal== 10432 (pos)
                    (not (at_d_p4))

                    ; #66581: <==negation-removal== 76358 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #10432: origin
                    (not_at_d_p4)

                    ; #74111: origin
                    (at_d_p2)

                    ; #24077: <==negation-removal== 74111 (pos)
                    (not (not_at_d_p2))

                    ; #25476: <==negation-removal== 10432 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_d_p4))
        :effect (and
                    ; #10432: origin
                    (not_at_d_p4)

                    ; #74395: origin
                    (at_d_p3)

                    ; #25476: <==negation-removal== 10432 (pos)
                    (not (at_d_p4))

                    ; #86906: <==negation-removal== 74395 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4))
        :effect (and
                    ; #10432: origin
                    (not_at_d_p4)

                    ; #25476: origin
                    (at_d_p4)

                    ; #10432: <==negation-removal== 25476 (pos)
                    (not (not_at_d_p4))

                    ; #25476: <==negation-removal== 10432 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #10432: origin
                    (not_at_d_p4)

                    ; #45909: origin
                    (at_d_p5)

                    ; #25476: <==negation-removal== 10432 (pos)
                    (not (at_d_p4))

                    ; #27699: <==negation-removal== 45909 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_d_p4))
        :effect (and
                    ; #10432: origin
                    (not_at_d_p4)

                    ; #43756: origin
                    (at_d_p6)

                    ; #25476: <==negation-removal== 10432 (pos)
                    (not (at_d_p4))

                    ; #60679: <==negation-removal== 43756 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #10188: origin
                    (at_d_p7)

                    ; #10432: origin
                    (not_at_d_p4)

                    ; #25476: <==negation-removal== 10432 (pos)
                    (not (at_d_p4))

                    ; #60807: <==negation-removal== 10188 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4))
        :effect (and
                    ; #10432: origin
                    (not_at_d_p4)

                    ; #85992: origin
                    (at_d_p8)

                    ; #25476: <==negation-removal== 10432 (pos)
                    (not (at_d_p4))

                    ; #58168: <==negation-removal== 85992 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #10432: origin
                    (not_at_d_p4)

                    ; #54596: origin
                    (at_d_p9)

                    ; #25476: <==negation-removal== 10432 (pos)
                    (not (at_d_p4))

                    ; #76960: <==negation-removal== 54596 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (at_d_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #27699: origin
                    (not_at_d_p5)

                    ; #76358: origin
                    (at_d_p1)

                    ; #45909: <==negation-removal== 27699 (pos)
                    (not (at_d_p5))

                    ; #66581: <==negation-removal== 76358 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p2
        :precondition (and (at_d_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #27699: origin
                    (not_at_d_p5)

                    ; #74111: origin
                    (at_d_p2)

                    ; #24077: <==negation-removal== 74111 (pos)
                    (not (not_at_d_p2))

                    ; #45909: <==negation-removal== 27699 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #27699: origin
                    (not_at_d_p5)

                    ; #74395: origin
                    (at_d_p3)

                    ; #45909: <==negation-removal== 27699 (pos)
                    (not (at_d_p5))

                    ; #86906: <==negation-removal== 74395 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (at_d_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #25476: origin
                    (at_d_p4)

                    ; #27699: origin
                    (not_at_d_p5)

                    ; #10432: <==negation-removal== 25476 (pos)
                    (not (not_at_d_p4))

                    ; #45909: <==negation-removal== 27699 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #27699: origin
                    (not_at_d_p5)

                    ; #45909: origin
                    (at_d_p5)

                    ; #27699: <==negation-removal== 45909 (pos)
                    (not (not_at_d_p5))

                    ; #45909: <==negation-removal== 27699 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #27699: origin
                    (not_at_d_p5)

                    ; #43756: origin
                    (at_d_p6)

                    ; #45909: <==negation-removal== 27699 (pos)
                    (not (at_d_p5))

                    ; #60679: <==negation-removal== 43756 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (at_d_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #10188: origin
                    (at_d_p7)

                    ; #27699: origin
                    (not_at_d_p5)

                    ; #45909: <==negation-removal== 27699 (pos)
                    (not (at_d_p5))

                    ; #60807: <==negation-removal== 10188 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (at_d_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #27699: origin
                    (not_at_d_p5)

                    ; #85992: origin
                    (at_d_p8)

                    ; #45909: <==negation-removal== 27699 (pos)
                    (not (at_d_p5))

                    ; #58168: <==negation-removal== 85992 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #27699: origin
                    (not_at_d_p5)

                    ; #54596: origin
                    (at_d_p9)

                    ; #45909: <==negation-removal== 27699 (pos)
                    (not (at_d_p5))

                    ; #76960: <==negation-removal== 54596 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #60679: origin
                    (not_at_d_p6)

                    ; #76358: origin
                    (at_d_p1)

                    ; #43756: <==negation-removal== 60679 (pos)
                    (not (at_d_p6))

                    ; #66581: <==negation-removal== 76358 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #60679: origin
                    (not_at_d_p6)

                    ; #74111: origin
                    (at_d_p2)

                    ; #24077: <==negation-removal== 74111 (pos)
                    (not (not_at_d_p2))

                    ; #43756: <==negation-removal== 60679 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #60679: origin
                    (not_at_d_p6)

                    ; #74395: origin
                    (at_d_p3)

                    ; #43756: <==negation-removal== 60679 (pos)
                    (not (at_d_p6))

                    ; #86906: <==negation-removal== 74395 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6))
        :effect (and
                    ; #25476: origin
                    (at_d_p4)

                    ; #60679: origin
                    (not_at_d_p6)

                    ; #10432: <==negation-removal== 25476 (pos)
                    (not (not_at_d_p4))

                    ; #43756: <==negation-removal== 60679 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #45909: origin
                    (at_d_p5)

                    ; #60679: origin
                    (not_at_d_p6)

                    ; #27699: <==negation-removal== 45909 (pos)
                    (not (not_at_d_p5))

                    ; #43756: <==negation-removal== 60679 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #43756: origin
                    (at_d_p6)

                    ; #60679: origin
                    (not_at_d_p6)

                    ; #43756: <==negation-removal== 60679 (pos)
                    (not (at_d_p6))

                    ; #60679: <==negation-removal== 43756 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #10188: origin
                    (at_d_p7)

                    ; #60679: origin
                    (not_at_d_p6)

                    ; #43756: <==negation-removal== 60679 (pos)
                    (not (at_d_p6))

                    ; #60807: <==negation-removal== 10188 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #60679: origin
                    (not_at_d_p6)

                    ; #85992: origin
                    (at_d_p8)

                    ; #43756: <==negation-removal== 60679 (pos)
                    (not (at_d_p6))

                    ; #58168: <==negation-removal== 85992 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #54596: origin
                    (at_d_p9)

                    ; #60679: origin
                    (not_at_d_p6)

                    ; #43756: <==negation-removal== 60679 (pos)
                    (not (at_d_p6))

                    ; #76960: <==negation-removal== 54596 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7))
        :effect (and
                    ; #60807: origin
                    (not_at_d_p7)

                    ; #76358: origin
                    (at_d_p1)

                    ; #10188: <==negation-removal== 60807 (pos)
                    (not (at_d_p7))

                    ; #66581: <==negation-removal== 76358 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #60807: origin
                    (not_at_d_p7)

                    ; #74111: origin
                    (at_d_p2)

                    ; #10188: <==negation-removal== 60807 (pos)
                    (not (at_d_p7))

                    ; #24077: <==negation-removal== 74111 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #60807: origin
                    (not_at_d_p7)

                    ; #74395: origin
                    (at_d_p3)

                    ; #10188: <==negation-removal== 60807 (pos)
                    (not (at_d_p7))

                    ; #86906: <==negation-removal== 74395 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #25476: origin
                    (at_d_p4)

                    ; #60807: origin
                    (not_at_d_p7)

                    ; #10188: <==negation-removal== 60807 (pos)
                    (not (at_d_p7))

                    ; #10432: <==negation-removal== 25476 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #45909: origin
                    (at_d_p5)

                    ; #60807: origin
                    (not_at_d_p7)

                    ; #10188: <==negation-removal== 60807 (pos)
                    (not (at_d_p7))

                    ; #27699: <==negation-removal== 45909 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7))
        :effect (and
                    ; #43756: origin
                    (at_d_p6)

                    ; #60807: origin
                    (not_at_d_p7)

                    ; #10188: <==negation-removal== 60807 (pos)
                    (not (at_d_p7))

                    ; #60679: <==negation-removal== 43756 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7))
        :effect (and
                    ; #10188: origin
                    (at_d_p7)

                    ; #60807: origin
                    (not_at_d_p7)

                    ; #10188: <==negation-removal== 60807 (pos)
                    (not (at_d_p7))

                    ; #60807: <==negation-removal== 10188 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #60807: origin
                    (not_at_d_p7)

                    ; #85992: origin
                    (at_d_p8)

                    ; #10188: <==negation-removal== 60807 (pos)
                    (not (at_d_p7))

                    ; #58168: <==negation-removal== 85992 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_d_p7))
        :effect (and
                    ; #54596: origin
                    (at_d_p9)

                    ; #60807: origin
                    (not_at_d_p7)

                    ; #10188: <==negation-removal== 60807 (pos)
                    (not (at_d_p7))

                    ; #76960: <==negation-removal== 54596 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #58168: origin
                    (not_at_d_p8)

                    ; #76358: origin
                    (at_d_p1)

                    ; #66581: <==negation-removal== 76358 (pos)
                    (not (not_at_d_p1))

                    ; #85992: <==negation-removal== 58168 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_d_p8))
        :effect (and
                    ; #58168: origin
                    (not_at_d_p8)

                    ; #74111: origin
                    (at_d_p2)

                    ; #24077: <==negation-removal== 74111 (pos)
                    (not (not_at_d_p2))

                    ; #85992: <==negation-removal== 58168 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8))
        :effect (and
                    ; #58168: origin
                    (not_at_d_p8)

                    ; #74395: origin
                    (at_d_p3)

                    ; #85992: <==negation-removal== 58168 (pos)
                    (not (at_d_p8))

                    ; #86906: <==negation-removal== 74395 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_d_p8))
        :effect (and
                    ; #25476: origin
                    (at_d_p4)

                    ; #58168: origin
                    (not_at_d_p8)

                    ; #10432: <==negation-removal== 25476 (pos)
                    (not (not_at_d_p4))

                    ; #85992: <==negation-removal== 58168 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8))
        :effect (and
                    ; #45909: origin
                    (at_d_p5)

                    ; #58168: origin
                    (not_at_d_p8)

                    ; #27699: <==negation-removal== 45909 (pos)
                    (not (not_at_d_p5))

                    ; #85992: <==negation-removal== 58168 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_d_p8))
        :effect (and
                    ; #43756: origin
                    (at_d_p6)

                    ; #58168: origin
                    (not_at_d_p8)

                    ; #60679: <==negation-removal== 43756 (pos)
                    (not (not_at_d_p6))

                    ; #85992: <==negation-removal== 58168 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #10188: origin
                    (at_d_p7)

                    ; #58168: origin
                    (not_at_d_p8)

                    ; #60807: <==negation-removal== 10188 (pos)
                    (not (not_at_d_p7))

                    ; #85992: <==negation-removal== 58168 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8))
        :effect (and
                    ; #58168: origin
                    (not_at_d_p8)

                    ; #85992: origin
                    (at_d_p8)

                    ; #58168: <==negation-removal== 85992 (pos)
                    (not (not_at_d_p8))

                    ; #85992: <==negation-removal== 58168 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8))
        :effect (and
                    ; #54596: origin
                    (at_d_p9)

                    ; #58168: origin
                    (not_at_d_p8)

                    ; #76960: <==negation-removal== 54596 (pos)
                    (not (not_at_d_p9))

                    ; #85992: <==negation-removal== 58168 (pos)
                    (not (at_d_p8))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #76358: origin
                    (at_d_p1)

                    ; #76960: origin
                    (not_at_d_p9)

                    ; #54596: <==negation-removal== 76960 (pos)
                    (not (at_d_p9))

                    ; #66581: <==negation-removal== 76358 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #74111: origin
                    (at_d_p2)

                    ; #76960: origin
                    (not_at_d_p9)

                    ; #24077: <==negation-removal== 74111 (pos)
                    (not (not_at_d_p2))

                    ; #54596: <==negation-removal== 76960 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #74395: origin
                    (at_d_p3)

                    ; #76960: origin
                    (not_at_d_p9)

                    ; #54596: <==negation-removal== 76960 (pos)
                    (not (at_d_p9))

                    ; #86906: <==negation-removal== 74395 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #25476: origin
                    (at_d_p4)

                    ; #76960: origin
                    (not_at_d_p9)

                    ; #10432: <==negation-removal== 25476 (pos)
                    (not (not_at_d_p4))

                    ; #54596: <==negation-removal== 76960 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #45909: origin
                    (at_d_p5)

                    ; #76960: origin
                    (not_at_d_p9)

                    ; #27699: <==negation-removal== 45909 (pos)
                    (not (not_at_d_p5))

                    ; #54596: <==negation-removal== 76960 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #43756: origin
                    (at_d_p6)

                    ; #76960: origin
                    (not_at_d_p9)

                    ; #54596: <==negation-removal== 76960 (pos)
                    (not (at_d_p9))

                    ; #60679: <==negation-removal== 43756 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #10188: origin
                    (at_d_p7)

                    ; #76960: origin
                    (not_at_d_p9)

                    ; #54596: <==negation-removal== 76960 (pos)
                    (not (at_d_p9))

                    ; #60807: <==negation-removal== 10188 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #76960: origin
                    (not_at_d_p9)

                    ; #85992: origin
                    (at_d_p8)

                    ; #54596: <==negation-removal== 76960 (pos)
                    (not (at_d_p9))

                    ; #58168: <==negation-removal== 85992 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #54596: origin
                    (at_d_p9)

                    ; #76960: origin
                    (not_at_d_p9)

                    ; #54596: <==negation-removal== 76960 (pos)
                    (not (at_d_p9))

                    ; #76960: <==negation-removal== 54596 (pos)
                    (not (not_at_d_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10563: <==commonly_known== 22790 (pos)
                    (Bb_checked_p1)

                    ; #13626: <==commonly_known== 58429 (neg)
                    (Pb_checked_p1)

                    ; #22790: origin
                    (checked_p1)

                    ; #25473: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #25958: <==commonly_known== 22790 (pos)
                    (Ba_checked_p1)

                    ; #28387: <==commonly_known== 58429 (neg)
                    (Pa_checked_p1)

                    ; #28835: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #40219: <==commonly_known== 22790 (pos)
                    (Bc_checked_p1)

                    ; #41961: <==closure== 28835 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #46640: <==commonly_known== 58429 (neg)
                    (Pd_checked_p1)

                    ; #49242: <==closure== 25473 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #50984: <==commonly_known== 22790 (pos)
                    (Bd_checked_p1)

                    ; #70157: <==commonly_known== 58429 (neg)
                    (Pc_checked_p1)

                    ; #19905: <==negation-removal== 25958 (pos)
                    (not (Pa_not_checked_p1))

                    ; #21943: <==uncertain_firing== 28835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #25393: <==negation-removal== 70157 (pos)
                    (not (Bc_not_checked_p1))

                    ; #29096: <==negation-removal== 41961 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #29905: <==negation-removal== 40219 (pos)
                    (not (Pc_not_checked_p1))

                    ; #37372: <==negation-removal== 10563 (pos)
                    (not (Pb_not_checked_p1))

                    ; #44269: <==negation-removal== 28387 (pos)
                    (not (Ba_not_checked_p1))

                    ; #48677: <==negation-removal== 46640 (pos)
                    (not (Bd_not_checked_p1))

                    ; #53424: <==negation-removal== 49242 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #58429: <==negation-removal== 22790 (pos)
                    (not (not_checked_p1))

                    ; #71659: <==uncertain_firing== 25473 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #72986: <==uncertain_firing== 49242 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #74650: <==negation-removal== 50984 (pos)
                    (not (Pd_not_checked_p1))

                    ; #78660: <==uncertain_firing== 41961 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #84597: <==negation-removal== 13626 (pos)
                    (not (Bb_not_checked_p1))

                    ; #85032: <==negation-removal== 25473 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #86057: <==negation-removal== 28835 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16009: <==closure== 54882 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #20028: <==commonly_known== 78622 (pos)
                    (Bb_checked_p2)

                    ; #26739: <==commonly_known== 78622 (pos)
                    (Bc_checked_p2)

                    ; #30736: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #36025: <==commonly_known== 70720 (neg)
                    (Pa_checked_p2)

                    ; #41738: <==commonly_known== 78622 (pos)
                    (Ba_checked_p2)

                    ; #54882: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #57198: <==commonly_known== 70720 (neg)
                    (Pc_checked_p2)

                    ; #77436: <==commonly_known== 78622 (pos)
                    (Bd_checked_p2)

                    ; #78622: origin
                    (checked_p2)

                    ; #84369: <==commonly_known== 70720 (neg)
                    (Pd_checked_p2)

                    ; #89928: <==closure== 30736 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #90006: <==commonly_known== 70720 (neg)
                    (Pb_checked_p2)

                    ; #17978: <==uncertain_firing== 54882 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #18249: <==negation-removal== 54882 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #18757: <==negation-removal== 84369 (pos)
                    (not (Bd_not_checked_p2))

                    ; #24366: <==negation-removal== 20028 (pos)
                    (not (Pb_not_checked_p2))

                    ; #44410: <==negation-removal== 57198 (pos)
                    (not (Bc_not_checked_p2))

                    ; #48242: <==negation-removal== 16009 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #49015: <==uncertain_firing== 89928 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #51326: <==negation-removal== 41738 (pos)
                    (not (Pa_not_checked_p2))

                    ; #51948: <==negation-removal== 30736 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #64018: <==negation-removal== 89928 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #64068: <==negation-removal== 90006 (pos)
                    (not (Bb_not_checked_p2))

                    ; #65145: <==negation-removal== 77436 (pos)
                    (not (Pd_not_checked_p2))

                    ; #67148: <==negation-removal== 26739 (pos)
                    (not (Pc_not_checked_p2))

                    ; #68882: <==negation-removal== 36025 (pos)
                    (not (Ba_not_checked_p2))

                    ; #69291: <==uncertain_firing== 30736 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #70720: <==negation-removal== 78622 (pos)
                    (not (not_checked_p2))

                    ; #89300: <==uncertain_firing== 16009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11947: <==closure== 40765 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #13200: <==commonly_known== 22033 (pos)
                    (Bb_checked_p3)

                    ; #17428: <==commonly_known== 22033 (pos)
                    (Ba_checked_p3)

                    ; #22033: origin
                    (checked_p3)

                    ; #27763: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #40284: <==closure== 27763 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #40765: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #43308: <==commonly_known== 22033 (pos)
                    (Bd_checked_p3)

                    ; #43355: <==commonly_known== 22033 (pos)
                    (Bc_checked_p3)

                    ; #53917: <==commonly_known== 79415 (neg)
                    (Pa_checked_p3)

                    ; #62020: <==commonly_known== 79415 (neg)
                    (Pc_checked_p3)

                    ; #78462: <==commonly_known== 79415 (neg)
                    (Pb_checked_p3)

                    ; #82037: <==commonly_known== 79415 (neg)
                    (Pd_checked_p3)

                    ; #12241: <==negation-removal== 43355 (pos)
                    (not (Pc_not_checked_p3))

                    ; #13652: <==negation-removal== 17428 (pos)
                    (not (Pa_not_checked_p3))

                    ; #22315: <==negation-removal== 13200 (pos)
                    (not (Pb_not_checked_p3))

                    ; #25891: <==negation-removal== 43308 (pos)
                    (not (Pd_not_checked_p3))

                    ; #35346: <==negation-removal== 78462 (pos)
                    (not (Bb_not_checked_p3))

                    ; #35882: <==negation-removal== 62020 (pos)
                    (not (Bc_not_checked_p3))

                    ; #42536: <==negation-removal== 53917 (pos)
                    (not (Ba_not_checked_p3))

                    ; #46225: <==uncertain_firing== 40765 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #46916: <==negation-removal== 40284 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #47069: <==uncertain_firing== 40284 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #60467: <==negation-removal== 40765 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #60859: <==negation-removal== 82037 (pos)
                    (not (Bd_not_checked_p3))

                    ; #64202: <==uncertain_firing== 27763 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #72943: <==negation-removal== 11947 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #75911: <==uncertain_firing== 11947 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #79415: <==negation-removal== 22033 (pos)
                    (not (not_checked_p3))

                    ; #83811: <==negation-removal== 27763 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #22087: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #24818: <==commonly_known== 88017 (pos)
                    (Ba_checked_p4)

                    ; #29187: <==commonly_known== 88017 (pos)
                    (Bd_checked_p4)

                    ; #31001: <==commonly_known== 88017 (pos)
                    (Bb_checked_p4)

                    ; #31674: <==commonly_known== 82473 (neg)
                    (Pa_checked_p4)

                    ; #35134: <==commonly_known== 82473 (neg)
                    (Pc_checked_p4)

                    ; #43059: <==commonly_known== 82473 (neg)
                    (Pb_checked_p4)

                    ; #43744: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #44301: <==closure== 22087 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #57709: <==closure== 43744 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #71897: <==commonly_known== 88017 (pos)
                    (Bc_checked_p4)

                    ; #80023: <==commonly_known== 82473 (neg)
                    (Pd_checked_p4)

                    ; #88017: origin
                    (checked_p4)

                    ; #15931: <==negation-removal== 22087 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #20523: <==negation-removal== 29187 (pos)
                    (not (Pd_not_checked_p4))

                    ; #21597: <==negation-removal== 35134 (pos)
                    (not (Bc_not_checked_p4))

                    ; #39556: <==negation-removal== 31001 (pos)
                    (not (Pb_not_checked_p4))

                    ; #53766: <==negation-removal== 43744 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #54315: <==uncertain_firing== 22087 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #59692: <==negation-removal== 31674 (pos)
                    (not (Ba_not_checked_p4))

                    ; #60801: <==negation-removal== 80023 (pos)
                    (not (Bd_not_checked_p4))

                    ; #63828: <==negation-removal== 24818 (pos)
                    (not (Pa_not_checked_p4))

                    ; #71191: <==negation-removal== 44301 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #72642: <==uncertain_firing== 43744 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #73955: <==negation-removal== 43059 (pos)
                    (not (Bb_not_checked_p4))

                    ; #82473: <==negation-removal== 88017 (pos)
                    (not (not_checked_p4))

                    ; #84111: <==uncertain_firing== 57709 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #89287: <==negation-removal== 71897 (pos)
                    (not (Pc_not_checked_p4))

                    ; #91594: <==uncertain_firing== 44301 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #98968: <==negation-removal== 57709 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10889: <==closure== 14375 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #11134: <==commonly_known== 81301 (pos)
                    (Ba_checked_p5)

                    ; #14006: <==closure== 53183 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #14375: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #23032: <==commonly_known== 81301 (pos)
                    (Bd_checked_p5)

                    ; #31611: <==commonly_known== 55679 (neg)
                    (Pd_checked_p5)

                    ; #33149: <==commonly_known== 55679 (neg)
                    (Pc_checked_p5)

                    ; #42131: <==commonly_known== 55679 (neg)
                    (Pa_checked_p5)

                    ; #53183: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #65872: <==commonly_known== 81301 (pos)
                    (Bc_checked_p5)

                    ; #68298: <==commonly_known== 81301 (pos)
                    (Bb_checked_p5)

                    ; #78609: <==commonly_known== 55679 (neg)
                    (Pb_checked_p5)

                    ; #81301: origin
                    (checked_p5)

                    ; #13398: <==negation-removal== 42131 (pos)
                    (not (Ba_not_checked_p5))

                    ; #15465: <==negation-removal== 65872 (pos)
                    (not (Pc_not_checked_p5))

                    ; #18704: <==uncertain_firing== 14006 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #32022: <==negation-removal== 23032 (pos)
                    (not (Pd_not_checked_p5))

                    ; #38448: <==uncertain_firing== 14375 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #39160: <==negation-removal== 14375 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #51054: <==negation-removal== 78609 (pos)
                    (not (Bb_not_checked_p5))

                    ; #55679: <==negation-removal== 81301 (pos)
                    (not (not_checked_p5))

                    ; #56388: <==negation-removal== 10889 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #57558: <==uncertain_firing== 10889 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #60811: <==negation-removal== 31611 (pos)
                    (not (Bd_not_checked_p5))

                    ; #61341: <==negation-removal== 68298 (pos)
                    (not (Pb_not_checked_p5))

                    ; #64118: <==uncertain_firing== 53183 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #64865: <==negation-removal== 33149 (pos)
                    (not (Bc_not_checked_p5))

                    ; #65500: <==negation-removal== 53183 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #75511: <==negation-removal== 11134 (pos)
                    (not (Pa_not_checked_p5))

                    ; #78963: <==negation-removal== 14006 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12817: <==commonly_known== 61821 (pos)
                    (Bd_checked_p6)

                    ; #29178: <==commonly_known== 87307 (neg)
                    (Pd_checked_p6)

                    ; #30802: <==closure== 49987 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #37813: <==commonly_known== 87307 (neg)
                    (Pb_checked_p6)

                    ; #47853: <==commonly_known== 87307 (neg)
                    (Pa_checked_p6)

                    ; #49987: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #51711: <==commonly_known== 61821 (pos)
                    (Ba_checked_p6)

                    ; #57048: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #60025: <==commonly_known== 87307 (neg)
                    (Pc_checked_p6)

                    ; #61821: origin
                    (checked_p6)

                    ; #75581: <==closure== 57048 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #77622: <==commonly_known== 61821 (pos)
                    (Bc_checked_p6)

                    ; #84370: <==commonly_known== 61821 (pos)
                    (Bb_checked_p6)

                    ; #12421: <==negation-removal== 77622 (pos)
                    (not (Pc_not_checked_p6))

                    ; #14299: <==uncertain_firing== 57048 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #20892: <==negation-removal== 12817 (pos)
                    (not (Pd_not_checked_p6))

                    ; #38568: <==negation-removal== 51711 (pos)
                    (not (Pa_not_checked_p6))

                    ; #44068: <==uncertain_firing== 75581 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #57361: <==negation-removal== 75581 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #63395: <==uncertain_firing== 30802 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #67366: <==negation-removal== 49987 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #69145: <==negation-removal== 84370 (pos)
                    (not (Pb_not_checked_p6))

                    ; #72293: <==negation-removal== 57048 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #76250: <==uncertain_firing== 49987 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #79607: <==negation-removal== 37813 (pos)
                    (not (Bb_not_checked_p6))

                    ; #80080: <==negation-removal== 30802 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #82960: <==negation-removal== 29178 (pos)
                    (not (Bd_not_checked_p6))

                    ; #87307: <==negation-removal== 61821 (pos)
                    (not (not_checked_p6))

                    ; #88198: <==negation-removal== 47853 (pos)
                    (not (Ba_not_checked_p6))

                    ; #90252: <==negation-removal== 60025 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15476: <==commonly_known== 21436 (pos)
                    (Bb_checked_p7)

                    ; #17734: <==commonly_known== 48141 (neg)
                    (Pc_checked_p7)

                    ; #19270: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #21436: origin
                    (checked_p7)

                    ; #22949: <==closure== 90785 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #23878: <==commonly_known== 21436 (pos)
                    (Bd_checked_p7)

                    ; #29263: <==closure== 19270 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #37391: <==commonly_known== 21436 (pos)
                    (Bc_checked_p7)

                    ; #38822: <==commonly_known== 48141 (neg)
                    (Pb_checked_p7)

                    ; #55971: <==commonly_known== 21436 (pos)
                    (Ba_checked_p7)

                    ; #76304: <==commonly_known== 48141 (neg)
                    (Pa_checked_p7)

                    ; #79128: <==commonly_known== 48141 (neg)
                    (Pd_checked_p7)

                    ; #90785: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #15700: <==uncertain_firing== 29263 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #22087: <==negation-removal== 17734 (pos)
                    (not (Bc_not_checked_p7))

                    ; #27383: <==negation-removal== 22949 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #28854: <==negation-removal== 19270 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #31474: <==negation-removal== 90785 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #33452: <==uncertain_firing== 19270 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #33602: <==negation-removal== 55971 (pos)
                    (not (Pa_not_checked_p7))

                    ; #40614: <==negation-removal== 76304 (pos)
                    (not (Ba_not_checked_p7))

                    ; #48141: <==negation-removal== 21436 (pos)
                    (not (not_checked_p7))

                    ; #49073: <==negation-removal== 79128 (pos)
                    (not (Bd_not_checked_p7))

                    ; #55256: <==negation-removal== 37391 (pos)
                    (not (Pc_not_checked_p7))

                    ; #64078: <==uncertain_firing== 22949 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #66547: <==uncertain_firing== 90785 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #81391: <==negation-removal== 29263 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #84651: <==negation-removal== 38822 (pos)
                    (not (Bb_not_checked_p7))

                    ; #87986: <==negation-removal== 23878 (pos)
                    (not (Pd_not_checked_p7))

                    ; #88220: <==negation-removal== 15476 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12651: <==commonly_known== 76436 (neg)
                    (Pc_checked_p8)

                    ; #20480: <==commonly_known== 76436 (neg)
                    (Pd_checked_p8)

                    ; #33171: <==commonly_known== 76436 (neg)
                    (Pb_checked_p8)

                    ; #34623: <==commonly_known== 50408 (pos)
                    (Bc_checked_p8)

                    ; #42089: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #43715: <==commonly_known== 50408 (pos)
                    (Bd_checked_p8)

                    ; #50408: origin
                    (checked_p8)

                    ; #53311: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #66975: <==commonly_known== 76436 (neg)
                    (Pa_checked_p8)

                    ; #78230: <==commonly_known== 50408 (pos)
                    (Bb_checked_p8)

                    ; #86949: <==closure== 53311 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #88443: <==commonly_known== 50408 (pos)
                    (Ba_checked_p8)

                    ; #89771: <==closure== 42089 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #11354: <==negation-removal== 66975 (pos)
                    (not (Ba_not_checked_p8))

                    ; #12142: <==uncertain_firing== 53311 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #28827: <==negation-removal== 12651 (pos)
                    (not (Bc_not_checked_p8))

                    ; #32607: <==negation-removal== 43715 (pos)
                    (not (Pd_not_checked_p8))

                    ; #32690: <==negation-removal== 53311 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #34509: <==uncertain_firing== 89771 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #39487: <==negation-removal== 78230 (pos)
                    (not (Pb_not_checked_p8))

                    ; #48693: <==negation-removal== 42089 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #55775: <==negation-removal== 88443 (pos)
                    (not (Pa_not_checked_p8))

                    ; #56407: <==negation-removal== 34623 (pos)
                    (not (Pc_not_checked_p8))

                    ; #57530: <==uncertain_firing== 42089 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #64084: <==negation-removal== 33171 (pos)
                    (not (Bb_not_checked_p8))

                    ; #69255: <==negation-removal== 86949 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #73898: <==uncertain_firing== 86949 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #74971: <==negation-removal== 89771 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #76436: <==negation-removal== 50408 (pos)
                    (not (not_checked_p8))

                    ; #91636: <==negation-removal== 20480 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17730: <==commonly_known== 20057 (neg)
                    (Pd_checked_p9)

                    ; #18906: <==commonly_known== 58460 (pos)
                    (Bd_checked_p9)

                    ; #22953: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #34611: <==commonly_known== 20057 (neg)
                    (Pa_checked_p9)

                    ; #37115: <==commonly_known== 58460 (pos)
                    (Bc_checked_p9)

                    ; #38326: <==closure== 22953 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #40628: <==commonly_known== 58460 (pos)
                    (Bb_checked_p9)

                    ; #57120: <==commonly_known== 20057 (neg)
                    (Pb_checked_p9)

                    ; #58460: origin
                    (checked_p9)

                    ; #62739: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #65895: <==commonly_known== 20057 (neg)
                    (Pc_checked_p9)

                    ; #71366: <==commonly_known== 58460 (pos)
                    (Ba_checked_p9)

                    ; #79376: <==closure== 62739 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #18120: <==negation-removal== 37115 (pos)
                    (not (Pc_not_checked_p9))

                    ; #20057: <==negation-removal== 58460 (pos)
                    (not (not_checked_p9))

                    ; #20078: <==negation-removal== 71366 (pos)
                    (not (Pa_not_checked_p9))

                    ; #22703: <==uncertain_firing== 38326 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #23497: <==negation-removal== 18906 (pos)
                    (not (Pd_not_checked_p9))

                    ; #38052: <==negation-removal== 40628 (pos)
                    (not (Pb_not_checked_p9))

                    ; #46670: <==uncertain_firing== 79376 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #55282: <==negation-removal== 79376 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #59048: <==negation-removal== 34611 (pos)
                    (not (Ba_not_checked_p9))

                    ; #64482: <==uncertain_firing== 62739 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #73695: <==uncertain_firing== 22953 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #75650: <==negation-removal== 65895 (pos)
                    (not (Bc_not_checked_p9))

                    ; #78843: <==negation-removal== 17730 (pos)
                    (not (Bd_not_checked_p9))

                    ; #82047: <==negation-removal== 22953 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #88915: <==negation-removal== 38326 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #89870: <==negation-removal== 62739 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #93177: <==negation-removal== 57120 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10563: <==commonly_known== 22790 (pos)
                    (Bb_checked_p1)

                    ; #11432: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #11879: <==closure== 11432 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #13626: <==commonly_known== 58429 (neg)
                    (Pb_checked_p1)

                    ; #22790: origin
                    (checked_p1)

                    ; #25958: <==commonly_known== 22790 (pos)
                    (Ba_checked_p1)

                    ; #28387: <==commonly_known== 58429 (neg)
                    (Pa_checked_p1)

                    ; #40219: <==commonly_known== 22790 (pos)
                    (Bc_checked_p1)

                    ; #46640: <==commonly_known== 58429 (neg)
                    (Pd_checked_p1)

                    ; #50984: <==commonly_known== 22790 (pos)
                    (Bd_checked_p1)

                    ; #52332: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #70157: <==commonly_known== 58429 (neg)
                    (Pc_checked_p1)

                    ; #79076: <==closure== 52332 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #12245: <==uncertain_firing== 11432 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #15842: <==negation-removal== 79076 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #19905: <==negation-removal== 25958 (pos)
                    (not (Pa_not_checked_p1))

                    ; #24578: <==negation-removal== 11879 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #25393: <==negation-removal== 70157 (pos)
                    (not (Bc_not_checked_p1))

                    ; #29905: <==negation-removal== 40219 (pos)
                    (not (Pc_not_checked_p1))

                    ; #32427: <==uncertain_firing== 52332 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #37372: <==negation-removal== 10563 (pos)
                    (not (Pb_not_checked_p1))

                    ; #44269: <==negation-removal== 28387 (pos)
                    (not (Ba_not_checked_p1))

                    ; #48677: <==negation-removal== 46640 (pos)
                    (not (Bd_not_checked_p1))

                    ; #54409: <==negation-removal== 52332 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #58429: <==negation-removal== 22790 (pos)
                    (not (not_checked_p1))

                    ; #63373: <==uncertain_firing== 11879 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #68866: <==negation-removal== 11432 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #74650: <==negation-removal== 50984 (pos)
                    (not (Pd_not_checked_p1))

                    ; #75616: <==uncertain_firing== 79076 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #84597: <==negation-removal== 13626 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11173: <==closure== 20636 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #20028: <==commonly_known== 78622 (pos)
                    (Bb_checked_p2)

                    ; #20636: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #24014: <==closure== 91205 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #26739: <==commonly_known== 78622 (pos)
                    (Bc_checked_p2)

                    ; #36025: <==commonly_known== 70720 (neg)
                    (Pa_checked_p2)

                    ; #41738: <==commonly_known== 78622 (pos)
                    (Ba_checked_p2)

                    ; #57198: <==commonly_known== 70720 (neg)
                    (Pc_checked_p2)

                    ; #77436: <==commonly_known== 78622 (pos)
                    (Bd_checked_p2)

                    ; #78622: origin
                    (checked_p2)

                    ; #84369: <==commonly_known== 70720 (neg)
                    (Pd_checked_p2)

                    ; #90006: <==commonly_known== 70720 (neg)
                    (Pb_checked_p2)

                    ; #91205: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #15232: <==uncertain_firing== 91205 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #18757: <==negation-removal== 84369 (pos)
                    (not (Bd_not_checked_p2))

                    ; #24366: <==negation-removal== 20028 (pos)
                    (not (Pb_not_checked_p2))

                    ; #30448: <==negation-removal== 24014 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #42778: <==negation-removal== 20636 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #43362: <==negation-removal== 91205 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #44410: <==negation-removal== 57198 (pos)
                    (not (Bc_not_checked_p2))

                    ; #51326: <==negation-removal== 41738 (pos)
                    (not (Pa_not_checked_p2))

                    ; #61526: <==uncertain_firing== 11173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #64068: <==negation-removal== 90006 (pos)
                    (not (Bb_not_checked_p2))

                    ; #65145: <==negation-removal== 77436 (pos)
                    (not (Pd_not_checked_p2))

                    ; #65555: <==uncertain_firing== 24014 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #67148: <==negation-removal== 26739 (pos)
                    (not (Pc_not_checked_p2))

                    ; #68882: <==negation-removal== 36025 (pos)
                    (not (Ba_not_checked_p2))

                    ; #70720: <==negation-removal== 78622 (pos)
                    (not (not_checked_p2))

                    ; #74113: <==negation-removal== 11173 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #77449: <==uncertain_firing== 20636 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13200: <==commonly_known== 22033 (pos)
                    (Bb_checked_p3)

                    ; #17428: <==commonly_known== 22033 (pos)
                    (Ba_checked_p3)

                    ; #22033: origin
                    (checked_p3)

                    ; #43308: <==commonly_known== 22033 (pos)
                    (Bd_checked_p3)

                    ; #43355: <==commonly_known== 22033 (pos)
                    (Bc_checked_p3)

                    ; #50594: <==closure== 63665 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #53917: <==commonly_known== 79415 (neg)
                    (Pa_checked_p3)

                    ; #61694: <==closure== 84311 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #62020: <==commonly_known== 79415 (neg)
                    (Pc_checked_p3)

                    ; #63665: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #78462: <==commonly_known== 79415 (neg)
                    (Pb_checked_p3)

                    ; #82037: <==commonly_known== 79415 (neg)
                    (Pd_checked_p3)

                    ; #84311: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #12241: <==negation-removal== 43355 (pos)
                    (not (Pc_not_checked_p3))

                    ; #13652: <==negation-removal== 17428 (pos)
                    (not (Pa_not_checked_p3))

                    ; #15008: <==negation-removal== 84311 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #19762: <==uncertain_firing== 63665 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #20024: <==negation-removal== 61694 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #22315: <==negation-removal== 13200 (pos)
                    (not (Pb_not_checked_p3))

                    ; #25891: <==negation-removal== 43308 (pos)
                    (not (Pd_not_checked_p3))

                    ; #35346: <==negation-removal== 78462 (pos)
                    (not (Bb_not_checked_p3))

                    ; #35882: <==negation-removal== 62020 (pos)
                    (not (Bc_not_checked_p3))

                    ; #42536: <==negation-removal== 53917 (pos)
                    (not (Ba_not_checked_p3))

                    ; #55225: <==negation-removal== 63665 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #56841: <==uncertain_firing== 61694 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #60859: <==negation-removal== 82037 (pos)
                    (not (Bd_not_checked_p3))

                    ; #72896: <==uncertain_firing== 84311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #79415: <==negation-removal== 22033 (pos)
                    (not (not_checked_p3))

                    ; #81721: <==negation-removal== 50594 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #88426: <==uncertain_firing== 50594 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10744: <==closure== 51077 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #24818: <==commonly_known== 88017 (pos)
                    (Ba_checked_p4)

                    ; #29187: <==commonly_known== 88017 (pos)
                    (Bd_checked_p4)

                    ; #31001: <==commonly_known== 88017 (pos)
                    (Bb_checked_p4)

                    ; #31674: <==commonly_known== 82473 (neg)
                    (Pa_checked_p4)

                    ; #32788: <==closure== 49372 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #35134: <==commonly_known== 82473 (neg)
                    (Pc_checked_p4)

                    ; #43059: <==commonly_known== 82473 (neg)
                    (Pb_checked_p4)

                    ; #49372: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #51077: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #71897: <==commonly_known== 88017 (pos)
                    (Bc_checked_p4)

                    ; #80023: <==commonly_known== 82473 (neg)
                    (Pd_checked_p4)

                    ; #88017: origin
                    (checked_p4)

                    ; #20523: <==negation-removal== 29187 (pos)
                    (not (Pd_not_checked_p4))

                    ; #21597: <==negation-removal== 35134 (pos)
                    (not (Bc_not_checked_p4))

                    ; #29016: <==uncertain_firing== 32788 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #39556: <==negation-removal== 31001 (pos)
                    (not (Pb_not_checked_p4))

                    ; #42137: <==negation-removal== 10744 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #43443: <==uncertain_firing== 51077 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #59692: <==negation-removal== 31674 (pos)
                    (not (Ba_not_checked_p4))

                    ; #60801: <==negation-removal== 80023 (pos)
                    (not (Bd_not_checked_p4))

                    ; #63828: <==negation-removal== 24818 (pos)
                    (not (Pa_not_checked_p4))

                    ; #69535: <==uncertain_firing== 49372 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #69771: <==negation-removal== 51077 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #72121: <==negation-removal== 32788 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #73955: <==negation-removal== 43059 (pos)
                    (not (Bb_not_checked_p4))

                    ; #80997: <==negation-removal== 49372 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #81682: <==uncertain_firing== 10744 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #82473: <==negation-removal== 88017 (pos)
                    (not (not_checked_p4))

                    ; #89287: <==negation-removal== 71897 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11134: <==commonly_known== 81301 (pos)
                    (Ba_checked_p5)

                    ; #15487: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #23032: <==commonly_known== 81301 (pos)
                    (Bd_checked_p5)

                    ; #31611: <==commonly_known== 55679 (neg)
                    (Pd_checked_p5)

                    ; #33149: <==commonly_known== 55679 (neg)
                    (Pc_checked_p5)

                    ; #40169: <==closure== 89573 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #42131: <==commonly_known== 55679 (neg)
                    (Pa_checked_p5)

                    ; #54644: <==closure== 15487 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #65872: <==commonly_known== 81301 (pos)
                    (Bc_checked_p5)

                    ; #68298: <==commonly_known== 81301 (pos)
                    (Bb_checked_p5)

                    ; #78609: <==commonly_known== 55679 (neg)
                    (Pb_checked_p5)

                    ; #81301: origin
                    (checked_p5)

                    ; #89573: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #13398: <==negation-removal== 42131 (pos)
                    (not (Ba_not_checked_p5))

                    ; #15465: <==negation-removal== 65872 (pos)
                    (not (Pc_not_checked_p5))

                    ; #16920: <==uncertain_firing== 54644 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #19166: <==negation-removal== 89573 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #19471: <==uncertain_firing== 40169 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #32022: <==negation-removal== 23032 (pos)
                    (not (Pd_not_checked_p5))

                    ; #42003: <==negation-removal== 54644 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #44671: <==negation-removal== 40169 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #51054: <==negation-removal== 78609 (pos)
                    (not (Bb_not_checked_p5))

                    ; #55679: <==negation-removal== 81301 (pos)
                    (not (not_checked_p5))

                    ; #59716: <==uncertain_firing== 89573 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #60811: <==negation-removal== 31611 (pos)
                    (not (Bd_not_checked_p5))

                    ; #61341: <==negation-removal== 68298 (pos)
                    (not (Pb_not_checked_p5))

                    ; #61899: <==uncertain_firing== 15487 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #63054: <==negation-removal== 15487 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #64865: <==negation-removal== 33149 (pos)
                    (not (Bc_not_checked_p5))

                    ; #75511: <==negation-removal== 11134 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12817: <==commonly_known== 61821 (pos)
                    (Bd_checked_p6)

                    ; #29178: <==commonly_known== 87307 (neg)
                    (Pd_checked_p6)

                    ; #33372: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #37813: <==commonly_known== 87307 (neg)
                    (Pb_checked_p6)

                    ; #47853: <==commonly_known== 87307 (neg)
                    (Pa_checked_p6)

                    ; #51711: <==commonly_known== 61821 (pos)
                    (Ba_checked_p6)

                    ; #60025: <==commonly_known== 87307 (neg)
                    (Pc_checked_p6)

                    ; #61821: origin
                    (checked_p6)

                    ; #75999: <==closure== 91193 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #77622: <==commonly_known== 61821 (pos)
                    (Bc_checked_p6)

                    ; #84370: <==commonly_known== 61821 (pos)
                    (Bb_checked_p6)

                    ; #88292: <==closure== 33372 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #91193: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #10856: <==negation-removal== 91193 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #12421: <==negation-removal== 77622 (pos)
                    (not (Pc_not_checked_p6))

                    ; #13240: <==uncertain_firing== 33372 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #20892: <==negation-removal== 12817 (pos)
                    (not (Pd_not_checked_p6))

                    ; #22236: <==negation-removal== 33372 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #30463: <==negation-removal== 75999 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #36307: <==negation-removal== 88292 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #38568: <==negation-removal== 51711 (pos)
                    (not (Pa_not_checked_p6))

                    ; #42680: <==uncertain_firing== 75999 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #69145: <==negation-removal== 84370 (pos)
                    (not (Pb_not_checked_p6))

                    ; #72216: <==uncertain_firing== 88292 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #75714: <==uncertain_firing== 91193 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #79607: <==negation-removal== 37813 (pos)
                    (not (Bb_not_checked_p6))

                    ; #82960: <==negation-removal== 29178 (pos)
                    (not (Bd_not_checked_p6))

                    ; #87307: <==negation-removal== 61821 (pos)
                    (not (not_checked_p6))

                    ; #88198: <==negation-removal== 47853 (pos)
                    (not (Ba_not_checked_p6))

                    ; #90252: <==negation-removal== 60025 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11356: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #15476: <==commonly_known== 21436 (pos)
                    (Bb_checked_p7)

                    ; #17734: <==commonly_known== 48141 (neg)
                    (Pc_checked_p7)

                    ; #21436: origin
                    (checked_p7)

                    ; #23878: <==commonly_known== 21436 (pos)
                    (Bd_checked_p7)

                    ; #28890: <==closure== 55506 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #37391: <==commonly_known== 21436 (pos)
                    (Bc_checked_p7)

                    ; #38822: <==commonly_known== 48141 (neg)
                    (Pb_checked_p7)

                    ; #55506: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #55971: <==commonly_known== 21436 (pos)
                    (Ba_checked_p7)

                    ; #72311: <==closure== 11356 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #76304: <==commonly_known== 48141 (neg)
                    (Pa_checked_p7)

                    ; #79128: <==commonly_known== 48141 (neg)
                    (Pd_checked_p7)

                    ; #13419: <==negation-removal== 11356 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #22087: <==negation-removal== 17734 (pos)
                    (not (Bc_not_checked_p7))

                    ; #24787: <==uncertain_firing== 28890 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #33602: <==negation-removal== 55971 (pos)
                    (not (Pa_not_checked_p7))

                    ; #38240: <==negation-removal== 28890 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #40614: <==negation-removal== 76304 (pos)
                    (not (Ba_not_checked_p7))

                    ; #48141: <==negation-removal== 21436 (pos)
                    (not (not_checked_p7))

                    ; #49073: <==negation-removal== 79128 (pos)
                    (not (Bd_not_checked_p7))

                    ; #55256: <==negation-removal== 37391 (pos)
                    (not (Pc_not_checked_p7))

                    ; #55865: <==negation-removal== 72311 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #72692: <==uncertain_firing== 11356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #82347: <==uncertain_firing== 55506 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #83920: <==negation-removal== 55506 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #84651: <==negation-removal== 38822 (pos)
                    (not (Bb_not_checked_p7))

                    ; #87986: <==negation-removal== 23878 (pos)
                    (not (Pd_not_checked_p7))

                    ; #88220: <==negation-removal== 15476 (pos)
                    (not (Pb_not_checked_p7))

                    ; #91003: <==uncertain_firing== 72311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12651: <==commonly_known== 76436 (neg)
                    (Pc_checked_p8)

                    ; #20480: <==commonly_known== 76436 (neg)
                    (Pd_checked_p8)

                    ; #21196: <==closure== 61910 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #33171: <==commonly_known== 76436 (neg)
                    (Pb_checked_p8)

                    ; #34623: <==commonly_known== 50408 (pos)
                    (Bc_checked_p8)

                    ; #43715: <==commonly_known== 50408 (pos)
                    (Bd_checked_p8)

                    ; #50408: origin
                    (checked_p8)

                    ; #61910: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #66975: <==commonly_known== 76436 (neg)
                    (Pa_checked_p8)

                    ; #78230: <==commonly_known== 50408 (pos)
                    (Bb_checked_p8)

                    ; #78814: <==closure== 87634 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #87634: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #88443: <==commonly_known== 50408 (pos)
                    (Ba_checked_p8)

                    ; #11354: <==negation-removal== 66975 (pos)
                    (not (Ba_not_checked_p8))

                    ; #17753: <==uncertain_firing== 78814 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #21595: <==negation-removal== 61910 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #28827: <==negation-removal== 12651 (pos)
                    (not (Bc_not_checked_p8))

                    ; #32607: <==negation-removal== 43715 (pos)
                    (not (Pd_not_checked_p8))

                    ; #39487: <==negation-removal== 78230 (pos)
                    (not (Pb_not_checked_p8))

                    ; #48812: <==negation-removal== 21196 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #55775: <==negation-removal== 88443 (pos)
                    (not (Pa_not_checked_p8))

                    ; #56407: <==negation-removal== 34623 (pos)
                    (not (Pc_not_checked_p8))

                    ; #59104: <==uncertain_firing== 21196 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #60426: <==uncertain_firing== 87634 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #64084: <==negation-removal== 33171 (pos)
                    (not (Bb_not_checked_p8))

                    ; #76436: <==negation-removal== 50408 (pos)
                    (not (not_checked_p8))

                    ; #77066: <==negation-removal== 87634 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #84987: <==negation-removal== 78814 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #88374: <==uncertain_firing== 61910 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #91636: <==negation-removal== 20480 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17730: <==commonly_known== 20057 (neg)
                    (Pd_checked_p9)

                    ; #18906: <==commonly_known== 58460 (pos)
                    (Bd_checked_p9)

                    ; #27605: <==closure== 74640 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #34611: <==commonly_known== 20057 (neg)
                    (Pa_checked_p9)

                    ; #37115: <==commonly_known== 58460 (pos)
                    (Bc_checked_p9)

                    ; #40628: <==commonly_known== 58460 (pos)
                    (Bb_checked_p9)

                    ; #57120: <==commonly_known== 20057 (neg)
                    (Pb_checked_p9)

                    ; #58460: origin
                    (checked_p9)

                    ; #65895: <==commonly_known== 20057 (neg)
                    (Pc_checked_p9)

                    ; #66532: <==closure== 72396 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #71366: <==commonly_known== 58460 (pos)
                    (Ba_checked_p9)

                    ; #72396: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #74640: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #18120: <==negation-removal== 37115 (pos)
                    (not (Pc_not_checked_p9))

                    ; #20057: <==negation-removal== 58460 (pos)
                    (not (not_checked_p9))

                    ; #20078: <==negation-removal== 71366 (pos)
                    (not (Pa_not_checked_p9))

                    ; #23497: <==negation-removal== 18906 (pos)
                    (not (Pd_not_checked_p9))

                    ; #23629: <==negation-removal== 27605 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #29853: <==negation-removal== 74640 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #33077: <==uncertain_firing== 72396 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #38052: <==negation-removal== 40628 (pos)
                    (not (Pb_not_checked_p9))

                    ; #38397: <==uncertain_firing== 66532 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #43920: <==negation-removal== 66532 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #58887: <==uncertain_firing== 74640 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #59048: <==negation-removal== 34611 (pos)
                    (not (Ba_not_checked_p9))

                    ; #60650: <==negation-removal== 72396 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #75650: <==negation-removal== 65895 (pos)
                    (not (Bc_not_checked_p9))

                    ; #75750: <==uncertain_firing== 27605 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #78843: <==negation-removal== 17730 (pos)
                    (not (Bd_not_checked_p9))

                    ; #93177: <==negation-removal== 57120 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10563: <==commonly_known== 22790 (pos)
                    (Bb_checked_p1)

                    ; #12878: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #13626: <==commonly_known== 58429 (neg)
                    (Pb_checked_p1)

                    ; #22790: origin
                    (checked_p1)

                    ; #25749: <==closure== 33411 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #25958: <==commonly_known== 22790 (pos)
                    (Ba_checked_p1)

                    ; #28387: <==commonly_known== 58429 (neg)
                    (Pa_checked_p1)

                    ; #33411: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #40219: <==commonly_known== 22790 (pos)
                    (Bc_checked_p1)

                    ; #46640: <==commonly_known== 58429 (neg)
                    (Pd_checked_p1)

                    ; #50984: <==commonly_known== 22790 (pos)
                    (Bd_checked_p1)

                    ; #61512: <==closure== 12878 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #70157: <==commonly_known== 58429 (neg)
                    (Pc_checked_p1)

                    ; #16056: <==negation-removal== 12878 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #19905: <==negation-removal== 25958 (pos)
                    (not (Pa_not_checked_p1))

                    ; #20987: <==uncertain_firing== 61512 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #25393: <==negation-removal== 70157 (pos)
                    (not (Bc_not_checked_p1))

                    ; #29905: <==negation-removal== 40219 (pos)
                    (not (Pc_not_checked_p1))

                    ; #35702: <==uncertain_firing== 33411 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #37372: <==negation-removal== 10563 (pos)
                    (not (Pb_not_checked_p1))

                    ; #41106: <==negation-removal== 33411 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #44269: <==negation-removal== 28387 (pos)
                    (not (Ba_not_checked_p1))

                    ; #48677: <==negation-removal== 46640 (pos)
                    (not (Bd_not_checked_p1))

                    ; #52965: <==uncertain_firing== 12878 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #58429: <==negation-removal== 22790 (pos)
                    (not (not_checked_p1))

                    ; #60160: <==negation-removal== 25749 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71186: <==negation-removal== 61512 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #74650: <==negation-removal== 50984 (pos)
                    (not (Pd_not_checked_p1))

                    ; #84597: <==negation-removal== 13626 (pos)
                    (not (Bb_not_checked_p1))

                    ; #88654: <==uncertain_firing== 25749 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #20028: <==commonly_known== 78622 (pos)
                    (Bb_checked_p2)

                    ; #26739: <==commonly_known== 78622 (pos)
                    (Bc_checked_p2)

                    ; #27706: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #36025: <==commonly_known== 70720 (neg)
                    (Pa_checked_p2)

                    ; #41738: <==commonly_known== 78622 (pos)
                    (Ba_checked_p2)

                    ; #52277: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #57198: <==commonly_known== 70720 (neg)
                    (Pc_checked_p2)

                    ; #59835: <==closure== 27706 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #73506: <==closure== 52277 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #77436: <==commonly_known== 78622 (pos)
                    (Bd_checked_p2)

                    ; #78622: origin
                    (checked_p2)

                    ; #84369: <==commonly_known== 70720 (neg)
                    (Pd_checked_p2)

                    ; #90006: <==commonly_known== 70720 (neg)
                    (Pb_checked_p2)

                    ; #18757: <==negation-removal== 84369 (pos)
                    (not (Bd_not_checked_p2))

                    ; #24366: <==negation-removal== 20028 (pos)
                    (not (Pb_not_checked_p2))

                    ; #35354: <==uncertain_firing== 27706 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #40313: <==negation-removal== 59835 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #44410: <==negation-removal== 57198 (pos)
                    (not (Bc_not_checked_p2))

                    ; #49263: <==negation-removal== 73506 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #51326: <==negation-removal== 41738 (pos)
                    (not (Pa_not_checked_p2))

                    ; #57715: <==uncertain_firing== 59835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #63545: <==uncertain_firing== 73506 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #64068: <==negation-removal== 90006 (pos)
                    (not (Bb_not_checked_p2))

                    ; #64890: <==negation-removal== 27706 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #65145: <==negation-removal== 77436 (pos)
                    (not (Pd_not_checked_p2))

                    ; #67148: <==negation-removal== 26739 (pos)
                    (not (Pc_not_checked_p2))

                    ; #68882: <==negation-removal== 36025 (pos)
                    (not (Ba_not_checked_p2))

                    ; #70720: <==negation-removal== 78622 (pos)
                    (not (not_checked_p2))

                    ; #77315: <==uncertain_firing== 52277 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #81766: <==negation-removal== 52277 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13200: <==commonly_known== 22033 (pos)
                    (Bb_checked_p3)

                    ; #17428: <==commonly_known== 22033 (pos)
                    (Ba_checked_p3)

                    ; #22033: origin
                    (checked_p3)

                    ; #32139: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #43308: <==commonly_known== 22033 (pos)
                    (Bd_checked_p3)

                    ; #43355: <==commonly_known== 22033 (pos)
                    (Bc_checked_p3)

                    ; #44330: <==closure== 32139 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #53917: <==commonly_known== 79415 (neg)
                    (Pa_checked_p3)

                    ; #55650: <==closure== 56139 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #56139: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #62020: <==commonly_known== 79415 (neg)
                    (Pc_checked_p3)

                    ; #78462: <==commonly_known== 79415 (neg)
                    (Pb_checked_p3)

                    ; #82037: <==commonly_known== 79415 (neg)
                    (Pd_checked_p3)

                    ; #10653: <==negation-removal== 56139 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #12241: <==negation-removal== 43355 (pos)
                    (not (Pc_not_checked_p3))

                    ; #13652: <==negation-removal== 17428 (pos)
                    (not (Pa_not_checked_p3))

                    ; #17123: <==negation-removal== 44330 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #21619: <==uncertain_firing== 55650 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #22315: <==negation-removal== 13200 (pos)
                    (not (Pb_not_checked_p3))

                    ; #25891: <==negation-removal== 43308 (pos)
                    (not (Pd_not_checked_p3))

                    ; #35346: <==negation-removal== 78462 (pos)
                    (not (Bb_not_checked_p3))

                    ; #35882: <==negation-removal== 62020 (pos)
                    (not (Bc_not_checked_p3))

                    ; #42536: <==negation-removal== 53917 (pos)
                    (not (Ba_not_checked_p3))

                    ; #48684: <==uncertain_firing== 44330 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #56001: <==negation-removal== 32139 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #60791: <==uncertain_firing== 56139 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #60859: <==negation-removal== 82037 (pos)
                    (not (Bd_not_checked_p3))

                    ; #61311: <==negation-removal== 55650 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #79415: <==negation-removal== 22033 (pos)
                    (not (not_checked_p3))

                    ; #82795: <==uncertain_firing== 32139 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #18677: <==closure== 41153 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #24818: <==commonly_known== 88017 (pos)
                    (Ba_checked_p4)

                    ; #29187: <==commonly_known== 88017 (pos)
                    (Bd_checked_p4)

                    ; #31001: <==commonly_known== 88017 (pos)
                    (Bb_checked_p4)

                    ; #31674: <==commonly_known== 82473 (neg)
                    (Pa_checked_p4)

                    ; #34410: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #35134: <==commonly_known== 82473 (neg)
                    (Pc_checked_p4)

                    ; #41153: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #43059: <==commonly_known== 82473 (neg)
                    (Pb_checked_p4)

                    ; #71897: <==commonly_known== 88017 (pos)
                    (Bc_checked_p4)

                    ; #75694: <==closure== 34410 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #80023: <==commonly_known== 82473 (neg)
                    (Pd_checked_p4)

                    ; #88017: origin
                    (checked_p4)

                    ; #20523: <==negation-removal== 29187 (pos)
                    (not (Pd_not_checked_p4))

                    ; #21597: <==negation-removal== 35134 (pos)
                    (not (Bc_not_checked_p4))

                    ; #25413: <==uncertain_firing== 18677 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #33664: <==uncertain_firing== 41153 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39556: <==negation-removal== 31001 (pos)
                    (not (Pb_not_checked_p4))

                    ; #52713: <==negation-removal== 75694 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #59692: <==negation-removal== 31674 (pos)
                    (not (Ba_not_checked_p4))

                    ; #60801: <==negation-removal== 80023 (pos)
                    (not (Bd_not_checked_p4))

                    ; #62609: <==uncertain_firing== 34410 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #63828: <==negation-removal== 24818 (pos)
                    (not (Pa_not_checked_p4))

                    ; #73955: <==negation-removal== 43059 (pos)
                    (not (Bb_not_checked_p4))

                    ; #76831: <==uncertain_firing== 75694 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #82473: <==negation-removal== 88017 (pos)
                    (not (not_checked_p4))

                    ; #84187: <==negation-removal== 18677 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #86472: <==negation-removal== 34410 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #89219: <==negation-removal== 41153 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #89287: <==negation-removal== 71897 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11134: <==commonly_known== 81301 (pos)
                    (Ba_checked_p5)

                    ; #23032: <==commonly_known== 81301 (pos)
                    (Bd_checked_p5)

                    ; #31611: <==commonly_known== 55679 (neg)
                    (Pd_checked_p5)

                    ; #33149: <==commonly_known== 55679 (neg)
                    (Pc_checked_p5)

                    ; #42131: <==commonly_known== 55679 (neg)
                    (Pa_checked_p5)

                    ; #42839: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #47521: <==closure== 42839 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #64632: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #65872: <==commonly_known== 81301 (pos)
                    (Bc_checked_p5)

                    ; #68298: <==commonly_known== 81301 (pos)
                    (Bb_checked_p5)

                    ; #72933: <==closure== 64632 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #78609: <==commonly_known== 55679 (neg)
                    (Pb_checked_p5)

                    ; #81301: origin
                    (checked_p5)

                    ; #13398: <==negation-removal== 42131 (pos)
                    (not (Ba_not_checked_p5))

                    ; #15465: <==negation-removal== 65872 (pos)
                    (not (Pc_not_checked_p5))

                    ; #19228: <==uncertain_firing== 42839 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #22563: <==negation-removal== 42839 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #22921: <==uncertain_firing== 72933 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #25554: <==uncertain_firing== 47521 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #31555: <==uncertain_firing== 64632 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #32022: <==negation-removal== 23032 (pos)
                    (not (Pd_not_checked_p5))

                    ; #37188: <==negation-removal== 64632 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #39111: <==negation-removal== 47521 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #51054: <==negation-removal== 78609 (pos)
                    (not (Bb_not_checked_p5))

                    ; #55679: <==negation-removal== 81301 (pos)
                    (not (not_checked_p5))

                    ; #59799: <==negation-removal== 72933 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #60811: <==negation-removal== 31611 (pos)
                    (not (Bd_not_checked_p5))

                    ; #61341: <==negation-removal== 68298 (pos)
                    (not (Pb_not_checked_p5))

                    ; #64865: <==negation-removal== 33149 (pos)
                    (not (Bc_not_checked_p5))

                    ; #75511: <==negation-removal== 11134 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12817: <==commonly_known== 61821 (pos)
                    (Bd_checked_p6)

                    ; #29178: <==commonly_known== 87307 (neg)
                    (Pd_checked_p6)

                    ; #33541: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #37813: <==commonly_known== 87307 (neg)
                    (Pb_checked_p6)

                    ; #47853: <==commonly_known== 87307 (neg)
                    (Pa_checked_p6)

                    ; #50615: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #51711: <==commonly_known== 61821 (pos)
                    (Ba_checked_p6)

                    ; #56597: <==closure== 33541 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #60025: <==commonly_known== 87307 (neg)
                    (Pc_checked_p6)

                    ; #61821: origin
                    (checked_p6)

                    ; #77622: <==commonly_known== 61821 (pos)
                    (Bc_checked_p6)

                    ; #84370: <==commonly_known== 61821 (pos)
                    (Bb_checked_p6)

                    ; #89249: <==closure== 50615 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #12421: <==negation-removal== 77622 (pos)
                    (not (Pc_not_checked_p6))

                    ; #20892: <==negation-removal== 12817 (pos)
                    (not (Pd_not_checked_p6))

                    ; #23025: <==negation-removal== 33541 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #29981: <==uncertain_firing== 50615 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #38568: <==negation-removal== 51711 (pos)
                    (not (Pa_not_checked_p6))

                    ; #54267: <==uncertain_firing== 56597 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #64976: <==uncertain_firing== 33541 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #66752: <==uncertain_firing== 89249 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #69145: <==negation-removal== 84370 (pos)
                    (not (Pb_not_checked_p6))

                    ; #79607: <==negation-removal== 37813 (pos)
                    (not (Bb_not_checked_p6))

                    ; #79717: <==negation-removal== 56597 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #81860: <==negation-removal== 89249 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #82960: <==negation-removal== 29178 (pos)
                    (not (Bd_not_checked_p6))

                    ; #87307: <==negation-removal== 61821 (pos)
                    (not (not_checked_p6))

                    ; #88198: <==negation-removal== 47853 (pos)
                    (not (Ba_not_checked_p6))

                    ; #89785: <==negation-removal== 50615 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #90252: <==negation-removal== 60025 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15476: <==commonly_known== 21436 (pos)
                    (Bb_checked_p7)

                    ; #17734: <==commonly_known== 48141 (neg)
                    (Pc_checked_p7)

                    ; #21436: origin
                    (checked_p7)

                    ; #23878: <==commonly_known== 21436 (pos)
                    (Bd_checked_p7)

                    ; #32747: <==closure== 43827 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #37391: <==commonly_known== 21436 (pos)
                    (Bc_checked_p7)

                    ; #38822: <==commonly_known== 48141 (neg)
                    (Pb_checked_p7)

                    ; #43827: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #55971: <==commonly_known== 21436 (pos)
                    (Ba_checked_p7)

                    ; #76304: <==commonly_known== 48141 (neg)
                    (Pa_checked_p7)

                    ; #79128: <==commonly_known== 48141 (neg)
                    (Pd_checked_p7)

                    ; #79430: <==closure== 90726 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #90726: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #22087: <==negation-removal== 17734 (pos)
                    (not (Bc_not_checked_p7))

                    ; #22802: <==uncertain_firing== 90726 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #25756: <==negation-removal== 43827 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #33602: <==negation-removal== 55971 (pos)
                    (not (Pa_not_checked_p7))

                    ; #39774: <==negation-removal== 32747 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #40614: <==negation-removal== 76304 (pos)
                    (not (Ba_not_checked_p7))

                    ; #41985: <==negation-removal== 79430 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #48141: <==negation-removal== 21436 (pos)
                    (not (not_checked_p7))

                    ; #49073: <==negation-removal== 79128 (pos)
                    (not (Bd_not_checked_p7))

                    ; #55256: <==negation-removal== 37391 (pos)
                    (not (Pc_not_checked_p7))

                    ; #72906: <==uncertain_firing== 79430 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #75290: <==uncertain_firing== 32747 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #76376: <==negation-removal== 90726 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #83759: <==uncertain_firing== 43827 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #84651: <==negation-removal== 38822 (pos)
                    (not (Bb_not_checked_p7))

                    ; #87986: <==negation-removal== 23878 (pos)
                    (not (Pd_not_checked_p7))

                    ; #88220: <==negation-removal== 15476 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12651: <==commonly_known== 76436 (neg)
                    (Pc_checked_p8)

                    ; #20480: <==commonly_known== 76436 (neg)
                    (Pd_checked_p8)

                    ; #33171: <==commonly_known== 76436 (neg)
                    (Pb_checked_p8)

                    ; #34623: <==commonly_known== 50408 (pos)
                    (Bc_checked_p8)

                    ; #43715: <==commonly_known== 50408 (pos)
                    (Bd_checked_p8)

                    ; #49763: <==closure== 71921 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #50408: origin
                    (checked_p8)

                    ; #53839: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #66975: <==commonly_known== 76436 (neg)
                    (Pa_checked_p8)

                    ; #71921: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #75534: <==closure== 53839 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #78230: <==commonly_known== 50408 (pos)
                    (Bb_checked_p8)

                    ; #88443: <==commonly_known== 50408 (pos)
                    (Ba_checked_p8)

                    ; #11354: <==negation-removal== 66975 (pos)
                    (not (Ba_not_checked_p8))

                    ; #19044: <==negation-removal== 53839 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #28827: <==negation-removal== 12651 (pos)
                    (not (Bc_not_checked_p8))

                    ; #32607: <==negation-removal== 43715 (pos)
                    (not (Pd_not_checked_p8))

                    ; #39487: <==negation-removal== 78230 (pos)
                    (not (Pb_not_checked_p8))

                    ; #48486: <==negation-removal== 71921 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #55775: <==negation-removal== 88443 (pos)
                    (not (Pa_not_checked_p8))

                    ; #56407: <==negation-removal== 34623 (pos)
                    (not (Pc_not_checked_p8))

                    ; #64084: <==negation-removal== 33171 (pos)
                    (not (Bb_not_checked_p8))

                    ; #66004: <==uncertain_firing== 71921 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70495: <==negation-removal== 75534 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #70728: <==uncertain_firing== 53839 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #76436: <==negation-removal== 50408 (pos)
                    (not (not_checked_p8))

                    ; #78495: <==uncertain_firing== 75534 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #84236: <==negation-removal== 49763 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #86258: <==uncertain_firing== 49763 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #91636: <==negation-removal== 20480 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17730: <==commonly_known== 20057 (neg)
                    (Pd_checked_p9)

                    ; #18906: <==commonly_known== 58460 (pos)
                    (Bd_checked_p9)

                    ; #34611: <==commonly_known== 20057 (neg)
                    (Pa_checked_p9)

                    ; #37115: <==commonly_known== 58460 (pos)
                    (Bc_checked_p9)

                    ; #40628: <==commonly_known== 58460 (pos)
                    (Bb_checked_p9)

                    ; #52192: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #57120: <==commonly_known== 20057 (neg)
                    (Pb_checked_p9)

                    ; #58460: origin
                    (checked_p9)

                    ; #61932: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #65895: <==commonly_known== 20057 (neg)
                    (Pc_checked_p9)

                    ; #66644: <==closure== 61932 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #71366: <==commonly_known== 58460 (pos)
                    (Ba_checked_p9)

                    ; #90842: <==closure== 52192 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #18120: <==negation-removal== 37115 (pos)
                    (not (Pc_not_checked_p9))

                    ; #20057: <==negation-removal== 58460 (pos)
                    (not (not_checked_p9))

                    ; #20078: <==negation-removal== 71366 (pos)
                    (not (Pa_not_checked_p9))

                    ; #20858: <==uncertain_firing== 61932 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #23497: <==negation-removal== 18906 (pos)
                    (not (Pd_not_checked_p9))

                    ; #23867: <==uncertain_firing== 90842 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #30267: <==negation-removal== 66644 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #38052: <==negation-removal== 40628 (pos)
                    (not (Pb_not_checked_p9))

                    ; #45275: <==negation-removal== 52192 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #57230: <==negation-removal== 61932 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #59048: <==negation-removal== 34611 (pos)
                    (not (Ba_not_checked_p9))

                    ; #63855: <==uncertain_firing== 52192 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #64145: <==uncertain_firing== 66644 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #66874: <==negation-removal== 90842 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #75650: <==negation-removal== 65895 (pos)
                    (not (Bc_not_checked_p9))

                    ; #78843: <==negation-removal== 17730 (pos)
                    (not (Bd_not_checked_p9))

                    ; #93177: <==negation-removal== 57120 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10563: <==commonly_known== 22790 (pos)
                    (Bb_checked_p1)

                    ; #13626: <==commonly_known== 58429 (neg)
                    (Pb_checked_p1)

                    ; #22790: origin
                    (checked_p1)

                    ; #25958: <==commonly_known== 22790 (pos)
                    (Ba_checked_p1)

                    ; #28114: <==closure== 39549 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #28387: <==commonly_known== 58429 (neg)
                    (Pa_checked_p1)

                    ; #39549: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #40219: <==commonly_known== 22790 (pos)
                    (Bc_checked_p1)

                    ; #46640: <==commonly_known== 58429 (neg)
                    (Pd_checked_p1)

                    ; #50984: <==commonly_known== 22790 (pos)
                    (Bd_checked_p1)

                    ; #70157: <==commonly_known== 58429 (neg)
                    (Pc_checked_p1)

                    ; #74551: <==closure== 80122 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #80122: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #19905: <==negation-removal== 25958 (pos)
                    (not (Pa_not_checked_p1))

                    ; #25393: <==negation-removal== 70157 (pos)
                    (not (Bc_not_checked_p1))

                    ; #29905: <==negation-removal== 40219 (pos)
                    (not (Pc_not_checked_p1))

                    ; #30231: <==negation-removal== 28114 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #35916: <==negation-removal== 80122 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #37372: <==negation-removal== 10563 (pos)
                    (not (Pb_not_checked_p1))

                    ; #42262: <==uncertain_firing== 74551 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #44269: <==negation-removal== 28387 (pos)
                    (not (Ba_not_checked_p1))

                    ; #48677: <==negation-removal== 46640 (pos)
                    (not (Bd_not_checked_p1))

                    ; #49280: <==uncertain_firing== 80122 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #49629: <==uncertain_firing== 39549 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #58429: <==negation-removal== 22790 (pos)
                    (not (not_checked_p1))

                    ; #64989: <==negation-removal== 74551 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #74650: <==negation-removal== 50984 (pos)
                    (not (Pd_not_checked_p1))

                    ; #84597: <==negation-removal== 13626 (pos)
                    (not (Bb_not_checked_p1))

                    ; #87392: <==uncertain_firing== 28114 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #87411: <==negation-removal== 39549 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #13318: <==closure== 56285 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #18893: <==closure== 51036 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #20028: <==commonly_known== 78622 (pos)
                    (Bb_checked_p2)

                    ; #26739: <==commonly_known== 78622 (pos)
                    (Bc_checked_p2)

                    ; #36025: <==commonly_known== 70720 (neg)
                    (Pa_checked_p2)

                    ; #41738: <==commonly_known== 78622 (pos)
                    (Ba_checked_p2)

                    ; #51036: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #56285: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #57198: <==commonly_known== 70720 (neg)
                    (Pc_checked_p2)

                    ; #77436: <==commonly_known== 78622 (pos)
                    (Bd_checked_p2)

                    ; #78622: origin
                    (checked_p2)

                    ; #84369: <==commonly_known== 70720 (neg)
                    (Pd_checked_p2)

                    ; #90006: <==commonly_known== 70720 (neg)
                    (Pb_checked_p2)

                    ; #18757: <==negation-removal== 84369 (pos)
                    (not (Bd_not_checked_p2))

                    ; #24366: <==negation-removal== 20028 (pos)
                    (not (Pb_not_checked_p2))

                    ; #30896: <==uncertain_firing== 51036 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #33511: <==negation-removal== 51036 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #44410: <==negation-removal== 57198 (pos)
                    (not (Bc_not_checked_p2))

                    ; #46564: <==negation-removal== 13318 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #51326: <==negation-removal== 41738 (pos)
                    (not (Pa_not_checked_p2))

                    ; #55984: <==uncertain_firing== 13318 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #61795: <==uncertain_firing== 18893 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #64068: <==negation-removal== 90006 (pos)
                    (not (Bb_not_checked_p2))

                    ; #65145: <==negation-removal== 77436 (pos)
                    (not (Pd_not_checked_p2))

                    ; #65406: <==negation-removal== 56285 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #66140: <==uncertain_firing== 56285 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #67148: <==negation-removal== 26739 (pos)
                    (not (Pc_not_checked_p2))

                    ; #68882: <==negation-removal== 36025 (pos)
                    (not (Ba_not_checked_p2))

                    ; #68894: <==negation-removal== 18893 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #70720: <==negation-removal== 78622 (pos)
                    (not (not_checked_p2))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13200: <==commonly_known== 22033 (pos)
                    (Bb_checked_p3)

                    ; #17428: <==commonly_known== 22033 (pos)
                    (Ba_checked_p3)

                    ; #22033: origin
                    (checked_p3)

                    ; #34248: <==closure== 62460 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #43308: <==commonly_known== 22033 (pos)
                    (Bd_checked_p3)

                    ; #43355: <==commonly_known== 22033 (pos)
                    (Bc_checked_p3)

                    ; #50251: <==closure== 69857 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #53917: <==commonly_known== 79415 (neg)
                    (Pa_checked_p3)

                    ; #62020: <==commonly_known== 79415 (neg)
                    (Pc_checked_p3)

                    ; #62460: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #69857: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #78462: <==commonly_known== 79415 (neg)
                    (Pb_checked_p3)

                    ; #82037: <==commonly_known== 79415 (neg)
                    (Pd_checked_p3)

                    ; #12241: <==negation-removal== 43355 (pos)
                    (not (Pc_not_checked_p3))

                    ; #13652: <==negation-removal== 17428 (pos)
                    (not (Pa_not_checked_p3))

                    ; #22315: <==negation-removal== 13200 (pos)
                    (not (Pb_not_checked_p3))

                    ; #25891: <==negation-removal== 43308 (pos)
                    (not (Pd_not_checked_p3))

                    ; #35346: <==negation-removal== 78462 (pos)
                    (not (Bb_not_checked_p3))

                    ; #35882: <==negation-removal== 62020 (pos)
                    (not (Bc_not_checked_p3))

                    ; #37655: <==negation-removal== 69857 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #38523: <==uncertain_firing== 34248 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #39982: <==negation-removal== 50251 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #42536: <==negation-removal== 53917 (pos)
                    (not (Ba_not_checked_p3))

                    ; #48098: <==uncertain_firing== 62460 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #55314: <==negation-removal== 62460 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #60859: <==negation-removal== 82037 (pos)
                    (not (Bd_not_checked_p3))

                    ; #67409: <==negation-removal== 34248 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #71122: <==uncertain_firing== 69857 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #79415: <==negation-removal== 22033 (pos)
                    (not (not_checked_p3))

                    ; #80033: <==uncertain_firing== 50251 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10308: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #24818: <==commonly_known== 88017 (pos)
                    (Ba_checked_p4)

                    ; #29187: <==commonly_known== 88017 (pos)
                    (Bd_checked_p4)

                    ; #31001: <==commonly_known== 88017 (pos)
                    (Bb_checked_p4)

                    ; #31674: <==commonly_known== 82473 (neg)
                    (Pa_checked_p4)

                    ; #31813: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #35134: <==commonly_known== 82473 (neg)
                    (Pc_checked_p4)

                    ; #43059: <==commonly_known== 82473 (neg)
                    (Pb_checked_p4)

                    ; #71897: <==commonly_known== 88017 (pos)
                    (Bc_checked_p4)

                    ; #74306: <==closure== 31813 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #76341: <==closure== 10308 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #80023: <==commonly_known== 82473 (neg)
                    (Pd_checked_p4)

                    ; #88017: origin
                    (checked_p4)

                    ; #10459: <==uncertain_firing== 10308 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #20523: <==negation-removal== 29187 (pos)
                    (not (Pd_not_checked_p4))

                    ; #21597: <==negation-removal== 35134 (pos)
                    (not (Bc_not_checked_p4))

                    ; #39556: <==negation-removal== 31001 (pos)
                    (not (Pb_not_checked_p4))

                    ; #43464: <==uncertain_firing== 31813 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #50436: <==uncertain_firing== 76341 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #59692: <==negation-removal== 31674 (pos)
                    (not (Ba_not_checked_p4))

                    ; #60801: <==negation-removal== 80023 (pos)
                    (not (Bd_not_checked_p4))

                    ; #63828: <==negation-removal== 24818 (pos)
                    (not (Pa_not_checked_p4))

                    ; #67740: <==negation-removal== 31813 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #73955: <==negation-removal== 43059 (pos)
                    (not (Bb_not_checked_p4))

                    ; #77826: <==uncertain_firing== 74306 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #82473: <==negation-removal== 88017 (pos)
                    (not (not_checked_p4))

                    ; #84785: <==negation-removal== 10308 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #89287: <==negation-removal== 71897 (pos)
                    (not (Pc_not_checked_p4))

                    ; #89310: <==negation-removal== 76341 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #90174: <==negation-removal== 74306 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11134: <==commonly_known== 81301 (pos)
                    (Ba_checked_p5)

                    ; #16220: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #23032: <==commonly_known== 81301 (pos)
                    (Bd_checked_p5)

                    ; #30951: <==closure== 16220 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #31611: <==commonly_known== 55679 (neg)
                    (Pd_checked_p5)

                    ; #33149: <==commonly_known== 55679 (neg)
                    (Pc_checked_p5)

                    ; #35083: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #42131: <==commonly_known== 55679 (neg)
                    (Pa_checked_p5)

                    ; #60484: <==closure== 35083 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #65872: <==commonly_known== 81301 (pos)
                    (Bc_checked_p5)

                    ; #68298: <==commonly_known== 81301 (pos)
                    (Bb_checked_p5)

                    ; #78609: <==commonly_known== 55679 (neg)
                    (Pb_checked_p5)

                    ; #81301: origin
                    (checked_p5)

                    ; #13398: <==negation-removal== 42131 (pos)
                    (not (Ba_not_checked_p5))

                    ; #15465: <==negation-removal== 65872 (pos)
                    (not (Pc_not_checked_p5))

                    ; #25699: <==negation-removal== 30951 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #26280: <==uncertain_firing== 30951 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #26483: <==uncertain_firing== 35083 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #28656: <==negation-removal== 35083 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #32022: <==negation-removal== 23032 (pos)
                    (not (Pd_not_checked_p5))

                    ; #51054: <==negation-removal== 78609 (pos)
                    (not (Bb_not_checked_p5))

                    ; #55679: <==negation-removal== 81301 (pos)
                    (not (not_checked_p5))

                    ; #60811: <==negation-removal== 31611 (pos)
                    (not (Bd_not_checked_p5))

                    ; #61341: <==negation-removal== 68298 (pos)
                    (not (Pb_not_checked_p5))

                    ; #62616: <==uncertain_firing== 60484 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #64865: <==negation-removal== 33149 (pos)
                    (not (Bc_not_checked_p5))

                    ; #69567: <==negation-removal== 60484 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #75511: <==negation-removal== 11134 (pos)
                    (not (Pa_not_checked_p5))

                    ; #78571: <==uncertain_firing== 16220 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #81132: <==negation-removal== 16220 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12817: <==commonly_known== 61821 (pos)
                    (Bd_checked_p6)

                    ; #29178: <==commonly_known== 87307 (neg)
                    (Pd_checked_p6)

                    ; #37813: <==commonly_known== 87307 (neg)
                    (Pb_checked_p6)

                    ; #39868: <==closure== 46994 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #42372: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #46994: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #47853: <==commonly_known== 87307 (neg)
                    (Pa_checked_p6)

                    ; #51711: <==commonly_known== 61821 (pos)
                    (Ba_checked_p6)

                    ; #55479: <==closure== 42372 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #60025: <==commonly_known== 87307 (neg)
                    (Pc_checked_p6)

                    ; #61821: origin
                    (checked_p6)

                    ; #77622: <==commonly_known== 61821 (pos)
                    (Bc_checked_p6)

                    ; #84370: <==commonly_known== 61821 (pos)
                    (Bb_checked_p6)

                    ; #12421: <==negation-removal== 77622 (pos)
                    (not (Pc_not_checked_p6))

                    ; #14869: <==negation-removal== 46994 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #20892: <==negation-removal== 12817 (pos)
                    (not (Pd_not_checked_p6))

                    ; #38246: <==uncertain_firing== 39868 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #38568: <==negation-removal== 51711 (pos)
                    (not (Pa_not_checked_p6))

                    ; #69145: <==negation-removal== 84370 (pos)
                    (not (Pb_not_checked_p6))

                    ; #73236: <==negation-removal== 39868 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #79607: <==negation-removal== 37813 (pos)
                    (not (Bb_not_checked_p6))

                    ; #82960: <==negation-removal== 29178 (pos)
                    (not (Bd_not_checked_p6))

                    ; #83173: <==uncertain_firing== 46994 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #83832: <==uncertain_firing== 55479 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #84232: <==uncertain_firing== 42372 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #85382: <==negation-removal== 55479 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #87307: <==negation-removal== 61821 (pos)
                    (not (not_checked_p6))

                    ; #88198: <==negation-removal== 47853 (pos)
                    (not (Ba_not_checked_p6))

                    ; #90252: <==negation-removal== 60025 (pos)
                    (not (Bc_not_checked_p6))

                    ; #91431: <==negation-removal== 42372 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15476: <==commonly_known== 21436 (pos)
                    (Bb_checked_p7)

                    ; #17734: <==commonly_known== 48141 (neg)
                    (Pc_checked_p7)

                    ; #21436: origin
                    (checked_p7)

                    ; #23878: <==commonly_known== 21436 (pos)
                    (Bd_checked_p7)

                    ; #37391: <==commonly_known== 21436 (pos)
                    (Bc_checked_p7)

                    ; #38822: <==commonly_known== 48141 (neg)
                    (Pb_checked_p7)

                    ; #55971: <==commonly_known== 21436 (pos)
                    (Ba_checked_p7)

                    ; #63949: <==closure== 85520 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #76304: <==commonly_known== 48141 (neg)
                    (Pa_checked_p7)

                    ; #79128: <==commonly_known== 48141 (neg)
                    (Pd_checked_p7)

                    ; #79241: <==closure== 95772 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #85520: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #95772: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #10680: <==negation-removal== 63949 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #10878: <==negation-removal== 95772 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #21187: <==uncertain_firing== 79241 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #22087: <==negation-removal== 17734 (pos)
                    (not (Bc_not_checked_p7))

                    ; #26789: <==uncertain_firing== 85520 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #33602: <==negation-removal== 55971 (pos)
                    (not (Pa_not_checked_p7))

                    ; #35297: <==uncertain_firing== 63949 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #38569: <==negation-removal== 79241 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #40614: <==negation-removal== 76304 (pos)
                    (not (Ba_not_checked_p7))

                    ; #44903: <==negation-removal== 85520 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #48141: <==negation-removal== 21436 (pos)
                    (not (not_checked_p7))

                    ; #49073: <==negation-removal== 79128 (pos)
                    (not (Bd_not_checked_p7))

                    ; #55256: <==negation-removal== 37391 (pos)
                    (not (Pc_not_checked_p7))

                    ; #63465: <==uncertain_firing== 95772 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #84651: <==negation-removal== 38822 (pos)
                    (not (Bb_not_checked_p7))

                    ; #87986: <==negation-removal== 23878 (pos)
                    (not (Pd_not_checked_p7))

                    ; #88220: <==negation-removal== 15476 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12651: <==commonly_known== 76436 (neg)
                    (Pc_checked_p8)

                    ; #14671: <==closure== 64961 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #20480: <==commonly_known== 76436 (neg)
                    (Pd_checked_p8)

                    ; #26483: <==closure== 31771 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #31771: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #33171: <==commonly_known== 76436 (neg)
                    (Pb_checked_p8)

                    ; #34623: <==commonly_known== 50408 (pos)
                    (Bc_checked_p8)

                    ; #43715: <==commonly_known== 50408 (pos)
                    (Bd_checked_p8)

                    ; #50408: origin
                    (checked_p8)

                    ; #64961: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #66975: <==commonly_known== 76436 (neg)
                    (Pa_checked_p8)

                    ; #78230: <==commonly_known== 50408 (pos)
                    (Bb_checked_p8)

                    ; #88443: <==commonly_known== 50408 (pos)
                    (Ba_checked_p8)

                    ; #11354: <==negation-removal== 66975 (pos)
                    (not (Ba_not_checked_p8))

                    ; #21002: <==uncertain_firing== 14671 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #25310: <==negation-removal== 14671 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #28827: <==negation-removal== 12651 (pos)
                    (not (Bc_not_checked_p8))

                    ; #32607: <==negation-removal== 43715 (pos)
                    (not (Pd_not_checked_p8))

                    ; #39487: <==negation-removal== 78230 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53987: <==uncertain_firing== 26483 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #55775: <==negation-removal== 88443 (pos)
                    (not (Pa_not_checked_p8))

                    ; #56407: <==negation-removal== 34623 (pos)
                    (not (Pc_not_checked_p8))

                    ; #64084: <==negation-removal== 33171 (pos)
                    (not (Bb_not_checked_p8))

                    ; #69570: <==uncertain_firing== 31771 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #76436: <==negation-removal== 50408 (pos)
                    (not (not_checked_p8))

                    ; #79992: <==negation-removal== 26483 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #86162: <==negation-removal== 31771 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #87566: <==uncertain_firing== 64961 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #90526: <==negation-removal== 64961 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #91636: <==negation-removal== 20480 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17730: <==commonly_known== 20057 (neg)
                    (Pd_checked_p9)

                    ; #18906: <==commonly_known== 58460 (pos)
                    (Bd_checked_p9)

                    ; #23349: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #31380: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #34611: <==commonly_known== 20057 (neg)
                    (Pa_checked_p9)

                    ; #37115: <==commonly_known== 58460 (pos)
                    (Bc_checked_p9)

                    ; #40628: <==commonly_known== 58460 (pos)
                    (Bb_checked_p9)

                    ; #41044: <==closure== 31380 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #54142: <==closure== 23349 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #57120: <==commonly_known== 20057 (neg)
                    (Pb_checked_p9)

                    ; #58460: origin
                    (checked_p9)

                    ; #65895: <==commonly_known== 20057 (neg)
                    (Pc_checked_p9)

                    ; #71366: <==commonly_known== 58460 (pos)
                    (Ba_checked_p9)

                    ; #18120: <==negation-removal== 37115 (pos)
                    (not (Pc_not_checked_p9))

                    ; #20057: <==negation-removal== 58460 (pos)
                    (not (not_checked_p9))

                    ; #20078: <==negation-removal== 71366 (pos)
                    (not (Pa_not_checked_p9))

                    ; #23497: <==negation-removal== 18906 (pos)
                    (not (Pd_not_checked_p9))

                    ; #30305: <==negation-removal== 54142 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #33614: <==uncertain_firing== 31380 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #34090: <==uncertain_firing== 23349 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #38052: <==negation-removal== 40628 (pos)
                    (not (Pb_not_checked_p9))

                    ; #55109: <==negation-removal== 23349 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #59048: <==negation-removal== 34611 (pos)
                    (not (Ba_not_checked_p9))

                    ; #59746: <==uncertain_firing== 54142 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #62401: <==negation-removal== 31380 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #67921: <==uncertain_firing== 41044 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #68899: <==negation-removal== 41044 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #75650: <==negation-removal== 65895 (pos)
                    (not (Bc_not_checked_p9))

                    ; #78843: <==negation-removal== 17730 (pos)
                    (not (Bd_not_checked_p9))

                    ; #93177: <==negation-removal== 57120 (pos)
                    (not (Bb_not_checked_p9))))

)