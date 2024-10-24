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
                    ; #10473: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #40583: <==closure== 66952 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #41671: <==closure== 58257 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #47567: <==closure== 82780 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #58257: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #66952: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #68750: <==closure== 10473 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #82780: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #14009: <==uncertain_firing== 82780 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #19671: <==uncertain_firing== 40583 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #20161: <==negation-removal== 10473 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #27793: <==uncertain_firing== 10473 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #43365: <==negation-removal== 41671 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #44128: <==negation-removal== 40583 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #47697: <==negation-removal== 58257 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #55306: <==uncertain_firing== 47567 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #56156: <==uncertain_firing== 41671 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #57999: <==uncertain_firing== 68750 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #75086: <==uncertain_firing== 66952 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #83080: <==negation-removal== 68750 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #85813: <==negation-removal== 47567 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #89099: <==negation-removal== 82780 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #90938: <==negation-removal== 66952 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #91200: <==uncertain_firing== 58257 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #10473: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #40583: <==closure== 66952 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #41671: <==closure== 58257 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #47567: <==closure== 82780 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #58257: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #66952: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #68750: <==closure== 10473 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #82780: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #14009: <==uncertain_firing== 82780 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #19671: <==uncertain_firing== 40583 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #20161: <==negation-removal== 10473 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #27793: <==uncertain_firing== 10473 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #43365: <==negation-removal== 41671 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #44128: <==negation-removal== 40583 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #47697: <==negation-removal== 58257 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #55306: <==uncertain_firing== 47567 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #56156: <==uncertain_firing== 41671 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #57999: <==uncertain_firing== 68750 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #75086: <==uncertain_firing== 66952 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #83080: <==negation-removal== 68750 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #85813: <==negation-removal== 47567 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #89099: <==negation-removal== 82780 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #90938: <==negation-removal== 66952 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #91200: <==uncertain_firing== 58257 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #10473: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #40583: <==closure== 66952 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #41671: <==closure== 58257 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #47567: <==closure== 82780 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #58257: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #66952: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #68750: <==closure== 10473 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #82780: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #14009: <==uncertain_firing== 82780 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #19671: <==uncertain_firing== 40583 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #20161: <==negation-removal== 10473 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #27793: <==uncertain_firing== 10473 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #43365: <==negation-removal== 41671 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #44128: <==negation-removal== 40583 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #47697: <==negation-removal== 58257 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #55306: <==uncertain_firing== 47567 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #56156: <==uncertain_firing== 41671 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #57999: <==uncertain_firing== 68750 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #75086: <==uncertain_firing== 66952 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #83080: <==negation-removal== 68750 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #85813: <==negation-removal== 47567 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #89099: <==negation-removal== 82780 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #90938: <==negation-removal== 66952 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #91200: <==uncertain_firing== 58257 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (at_d_p1)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #10473: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #40583: <==closure== 66952 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #41671: <==closure== 58257 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #47567: <==closure== 82780 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #58257: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #66952: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #68750: <==closure== 10473 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #82780: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #14009: <==uncertain_firing== 82780 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #19671: <==uncertain_firing== 40583 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #20161: <==negation-removal== 10473 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #27793: <==uncertain_firing== 10473 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #43365: <==negation-removal== 41671 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #44128: <==negation-removal== 40583 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #47697: <==negation-removal== 58257 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #55306: <==uncertain_firing== 47567 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #56156: <==uncertain_firing== 41671 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #57999: <==uncertain_firing== 68750 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #75086: <==uncertain_firing== 66952 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #83080: <==negation-removal== 68750 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #85813: <==negation-removal== 47567 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #89099: <==negation-removal== 82780 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #90938: <==negation-removal== 66952 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #91200: <==uncertain_firing== 58257 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #31282: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #31452: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #33379: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #40953: <==closure== 31282 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #49277: <==closure== 52009 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #49641: <==closure== 33379 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #52009: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #60176: <==closure== 31452 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #11904: <==uncertain_firing== 52009 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29395: <==negation-removal== 33379 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #37593: <==negation-removal== 49277 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #39695: <==uncertain_firing== 60176 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #39821: <==uncertain_firing== 33379 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #40110: <==negation-removal== 52009 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #44465: <==uncertain_firing== 49641 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #46386: <==negation-removal== 31452 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #50053: <==negation-removal== 49641 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #51408: <==uncertain_firing== 40953 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #60752: <==uncertain_firing== 31282 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62235: <==negation-removal== 60176 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #62276: <==uncertain_firing== 31452 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #72198: <==negation-removal== 31282 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #79807: <==negation-removal== 40953 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #84079: <==uncertain_firing== 49277 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #31282: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #31452: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #33379: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #40953: <==closure== 31282 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #49277: <==closure== 52009 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #49641: <==closure== 33379 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #52009: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #60176: <==closure== 31452 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #11904: <==uncertain_firing== 52009 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29395: <==negation-removal== 33379 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #37593: <==negation-removal== 49277 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #39695: <==uncertain_firing== 60176 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #39821: <==uncertain_firing== 33379 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #40110: <==negation-removal== 52009 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #44465: <==uncertain_firing== 49641 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #46386: <==negation-removal== 31452 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #50053: <==negation-removal== 49641 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #51408: <==uncertain_firing== 40953 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #60752: <==uncertain_firing== 31282 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62235: <==negation-removal== 60176 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #62276: <==uncertain_firing== 31452 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #72198: <==negation-removal== 31282 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #79807: <==negation-removal== 40953 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #84079: <==uncertain_firing== 49277 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #31282: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #31452: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #33379: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #40953: <==closure== 31282 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #49277: <==closure== 52009 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #49641: <==closure== 33379 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #52009: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #60176: <==closure== 31452 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #11904: <==uncertain_firing== 52009 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29395: <==negation-removal== 33379 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #37593: <==negation-removal== 49277 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #39695: <==uncertain_firing== 60176 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #39821: <==uncertain_firing== 33379 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #40110: <==negation-removal== 52009 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #44465: <==uncertain_firing== 49641 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #46386: <==negation-removal== 31452 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #50053: <==negation-removal== 49641 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #51408: <==uncertain_firing== 40953 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #60752: <==uncertain_firing== 31282 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62235: <==negation-removal== 60176 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #62276: <==uncertain_firing== 31452 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #72198: <==negation-removal== 31282 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #79807: <==negation-removal== 40953 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #84079: <==uncertain_firing== 49277 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #31282: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #31452: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #33379: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #40953: <==closure== 31282 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #49277: <==closure== 52009 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #49641: <==closure== 33379 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #52009: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #60176: <==closure== 31452 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #11904: <==uncertain_firing== 52009 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29395: <==negation-removal== 33379 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #37593: <==negation-removal== 49277 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #39695: <==uncertain_firing== 60176 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #39821: <==uncertain_firing== 33379 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #40110: <==negation-removal== 52009 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #44465: <==uncertain_firing== 49641 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #46386: <==negation-removal== 31452 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #50053: <==negation-removal== 49641 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #51408: <==uncertain_firing== 40953 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #60752: <==uncertain_firing== 31282 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62235: <==negation-removal== 60176 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #62276: <==uncertain_firing== 31452 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #72198: <==negation-removal== 31282 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #79807: <==negation-removal== 40953 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #84079: <==uncertain_firing== 49277 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #10094: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #23347: <==closure== 47585 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #47585: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #52337: <==closure== 52708 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #52708: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #55493: <==closure== 10094 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #84984: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #99168: <==closure== 84984 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #13799: <==negation-removal== 47585 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #15184: <==uncertain_firing== 99168 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #15482: <==negation-removal== 52337 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #15831: <==negation-removal== 23347 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #17317: <==uncertain_firing== 10094 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #18437: <==uncertain_firing== 55493 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #20949: <==uncertain_firing== 23347 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #24258: <==uncertain_firing== 52708 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #25048: <==negation-removal== 84984 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #39063: <==negation-removal== 10094 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #39477: <==uncertain_firing== 84984 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #45999: <==uncertain_firing== 52337 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #48548: <==negation-removal== 52708 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #49596: <==uncertain_firing== 47585 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #58316: <==negation-removal== 99168 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #82531: <==negation-removal== 55493 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #10094: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #23347: <==closure== 47585 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #47585: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #52337: <==closure== 52708 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #52708: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #55493: <==closure== 10094 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #84984: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #99168: <==closure== 84984 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #13799: <==negation-removal== 47585 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #15184: <==uncertain_firing== 99168 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #15482: <==negation-removal== 52337 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #15831: <==negation-removal== 23347 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #17317: <==uncertain_firing== 10094 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #18437: <==uncertain_firing== 55493 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #20949: <==uncertain_firing== 23347 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #24258: <==uncertain_firing== 52708 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #25048: <==negation-removal== 84984 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #39063: <==negation-removal== 10094 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #39477: <==uncertain_firing== 84984 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #45999: <==uncertain_firing== 52337 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #48548: <==negation-removal== 52708 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #49596: <==uncertain_firing== 47585 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #58316: <==negation-removal== 99168 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #82531: <==negation-removal== 55493 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #10094: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #23347: <==closure== 47585 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #47585: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #52337: <==closure== 52708 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #52708: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #55493: <==closure== 10094 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #84984: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #99168: <==closure== 84984 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #13799: <==negation-removal== 47585 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #15184: <==uncertain_firing== 99168 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #15482: <==negation-removal== 52337 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #15831: <==negation-removal== 23347 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #17317: <==uncertain_firing== 10094 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #18437: <==uncertain_firing== 55493 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #20949: <==uncertain_firing== 23347 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #24258: <==uncertain_firing== 52708 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #25048: <==negation-removal== 84984 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #39063: <==negation-removal== 10094 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #39477: <==uncertain_firing== 84984 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #45999: <==uncertain_firing== 52337 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #48548: <==negation-removal== 52708 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #49596: <==uncertain_firing== 47585 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #58316: <==negation-removal== 99168 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #82531: <==negation-removal== 55493 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (at_d_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #10094: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #23347: <==closure== 47585 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #47585: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #52337: <==closure== 52708 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #52708: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #55493: <==closure== 10094 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #84984: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #99168: <==closure== 84984 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #13799: <==negation-removal== 47585 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #15184: <==uncertain_firing== 99168 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #15482: <==negation-removal== 52337 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #15831: <==negation-removal== 23347 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #17317: <==uncertain_firing== 10094 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #18437: <==uncertain_firing== 55493 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #20949: <==uncertain_firing== 23347 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #24258: <==uncertain_firing== 52708 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #25048: <==negation-removal== 84984 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #39063: <==negation-removal== 10094 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #39477: <==uncertain_firing== 84984 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #45999: <==uncertain_firing== 52337 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #48548: <==negation-removal== 52708 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #49596: <==uncertain_firing== 47585 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #58316: <==negation-removal== 99168 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #82531: <==negation-removal== 55493 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #26777: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #31034: <==closure== 33448 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #33448: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #55250: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #57418: <==closure== 26777 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #75724: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #80259: <==closure== 55250 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #91776: <==closure== 75724 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #24698: <==negation-removal== 91776 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #26744: <==uncertain_firing== 31034 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #28908: <==uncertain_firing== 91776 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #38006: <==negation-removal== 33448 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #43696: <==uncertain_firing== 75724 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #48521: <==uncertain_firing== 55250 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #57327: <==negation-removal== 57418 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #58483: <==negation-removal== 75724 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #60791: <==uncertain_firing== 33448 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62392: <==uncertain_firing== 80259 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #65239: <==negation-removal== 26777 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #66370: <==negation-removal== 55250 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #71947: <==uncertain_firing== 57418 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #85742: <==negation-removal== 31034 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #90148: <==uncertain_firing== 26777 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #94669: <==negation-removal== 80259 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #26777: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #31034: <==closure== 33448 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #33448: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #55250: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #57418: <==closure== 26777 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #75724: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #80259: <==closure== 55250 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #91776: <==closure== 75724 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #24698: <==negation-removal== 91776 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #26744: <==uncertain_firing== 31034 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #28908: <==uncertain_firing== 91776 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #38006: <==negation-removal== 33448 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #43696: <==uncertain_firing== 75724 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #48521: <==uncertain_firing== 55250 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #57327: <==negation-removal== 57418 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #58483: <==negation-removal== 75724 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #60791: <==uncertain_firing== 33448 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62392: <==uncertain_firing== 80259 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #65239: <==negation-removal== 26777 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #66370: <==negation-removal== 55250 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #71947: <==uncertain_firing== 57418 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #85742: <==negation-removal== 31034 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #90148: <==uncertain_firing== 26777 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #94669: <==negation-removal== 80259 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #26777: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #31034: <==closure== 33448 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #33448: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #55250: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #57418: <==closure== 26777 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #75724: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #80259: <==closure== 55250 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #91776: <==closure== 75724 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #24698: <==negation-removal== 91776 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #26744: <==uncertain_firing== 31034 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #28908: <==uncertain_firing== 91776 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #38006: <==negation-removal== 33448 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #43696: <==uncertain_firing== 75724 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #48521: <==uncertain_firing== 55250 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #57327: <==negation-removal== 57418 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #58483: <==negation-removal== 75724 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #60791: <==uncertain_firing== 33448 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62392: <==uncertain_firing== 80259 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #65239: <==negation-removal== 26777 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #66370: <==negation-removal== 55250 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #71947: <==uncertain_firing== 57418 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #85742: <==negation-removal== 31034 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #90148: <==uncertain_firing== 26777 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #94669: <==negation-removal== 80259 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #26777: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #31034: <==closure== 33448 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #33448: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #55250: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #57418: <==closure== 26777 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #75724: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #80259: <==closure== 55250 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #91776: <==closure== 75724 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #24698: <==negation-removal== 91776 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #26744: <==uncertain_firing== 31034 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #28908: <==uncertain_firing== 91776 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #38006: <==negation-removal== 33448 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #43696: <==uncertain_firing== 75724 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #48521: <==uncertain_firing== 55250 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #57327: <==negation-removal== 57418 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #58483: <==negation-removal== 75724 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #60791: <==uncertain_firing== 33448 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62392: <==uncertain_firing== 80259 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #65239: <==negation-removal== 26777 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #66370: <==negation-removal== 55250 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #71947: <==uncertain_firing== 57418 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #85742: <==negation-removal== 31034 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #90148: <==uncertain_firing== 26777 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #94669: <==negation-removal== 80259 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #20229: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #25407: <==closure== 38458 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #28555: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #29330: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #38458: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #46384: <==closure== 20229 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #56374: <==closure== 28555 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #82064: <==closure== 29330 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #15160: <==negation-removal== 38458 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #16848: <==negation-removal== 20229 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #29629: <==uncertain_firing== 82064 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #34657: <==negation-removal== 82064 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #39622: <==uncertain_firing== 20229 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #43880: <==negation-removal== 46384 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #46337: <==negation-removal== 28555 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #59930: <==uncertain_firing== 46384 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #64694: <==negation-removal== 25407 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #73203: <==uncertain_firing== 28555 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #73826: <==uncertain_firing== 56374 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #79905: <==uncertain_firing== 29330 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82534: <==uncertain_firing== 25407 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #85328: <==uncertain_firing== 38458 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #85339: <==negation-removal== 29330 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #97414: <==negation-removal== 56374 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #20229: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #25407: <==closure== 38458 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #28555: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #29330: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #38458: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #46384: <==closure== 20229 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #56374: <==closure== 28555 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #82064: <==closure== 29330 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #15160: <==negation-removal== 38458 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #16848: <==negation-removal== 20229 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #29629: <==uncertain_firing== 82064 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #34657: <==negation-removal== 82064 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #39622: <==uncertain_firing== 20229 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #43880: <==negation-removal== 46384 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #46337: <==negation-removal== 28555 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #59930: <==uncertain_firing== 46384 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #64694: <==negation-removal== 25407 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #73203: <==uncertain_firing== 28555 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #73826: <==uncertain_firing== 56374 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #79905: <==uncertain_firing== 29330 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82534: <==uncertain_firing== 25407 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #85328: <==uncertain_firing== 38458 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #85339: <==negation-removal== 29330 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #97414: <==negation-removal== 56374 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #20229: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #25407: <==closure== 38458 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #28555: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #29330: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #38458: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #46384: <==closure== 20229 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #56374: <==closure== 28555 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #82064: <==closure== 29330 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #15160: <==negation-removal== 38458 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #16848: <==negation-removal== 20229 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #29629: <==uncertain_firing== 82064 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #34657: <==negation-removal== 82064 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #39622: <==uncertain_firing== 20229 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #43880: <==negation-removal== 46384 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #46337: <==negation-removal== 28555 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #59930: <==uncertain_firing== 46384 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #64694: <==negation-removal== 25407 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #73203: <==uncertain_firing== 28555 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #73826: <==uncertain_firing== 56374 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #79905: <==uncertain_firing== 29330 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82534: <==uncertain_firing== 25407 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #85328: <==uncertain_firing== 38458 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #85339: <==negation-removal== 29330 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #97414: <==negation-removal== 56374 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (at_d_p5)
                           (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #20229: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #25407: <==closure== 38458 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #28555: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #29330: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #38458: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #46384: <==closure== 20229 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #56374: <==closure== 28555 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #82064: <==closure== 29330 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #15160: <==negation-removal== 38458 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #16848: <==negation-removal== 20229 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #29629: <==uncertain_firing== 82064 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #34657: <==negation-removal== 82064 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #39622: <==uncertain_firing== 20229 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #43880: <==negation-removal== 46384 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #46337: <==negation-removal== 28555 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #59930: <==uncertain_firing== 46384 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #64694: <==negation-removal== 25407 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #73203: <==uncertain_firing== 28555 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #73826: <==uncertain_firing== 56374 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #79905: <==uncertain_firing== 29330 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82534: <==uncertain_firing== 25407 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #85328: <==uncertain_firing== 38458 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #85339: <==negation-removal== 29330 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #97414: <==negation-removal== 56374 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #17370: <==closure== 49158 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #18197: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #22837: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #24877: <==closure== 44207 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #36953: <==closure== 22837 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #44207: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #47963: <==closure== 18197 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #49158: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #12130: <==negation-removal== 49158 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #13332: <==uncertain_firing== 44207 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25309: <==negation-removal== 17370 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #30428: <==negation-removal== 18197 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #32450: <==uncertain_firing== 22837 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #50325: <==uncertain_firing== 24877 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #53080: <==negation-removal== 22837 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #59825: <==negation-removal== 24877 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #75981: <==negation-removal== 44207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #79899: <==uncertain_firing== 36953 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81604: <==negation-removal== 47963 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #82207: <==negation-removal== 36953 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #85651: <==uncertain_firing== 47963 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85718: <==uncertain_firing== 18197 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #90897: <==uncertain_firing== 17370 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #92050: <==uncertain_firing== 49158 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #17370: <==closure== 49158 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #18197: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #22837: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #24877: <==closure== 44207 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #36953: <==closure== 22837 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #44207: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #47963: <==closure== 18197 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #49158: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #12130: <==negation-removal== 49158 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #13332: <==uncertain_firing== 44207 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25309: <==negation-removal== 17370 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #30428: <==negation-removal== 18197 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #32450: <==uncertain_firing== 22837 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #50325: <==uncertain_firing== 24877 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #53080: <==negation-removal== 22837 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #59825: <==negation-removal== 24877 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #75981: <==negation-removal== 44207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #79899: <==uncertain_firing== 36953 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81604: <==negation-removal== 47963 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #82207: <==negation-removal== 36953 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #85651: <==uncertain_firing== 47963 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85718: <==uncertain_firing== 18197 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #90897: <==uncertain_firing== 17370 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #92050: <==uncertain_firing== 49158 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #17370: <==closure== 49158 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #18197: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #22837: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #24877: <==closure== 44207 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #36953: <==closure== 22837 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #44207: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #47963: <==closure== 18197 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #49158: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #12130: <==negation-removal== 49158 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #13332: <==uncertain_firing== 44207 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25309: <==negation-removal== 17370 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #30428: <==negation-removal== 18197 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #32450: <==uncertain_firing== 22837 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #50325: <==uncertain_firing== 24877 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #53080: <==negation-removal== 22837 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #59825: <==negation-removal== 24877 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #75981: <==negation-removal== 44207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #79899: <==uncertain_firing== 36953 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81604: <==negation-removal== 47963 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #82207: <==negation-removal== 36953 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #85651: <==uncertain_firing== 47963 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85718: <==uncertain_firing== 18197 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #90897: <==uncertain_firing== 17370 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #92050: <==uncertain_firing== 49158 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #17370: <==closure== 49158 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #18197: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #22837: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #24877: <==closure== 44207 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #36953: <==closure== 22837 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #44207: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #47963: <==closure== 18197 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #49158: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #12130: <==negation-removal== 49158 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #13332: <==uncertain_firing== 44207 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25309: <==negation-removal== 17370 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #30428: <==negation-removal== 18197 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #32450: <==uncertain_firing== 22837 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #50325: <==uncertain_firing== 24877 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #53080: <==negation-removal== 22837 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #59825: <==negation-removal== 24877 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #75981: <==negation-removal== 44207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #79899: <==uncertain_firing== 36953 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81604: <==negation-removal== 47963 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #82207: <==negation-removal== 36953 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #85651: <==uncertain_firing== 47963 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85718: <==uncertain_firing== 18197 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #90897: <==uncertain_firing== 17370 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #92050: <==uncertain_firing== 49158 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #10339: <==closure== 83752 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #20955: <==closure== 41864 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #21041: <==closure== 37114 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #34447: <==closure== 81122 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #37114: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #41864: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #81122: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #83752: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #11769: <==negation-removal== 10339 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #14390: <==uncertain_firing== 37114 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #14397: <==negation-removal== 81122 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #15265: <==negation-removal== 83752 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #17614: <==negation-removal== 21041 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #33361: <==negation-removal== 41864 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #36110: <==uncertain_firing== 10339 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #36459: <==uncertain_firing== 21041 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #37869: <==negation-removal== 37114 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #46888: <==uncertain_firing== 83752 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #46937: <==uncertain_firing== 20955 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #50509: <==negation-removal== 34447 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #55082: <==uncertain_firing== 41864 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #68461: <==uncertain_firing== 34447 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #89068: <==uncertain_firing== 81122 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #90668: <==negation-removal== 20955 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #10339: <==closure== 83752 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #20955: <==closure== 41864 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #21041: <==closure== 37114 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #34447: <==closure== 81122 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #37114: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #41864: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #81122: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #83752: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #11769: <==negation-removal== 10339 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #14390: <==uncertain_firing== 37114 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #14397: <==negation-removal== 81122 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #15265: <==negation-removal== 83752 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #17614: <==negation-removal== 21041 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #33361: <==negation-removal== 41864 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #36110: <==uncertain_firing== 10339 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #36459: <==uncertain_firing== 21041 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #37869: <==negation-removal== 37114 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #46888: <==uncertain_firing== 83752 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #46937: <==uncertain_firing== 20955 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #50509: <==negation-removal== 34447 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #55082: <==uncertain_firing== 41864 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #68461: <==uncertain_firing== 34447 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #89068: <==uncertain_firing== 81122 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #90668: <==negation-removal== 20955 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #10339: <==closure== 83752 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #20955: <==closure== 41864 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #21041: <==closure== 37114 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #34447: <==closure== 81122 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #37114: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #41864: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #81122: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #83752: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #11769: <==negation-removal== 10339 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #14390: <==uncertain_firing== 37114 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #14397: <==negation-removal== 81122 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #15265: <==negation-removal== 83752 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #17614: <==negation-removal== 21041 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #33361: <==negation-removal== 41864 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #36110: <==uncertain_firing== 10339 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #36459: <==uncertain_firing== 21041 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #37869: <==negation-removal== 37114 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #46888: <==uncertain_firing== 83752 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #46937: <==uncertain_firing== 20955 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #50509: <==negation-removal== 34447 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #55082: <==uncertain_firing== 41864 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #68461: <==uncertain_firing== 34447 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #89068: <==uncertain_firing== 81122 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #90668: <==negation-removal== 20955 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #10339: <==closure== 83752 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #20955: <==closure== 41864 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #21041: <==closure== 37114 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #34447: <==closure== 81122 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #37114: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #41864: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #81122: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #83752: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #11769: <==negation-removal== 10339 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #14390: <==uncertain_firing== 37114 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #14397: <==negation-removal== 81122 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #15265: <==negation-removal== 83752 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #17614: <==negation-removal== 21041 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #33361: <==negation-removal== 41864 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #36110: <==uncertain_firing== 10339 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #36459: <==uncertain_firing== 21041 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #37869: <==negation-removal== 37114 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #46888: <==uncertain_firing== 83752 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #46937: <==uncertain_firing== 20955 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #50509: <==negation-removal== 34447 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #55082: <==uncertain_firing== 41864 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #68461: <==uncertain_firing== 34447 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #89068: <==uncertain_firing== 81122 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #90668: <==negation-removal== 20955 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #14483: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #33587: <==closure== 14483 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #35420: <==closure== 63831 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #50419: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #53055: <==closure== 62389 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #62389: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #63831: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #83391: <==closure== 50419 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #14713: <==negation-removal== 83391 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #16990: <==uncertain_firing== 14483 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #25542: <==negation-removal== 62389 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #25931: <==uncertain_firing== 35420 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #28532: <==negation-removal== 63831 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #28620: <==uncertain_firing== 83391 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #28817: <==uncertain_firing== 62389 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #43967: <==negation-removal== 14483 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #55171: <==uncertain_firing== 50419 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #55734: <==uncertain_firing== 63831 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #56920: <==negation-removal== 50419 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #63102: <==negation-removal== 35420 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #68444: <==uncertain_firing== 33587 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #81525: <==negation-removal== 33587 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #82588: <==uncertain_firing== 53055 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83931: <==negation-removal== 53055 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #14483: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #33587: <==closure== 14483 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #35420: <==closure== 63831 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #50419: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #53055: <==closure== 62389 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #62389: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #63831: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #83391: <==closure== 50419 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #14713: <==negation-removal== 83391 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #16990: <==uncertain_firing== 14483 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #25542: <==negation-removal== 62389 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #25931: <==uncertain_firing== 35420 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #28532: <==negation-removal== 63831 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #28620: <==uncertain_firing== 83391 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #28817: <==uncertain_firing== 62389 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #43967: <==negation-removal== 14483 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #55171: <==uncertain_firing== 50419 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #55734: <==uncertain_firing== 63831 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #56920: <==negation-removal== 50419 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #63102: <==negation-removal== 35420 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #68444: <==uncertain_firing== 33587 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #81525: <==negation-removal== 33587 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #82588: <==uncertain_firing== 53055 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83931: <==negation-removal== 53055 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #14483: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #33587: <==closure== 14483 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #35420: <==closure== 63831 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #50419: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #53055: <==closure== 62389 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #62389: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #63831: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #83391: <==closure== 50419 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #14713: <==negation-removal== 83391 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #16990: <==uncertain_firing== 14483 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #25542: <==negation-removal== 62389 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #25931: <==uncertain_firing== 35420 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #28532: <==negation-removal== 63831 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #28620: <==uncertain_firing== 83391 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #28817: <==uncertain_firing== 62389 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #43967: <==negation-removal== 14483 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #55171: <==uncertain_firing== 50419 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #55734: <==uncertain_firing== 63831 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #56920: <==negation-removal== 50419 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #63102: <==negation-removal== 35420 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #68444: <==uncertain_firing== 33587 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #81525: <==negation-removal== 33587 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #82588: <==uncertain_firing== 53055 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83931: <==negation-removal== 53055 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #14483: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #33587: <==closure== 14483 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #35420: <==closure== 63831 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #50419: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #53055: <==closure== 62389 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #62389: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #63831: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #83391: <==closure== 50419 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #14713: <==negation-removal== 83391 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #16990: <==uncertain_firing== 14483 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #25542: <==negation-removal== 62389 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #25931: <==uncertain_firing== 35420 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #28532: <==negation-removal== 63831 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #28620: <==uncertain_firing== 83391 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #28817: <==uncertain_firing== 62389 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #43967: <==negation-removal== 14483 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #55171: <==uncertain_firing== 50419 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #55734: <==uncertain_firing== 63831 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #56920: <==negation-removal== 50419 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #63102: <==negation-removal== 35420 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #68444: <==uncertain_firing== 33587 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #81525: <==negation-removal== 33587 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #82588: <==uncertain_firing== 53055 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83931: <==negation-removal== 53055 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #10727: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #20732: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #31066: <==closure== 63203 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #34160: <==closure== 10727 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #46939: <==closure== 62338 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #49736: <==closure== 20732 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #62338: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #63203: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #13976: <==uncertain_firing== 31066 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #17605: <==negation-removal== 62338 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #18359: <==negation-removal== 31066 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24243: <==uncertain_firing== 49736 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #27365: <==negation-removal== 34160 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #31339: <==uncertain_firing== 62338 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #39104: <==uncertain_firing== 20732 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50101: <==negation-removal== 46939 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #61079: <==negation-removal== 49736 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63002: <==uncertain_firing== 34160 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #65145: <==uncertain_firing== 63203 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69076: <==negation-removal== 63203 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73917: <==uncertain_firing== 46939 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #76949: <==negation-removal== 10727 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #80874: <==negation-removal== 20732 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #88581: <==uncertain_firing== 10727 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #10727: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #20732: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #31066: <==closure== 63203 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #34160: <==closure== 10727 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #46939: <==closure== 62338 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #49736: <==closure== 20732 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #62338: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #63203: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #13976: <==uncertain_firing== 31066 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #17605: <==negation-removal== 62338 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #18359: <==negation-removal== 31066 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24243: <==uncertain_firing== 49736 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #27365: <==negation-removal== 34160 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #31339: <==uncertain_firing== 62338 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #39104: <==uncertain_firing== 20732 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50101: <==negation-removal== 46939 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #61079: <==negation-removal== 49736 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63002: <==uncertain_firing== 34160 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #65145: <==uncertain_firing== 63203 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69076: <==negation-removal== 63203 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73917: <==uncertain_firing== 46939 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #76949: <==negation-removal== 10727 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #80874: <==negation-removal== 20732 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #88581: <==uncertain_firing== 10727 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #10727: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #20732: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #31066: <==closure== 63203 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #34160: <==closure== 10727 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #46939: <==closure== 62338 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #49736: <==closure== 20732 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #62338: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #63203: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #13976: <==uncertain_firing== 31066 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #17605: <==negation-removal== 62338 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #18359: <==negation-removal== 31066 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24243: <==uncertain_firing== 49736 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #27365: <==negation-removal== 34160 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #31339: <==uncertain_firing== 62338 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #39104: <==uncertain_firing== 20732 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50101: <==negation-removal== 46939 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #61079: <==negation-removal== 49736 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63002: <==uncertain_firing== 34160 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #65145: <==uncertain_firing== 63203 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69076: <==negation-removal== 63203 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73917: <==uncertain_firing== 46939 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #76949: <==negation-removal== 10727 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #80874: <==negation-removal== 20732 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #88581: <==uncertain_firing== 10727 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (at_d_p9))
        :effect (and
                    ; #10727: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #20732: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #31066: <==closure== 63203 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #34160: <==closure== 10727 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #46939: <==closure== 62338 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #49736: <==closure== 20732 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #62338: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #63203: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #13976: <==uncertain_firing== 31066 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #17605: <==negation-removal== 62338 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #18359: <==negation-removal== 31066 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24243: <==uncertain_firing== 49736 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #27365: <==negation-removal== 34160 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #31339: <==uncertain_firing== 62338 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #39104: <==uncertain_firing== 20732 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50101: <==negation-removal== 46939 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #61079: <==negation-removal== 49736 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63002: <==uncertain_firing== 34160 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #65145: <==uncertain_firing== 63203 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69076: <==negation-removal== 63203 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73917: <==uncertain_firing== 46939 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #76949: <==negation-removal== 10727 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #80874: <==negation-removal== 20732 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #88581: <==uncertain_firing== 10727 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #11652: <==closure== 60427 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60427: origin
                    (Bb_survivorat_s_p1)

                    ; #64864: origin
                    (Ba_survivorat_s_p1)

                    ; #70916: origin
                    (Bd_survivorat_s_p1)

                    ; #72534: origin
                    (Bc_survivorat_s_p1)

                    ; #76854: <==closure== 72534 (pos)
                    (Pc_survivorat_s_p1)

                    ; #76863: <==closure== 64864 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86849: <==closure== 70916 (pos)
                    (Pd_survivorat_s_p1)

                    ; #14807: <==negation-removal== 76863 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #19462: <==negation-removal== 11652 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #23629: <==negation-removal== 60427 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #25487: <==negation-removal== 70916 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #26470: <==negation-removal== 64864 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #30954: <==negation-removal== 86849 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #32275: <==negation-removal== 72534 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #64440: <==negation-removal== 76854 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #11652: <==closure== 60427 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60427: origin
                    (Bb_survivorat_s_p1)

                    ; #64864: origin
                    (Ba_survivorat_s_p1)

                    ; #70916: origin
                    (Bd_survivorat_s_p1)

                    ; #72534: origin
                    (Bc_survivorat_s_p1)

                    ; #76854: <==closure== 72534 (pos)
                    (Pc_survivorat_s_p1)

                    ; #76863: <==closure== 64864 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86849: <==closure== 70916 (pos)
                    (Pd_survivorat_s_p1)

                    ; #14807: <==negation-removal== 76863 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #19462: <==negation-removal== 11652 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #23629: <==negation-removal== 60427 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #25487: <==negation-removal== 70916 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #26470: <==negation-removal== 64864 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #30954: <==negation-removal== 86849 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #32275: <==negation-removal== 72534 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #64440: <==negation-removal== 76854 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #11652: <==closure== 60427 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60427: origin
                    (Bb_survivorat_s_p1)

                    ; #64864: origin
                    (Ba_survivorat_s_p1)

                    ; #70916: origin
                    (Bd_survivorat_s_p1)

                    ; #72534: origin
                    (Bc_survivorat_s_p1)

                    ; #76854: <==closure== 72534 (pos)
                    (Pc_survivorat_s_p1)

                    ; #76863: <==closure== 64864 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86849: <==closure== 70916 (pos)
                    (Pd_survivorat_s_p1)

                    ; #14807: <==negation-removal== 76863 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #19462: <==negation-removal== 11652 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #23629: <==negation-removal== 60427 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #25487: <==negation-removal== 70916 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #26470: <==negation-removal== 64864 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #30954: <==negation-removal== 86849 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #32275: <==negation-removal== 72534 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #64440: <==negation-removal== 76854 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (at_d_p1)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #11652: <==closure== 60427 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60427: origin
                    (Bb_survivorat_s_p1)

                    ; #64864: origin
                    (Ba_survivorat_s_p1)

                    ; #70916: origin
                    (Bd_survivorat_s_p1)

                    ; #72534: origin
                    (Bc_survivorat_s_p1)

                    ; #76854: <==closure== 72534 (pos)
                    (Pc_survivorat_s_p1)

                    ; #76863: <==closure== 64864 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86849: <==closure== 70916 (pos)
                    (Pd_survivorat_s_p1)

                    ; #14807: <==negation-removal== 76863 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #19462: <==negation-removal== 11652 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #23629: <==negation-removal== 60427 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #25487: <==negation-removal== 70916 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #26470: <==negation-removal== 64864 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #30954: <==negation-removal== 86849 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #32275: <==negation-removal== 72534 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #64440: <==negation-removal== 76854 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #13334: <==closure== 24759 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24759: origin
                    (Bb_survivorat_s_p2)

                    ; #40755: <==closure== 63148 (pos)
                    (Pc_survivorat_s_p2)

                    ; #47649: origin
                    (Bd_survivorat_s_p2)

                    ; #61946: origin
                    (Ba_survivorat_s_p2)

                    ; #63148: origin
                    (Bc_survivorat_s_p2)

                    ; #72400: <==closure== 47649 (pos)
                    (Pd_survivorat_s_p2)

                    ; #74037: <==closure== 61946 (pos)
                    (Pa_survivorat_s_p2)

                    ; #21648: <==negation-removal== 47649 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #22176: <==negation-removal== 13334 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #48608: <==negation-removal== 40755 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #67304: <==negation-removal== 74037 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71505: <==negation-removal== 61946 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #74526: <==negation-removal== 24759 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #76996: <==negation-removal== 63148 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85582: <==negation-removal== 72400 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #13334: <==closure== 24759 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24759: origin
                    (Bb_survivorat_s_p2)

                    ; #40755: <==closure== 63148 (pos)
                    (Pc_survivorat_s_p2)

                    ; #47649: origin
                    (Bd_survivorat_s_p2)

                    ; #61946: origin
                    (Ba_survivorat_s_p2)

                    ; #63148: origin
                    (Bc_survivorat_s_p2)

                    ; #72400: <==closure== 47649 (pos)
                    (Pd_survivorat_s_p2)

                    ; #74037: <==closure== 61946 (pos)
                    (Pa_survivorat_s_p2)

                    ; #21648: <==negation-removal== 47649 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #22176: <==negation-removal== 13334 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #48608: <==negation-removal== 40755 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #67304: <==negation-removal== 74037 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71505: <==negation-removal== 61946 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #74526: <==negation-removal== 24759 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #76996: <==negation-removal== 63148 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85582: <==negation-removal== 72400 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #13334: <==closure== 24759 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24759: origin
                    (Bb_survivorat_s_p2)

                    ; #40755: <==closure== 63148 (pos)
                    (Pc_survivorat_s_p2)

                    ; #47649: origin
                    (Bd_survivorat_s_p2)

                    ; #61946: origin
                    (Ba_survivorat_s_p2)

                    ; #63148: origin
                    (Bc_survivorat_s_p2)

                    ; #72400: <==closure== 47649 (pos)
                    (Pd_survivorat_s_p2)

                    ; #74037: <==closure== 61946 (pos)
                    (Pa_survivorat_s_p2)

                    ; #21648: <==negation-removal== 47649 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #22176: <==negation-removal== 13334 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #48608: <==negation-removal== 40755 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #67304: <==negation-removal== 74037 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71505: <==negation-removal== 61946 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #74526: <==negation-removal== 24759 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #76996: <==negation-removal== 63148 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85582: <==negation-removal== 72400 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #13334: <==closure== 24759 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24759: origin
                    (Bb_survivorat_s_p2)

                    ; #40755: <==closure== 63148 (pos)
                    (Pc_survivorat_s_p2)

                    ; #47649: origin
                    (Bd_survivorat_s_p2)

                    ; #61946: origin
                    (Ba_survivorat_s_p2)

                    ; #63148: origin
                    (Bc_survivorat_s_p2)

                    ; #72400: <==closure== 47649 (pos)
                    (Pd_survivorat_s_p2)

                    ; #74037: <==closure== 61946 (pos)
                    (Pa_survivorat_s_p2)

                    ; #21648: <==negation-removal== 47649 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #22176: <==negation-removal== 13334 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #48608: <==negation-removal== 40755 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #67304: <==negation-removal== 74037 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71505: <==negation-removal== 61946 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #74526: <==negation-removal== 24759 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #76996: <==negation-removal== 63148 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85582: <==negation-removal== 72400 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #24141: origin
                    (Ba_survivorat_s_p3)

                    ; #33935: origin
                    (Bb_survivorat_s_p3)

                    ; #36183: <==closure== 62220 (pos)
                    (Pd_survivorat_s_p3)

                    ; #45090: <==closure== 52591 (pos)
                    (Pc_survivorat_s_p3)

                    ; #46688: <==closure== 24141 (pos)
                    (Pa_survivorat_s_p3)

                    ; #52591: origin
                    (Bc_survivorat_s_p3)

                    ; #59261: <==closure== 33935 (pos)
                    (Pb_survivorat_s_p3)

                    ; #62220: origin
                    (Bd_survivorat_s_p3)

                    ; #24290: <==negation-removal== 52591 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #27179: <==negation-removal== 33935 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #34150: <==negation-removal== 24141 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62101: <==negation-removal== 62220 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #76992: <==negation-removal== 36183 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #82661: <==negation-removal== 45090 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #88594: <==negation-removal== 59261 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88764: <==negation-removal== 46688 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #24141: origin
                    (Ba_survivorat_s_p3)

                    ; #33935: origin
                    (Bb_survivorat_s_p3)

                    ; #36183: <==closure== 62220 (pos)
                    (Pd_survivorat_s_p3)

                    ; #45090: <==closure== 52591 (pos)
                    (Pc_survivorat_s_p3)

                    ; #46688: <==closure== 24141 (pos)
                    (Pa_survivorat_s_p3)

                    ; #52591: origin
                    (Bc_survivorat_s_p3)

                    ; #59261: <==closure== 33935 (pos)
                    (Pb_survivorat_s_p3)

                    ; #62220: origin
                    (Bd_survivorat_s_p3)

                    ; #24290: <==negation-removal== 52591 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #27179: <==negation-removal== 33935 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #34150: <==negation-removal== 24141 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62101: <==negation-removal== 62220 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #76992: <==negation-removal== 36183 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #82661: <==negation-removal== 45090 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #88594: <==negation-removal== 59261 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88764: <==negation-removal== 46688 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #24141: origin
                    (Ba_survivorat_s_p3)

                    ; #33935: origin
                    (Bb_survivorat_s_p3)

                    ; #36183: <==closure== 62220 (pos)
                    (Pd_survivorat_s_p3)

                    ; #45090: <==closure== 52591 (pos)
                    (Pc_survivorat_s_p3)

                    ; #46688: <==closure== 24141 (pos)
                    (Pa_survivorat_s_p3)

                    ; #52591: origin
                    (Bc_survivorat_s_p3)

                    ; #59261: <==closure== 33935 (pos)
                    (Pb_survivorat_s_p3)

                    ; #62220: origin
                    (Bd_survivorat_s_p3)

                    ; #24290: <==negation-removal== 52591 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #27179: <==negation-removal== 33935 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #34150: <==negation-removal== 24141 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62101: <==negation-removal== 62220 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #76992: <==negation-removal== 36183 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #82661: <==negation-removal== 45090 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #88594: <==negation-removal== 59261 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88764: <==negation-removal== 46688 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (at_d_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #24141: origin
                    (Ba_survivorat_s_p3)

                    ; #33935: origin
                    (Bb_survivorat_s_p3)

                    ; #36183: <==closure== 62220 (pos)
                    (Pd_survivorat_s_p3)

                    ; #45090: <==closure== 52591 (pos)
                    (Pc_survivorat_s_p3)

                    ; #46688: <==closure== 24141 (pos)
                    (Pa_survivorat_s_p3)

                    ; #52591: origin
                    (Bc_survivorat_s_p3)

                    ; #59261: <==closure== 33935 (pos)
                    (Pb_survivorat_s_p3)

                    ; #62220: origin
                    (Bd_survivorat_s_p3)

                    ; #24290: <==negation-removal== 52591 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #27179: <==negation-removal== 33935 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #34150: <==negation-removal== 24141 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62101: <==negation-removal== 62220 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #76992: <==negation-removal== 36183 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #82661: <==negation-removal== 45090 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #88594: <==negation-removal== 59261 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88764: <==negation-removal== 46688 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #10508: <==closure== 64654 (pos)
                    (Pb_survivorat_s_p4)

                    ; #27687: <==closure== 99123 (pos)
                    (Pa_survivorat_s_p4)

                    ; #35534: origin
                    (Bc_survivorat_s_p4)

                    ; #55910: <==closure== 35534 (pos)
                    (Pc_survivorat_s_p4)

                    ; #62910: <==closure== 80550 (pos)
                    (Pd_survivorat_s_p4)

                    ; #64654: origin
                    (Bb_survivorat_s_p4)

                    ; #80550: origin
                    (Bd_survivorat_s_p4)

                    ; #99123: origin
                    (Ba_survivorat_s_p4)

                    ; #14663: <==negation-removal== 35534 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #38661: <==negation-removal== 10508 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #43562: <==negation-removal== 27687 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #47789: <==negation-removal== 80550 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #53203: <==negation-removal== 55910 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #59657: <==negation-removal== 62910 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #67635: <==negation-removal== 64654 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81082: <==negation-removal== 99123 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #10508: <==closure== 64654 (pos)
                    (Pb_survivorat_s_p4)

                    ; #27687: <==closure== 99123 (pos)
                    (Pa_survivorat_s_p4)

                    ; #35534: origin
                    (Bc_survivorat_s_p4)

                    ; #55910: <==closure== 35534 (pos)
                    (Pc_survivorat_s_p4)

                    ; #62910: <==closure== 80550 (pos)
                    (Pd_survivorat_s_p4)

                    ; #64654: origin
                    (Bb_survivorat_s_p4)

                    ; #80550: origin
                    (Bd_survivorat_s_p4)

                    ; #99123: origin
                    (Ba_survivorat_s_p4)

                    ; #14663: <==negation-removal== 35534 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #38661: <==negation-removal== 10508 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #43562: <==negation-removal== 27687 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #47789: <==negation-removal== 80550 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #53203: <==negation-removal== 55910 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #59657: <==negation-removal== 62910 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #67635: <==negation-removal== 64654 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81082: <==negation-removal== 99123 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #10508: <==closure== 64654 (pos)
                    (Pb_survivorat_s_p4)

                    ; #27687: <==closure== 99123 (pos)
                    (Pa_survivorat_s_p4)

                    ; #35534: origin
                    (Bc_survivorat_s_p4)

                    ; #55910: <==closure== 35534 (pos)
                    (Pc_survivorat_s_p4)

                    ; #62910: <==closure== 80550 (pos)
                    (Pd_survivorat_s_p4)

                    ; #64654: origin
                    (Bb_survivorat_s_p4)

                    ; #80550: origin
                    (Bd_survivorat_s_p4)

                    ; #99123: origin
                    (Ba_survivorat_s_p4)

                    ; #14663: <==negation-removal== 35534 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #38661: <==negation-removal== 10508 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #43562: <==negation-removal== 27687 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #47789: <==negation-removal== 80550 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #53203: <==negation-removal== 55910 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #59657: <==negation-removal== 62910 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #67635: <==negation-removal== 64654 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81082: <==negation-removal== 99123 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #10508: <==closure== 64654 (pos)
                    (Pb_survivorat_s_p4)

                    ; #27687: <==closure== 99123 (pos)
                    (Pa_survivorat_s_p4)

                    ; #35534: origin
                    (Bc_survivorat_s_p4)

                    ; #55910: <==closure== 35534 (pos)
                    (Pc_survivorat_s_p4)

                    ; #62910: <==closure== 80550 (pos)
                    (Pd_survivorat_s_p4)

                    ; #64654: origin
                    (Bb_survivorat_s_p4)

                    ; #80550: origin
                    (Bd_survivorat_s_p4)

                    ; #99123: origin
                    (Ba_survivorat_s_p4)

                    ; #14663: <==negation-removal== 35534 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #38661: <==negation-removal== 10508 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #43562: <==negation-removal== 27687 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #47789: <==negation-removal== 80550 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #53203: <==negation-removal== 55910 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #59657: <==negation-removal== 62910 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #67635: <==negation-removal== 64654 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81082: <==negation-removal== 99123 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #18441: <==closure== 43601 (pos)
                    (Pd_survivorat_s_p5)

                    ; #23002: <==closure== 46111 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29117: origin
                    (Bb_survivorat_s_p5)

                    ; #43601: origin
                    (Bd_survivorat_s_p5)

                    ; #46111: origin
                    (Bc_survivorat_s_p5)

                    ; #64552: <==closure== 29117 (pos)
                    (Pb_survivorat_s_p5)

                    ; #79957: origin
                    (Ba_survivorat_s_p5)

                    ; #90857: <==closure== 79957 (pos)
                    (Pa_survivorat_s_p5)

                    ; #23813: <==negation-removal== 79957 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #26266: <==negation-removal== 43601 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #35955: <==negation-removal== 29117 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39994: <==negation-removal== 90857 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #46566: <==negation-removal== 46111 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #60776: <==negation-removal== 18441 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #68920: <==negation-removal== 64552 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #82257: <==negation-removal== 23002 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #18441: <==closure== 43601 (pos)
                    (Pd_survivorat_s_p5)

                    ; #23002: <==closure== 46111 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29117: origin
                    (Bb_survivorat_s_p5)

                    ; #43601: origin
                    (Bd_survivorat_s_p5)

                    ; #46111: origin
                    (Bc_survivorat_s_p5)

                    ; #64552: <==closure== 29117 (pos)
                    (Pb_survivorat_s_p5)

                    ; #79957: origin
                    (Ba_survivorat_s_p5)

                    ; #90857: <==closure== 79957 (pos)
                    (Pa_survivorat_s_p5)

                    ; #23813: <==negation-removal== 79957 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #26266: <==negation-removal== 43601 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #35955: <==negation-removal== 29117 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39994: <==negation-removal== 90857 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #46566: <==negation-removal== 46111 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #60776: <==negation-removal== 18441 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #68920: <==negation-removal== 64552 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #82257: <==negation-removal== 23002 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #18441: <==closure== 43601 (pos)
                    (Pd_survivorat_s_p5)

                    ; #23002: <==closure== 46111 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29117: origin
                    (Bb_survivorat_s_p5)

                    ; #43601: origin
                    (Bd_survivorat_s_p5)

                    ; #46111: origin
                    (Bc_survivorat_s_p5)

                    ; #64552: <==closure== 29117 (pos)
                    (Pb_survivorat_s_p5)

                    ; #79957: origin
                    (Ba_survivorat_s_p5)

                    ; #90857: <==closure== 79957 (pos)
                    (Pa_survivorat_s_p5)

                    ; #23813: <==negation-removal== 79957 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #26266: <==negation-removal== 43601 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #35955: <==negation-removal== 29117 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39994: <==negation-removal== 90857 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #46566: <==negation-removal== 46111 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #60776: <==negation-removal== 18441 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #68920: <==negation-removal== 64552 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #82257: <==negation-removal== 23002 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (at_d_p5)
                           (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #18441: <==closure== 43601 (pos)
                    (Pd_survivorat_s_p5)

                    ; #23002: <==closure== 46111 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29117: origin
                    (Bb_survivorat_s_p5)

                    ; #43601: origin
                    (Bd_survivorat_s_p5)

                    ; #46111: origin
                    (Bc_survivorat_s_p5)

                    ; #64552: <==closure== 29117 (pos)
                    (Pb_survivorat_s_p5)

                    ; #79957: origin
                    (Ba_survivorat_s_p5)

                    ; #90857: <==closure== 79957 (pos)
                    (Pa_survivorat_s_p5)

                    ; #23813: <==negation-removal== 79957 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #26266: <==negation-removal== 43601 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #35955: <==negation-removal== 29117 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39994: <==negation-removal== 90857 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #46566: <==negation-removal== 46111 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #60776: <==negation-removal== 18441 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #68920: <==negation-removal== 64552 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #82257: <==negation-removal== 23002 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #11062: origin
                    (Bb_survivorat_s_p6)

                    ; #33792: origin
                    (Bd_survivorat_s_p6)

                    ; #46095: <==closure== 33792 (pos)
                    (Pd_survivorat_s_p6)

                    ; #47906: origin
                    (Ba_survivorat_s_p6)

                    ; #49625: <==closure== 47906 (pos)
                    (Pa_survivorat_s_p6)

                    ; #66991: origin
                    (Bc_survivorat_s_p6)

                    ; #67591: <==closure== 66991 (pos)
                    (Pc_survivorat_s_p6)

                    ; #77162: <==closure== 11062 (pos)
                    (Pb_survivorat_s_p6)

                    ; #17921: <==negation-removal== 67591 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #22171: <==negation-removal== 11062 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #24465: <==negation-removal== 66991 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #37407: <==negation-removal== 47906 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #45476: <==negation-removal== 46095 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #67466: <==negation-removal== 33792 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #72662: <==negation-removal== 77162 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83963: <==negation-removal== 49625 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #11062: origin
                    (Bb_survivorat_s_p6)

                    ; #33792: origin
                    (Bd_survivorat_s_p6)

                    ; #46095: <==closure== 33792 (pos)
                    (Pd_survivorat_s_p6)

                    ; #47906: origin
                    (Ba_survivorat_s_p6)

                    ; #49625: <==closure== 47906 (pos)
                    (Pa_survivorat_s_p6)

                    ; #66991: origin
                    (Bc_survivorat_s_p6)

                    ; #67591: <==closure== 66991 (pos)
                    (Pc_survivorat_s_p6)

                    ; #77162: <==closure== 11062 (pos)
                    (Pb_survivorat_s_p6)

                    ; #17921: <==negation-removal== 67591 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #22171: <==negation-removal== 11062 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #24465: <==negation-removal== 66991 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #37407: <==negation-removal== 47906 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #45476: <==negation-removal== 46095 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #67466: <==negation-removal== 33792 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #72662: <==negation-removal== 77162 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83963: <==negation-removal== 49625 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #11062: origin
                    (Bb_survivorat_s_p6)

                    ; #33792: origin
                    (Bd_survivorat_s_p6)

                    ; #46095: <==closure== 33792 (pos)
                    (Pd_survivorat_s_p6)

                    ; #47906: origin
                    (Ba_survivorat_s_p6)

                    ; #49625: <==closure== 47906 (pos)
                    (Pa_survivorat_s_p6)

                    ; #66991: origin
                    (Bc_survivorat_s_p6)

                    ; #67591: <==closure== 66991 (pos)
                    (Pc_survivorat_s_p6)

                    ; #77162: <==closure== 11062 (pos)
                    (Pb_survivorat_s_p6)

                    ; #17921: <==negation-removal== 67591 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #22171: <==negation-removal== 11062 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #24465: <==negation-removal== 66991 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #37407: <==negation-removal== 47906 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #45476: <==negation-removal== 46095 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #67466: <==negation-removal== 33792 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #72662: <==negation-removal== 77162 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83963: <==negation-removal== 49625 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #11062: origin
                    (Bb_survivorat_s_p6)

                    ; #33792: origin
                    (Bd_survivorat_s_p6)

                    ; #46095: <==closure== 33792 (pos)
                    (Pd_survivorat_s_p6)

                    ; #47906: origin
                    (Ba_survivorat_s_p6)

                    ; #49625: <==closure== 47906 (pos)
                    (Pa_survivorat_s_p6)

                    ; #66991: origin
                    (Bc_survivorat_s_p6)

                    ; #67591: <==closure== 66991 (pos)
                    (Pc_survivorat_s_p6)

                    ; #77162: <==closure== 11062 (pos)
                    (Pb_survivorat_s_p6)

                    ; #17921: <==negation-removal== 67591 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #22171: <==negation-removal== 11062 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #24465: <==negation-removal== 66991 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #37407: <==negation-removal== 47906 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #45476: <==negation-removal== 46095 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #67466: <==negation-removal== 33792 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #72662: <==negation-removal== 77162 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83963: <==negation-removal== 49625 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #18300: <==closure== 24805 (pos)
                    (Pa_survivorat_s_p7)

                    ; #24805: origin
                    (Ba_survivorat_s_p7)

                    ; #35412: <==closure== 47009 (pos)
                    (Pb_survivorat_s_p7)

                    ; #47009: origin
                    (Bb_survivorat_s_p7)

                    ; #50053: origin
                    (Bc_survivorat_s_p7)

                    ; #65122: <==closure== 50053 (pos)
                    (Pc_survivorat_s_p7)

                    ; #68278: origin
                    (Bd_survivorat_s_p7)

                    ; #83956: <==closure== 68278 (pos)
                    (Pd_survivorat_s_p7)

                    ; #11758: <==negation-removal== 18300 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #16960: <==negation-removal== 24805 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #39702: <==negation-removal== 65122 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49080: <==negation-removal== 35412 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #62155: <==negation-removal== 68278 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #72664: <==negation-removal== 83956 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #73422: <==negation-removal== 47009 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #90672: <==negation-removal== 50053 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #18300: <==closure== 24805 (pos)
                    (Pa_survivorat_s_p7)

                    ; #24805: origin
                    (Ba_survivorat_s_p7)

                    ; #35412: <==closure== 47009 (pos)
                    (Pb_survivorat_s_p7)

                    ; #47009: origin
                    (Bb_survivorat_s_p7)

                    ; #50053: origin
                    (Bc_survivorat_s_p7)

                    ; #65122: <==closure== 50053 (pos)
                    (Pc_survivorat_s_p7)

                    ; #68278: origin
                    (Bd_survivorat_s_p7)

                    ; #83956: <==closure== 68278 (pos)
                    (Pd_survivorat_s_p7)

                    ; #11758: <==negation-removal== 18300 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #16960: <==negation-removal== 24805 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #39702: <==negation-removal== 65122 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49080: <==negation-removal== 35412 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #62155: <==negation-removal== 68278 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #72664: <==negation-removal== 83956 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #73422: <==negation-removal== 47009 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #90672: <==negation-removal== 50053 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #18300: <==closure== 24805 (pos)
                    (Pa_survivorat_s_p7)

                    ; #24805: origin
                    (Ba_survivorat_s_p7)

                    ; #35412: <==closure== 47009 (pos)
                    (Pb_survivorat_s_p7)

                    ; #47009: origin
                    (Bb_survivorat_s_p7)

                    ; #50053: origin
                    (Bc_survivorat_s_p7)

                    ; #65122: <==closure== 50053 (pos)
                    (Pc_survivorat_s_p7)

                    ; #68278: origin
                    (Bd_survivorat_s_p7)

                    ; #83956: <==closure== 68278 (pos)
                    (Pd_survivorat_s_p7)

                    ; #11758: <==negation-removal== 18300 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #16960: <==negation-removal== 24805 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #39702: <==negation-removal== 65122 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49080: <==negation-removal== 35412 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #62155: <==negation-removal== 68278 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #72664: <==negation-removal== 83956 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #73422: <==negation-removal== 47009 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #90672: <==negation-removal== 50053 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #18300: <==closure== 24805 (pos)
                    (Pa_survivorat_s_p7)

                    ; #24805: origin
                    (Ba_survivorat_s_p7)

                    ; #35412: <==closure== 47009 (pos)
                    (Pb_survivorat_s_p7)

                    ; #47009: origin
                    (Bb_survivorat_s_p7)

                    ; #50053: origin
                    (Bc_survivorat_s_p7)

                    ; #65122: <==closure== 50053 (pos)
                    (Pc_survivorat_s_p7)

                    ; #68278: origin
                    (Bd_survivorat_s_p7)

                    ; #83956: <==closure== 68278 (pos)
                    (Pd_survivorat_s_p7)

                    ; #11758: <==negation-removal== 18300 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #16960: <==negation-removal== 24805 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #39702: <==negation-removal== 65122 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49080: <==negation-removal== 35412 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #62155: <==negation-removal== 68278 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #72664: <==negation-removal== 83956 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #73422: <==negation-removal== 47009 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #90672: <==negation-removal== 50053 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #12342: <==closure== 44696 (pos)
                    (Pd_survivorat_s_p8)

                    ; #27877: <==closure== 40439 (pos)
                    (Pb_survivorat_s_p8)

                    ; #40439: origin
                    (Bb_survivorat_s_p8)

                    ; #44696: origin
                    (Bd_survivorat_s_p8)

                    ; #64716: <==closure== 71814 (pos)
                    (Pa_survivorat_s_p8)

                    ; #71814: origin
                    (Ba_survivorat_s_p8)

                    ; #74142: <==closure== 83401 (pos)
                    (Pc_survivorat_s_p8)

                    ; #83401: origin
                    (Bc_survivorat_s_p8)

                    ; #22857: <==negation-removal== 64716 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25108: <==negation-removal== 27877 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #30254: <==negation-removal== 44696 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #33434: <==negation-removal== 74142 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #40597: <==negation-removal== 12342 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42561: <==negation-removal== 40439 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #57672: <==negation-removal== 83401 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64451: <==negation-removal== 71814 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #12342: <==closure== 44696 (pos)
                    (Pd_survivorat_s_p8)

                    ; #27877: <==closure== 40439 (pos)
                    (Pb_survivorat_s_p8)

                    ; #40439: origin
                    (Bb_survivorat_s_p8)

                    ; #44696: origin
                    (Bd_survivorat_s_p8)

                    ; #64716: <==closure== 71814 (pos)
                    (Pa_survivorat_s_p8)

                    ; #71814: origin
                    (Ba_survivorat_s_p8)

                    ; #74142: <==closure== 83401 (pos)
                    (Pc_survivorat_s_p8)

                    ; #83401: origin
                    (Bc_survivorat_s_p8)

                    ; #22857: <==negation-removal== 64716 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25108: <==negation-removal== 27877 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #30254: <==negation-removal== 44696 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #33434: <==negation-removal== 74142 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #40597: <==negation-removal== 12342 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42561: <==negation-removal== 40439 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #57672: <==negation-removal== 83401 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64451: <==negation-removal== 71814 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #12342: <==closure== 44696 (pos)
                    (Pd_survivorat_s_p8)

                    ; #27877: <==closure== 40439 (pos)
                    (Pb_survivorat_s_p8)

                    ; #40439: origin
                    (Bb_survivorat_s_p8)

                    ; #44696: origin
                    (Bd_survivorat_s_p8)

                    ; #64716: <==closure== 71814 (pos)
                    (Pa_survivorat_s_p8)

                    ; #71814: origin
                    (Ba_survivorat_s_p8)

                    ; #74142: <==closure== 83401 (pos)
                    (Pc_survivorat_s_p8)

                    ; #83401: origin
                    (Bc_survivorat_s_p8)

                    ; #22857: <==negation-removal== 64716 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25108: <==negation-removal== 27877 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #30254: <==negation-removal== 44696 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #33434: <==negation-removal== 74142 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #40597: <==negation-removal== 12342 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42561: <==negation-removal== 40439 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #57672: <==negation-removal== 83401 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64451: <==negation-removal== 71814 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #12342: <==closure== 44696 (pos)
                    (Pd_survivorat_s_p8)

                    ; #27877: <==closure== 40439 (pos)
                    (Pb_survivorat_s_p8)

                    ; #40439: origin
                    (Bb_survivorat_s_p8)

                    ; #44696: origin
                    (Bd_survivorat_s_p8)

                    ; #64716: <==closure== 71814 (pos)
                    (Pa_survivorat_s_p8)

                    ; #71814: origin
                    (Ba_survivorat_s_p8)

                    ; #74142: <==closure== 83401 (pos)
                    (Pc_survivorat_s_p8)

                    ; #83401: origin
                    (Bc_survivorat_s_p8)

                    ; #22857: <==negation-removal== 64716 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25108: <==negation-removal== 27877 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #30254: <==negation-removal== 44696 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #33434: <==negation-removal== 74142 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #40597: <==negation-removal== 12342 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42561: <==negation-removal== 40439 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #57672: <==negation-removal== 83401 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64451: <==negation-removal== 71814 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #31425: origin
                    (Bb_survivorat_s_p9)

                    ; #34345: <==closure== 31425 (pos)
                    (Pb_survivorat_s_p9)

                    ; #63787: origin
                    (Bc_survivorat_s_p9)

                    ; #69575: <==closure== 71658 (pos)
                    (Pa_survivorat_s_p9)

                    ; #71658: origin
                    (Ba_survivorat_s_p9)

                    ; #81826: origin
                    (Bd_survivorat_s_p9)

                    ; #84373: <==closure== 81826 (pos)
                    (Pd_survivorat_s_p9)

                    ; #85545: <==closure== 63787 (pos)
                    (Pc_survivorat_s_p9)

                    ; #14247: <==negation-removal== 71658 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #20906: <==negation-removal== 84373 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #23064: <==negation-removal== 34345 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #25540: <==negation-removal== 69575 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #46500: <==negation-removal== 85545 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #51409: <==negation-removal== 31425 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #62898: <==negation-removal== 63787 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #72853: <==negation-removal== 81826 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #31425: origin
                    (Bb_survivorat_s_p9)

                    ; #34345: <==closure== 31425 (pos)
                    (Pb_survivorat_s_p9)

                    ; #63787: origin
                    (Bc_survivorat_s_p9)

                    ; #69575: <==closure== 71658 (pos)
                    (Pa_survivorat_s_p9)

                    ; #71658: origin
                    (Ba_survivorat_s_p9)

                    ; #81826: origin
                    (Bd_survivorat_s_p9)

                    ; #84373: <==closure== 81826 (pos)
                    (Pd_survivorat_s_p9)

                    ; #85545: <==closure== 63787 (pos)
                    (Pc_survivorat_s_p9)

                    ; #14247: <==negation-removal== 71658 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #20906: <==negation-removal== 84373 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #23064: <==negation-removal== 34345 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #25540: <==negation-removal== 69575 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #46500: <==negation-removal== 85545 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #51409: <==negation-removal== 31425 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #62898: <==negation-removal== 63787 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #72853: <==negation-removal== 81826 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #31425: origin
                    (Bb_survivorat_s_p9)

                    ; #34345: <==closure== 31425 (pos)
                    (Pb_survivorat_s_p9)

                    ; #63787: origin
                    (Bc_survivorat_s_p9)

                    ; #69575: <==closure== 71658 (pos)
                    (Pa_survivorat_s_p9)

                    ; #71658: origin
                    (Ba_survivorat_s_p9)

                    ; #81826: origin
                    (Bd_survivorat_s_p9)

                    ; #84373: <==closure== 81826 (pos)
                    (Pd_survivorat_s_p9)

                    ; #85545: <==closure== 63787 (pos)
                    (Pc_survivorat_s_p9)

                    ; #14247: <==negation-removal== 71658 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #20906: <==negation-removal== 84373 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #23064: <==negation-removal== 34345 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #25540: <==negation-removal== 69575 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #46500: <==negation-removal== 85545 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #51409: <==negation-removal== 31425 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #62898: <==negation-removal== 63787 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #72853: <==negation-removal== 81826 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (at_d_p9))
        :effect (and
                    ; #31425: origin
                    (Bb_survivorat_s_p9)

                    ; #34345: <==closure== 31425 (pos)
                    (Pb_survivorat_s_p9)

                    ; #63787: origin
                    (Bc_survivorat_s_p9)

                    ; #69575: <==closure== 71658 (pos)
                    (Pa_survivorat_s_p9)

                    ; #71658: origin
                    (Ba_survivorat_s_p9)

                    ; #81826: origin
                    (Bd_survivorat_s_p9)

                    ; #84373: <==closure== 81826 (pos)
                    (Pd_survivorat_s_p9)

                    ; #85545: <==closure== 63787 (pos)
                    (Pc_survivorat_s_p9)

                    ; #14247: <==negation-removal== 71658 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #20906: <==negation-removal== 84373 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #23064: <==negation-removal== 34345 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #25540: <==negation-removal== 69575 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #46500: <==negation-removal== 85545 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #51409: <==negation-removal== 31425 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #62898: <==negation-removal== 63787 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #72853: <==negation-removal== 81826 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #21497: origin
                    (not_at_a_p1)

                    ; #32005: origin
                    (at_a_p1)

                    ; #21497: <==negation-removal== 32005 (pos)
                    (not (not_at_a_p1))

                    ; #32005: <==negation-removal== 21497 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #21497: origin
                    (not_at_a_p1)

                    ; #51113: origin
                    (at_a_p2)

                    ; #32005: <==negation-removal== 21497 (pos)
                    (not (at_a_p1))

                    ; #40956: <==negation-removal== 51113 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #21497: origin
                    (not_at_a_p1)

                    ; #82214: origin
                    (at_a_p3)

                    ; #25370: <==negation-removal== 82214 (pos)
                    (not (not_at_a_p3))

                    ; #32005: <==negation-removal== 21497 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #21497: origin
                    (not_at_a_p1)

                    ; #63577: origin
                    (at_a_p4)

                    ; #32005: <==negation-removal== 21497 (pos)
                    (not (at_a_p1))

                    ; #75899: <==negation-removal== 63577 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #21497: origin
                    (not_at_a_p1)

                    ; #83728: origin
                    (at_a_p5)

                    ; #32005: <==negation-removal== 21497 (pos)
                    (not (at_a_p1))

                    ; #50683: <==negation-removal== 83728 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #21497: origin
                    (not_at_a_p1)

                    ; #71807: origin
                    (at_a_p6)

                    ; #20820: <==negation-removal== 71807 (pos)
                    (not (not_at_a_p6))

                    ; #32005: <==negation-removal== 21497 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #12648: origin
                    (at_a_p7)

                    ; #21497: origin
                    (not_at_a_p1)

                    ; #32005: <==negation-removal== 21497 (pos)
                    (not (at_a_p1))

                    ; #50407: <==negation-removal== 12648 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #21497: origin
                    (not_at_a_p1)

                    ; #37923: origin
                    (at_a_p8)

                    ; #32005: <==negation-removal== 21497 (pos)
                    (not (at_a_p1))

                    ; #40482: <==negation-removal== 37923 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #12147: origin
                    (at_a_p9)

                    ; #21497: origin
                    (not_at_a_p1)

                    ; #32005: <==negation-removal== 21497 (pos)
                    (not (at_a_p1))

                    ; #77322: <==negation-removal== 12147 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #32005: origin
                    (at_a_p1)

                    ; #40956: origin
                    (not_at_a_p2)

                    ; #21497: <==negation-removal== 32005 (pos)
                    (not (not_at_a_p1))

                    ; #51113: <==negation-removal== 40956 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #40956: origin
                    (not_at_a_p2)

                    ; #51113: origin
                    (at_a_p2)

                    ; #40956: <==negation-removal== 51113 (pos)
                    (not (not_at_a_p2))

                    ; #51113: <==negation-removal== 40956 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #40956: origin
                    (not_at_a_p2)

                    ; #82214: origin
                    (at_a_p3)

                    ; #25370: <==negation-removal== 82214 (pos)
                    (not (not_at_a_p3))

                    ; #51113: <==negation-removal== 40956 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #40956: origin
                    (not_at_a_p2)

                    ; #63577: origin
                    (at_a_p4)

                    ; #51113: <==negation-removal== 40956 (pos)
                    (not (at_a_p2))

                    ; #75899: <==negation-removal== 63577 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #40956: origin
                    (not_at_a_p2)

                    ; #83728: origin
                    (at_a_p5)

                    ; #50683: <==negation-removal== 83728 (pos)
                    (not (not_at_a_p5))

                    ; #51113: <==negation-removal== 40956 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #40956: origin
                    (not_at_a_p2)

                    ; #71807: origin
                    (at_a_p6)

                    ; #20820: <==negation-removal== 71807 (pos)
                    (not (not_at_a_p6))

                    ; #51113: <==negation-removal== 40956 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #12648: origin
                    (at_a_p7)

                    ; #40956: origin
                    (not_at_a_p2)

                    ; #50407: <==negation-removal== 12648 (pos)
                    (not (not_at_a_p7))

                    ; #51113: <==negation-removal== 40956 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #37923: origin
                    (at_a_p8)

                    ; #40956: origin
                    (not_at_a_p2)

                    ; #40482: <==negation-removal== 37923 (pos)
                    (not (not_at_a_p8))

                    ; #51113: <==negation-removal== 40956 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #12147: origin
                    (at_a_p9)

                    ; #40956: origin
                    (not_at_a_p2)

                    ; #51113: <==negation-removal== 40956 (pos)
                    (not (at_a_p2))

                    ; #77322: <==negation-removal== 12147 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #25370: origin
                    (not_at_a_p3)

                    ; #32005: origin
                    (at_a_p1)

                    ; #21497: <==negation-removal== 32005 (pos)
                    (not (not_at_a_p1))

                    ; #82214: <==negation-removal== 25370 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #25370: origin
                    (not_at_a_p3)

                    ; #51113: origin
                    (at_a_p2)

                    ; #40956: <==negation-removal== 51113 (pos)
                    (not (not_at_a_p2))

                    ; #82214: <==negation-removal== 25370 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #25370: origin
                    (not_at_a_p3)

                    ; #82214: origin
                    (at_a_p3)

                    ; #25370: <==negation-removal== 82214 (pos)
                    (not (not_at_a_p3))

                    ; #82214: <==negation-removal== 25370 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #25370: origin
                    (not_at_a_p3)

                    ; #63577: origin
                    (at_a_p4)

                    ; #75899: <==negation-removal== 63577 (pos)
                    (not (not_at_a_p4))

                    ; #82214: <==negation-removal== 25370 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #25370: origin
                    (not_at_a_p3)

                    ; #83728: origin
                    (at_a_p5)

                    ; #50683: <==negation-removal== 83728 (pos)
                    (not (not_at_a_p5))

                    ; #82214: <==negation-removal== 25370 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #25370: origin
                    (not_at_a_p3)

                    ; #71807: origin
                    (at_a_p6)

                    ; #20820: <==negation-removal== 71807 (pos)
                    (not (not_at_a_p6))

                    ; #82214: <==negation-removal== 25370 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #12648: origin
                    (at_a_p7)

                    ; #25370: origin
                    (not_at_a_p3)

                    ; #50407: <==negation-removal== 12648 (pos)
                    (not (not_at_a_p7))

                    ; #82214: <==negation-removal== 25370 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #25370: origin
                    (not_at_a_p3)

                    ; #37923: origin
                    (at_a_p8)

                    ; #40482: <==negation-removal== 37923 (pos)
                    (not (not_at_a_p8))

                    ; #82214: <==negation-removal== 25370 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #12147: origin
                    (at_a_p9)

                    ; #25370: origin
                    (not_at_a_p3)

                    ; #77322: <==negation-removal== 12147 (pos)
                    (not (not_at_a_p9))

                    ; #82214: <==negation-removal== 25370 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #32005: origin
                    (at_a_p1)

                    ; #75899: origin
                    (not_at_a_p4)

                    ; #21497: <==negation-removal== 32005 (pos)
                    (not (not_at_a_p1))

                    ; #63577: <==negation-removal== 75899 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #51113: origin
                    (at_a_p2)

                    ; #75899: origin
                    (not_at_a_p4)

                    ; #40956: <==negation-removal== 51113 (pos)
                    (not (not_at_a_p2))

                    ; #63577: <==negation-removal== 75899 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #75899: origin
                    (not_at_a_p4)

                    ; #82214: origin
                    (at_a_p3)

                    ; #25370: <==negation-removal== 82214 (pos)
                    (not (not_at_a_p3))

                    ; #63577: <==negation-removal== 75899 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #63577: origin
                    (at_a_p4)

                    ; #75899: origin
                    (not_at_a_p4)

                    ; #63577: <==negation-removal== 75899 (pos)
                    (not (at_a_p4))

                    ; #75899: <==negation-removal== 63577 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #75899: origin
                    (not_at_a_p4)

                    ; #83728: origin
                    (at_a_p5)

                    ; #50683: <==negation-removal== 83728 (pos)
                    (not (not_at_a_p5))

                    ; #63577: <==negation-removal== 75899 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #71807: origin
                    (at_a_p6)

                    ; #75899: origin
                    (not_at_a_p4)

                    ; #20820: <==negation-removal== 71807 (pos)
                    (not (not_at_a_p6))

                    ; #63577: <==negation-removal== 75899 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #12648: origin
                    (at_a_p7)

                    ; #75899: origin
                    (not_at_a_p4)

                    ; #50407: <==negation-removal== 12648 (pos)
                    (not (not_at_a_p7))

                    ; #63577: <==negation-removal== 75899 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #37923: origin
                    (at_a_p8)

                    ; #75899: origin
                    (not_at_a_p4)

                    ; #40482: <==negation-removal== 37923 (pos)
                    (not (not_at_a_p8))

                    ; #63577: <==negation-removal== 75899 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #12147: origin
                    (at_a_p9)

                    ; #75899: origin
                    (not_at_a_p4)

                    ; #63577: <==negation-removal== 75899 (pos)
                    (not (at_a_p4))

                    ; #77322: <==negation-removal== 12147 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #32005: origin
                    (at_a_p1)

                    ; #50683: origin
                    (not_at_a_p5)

                    ; #21497: <==negation-removal== 32005 (pos)
                    (not (not_at_a_p1))

                    ; #83728: <==negation-removal== 50683 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #50683: origin
                    (not_at_a_p5)

                    ; #51113: origin
                    (at_a_p2)

                    ; #40956: <==negation-removal== 51113 (pos)
                    (not (not_at_a_p2))

                    ; #83728: <==negation-removal== 50683 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #50683: origin
                    (not_at_a_p5)

                    ; #82214: origin
                    (at_a_p3)

                    ; #25370: <==negation-removal== 82214 (pos)
                    (not (not_at_a_p3))

                    ; #83728: <==negation-removal== 50683 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #50683: origin
                    (not_at_a_p5)

                    ; #63577: origin
                    (at_a_p4)

                    ; #75899: <==negation-removal== 63577 (pos)
                    (not (not_at_a_p4))

                    ; #83728: <==negation-removal== 50683 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #50683: origin
                    (not_at_a_p5)

                    ; #83728: origin
                    (at_a_p5)

                    ; #50683: <==negation-removal== 83728 (pos)
                    (not (not_at_a_p5))

                    ; #83728: <==negation-removal== 50683 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #50683: origin
                    (not_at_a_p5)

                    ; #71807: origin
                    (at_a_p6)

                    ; #20820: <==negation-removal== 71807 (pos)
                    (not (not_at_a_p6))

                    ; #83728: <==negation-removal== 50683 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #12648: origin
                    (at_a_p7)

                    ; #50683: origin
                    (not_at_a_p5)

                    ; #50407: <==negation-removal== 12648 (pos)
                    (not (not_at_a_p7))

                    ; #83728: <==negation-removal== 50683 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #37923: origin
                    (at_a_p8)

                    ; #50683: origin
                    (not_at_a_p5)

                    ; #40482: <==negation-removal== 37923 (pos)
                    (not (not_at_a_p8))

                    ; #83728: <==negation-removal== 50683 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #12147: origin
                    (at_a_p9)

                    ; #50683: origin
                    (not_at_a_p5)

                    ; #77322: <==negation-removal== 12147 (pos)
                    (not (not_at_a_p9))

                    ; #83728: <==negation-removal== 50683 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #20820: origin
                    (not_at_a_p6)

                    ; #32005: origin
                    (at_a_p1)

                    ; #21497: <==negation-removal== 32005 (pos)
                    (not (not_at_a_p1))

                    ; #71807: <==negation-removal== 20820 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #20820: origin
                    (not_at_a_p6)

                    ; #51113: origin
                    (at_a_p2)

                    ; #40956: <==negation-removal== 51113 (pos)
                    (not (not_at_a_p2))

                    ; #71807: <==negation-removal== 20820 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #20820: origin
                    (not_at_a_p6)

                    ; #82214: origin
                    (at_a_p3)

                    ; #25370: <==negation-removal== 82214 (pos)
                    (not (not_at_a_p3))

                    ; #71807: <==negation-removal== 20820 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #20820: origin
                    (not_at_a_p6)

                    ; #63577: origin
                    (at_a_p4)

                    ; #71807: <==negation-removal== 20820 (pos)
                    (not (at_a_p6))

                    ; #75899: <==negation-removal== 63577 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #20820: origin
                    (not_at_a_p6)

                    ; #83728: origin
                    (at_a_p5)

                    ; #50683: <==negation-removal== 83728 (pos)
                    (not (not_at_a_p5))

                    ; #71807: <==negation-removal== 20820 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #20820: origin
                    (not_at_a_p6)

                    ; #71807: origin
                    (at_a_p6)

                    ; #20820: <==negation-removal== 71807 (pos)
                    (not (not_at_a_p6))

                    ; #71807: <==negation-removal== 20820 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #12648: origin
                    (at_a_p7)

                    ; #20820: origin
                    (not_at_a_p6)

                    ; #50407: <==negation-removal== 12648 (pos)
                    (not (not_at_a_p7))

                    ; #71807: <==negation-removal== 20820 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #20820: origin
                    (not_at_a_p6)

                    ; #37923: origin
                    (at_a_p8)

                    ; #40482: <==negation-removal== 37923 (pos)
                    (not (not_at_a_p8))

                    ; #71807: <==negation-removal== 20820 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #12147: origin
                    (at_a_p9)

                    ; #20820: origin
                    (not_at_a_p6)

                    ; #71807: <==negation-removal== 20820 (pos)
                    (not (at_a_p6))

                    ; #77322: <==negation-removal== 12147 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #32005: origin
                    (at_a_p1)

                    ; #50407: origin
                    (not_at_a_p7)

                    ; #12648: <==negation-removal== 50407 (pos)
                    (not (at_a_p7))

                    ; #21497: <==negation-removal== 32005 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #50407: origin
                    (not_at_a_p7)

                    ; #51113: origin
                    (at_a_p2)

                    ; #12648: <==negation-removal== 50407 (pos)
                    (not (at_a_p7))

                    ; #40956: <==negation-removal== 51113 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #50407: origin
                    (not_at_a_p7)

                    ; #82214: origin
                    (at_a_p3)

                    ; #12648: <==negation-removal== 50407 (pos)
                    (not (at_a_p7))

                    ; #25370: <==negation-removal== 82214 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #50407: origin
                    (not_at_a_p7)

                    ; #63577: origin
                    (at_a_p4)

                    ; #12648: <==negation-removal== 50407 (pos)
                    (not (at_a_p7))

                    ; #75899: <==negation-removal== 63577 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #50407: origin
                    (not_at_a_p7)

                    ; #83728: origin
                    (at_a_p5)

                    ; #12648: <==negation-removal== 50407 (pos)
                    (not (at_a_p7))

                    ; #50683: <==negation-removal== 83728 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #50407: origin
                    (not_at_a_p7)

                    ; #71807: origin
                    (at_a_p6)

                    ; #12648: <==negation-removal== 50407 (pos)
                    (not (at_a_p7))

                    ; #20820: <==negation-removal== 71807 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #12648: origin
                    (at_a_p7)

                    ; #50407: origin
                    (not_at_a_p7)

                    ; #12648: <==negation-removal== 50407 (pos)
                    (not (at_a_p7))

                    ; #50407: <==negation-removal== 12648 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #37923: origin
                    (at_a_p8)

                    ; #50407: origin
                    (not_at_a_p7)

                    ; #12648: <==negation-removal== 50407 (pos)
                    (not (at_a_p7))

                    ; #40482: <==negation-removal== 37923 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #12147: origin
                    (at_a_p9)

                    ; #50407: origin
                    (not_at_a_p7)

                    ; #12648: <==negation-removal== 50407 (pos)
                    (not (at_a_p7))

                    ; #77322: <==negation-removal== 12147 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #32005: origin
                    (at_a_p1)

                    ; #40482: origin
                    (not_at_a_p8)

                    ; #21497: <==negation-removal== 32005 (pos)
                    (not (not_at_a_p1))

                    ; #37923: <==negation-removal== 40482 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #40482: origin
                    (not_at_a_p8)

                    ; #51113: origin
                    (at_a_p2)

                    ; #37923: <==negation-removal== 40482 (pos)
                    (not (at_a_p8))

                    ; #40956: <==negation-removal== 51113 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #40482: origin
                    (not_at_a_p8)

                    ; #82214: origin
                    (at_a_p3)

                    ; #25370: <==negation-removal== 82214 (pos)
                    (not (not_at_a_p3))

                    ; #37923: <==negation-removal== 40482 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #40482: origin
                    (not_at_a_p8)

                    ; #63577: origin
                    (at_a_p4)

                    ; #37923: <==negation-removal== 40482 (pos)
                    (not (at_a_p8))

                    ; #75899: <==negation-removal== 63577 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #40482: origin
                    (not_at_a_p8)

                    ; #83728: origin
                    (at_a_p5)

                    ; #37923: <==negation-removal== 40482 (pos)
                    (not (at_a_p8))

                    ; #50683: <==negation-removal== 83728 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #40482: origin
                    (not_at_a_p8)

                    ; #71807: origin
                    (at_a_p6)

                    ; #20820: <==negation-removal== 71807 (pos)
                    (not (not_at_a_p6))

                    ; #37923: <==negation-removal== 40482 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #12648: origin
                    (at_a_p7)

                    ; #40482: origin
                    (not_at_a_p8)

                    ; #37923: <==negation-removal== 40482 (pos)
                    (not (at_a_p8))

                    ; #50407: <==negation-removal== 12648 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #37923: origin
                    (at_a_p8)

                    ; #40482: origin
                    (not_at_a_p8)

                    ; #37923: <==negation-removal== 40482 (pos)
                    (not (at_a_p8))

                    ; #40482: <==negation-removal== 37923 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #12147: origin
                    (at_a_p9)

                    ; #40482: origin
                    (not_at_a_p8)

                    ; #37923: <==negation-removal== 40482 (pos)
                    (not (at_a_p8))

                    ; #77322: <==negation-removal== 12147 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #32005: origin
                    (at_a_p1)

                    ; #77322: origin
                    (not_at_a_p9)

                    ; #12147: <==negation-removal== 77322 (pos)
                    (not (at_a_p9))

                    ; #21497: <==negation-removal== 32005 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #51113: origin
                    (at_a_p2)

                    ; #77322: origin
                    (not_at_a_p9)

                    ; #12147: <==negation-removal== 77322 (pos)
                    (not (at_a_p9))

                    ; #40956: <==negation-removal== 51113 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #77322: origin
                    (not_at_a_p9)

                    ; #82214: origin
                    (at_a_p3)

                    ; #12147: <==negation-removal== 77322 (pos)
                    (not (at_a_p9))

                    ; #25370: <==negation-removal== 82214 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #63577: origin
                    (at_a_p4)

                    ; #77322: origin
                    (not_at_a_p9)

                    ; #12147: <==negation-removal== 77322 (pos)
                    (not (at_a_p9))

                    ; #75899: <==negation-removal== 63577 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #77322: origin
                    (not_at_a_p9)

                    ; #83728: origin
                    (at_a_p5)

                    ; #12147: <==negation-removal== 77322 (pos)
                    (not (at_a_p9))

                    ; #50683: <==negation-removal== 83728 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #71807: origin
                    (at_a_p6)

                    ; #77322: origin
                    (not_at_a_p9)

                    ; #12147: <==negation-removal== 77322 (pos)
                    (not (at_a_p9))

                    ; #20820: <==negation-removal== 71807 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #12648: origin
                    (at_a_p7)

                    ; #77322: origin
                    (not_at_a_p9)

                    ; #12147: <==negation-removal== 77322 (pos)
                    (not (at_a_p9))

                    ; #50407: <==negation-removal== 12648 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #37923: origin
                    (at_a_p8)

                    ; #77322: origin
                    (not_at_a_p9)

                    ; #12147: <==negation-removal== 77322 (pos)
                    (not (at_a_p9))

                    ; #40482: <==negation-removal== 37923 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #12147: origin
                    (at_a_p9)

                    ; #77322: origin
                    (not_at_a_p9)

                    ; #12147: <==negation-removal== 77322 (pos)
                    (not (at_a_p9))

                    ; #77322: <==negation-removal== 12147 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #48956: origin
                    (at_b_p1)

                    ; #79879: origin
                    (not_at_b_p1)

                    ; #48956: <==negation-removal== 79879 (pos)
                    (not (at_b_p1))

                    ; #79879: <==negation-removal== 48956 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #49566: origin
                    (at_b_p2)

                    ; #79879: origin
                    (not_at_b_p1)

                    ; #11884: <==negation-removal== 49566 (pos)
                    (not (not_at_b_p2))

                    ; #48956: <==negation-removal== 79879 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #19965: origin
                    (at_b_p3)

                    ; #79879: origin
                    (not_at_b_p1)

                    ; #48956: <==negation-removal== 79879 (pos)
                    (not (at_b_p1))

                    ; #87492: <==negation-removal== 19965 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #70705: origin
                    (at_b_p4)

                    ; #79879: origin
                    (not_at_b_p1)

                    ; #24260: <==negation-removal== 70705 (pos)
                    (not (not_at_b_p4))

                    ; #48956: <==negation-removal== 79879 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #79025: origin
                    (at_b_p5)

                    ; #79879: origin
                    (not_at_b_p1)

                    ; #11841: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p5))

                    ; #48956: <==negation-removal== 79879 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #62315: origin
                    (at_b_p6)

                    ; #79879: origin
                    (not_at_b_p1)

                    ; #30604: <==negation-removal== 62315 (pos)
                    (not (not_at_b_p6))

                    ; #48956: <==negation-removal== 79879 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #28424: origin
                    (at_b_p7)

                    ; #79879: origin
                    (not_at_b_p1)

                    ; #28631: <==negation-removal== 28424 (pos)
                    (not (not_at_b_p7))

                    ; #48956: <==negation-removal== 79879 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #59902: origin
                    (at_b_p8)

                    ; #79879: origin
                    (not_at_b_p1)

                    ; #48956: <==negation-removal== 79879 (pos)
                    (not (at_b_p1))

                    ; #60121: <==negation-removal== 59902 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #64643: origin
                    (at_b_p9)

                    ; #79879: origin
                    (not_at_b_p1)

                    ; #19223: <==negation-removal== 64643 (pos)
                    (not (not_at_b_p9))

                    ; #48956: <==negation-removal== 79879 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #11884: origin
                    (not_at_b_p2)

                    ; #48956: origin
                    (at_b_p1)

                    ; #49566: <==negation-removal== 11884 (pos)
                    (not (at_b_p2))

                    ; #79879: <==negation-removal== 48956 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #11884: origin
                    (not_at_b_p2)

                    ; #49566: origin
                    (at_b_p2)

                    ; #11884: <==negation-removal== 49566 (pos)
                    (not (not_at_b_p2))

                    ; #49566: <==negation-removal== 11884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #11884: origin
                    (not_at_b_p2)

                    ; #19965: origin
                    (at_b_p3)

                    ; #49566: <==negation-removal== 11884 (pos)
                    (not (at_b_p2))

                    ; #87492: <==negation-removal== 19965 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #11884: origin
                    (not_at_b_p2)

                    ; #70705: origin
                    (at_b_p4)

                    ; #24260: <==negation-removal== 70705 (pos)
                    (not (not_at_b_p4))

                    ; #49566: <==negation-removal== 11884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #11884: origin
                    (not_at_b_p2)

                    ; #79025: origin
                    (at_b_p5)

                    ; #11841: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p5))

                    ; #49566: <==negation-removal== 11884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #11884: origin
                    (not_at_b_p2)

                    ; #62315: origin
                    (at_b_p6)

                    ; #30604: <==negation-removal== 62315 (pos)
                    (not (not_at_b_p6))

                    ; #49566: <==negation-removal== 11884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #11884: origin
                    (not_at_b_p2)

                    ; #28424: origin
                    (at_b_p7)

                    ; #28631: <==negation-removal== 28424 (pos)
                    (not (not_at_b_p7))

                    ; #49566: <==negation-removal== 11884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #11884: origin
                    (not_at_b_p2)

                    ; #59902: origin
                    (at_b_p8)

                    ; #49566: <==negation-removal== 11884 (pos)
                    (not (at_b_p2))

                    ; #60121: <==negation-removal== 59902 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #11884: origin
                    (not_at_b_p2)

                    ; #64643: origin
                    (at_b_p9)

                    ; #19223: <==negation-removal== 64643 (pos)
                    (not (not_at_b_p9))

                    ; #49566: <==negation-removal== 11884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #48956: origin
                    (at_b_p1)

                    ; #87492: origin
                    (not_at_b_p3)

                    ; #19965: <==negation-removal== 87492 (pos)
                    (not (at_b_p3))

                    ; #79879: <==negation-removal== 48956 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #49566: origin
                    (at_b_p2)

                    ; #87492: origin
                    (not_at_b_p3)

                    ; #11884: <==negation-removal== 49566 (pos)
                    (not (not_at_b_p2))

                    ; #19965: <==negation-removal== 87492 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #19965: origin
                    (at_b_p3)

                    ; #87492: origin
                    (not_at_b_p3)

                    ; #19965: <==negation-removal== 87492 (pos)
                    (not (at_b_p3))

                    ; #87492: <==negation-removal== 19965 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #70705: origin
                    (at_b_p4)

                    ; #87492: origin
                    (not_at_b_p3)

                    ; #19965: <==negation-removal== 87492 (pos)
                    (not (at_b_p3))

                    ; #24260: <==negation-removal== 70705 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #79025: origin
                    (at_b_p5)

                    ; #87492: origin
                    (not_at_b_p3)

                    ; #11841: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p5))

                    ; #19965: <==negation-removal== 87492 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #62315: origin
                    (at_b_p6)

                    ; #87492: origin
                    (not_at_b_p3)

                    ; #19965: <==negation-removal== 87492 (pos)
                    (not (at_b_p3))

                    ; #30604: <==negation-removal== 62315 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #28424: origin
                    (at_b_p7)

                    ; #87492: origin
                    (not_at_b_p3)

                    ; #19965: <==negation-removal== 87492 (pos)
                    (not (at_b_p3))

                    ; #28631: <==negation-removal== 28424 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #59902: origin
                    (at_b_p8)

                    ; #87492: origin
                    (not_at_b_p3)

                    ; #19965: <==negation-removal== 87492 (pos)
                    (not (at_b_p3))

                    ; #60121: <==negation-removal== 59902 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #64643: origin
                    (at_b_p9)

                    ; #87492: origin
                    (not_at_b_p3)

                    ; #19223: <==negation-removal== 64643 (pos)
                    (not (not_at_b_p9))

                    ; #19965: <==negation-removal== 87492 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #24260: origin
                    (not_at_b_p4)

                    ; #48956: origin
                    (at_b_p1)

                    ; #70705: <==negation-removal== 24260 (pos)
                    (not (at_b_p4))

                    ; #79879: <==negation-removal== 48956 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #24260: origin
                    (not_at_b_p4)

                    ; #49566: origin
                    (at_b_p2)

                    ; #11884: <==negation-removal== 49566 (pos)
                    (not (not_at_b_p2))

                    ; #70705: <==negation-removal== 24260 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #19965: origin
                    (at_b_p3)

                    ; #24260: origin
                    (not_at_b_p4)

                    ; #70705: <==negation-removal== 24260 (pos)
                    (not (at_b_p4))

                    ; #87492: <==negation-removal== 19965 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #24260: origin
                    (not_at_b_p4)

                    ; #70705: origin
                    (at_b_p4)

                    ; #24260: <==negation-removal== 70705 (pos)
                    (not (not_at_b_p4))

                    ; #70705: <==negation-removal== 24260 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #24260: origin
                    (not_at_b_p4)

                    ; #79025: origin
                    (at_b_p5)

                    ; #11841: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p5))

                    ; #70705: <==negation-removal== 24260 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #24260: origin
                    (not_at_b_p4)

                    ; #62315: origin
                    (at_b_p6)

                    ; #30604: <==negation-removal== 62315 (pos)
                    (not (not_at_b_p6))

                    ; #70705: <==negation-removal== 24260 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #24260: origin
                    (not_at_b_p4)

                    ; #28424: origin
                    (at_b_p7)

                    ; #28631: <==negation-removal== 28424 (pos)
                    (not (not_at_b_p7))

                    ; #70705: <==negation-removal== 24260 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #24260: origin
                    (not_at_b_p4)

                    ; #59902: origin
                    (at_b_p8)

                    ; #60121: <==negation-removal== 59902 (pos)
                    (not (not_at_b_p8))

                    ; #70705: <==negation-removal== 24260 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #24260: origin
                    (not_at_b_p4)

                    ; #64643: origin
                    (at_b_p9)

                    ; #19223: <==negation-removal== 64643 (pos)
                    (not (not_at_b_p9))

                    ; #70705: <==negation-removal== 24260 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #11841: origin
                    (not_at_b_p5)

                    ; #48956: origin
                    (at_b_p1)

                    ; #79025: <==negation-removal== 11841 (pos)
                    (not (at_b_p5))

                    ; #79879: <==negation-removal== 48956 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #11841: origin
                    (not_at_b_p5)

                    ; #49566: origin
                    (at_b_p2)

                    ; #11884: <==negation-removal== 49566 (pos)
                    (not (not_at_b_p2))

                    ; #79025: <==negation-removal== 11841 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #11841: origin
                    (not_at_b_p5)

                    ; #19965: origin
                    (at_b_p3)

                    ; #79025: <==negation-removal== 11841 (pos)
                    (not (at_b_p5))

                    ; #87492: <==negation-removal== 19965 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #11841: origin
                    (not_at_b_p5)

                    ; #70705: origin
                    (at_b_p4)

                    ; #24260: <==negation-removal== 70705 (pos)
                    (not (not_at_b_p4))

                    ; #79025: <==negation-removal== 11841 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #11841: origin
                    (not_at_b_p5)

                    ; #79025: origin
                    (at_b_p5)

                    ; #11841: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p5))

                    ; #79025: <==negation-removal== 11841 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #11841: origin
                    (not_at_b_p5)

                    ; #62315: origin
                    (at_b_p6)

                    ; #30604: <==negation-removal== 62315 (pos)
                    (not (not_at_b_p6))

                    ; #79025: <==negation-removal== 11841 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #11841: origin
                    (not_at_b_p5)

                    ; #28424: origin
                    (at_b_p7)

                    ; #28631: <==negation-removal== 28424 (pos)
                    (not (not_at_b_p7))

                    ; #79025: <==negation-removal== 11841 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #11841: origin
                    (not_at_b_p5)

                    ; #59902: origin
                    (at_b_p8)

                    ; #60121: <==negation-removal== 59902 (pos)
                    (not (not_at_b_p8))

                    ; #79025: <==negation-removal== 11841 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #11841: origin
                    (not_at_b_p5)

                    ; #64643: origin
                    (at_b_p9)

                    ; #19223: <==negation-removal== 64643 (pos)
                    (not (not_at_b_p9))

                    ; #79025: <==negation-removal== 11841 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #30604: origin
                    (not_at_b_p6)

                    ; #48956: origin
                    (at_b_p1)

                    ; #62315: <==negation-removal== 30604 (pos)
                    (not (at_b_p6))

                    ; #79879: <==negation-removal== 48956 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #30604: origin
                    (not_at_b_p6)

                    ; #49566: origin
                    (at_b_p2)

                    ; #11884: <==negation-removal== 49566 (pos)
                    (not (not_at_b_p2))

                    ; #62315: <==negation-removal== 30604 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #19965: origin
                    (at_b_p3)

                    ; #30604: origin
                    (not_at_b_p6)

                    ; #62315: <==negation-removal== 30604 (pos)
                    (not (at_b_p6))

                    ; #87492: <==negation-removal== 19965 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #30604: origin
                    (not_at_b_p6)

                    ; #70705: origin
                    (at_b_p4)

                    ; #24260: <==negation-removal== 70705 (pos)
                    (not (not_at_b_p4))

                    ; #62315: <==negation-removal== 30604 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #30604: origin
                    (not_at_b_p6)

                    ; #79025: origin
                    (at_b_p5)

                    ; #11841: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p5))

                    ; #62315: <==negation-removal== 30604 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #30604: origin
                    (not_at_b_p6)

                    ; #62315: origin
                    (at_b_p6)

                    ; #30604: <==negation-removal== 62315 (pos)
                    (not (not_at_b_p6))

                    ; #62315: <==negation-removal== 30604 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #28424: origin
                    (at_b_p7)

                    ; #30604: origin
                    (not_at_b_p6)

                    ; #28631: <==negation-removal== 28424 (pos)
                    (not (not_at_b_p7))

                    ; #62315: <==negation-removal== 30604 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #30604: origin
                    (not_at_b_p6)

                    ; #59902: origin
                    (at_b_p8)

                    ; #60121: <==negation-removal== 59902 (pos)
                    (not (not_at_b_p8))

                    ; #62315: <==negation-removal== 30604 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #30604: origin
                    (not_at_b_p6)

                    ; #64643: origin
                    (at_b_p9)

                    ; #19223: <==negation-removal== 64643 (pos)
                    (not (not_at_b_p9))

                    ; #62315: <==negation-removal== 30604 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #28631: origin
                    (not_at_b_p7)

                    ; #48956: origin
                    (at_b_p1)

                    ; #28424: <==negation-removal== 28631 (pos)
                    (not (at_b_p7))

                    ; #79879: <==negation-removal== 48956 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #28631: origin
                    (not_at_b_p7)

                    ; #49566: origin
                    (at_b_p2)

                    ; #11884: <==negation-removal== 49566 (pos)
                    (not (not_at_b_p2))

                    ; #28424: <==negation-removal== 28631 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #19965: origin
                    (at_b_p3)

                    ; #28631: origin
                    (not_at_b_p7)

                    ; #28424: <==negation-removal== 28631 (pos)
                    (not (at_b_p7))

                    ; #87492: <==negation-removal== 19965 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #28631: origin
                    (not_at_b_p7)

                    ; #70705: origin
                    (at_b_p4)

                    ; #24260: <==negation-removal== 70705 (pos)
                    (not (not_at_b_p4))

                    ; #28424: <==negation-removal== 28631 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #28631: origin
                    (not_at_b_p7)

                    ; #79025: origin
                    (at_b_p5)

                    ; #11841: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p5))

                    ; #28424: <==negation-removal== 28631 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #28631: origin
                    (not_at_b_p7)

                    ; #62315: origin
                    (at_b_p6)

                    ; #28424: <==negation-removal== 28631 (pos)
                    (not (at_b_p7))

                    ; #30604: <==negation-removal== 62315 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #28424: origin
                    (at_b_p7)

                    ; #28631: origin
                    (not_at_b_p7)

                    ; #28424: <==negation-removal== 28631 (pos)
                    (not (at_b_p7))

                    ; #28631: <==negation-removal== 28424 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #28631: origin
                    (not_at_b_p7)

                    ; #59902: origin
                    (at_b_p8)

                    ; #28424: <==negation-removal== 28631 (pos)
                    (not (at_b_p7))

                    ; #60121: <==negation-removal== 59902 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #28631: origin
                    (not_at_b_p7)

                    ; #64643: origin
                    (at_b_p9)

                    ; #19223: <==negation-removal== 64643 (pos)
                    (not (not_at_b_p9))

                    ; #28424: <==negation-removal== 28631 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #48956: origin
                    (at_b_p1)

                    ; #60121: origin
                    (not_at_b_p8)

                    ; #59902: <==negation-removal== 60121 (pos)
                    (not (at_b_p8))

                    ; #79879: <==negation-removal== 48956 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #49566: origin
                    (at_b_p2)

                    ; #60121: origin
                    (not_at_b_p8)

                    ; #11884: <==negation-removal== 49566 (pos)
                    (not (not_at_b_p2))

                    ; #59902: <==negation-removal== 60121 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #19965: origin
                    (at_b_p3)

                    ; #60121: origin
                    (not_at_b_p8)

                    ; #59902: <==negation-removal== 60121 (pos)
                    (not (at_b_p8))

                    ; #87492: <==negation-removal== 19965 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #60121: origin
                    (not_at_b_p8)

                    ; #70705: origin
                    (at_b_p4)

                    ; #24260: <==negation-removal== 70705 (pos)
                    (not (not_at_b_p4))

                    ; #59902: <==negation-removal== 60121 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #60121: origin
                    (not_at_b_p8)

                    ; #79025: origin
                    (at_b_p5)

                    ; #11841: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p5))

                    ; #59902: <==negation-removal== 60121 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #60121: origin
                    (not_at_b_p8)

                    ; #62315: origin
                    (at_b_p6)

                    ; #30604: <==negation-removal== 62315 (pos)
                    (not (not_at_b_p6))

                    ; #59902: <==negation-removal== 60121 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #28424: origin
                    (at_b_p7)

                    ; #60121: origin
                    (not_at_b_p8)

                    ; #28631: <==negation-removal== 28424 (pos)
                    (not (not_at_b_p7))

                    ; #59902: <==negation-removal== 60121 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #59902: origin
                    (at_b_p8)

                    ; #60121: origin
                    (not_at_b_p8)

                    ; #59902: <==negation-removal== 60121 (pos)
                    (not (at_b_p8))

                    ; #60121: <==negation-removal== 59902 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #60121: origin
                    (not_at_b_p8)

                    ; #64643: origin
                    (at_b_p9)

                    ; #19223: <==negation-removal== 64643 (pos)
                    (not (not_at_b_p9))

                    ; #59902: <==negation-removal== 60121 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #19223: origin
                    (not_at_b_p9)

                    ; #48956: origin
                    (at_b_p1)

                    ; #64643: <==negation-removal== 19223 (pos)
                    (not (at_b_p9))

                    ; #79879: <==negation-removal== 48956 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #19223: origin
                    (not_at_b_p9)

                    ; #49566: origin
                    (at_b_p2)

                    ; #11884: <==negation-removal== 49566 (pos)
                    (not (not_at_b_p2))

                    ; #64643: <==negation-removal== 19223 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #19223: origin
                    (not_at_b_p9)

                    ; #19965: origin
                    (at_b_p3)

                    ; #64643: <==negation-removal== 19223 (pos)
                    (not (at_b_p9))

                    ; #87492: <==negation-removal== 19965 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #19223: origin
                    (not_at_b_p9)

                    ; #70705: origin
                    (at_b_p4)

                    ; #24260: <==negation-removal== 70705 (pos)
                    (not (not_at_b_p4))

                    ; #64643: <==negation-removal== 19223 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #19223: origin
                    (not_at_b_p9)

                    ; #79025: origin
                    (at_b_p5)

                    ; #11841: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p5))

                    ; #64643: <==negation-removal== 19223 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #19223: origin
                    (not_at_b_p9)

                    ; #62315: origin
                    (at_b_p6)

                    ; #30604: <==negation-removal== 62315 (pos)
                    (not (not_at_b_p6))

                    ; #64643: <==negation-removal== 19223 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #19223: origin
                    (not_at_b_p9)

                    ; #28424: origin
                    (at_b_p7)

                    ; #28631: <==negation-removal== 28424 (pos)
                    (not (not_at_b_p7))

                    ; #64643: <==negation-removal== 19223 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #19223: origin
                    (not_at_b_p9)

                    ; #59902: origin
                    (at_b_p8)

                    ; #60121: <==negation-removal== 59902 (pos)
                    (not (not_at_b_p8))

                    ; #64643: <==negation-removal== 19223 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #19223: origin
                    (not_at_b_p9)

                    ; #64643: origin
                    (at_b_p9)

                    ; #19223: <==negation-removal== 64643 (pos)
                    (not (not_at_b_p9))

                    ; #64643: <==negation-removal== 19223 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #22652: origin
                    (not_at_c_p1)

                    ; #30752: origin
                    (at_c_p1)

                    ; #22652: <==negation-removal== 30752 (pos)
                    (not (not_at_c_p1))

                    ; #30752: <==negation-removal== 22652 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #22652: origin
                    (not_at_c_p1)

                    ; #37333: origin
                    (at_c_p2)

                    ; #30752: <==negation-removal== 22652 (pos)
                    (not (at_c_p1))

                    ; #71366: <==negation-removal== 37333 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #14763: origin
                    (at_c_p3)

                    ; #22652: origin
                    (not_at_c_p1)

                    ; #30752: <==negation-removal== 22652 (pos)
                    (not (at_c_p1))

                    ; #68271: <==negation-removal== 14763 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #22652: origin
                    (not_at_c_p1)

                    ; #62737: origin
                    (at_c_p4)

                    ; #30752: <==negation-removal== 22652 (pos)
                    (not (at_c_p1))

                    ; #49207: <==negation-removal== 62737 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #22652: origin
                    (not_at_c_p1)

                    ; #76063: origin
                    (at_c_p5)

                    ; #30752: <==negation-removal== 22652 (pos)
                    (not (at_c_p1))

                    ; #32003: <==negation-removal== 76063 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #22652: origin
                    (not_at_c_p1)

                    ; #49703: origin
                    (at_c_p6)

                    ; #30752: <==negation-removal== 22652 (pos)
                    (not (at_c_p1))

                    ; #44424: <==negation-removal== 49703 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #17619: origin
                    (at_c_p7)

                    ; #22652: origin
                    (not_at_c_p1)

                    ; #14352: <==negation-removal== 17619 (pos)
                    (not (not_at_c_p7))

                    ; #30752: <==negation-removal== 22652 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #22652: origin
                    (not_at_c_p1)

                    ; #62463: origin
                    (at_c_p8)

                    ; #30752: <==negation-removal== 22652 (pos)
                    (not (at_c_p1))

                    ; #53912: <==negation-removal== 62463 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #22652: origin
                    (not_at_c_p1)

                    ; #24140: origin
                    (at_c_p9)

                    ; #30638: <==negation-removal== 24140 (pos)
                    (not (not_at_c_p9))

                    ; #30752: <==negation-removal== 22652 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #30752: origin
                    (at_c_p1)

                    ; #71366: origin
                    (not_at_c_p2)

                    ; #22652: <==negation-removal== 30752 (pos)
                    (not (not_at_c_p1))

                    ; #37333: <==negation-removal== 71366 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #37333: origin
                    (at_c_p2)

                    ; #71366: origin
                    (not_at_c_p2)

                    ; #37333: <==negation-removal== 71366 (pos)
                    (not (at_c_p2))

                    ; #71366: <==negation-removal== 37333 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #14763: origin
                    (at_c_p3)

                    ; #71366: origin
                    (not_at_c_p2)

                    ; #37333: <==negation-removal== 71366 (pos)
                    (not (at_c_p2))

                    ; #68271: <==negation-removal== 14763 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #62737: origin
                    (at_c_p4)

                    ; #71366: origin
                    (not_at_c_p2)

                    ; #37333: <==negation-removal== 71366 (pos)
                    (not (at_c_p2))

                    ; #49207: <==negation-removal== 62737 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #71366: origin
                    (not_at_c_p2)

                    ; #76063: origin
                    (at_c_p5)

                    ; #32003: <==negation-removal== 76063 (pos)
                    (not (not_at_c_p5))

                    ; #37333: <==negation-removal== 71366 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #49703: origin
                    (at_c_p6)

                    ; #71366: origin
                    (not_at_c_p2)

                    ; #37333: <==negation-removal== 71366 (pos)
                    (not (at_c_p2))

                    ; #44424: <==negation-removal== 49703 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #17619: origin
                    (at_c_p7)

                    ; #71366: origin
                    (not_at_c_p2)

                    ; #14352: <==negation-removal== 17619 (pos)
                    (not (not_at_c_p7))

                    ; #37333: <==negation-removal== 71366 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #62463: origin
                    (at_c_p8)

                    ; #71366: origin
                    (not_at_c_p2)

                    ; #37333: <==negation-removal== 71366 (pos)
                    (not (at_c_p2))

                    ; #53912: <==negation-removal== 62463 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #24140: origin
                    (at_c_p9)

                    ; #71366: origin
                    (not_at_c_p2)

                    ; #30638: <==negation-removal== 24140 (pos)
                    (not (not_at_c_p9))

                    ; #37333: <==negation-removal== 71366 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #30752: origin
                    (at_c_p1)

                    ; #68271: origin
                    (not_at_c_p3)

                    ; #14763: <==negation-removal== 68271 (pos)
                    (not (at_c_p3))

                    ; #22652: <==negation-removal== 30752 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #37333: origin
                    (at_c_p2)

                    ; #68271: origin
                    (not_at_c_p3)

                    ; #14763: <==negation-removal== 68271 (pos)
                    (not (at_c_p3))

                    ; #71366: <==negation-removal== 37333 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #14763: origin
                    (at_c_p3)

                    ; #68271: origin
                    (not_at_c_p3)

                    ; #14763: <==negation-removal== 68271 (pos)
                    (not (at_c_p3))

                    ; #68271: <==negation-removal== 14763 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #62737: origin
                    (at_c_p4)

                    ; #68271: origin
                    (not_at_c_p3)

                    ; #14763: <==negation-removal== 68271 (pos)
                    (not (at_c_p3))

                    ; #49207: <==negation-removal== 62737 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #68271: origin
                    (not_at_c_p3)

                    ; #76063: origin
                    (at_c_p5)

                    ; #14763: <==negation-removal== 68271 (pos)
                    (not (at_c_p3))

                    ; #32003: <==negation-removal== 76063 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #49703: origin
                    (at_c_p6)

                    ; #68271: origin
                    (not_at_c_p3)

                    ; #14763: <==negation-removal== 68271 (pos)
                    (not (at_c_p3))

                    ; #44424: <==negation-removal== 49703 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #17619: origin
                    (at_c_p7)

                    ; #68271: origin
                    (not_at_c_p3)

                    ; #14352: <==negation-removal== 17619 (pos)
                    (not (not_at_c_p7))

                    ; #14763: <==negation-removal== 68271 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #62463: origin
                    (at_c_p8)

                    ; #68271: origin
                    (not_at_c_p3)

                    ; #14763: <==negation-removal== 68271 (pos)
                    (not (at_c_p3))

                    ; #53912: <==negation-removal== 62463 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #24140: origin
                    (at_c_p9)

                    ; #68271: origin
                    (not_at_c_p3)

                    ; #14763: <==negation-removal== 68271 (pos)
                    (not (at_c_p3))

                    ; #30638: <==negation-removal== 24140 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #30752: origin
                    (at_c_p1)

                    ; #49207: origin
                    (not_at_c_p4)

                    ; #22652: <==negation-removal== 30752 (pos)
                    (not (not_at_c_p1))

                    ; #62737: <==negation-removal== 49207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #37333: origin
                    (at_c_p2)

                    ; #49207: origin
                    (not_at_c_p4)

                    ; #62737: <==negation-removal== 49207 (pos)
                    (not (at_c_p4))

                    ; #71366: <==negation-removal== 37333 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #14763: origin
                    (at_c_p3)

                    ; #49207: origin
                    (not_at_c_p4)

                    ; #62737: <==negation-removal== 49207 (pos)
                    (not (at_c_p4))

                    ; #68271: <==negation-removal== 14763 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #49207: origin
                    (not_at_c_p4)

                    ; #62737: origin
                    (at_c_p4)

                    ; #49207: <==negation-removal== 62737 (pos)
                    (not (not_at_c_p4))

                    ; #62737: <==negation-removal== 49207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #49207: origin
                    (not_at_c_p4)

                    ; #76063: origin
                    (at_c_p5)

                    ; #32003: <==negation-removal== 76063 (pos)
                    (not (not_at_c_p5))

                    ; #62737: <==negation-removal== 49207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #49207: origin
                    (not_at_c_p4)

                    ; #49703: origin
                    (at_c_p6)

                    ; #44424: <==negation-removal== 49703 (pos)
                    (not (not_at_c_p6))

                    ; #62737: <==negation-removal== 49207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #17619: origin
                    (at_c_p7)

                    ; #49207: origin
                    (not_at_c_p4)

                    ; #14352: <==negation-removal== 17619 (pos)
                    (not (not_at_c_p7))

                    ; #62737: <==negation-removal== 49207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #49207: origin
                    (not_at_c_p4)

                    ; #62463: origin
                    (at_c_p8)

                    ; #53912: <==negation-removal== 62463 (pos)
                    (not (not_at_c_p8))

                    ; #62737: <==negation-removal== 49207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #24140: origin
                    (at_c_p9)

                    ; #49207: origin
                    (not_at_c_p4)

                    ; #30638: <==negation-removal== 24140 (pos)
                    (not (not_at_c_p9))

                    ; #62737: <==negation-removal== 49207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #30752: origin
                    (at_c_p1)

                    ; #32003: origin
                    (not_at_c_p5)

                    ; #22652: <==negation-removal== 30752 (pos)
                    (not (not_at_c_p1))

                    ; #76063: <==negation-removal== 32003 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #32003: origin
                    (not_at_c_p5)

                    ; #37333: origin
                    (at_c_p2)

                    ; #71366: <==negation-removal== 37333 (pos)
                    (not (not_at_c_p2))

                    ; #76063: <==negation-removal== 32003 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #14763: origin
                    (at_c_p3)

                    ; #32003: origin
                    (not_at_c_p5)

                    ; #68271: <==negation-removal== 14763 (pos)
                    (not (not_at_c_p3))

                    ; #76063: <==negation-removal== 32003 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #32003: origin
                    (not_at_c_p5)

                    ; #62737: origin
                    (at_c_p4)

                    ; #49207: <==negation-removal== 62737 (pos)
                    (not (not_at_c_p4))

                    ; #76063: <==negation-removal== 32003 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #32003: origin
                    (not_at_c_p5)

                    ; #76063: origin
                    (at_c_p5)

                    ; #32003: <==negation-removal== 76063 (pos)
                    (not (not_at_c_p5))

                    ; #76063: <==negation-removal== 32003 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #32003: origin
                    (not_at_c_p5)

                    ; #49703: origin
                    (at_c_p6)

                    ; #44424: <==negation-removal== 49703 (pos)
                    (not (not_at_c_p6))

                    ; #76063: <==negation-removal== 32003 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #17619: origin
                    (at_c_p7)

                    ; #32003: origin
                    (not_at_c_p5)

                    ; #14352: <==negation-removal== 17619 (pos)
                    (not (not_at_c_p7))

                    ; #76063: <==negation-removal== 32003 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #32003: origin
                    (not_at_c_p5)

                    ; #62463: origin
                    (at_c_p8)

                    ; #53912: <==negation-removal== 62463 (pos)
                    (not (not_at_c_p8))

                    ; #76063: <==negation-removal== 32003 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #24140: origin
                    (at_c_p9)

                    ; #32003: origin
                    (not_at_c_p5)

                    ; #30638: <==negation-removal== 24140 (pos)
                    (not (not_at_c_p9))

                    ; #76063: <==negation-removal== 32003 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #30752: origin
                    (at_c_p1)

                    ; #44424: origin
                    (not_at_c_p6)

                    ; #22652: <==negation-removal== 30752 (pos)
                    (not (not_at_c_p1))

                    ; #49703: <==negation-removal== 44424 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #37333: origin
                    (at_c_p2)

                    ; #44424: origin
                    (not_at_c_p6)

                    ; #49703: <==negation-removal== 44424 (pos)
                    (not (at_c_p6))

                    ; #71366: <==negation-removal== 37333 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #14763: origin
                    (at_c_p3)

                    ; #44424: origin
                    (not_at_c_p6)

                    ; #49703: <==negation-removal== 44424 (pos)
                    (not (at_c_p6))

                    ; #68271: <==negation-removal== 14763 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #44424: origin
                    (not_at_c_p6)

                    ; #62737: origin
                    (at_c_p4)

                    ; #49207: <==negation-removal== 62737 (pos)
                    (not (not_at_c_p4))

                    ; #49703: <==negation-removal== 44424 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #44424: origin
                    (not_at_c_p6)

                    ; #76063: origin
                    (at_c_p5)

                    ; #32003: <==negation-removal== 76063 (pos)
                    (not (not_at_c_p5))

                    ; #49703: <==negation-removal== 44424 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #44424: origin
                    (not_at_c_p6)

                    ; #49703: origin
                    (at_c_p6)

                    ; #44424: <==negation-removal== 49703 (pos)
                    (not (not_at_c_p6))

                    ; #49703: <==negation-removal== 44424 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #17619: origin
                    (at_c_p7)

                    ; #44424: origin
                    (not_at_c_p6)

                    ; #14352: <==negation-removal== 17619 (pos)
                    (not (not_at_c_p7))

                    ; #49703: <==negation-removal== 44424 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #44424: origin
                    (not_at_c_p6)

                    ; #62463: origin
                    (at_c_p8)

                    ; #49703: <==negation-removal== 44424 (pos)
                    (not (at_c_p6))

                    ; #53912: <==negation-removal== 62463 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #24140: origin
                    (at_c_p9)

                    ; #44424: origin
                    (not_at_c_p6)

                    ; #30638: <==negation-removal== 24140 (pos)
                    (not (not_at_c_p9))

                    ; #49703: <==negation-removal== 44424 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #14352: origin
                    (not_at_c_p7)

                    ; #30752: origin
                    (at_c_p1)

                    ; #17619: <==negation-removal== 14352 (pos)
                    (not (at_c_p7))

                    ; #22652: <==negation-removal== 30752 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #14352: origin
                    (not_at_c_p7)

                    ; #37333: origin
                    (at_c_p2)

                    ; #17619: <==negation-removal== 14352 (pos)
                    (not (at_c_p7))

                    ; #71366: <==negation-removal== 37333 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #14352: origin
                    (not_at_c_p7)

                    ; #14763: origin
                    (at_c_p3)

                    ; #17619: <==negation-removal== 14352 (pos)
                    (not (at_c_p7))

                    ; #68271: <==negation-removal== 14763 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #14352: origin
                    (not_at_c_p7)

                    ; #62737: origin
                    (at_c_p4)

                    ; #17619: <==negation-removal== 14352 (pos)
                    (not (at_c_p7))

                    ; #49207: <==negation-removal== 62737 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #14352: origin
                    (not_at_c_p7)

                    ; #76063: origin
                    (at_c_p5)

                    ; #17619: <==negation-removal== 14352 (pos)
                    (not (at_c_p7))

                    ; #32003: <==negation-removal== 76063 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #14352: origin
                    (not_at_c_p7)

                    ; #49703: origin
                    (at_c_p6)

                    ; #17619: <==negation-removal== 14352 (pos)
                    (not (at_c_p7))

                    ; #44424: <==negation-removal== 49703 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #14352: origin
                    (not_at_c_p7)

                    ; #17619: origin
                    (at_c_p7)

                    ; #14352: <==negation-removal== 17619 (pos)
                    (not (not_at_c_p7))

                    ; #17619: <==negation-removal== 14352 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #14352: origin
                    (not_at_c_p7)

                    ; #62463: origin
                    (at_c_p8)

                    ; #17619: <==negation-removal== 14352 (pos)
                    (not (at_c_p7))

                    ; #53912: <==negation-removal== 62463 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #14352: origin
                    (not_at_c_p7)

                    ; #24140: origin
                    (at_c_p9)

                    ; #17619: <==negation-removal== 14352 (pos)
                    (not (at_c_p7))

                    ; #30638: <==negation-removal== 24140 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #30752: origin
                    (at_c_p1)

                    ; #53912: origin
                    (not_at_c_p8)

                    ; #22652: <==negation-removal== 30752 (pos)
                    (not (not_at_c_p1))

                    ; #62463: <==negation-removal== 53912 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #37333: origin
                    (at_c_p2)

                    ; #53912: origin
                    (not_at_c_p8)

                    ; #62463: <==negation-removal== 53912 (pos)
                    (not (at_c_p8))

                    ; #71366: <==negation-removal== 37333 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #14763: origin
                    (at_c_p3)

                    ; #53912: origin
                    (not_at_c_p8)

                    ; #62463: <==negation-removal== 53912 (pos)
                    (not (at_c_p8))

                    ; #68271: <==negation-removal== 14763 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #53912: origin
                    (not_at_c_p8)

                    ; #62737: origin
                    (at_c_p4)

                    ; #49207: <==negation-removal== 62737 (pos)
                    (not (not_at_c_p4))

                    ; #62463: <==negation-removal== 53912 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #53912: origin
                    (not_at_c_p8)

                    ; #76063: origin
                    (at_c_p5)

                    ; #32003: <==negation-removal== 76063 (pos)
                    (not (not_at_c_p5))

                    ; #62463: <==negation-removal== 53912 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #49703: origin
                    (at_c_p6)

                    ; #53912: origin
                    (not_at_c_p8)

                    ; #44424: <==negation-removal== 49703 (pos)
                    (not (not_at_c_p6))

                    ; #62463: <==negation-removal== 53912 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #17619: origin
                    (at_c_p7)

                    ; #53912: origin
                    (not_at_c_p8)

                    ; #14352: <==negation-removal== 17619 (pos)
                    (not (not_at_c_p7))

                    ; #62463: <==negation-removal== 53912 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #53912: origin
                    (not_at_c_p8)

                    ; #62463: origin
                    (at_c_p8)

                    ; #53912: <==negation-removal== 62463 (pos)
                    (not (not_at_c_p8))

                    ; #62463: <==negation-removal== 53912 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #24140: origin
                    (at_c_p9)

                    ; #53912: origin
                    (not_at_c_p8)

                    ; #30638: <==negation-removal== 24140 (pos)
                    (not (not_at_c_p9))

                    ; #62463: <==negation-removal== 53912 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #30638: origin
                    (not_at_c_p9)

                    ; #30752: origin
                    (at_c_p1)

                    ; #22652: <==negation-removal== 30752 (pos)
                    (not (not_at_c_p1))

                    ; #24140: <==negation-removal== 30638 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #30638: origin
                    (not_at_c_p9)

                    ; #37333: origin
                    (at_c_p2)

                    ; #24140: <==negation-removal== 30638 (pos)
                    (not (at_c_p9))

                    ; #71366: <==negation-removal== 37333 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #14763: origin
                    (at_c_p3)

                    ; #30638: origin
                    (not_at_c_p9)

                    ; #24140: <==negation-removal== 30638 (pos)
                    (not (at_c_p9))

                    ; #68271: <==negation-removal== 14763 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #30638: origin
                    (not_at_c_p9)

                    ; #62737: origin
                    (at_c_p4)

                    ; #24140: <==negation-removal== 30638 (pos)
                    (not (at_c_p9))

                    ; #49207: <==negation-removal== 62737 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #30638: origin
                    (not_at_c_p9)

                    ; #76063: origin
                    (at_c_p5)

                    ; #24140: <==negation-removal== 30638 (pos)
                    (not (at_c_p9))

                    ; #32003: <==negation-removal== 76063 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #30638: origin
                    (not_at_c_p9)

                    ; #49703: origin
                    (at_c_p6)

                    ; #24140: <==negation-removal== 30638 (pos)
                    (not (at_c_p9))

                    ; #44424: <==negation-removal== 49703 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #17619: origin
                    (at_c_p7)

                    ; #30638: origin
                    (not_at_c_p9)

                    ; #14352: <==negation-removal== 17619 (pos)
                    (not (not_at_c_p7))

                    ; #24140: <==negation-removal== 30638 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #30638: origin
                    (not_at_c_p9)

                    ; #62463: origin
                    (at_c_p8)

                    ; #24140: <==negation-removal== 30638 (pos)
                    (not (at_c_p9))

                    ; #53912: <==negation-removal== 62463 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #24140: origin
                    (at_c_p9)

                    ; #30638: origin
                    (not_at_c_p9)

                    ; #24140: <==negation-removal== 30638 (pos)
                    (not (at_c_p9))

                    ; #30638: <==negation-removal== 24140 (pos)
                    (not (not_at_c_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #53636: origin
                    (not_at_d_p1)

                    ; #78794: origin
                    (at_d_p1)

                    ; #53636: <==negation-removal== 78794 (pos)
                    (not (not_at_d_p1))

                    ; #78794: <==negation-removal== 53636 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #22938: origin
                    (at_d_p2)

                    ; #53636: origin
                    (not_at_d_p1)

                    ; #14017: <==negation-removal== 22938 (pos)
                    (not (not_at_d_p2))

                    ; #78794: <==negation-removal== 53636 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #19955: origin
                    (at_d_p3)

                    ; #53636: origin
                    (not_at_d_p1)

                    ; #23640: <==negation-removal== 19955 (pos)
                    (not (not_at_d_p3))

                    ; #78794: <==negation-removal== 53636 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #53636: origin
                    (not_at_d_p1)

                    ; #87032: origin
                    (at_d_p4)

                    ; #32378: <==negation-removal== 87032 (pos)
                    (not (not_at_d_p4))

                    ; #78794: <==negation-removal== 53636 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #53636: origin
                    (not_at_d_p1)

                    ; #59914: origin
                    (at_d_p5)

                    ; #33227: <==negation-removal== 59914 (pos)
                    (not (not_at_d_p5))

                    ; #78794: <==negation-removal== 53636 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #53636: origin
                    (not_at_d_p1)

                    ; #64212: origin
                    (at_d_p6)

                    ; #51572: <==negation-removal== 64212 (pos)
                    (not (not_at_d_p6))

                    ; #78794: <==negation-removal== 53636 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p7
        :precondition (and (at_d_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #30015: origin
                    (at_d_p7)

                    ; #53636: origin
                    (not_at_d_p1)

                    ; #18863: <==negation-removal== 30015 (pos)
                    (not (not_at_d_p7))

                    ; #78794: <==negation-removal== 53636 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #15839: origin
                    (at_d_p8)

                    ; #53636: origin
                    (not_at_d_p1)

                    ; #67895: <==negation-removal== 15839 (pos)
                    (not (not_at_d_p8))

                    ; #78794: <==negation-removal== 53636 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #47671: origin
                    (at_d_p9)

                    ; #53636: origin
                    (not_at_d_p1)

                    ; #24415: <==negation-removal== 47671 (pos)
                    (not (not_at_d_p9))

                    ; #78794: <==negation-removal== 53636 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #14017: origin
                    (not_at_d_p2)

                    ; #78794: origin
                    (at_d_p1)

                    ; #22938: <==negation-removal== 14017 (pos)
                    (not (at_d_p2))

                    ; #53636: <==negation-removal== 78794 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #14017: origin
                    (not_at_d_p2)

                    ; #22938: origin
                    (at_d_p2)

                    ; #14017: <==negation-removal== 22938 (pos)
                    (not (not_at_d_p2))

                    ; #22938: <==negation-removal== 14017 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #14017: origin
                    (not_at_d_p2)

                    ; #19955: origin
                    (at_d_p3)

                    ; #22938: <==negation-removal== 14017 (pos)
                    (not (at_d_p2))

                    ; #23640: <==negation-removal== 19955 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2))
        :effect (and
                    ; #14017: origin
                    (not_at_d_p2)

                    ; #87032: origin
                    (at_d_p4)

                    ; #22938: <==negation-removal== 14017 (pos)
                    (not (at_d_p2))

                    ; #32378: <==negation-removal== 87032 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_d_p2))
        :effect (and
                    ; #14017: origin
                    (not_at_d_p2)

                    ; #59914: origin
                    (at_d_p5)

                    ; #22938: <==negation-removal== 14017 (pos)
                    (not (at_d_p2))

                    ; #33227: <==negation-removal== 59914 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #14017: origin
                    (not_at_d_p2)

                    ; #64212: origin
                    (at_d_p6)

                    ; #22938: <==negation-removal== 14017 (pos)
                    (not (at_d_p2))

                    ; #51572: <==negation-removal== 64212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #14017: origin
                    (not_at_d_p2)

                    ; #30015: origin
                    (at_d_p7)

                    ; #18863: <==negation-removal== 30015 (pos)
                    (not (not_at_d_p7))

                    ; #22938: <==negation-removal== 14017 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #14017: origin
                    (not_at_d_p2)

                    ; #15839: origin
                    (at_d_p8)

                    ; #22938: <==negation-removal== 14017 (pos)
                    (not (at_d_p2))

                    ; #67895: <==negation-removal== 15839 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #14017: origin
                    (not_at_d_p2)

                    ; #47671: origin
                    (at_d_p9)

                    ; #22938: <==negation-removal== 14017 (pos)
                    (not (at_d_p2))

                    ; #24415: <==negation-removal== 47671 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (at_d_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #23640: origin
                    (not_at_d_p3)

                    ; #78794: origin
                    (at_d_p1)

                    ; #19955: <==negation-removal== 23640 (pos)
                    (not (at_d_p3))

                    ; #53636: <==negation-removal== 78794 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #22938: origin
                    (at_d_p2)

                    ; #23640: origin
                    (not_at_d_p3)

                    ; #14017: <==negation-removal== 22938 (pos)
                    (not (not_at_d_p2))

                    ; #19955: <==negation-removal== 23640 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #19955: origin
                    (at_d_p3)

                    ; #23640: origin
                    (not_at_d_p3)

                    ; #19955: <==negation-removal== 23640 (pos)
                    (not (at_d_p3))

                    ; #23640: <==negation-removal== 19955 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #23640: origin
                    (not_at_d_p3)

                    ; #87032: origin
                    (at_d_p4)

                    ; #19955: <==negation-removal== 23640 (pos)
                    (not (at_d_p3))

                    ; #32378: <==negation-removal== 87032 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #23640: origin
                    (not_at_d_p3)

                    ; #59914: origin
                    (at_d_p5)

                    ; #19955: <==negation-removal== 23640 (pos)
                    (not (at_d_p3))

                    ; #33227: <==negation-removal== 59914 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (at_d_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #23640: origin
                    (not_at_d_p3)

                    ; #64212: origin
                    (at_d_p6)

                    ; #19955: <==negation-removal== 23640 (pos)
                    (not (at_d_p3))

                    ; #51572: <==negation-removal== 64212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #23640: origin
                    (not_at_d_p3)

                    ; #30015: origin
                    (at_d_p7)

                    ; #18863: <==negation-removal== 30015 (pos)
                    (not (not_at_d_p7))

                    ; #19955: <==negation-removal== 23640 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #15839: origin
                    (at_d_p8)

                    ; #23640: origin
                    (not_at_d_p3)

                    ; #19955: <==negation-removal== 23640 (pos)
                    (not (at_d_p3))

                    ; #67895: <==negation-removal== 15839 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (at_d_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #23640: origin
                    (not_at_d_p3)

                    ; #47671: origin
                    (at_d_p9)

                    ; #19955: <==negation-removal== 23640 (pos)
                    (not (at_d_p3))

                    ; #24415: <==negation-removal== 47671 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_d_p4))
        :effect (and
                    ; #32378: origin
                    (not_at_d_p4)

                    ; #78794: origin
                    (at_d_p1)

                    ; #53636: <==negation-removal== 78794 (pos)
                    (not (not_at_d_p1))

                    ; #87032: <==negation-removal== 32378 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #22938: origin
                    (at_d_p2)

                    ; #32378: origin
                    (not_at_d_p4)

                    ; #14017: <==negation-removal== 22938 (pos)
                    (not (not_at_d_p2))

                    ; #87032: <==negation-removal== 32378 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #19955: origin
                    (at_d_p3)

                    ; #32378: origin
                    (not_at_d_p4)

                    ; #23640: <==negation-removal== 19955 (pos)
                    (not (not_at_d_p3))

                    ; #87032: <==negation-removal== 32378 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4))
        :effect (and
                    ; #32378: origin
                    (not_at_d_p4)

                    ; #87032: origin
                    (at_d_p4)

                    ; #32378: <==negation-removal== 87032 (pos)
                    (not (not_at_d_p4))

                    ; #87032: <==negation-removal== 32378 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #32378: origin
                    (not_at_d_p4)

                    ; #59914: origin
                    (at_d_p5)

                    ; #33227: <==negation-removal== 59914 (pos)
                    (not (not_at_d_p5))

                    ; #87032: <==negation-removal== 32378 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #32378: origin
                    (not_at_d_p4)

                    ; #64212: origin
                    (at_d_p6)

                    ; #51572: <==negation-removal== 64212 (pos)
                    (not (not_at_d_p6))

                    ; #87032: <==negation-removal== 32378 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_d_p4))
        :effect (and
                    ; #30015: origin
                    (at_d_p7)

                    ; #32378: origin
                    (not_at_d_p4)

                    ; #18863: <==negation-removal== 30015 (pos)
                    (not (not_at_d_p7))

                    ; #87032: <==negation-removal== 32378 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4))
        :effect (and
                    ; #15839: origin
                    (at_d_p8)

                    ; #32378: origin
                    (not_at_d_p4)

                    ; #67895: <==negation-removal== 15839 (pos)
                    (not (not_at_d_p8))

                    ; #87032: <==negation-removal== 32378 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #32378: origin
                    (not_at_d_p4)

                    ; #47671: origin
                    (at_d_p9)

                    ; #24415: <==negation-removal== 47671 (pos)
                    (not (not_at_d_p9))

                    ; #87032: <==negation-removal== 32378 (pos)
                    (not (at_d_p4))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #33227: origin
                    (not_at_d_p5)

                    ; #78794: origin
                    (at_d_p1)

                    ; #53636: <==negation-removal== 78794 (pos)
                    (not (not_at_d_p1))

                    ; #59914: <==negation-removal== 33227 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (at_d_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #22938: origin
                    (at_d_p2)

                    ; #33227: origin
                    (not_at_d_p5)

                    ; #14017: <==negation-removal== 22938 (pos)
                    (not (not_at_d_p2))

                    ; #59914: <==negation-removal== 33227 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #19955: origin
                    (at_d_p3)

                    ; #33227: origin
                    (not_at_d_p5)

                    ; #23640: <==negation-removal== 19955 (pos)
                    (not (not_at_d_p3))

                    ; #59914: <==negation-removal== 33227 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p4
        :precondition (and (at_d_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #33227: origin
                    (not_at_d_p5)

                    ; #87032: origin
                    (at_d_p4)

                    ; #32378: <==negation-removal== 87032 (pos)
                    (not (not_at_d_p4))

                    ; #59914: <==negation-removal== 33227 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #33227: origin
                    (not_at_d_p5)

                    ; #59914: origin
                    (at_d_p5)

                    ; #33227: <==negation-removal== 59914 (pos)
                    (not (not_at_d_p5))

                    ; #59914: <==negation-removal== 33227 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #33227: origin
                    (not_at_d_p5)

                    ; #64212: origin
                    (at_d_p6)

                    ; #51572: <==negation-removal== 64212 (pos)
                    (not (not_at_d_p6))

                    ; #59914: <==negation-removal== 33227 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #30015: origin
                    (at_d_p7)

                    ; #33227: origin
                    (not_at_d_p5)

                    ; #18863: <==negation-removal== 30015 (pos)
                    (not (not_at_d_p7))

                    ; #59914: <==negation-removal== 33227 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (at_d_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #15839: origin
                    (at_d_p8)

                    ; #33227: origin
                    (not_at_d_p5)

                    ; #59914: <==negation-removal== 33227 (pos)
                    (not (at_d_p5))

                    ; #67895: <==negation-removal== 15839 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #33227: origin
                    (not_at_d_p5)

                    ; #47671: origin
                    (at_d_p9)

                    ; #24415: <==negation-removal== 47671 (pos)
                    (not (not_at_d_p9))

                    ; #59914: <==negation-removal== 33227 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #51572: origin
                    (not_at_d_p6)

                    ; #78794: origin
                    (at_d_p1)

                    ; #53636: <==negation-removal== 78794 (pos)
                    (not (not_at_d_p1))

                    ; #64212: <==negation-removal== 51572 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #22938: origin
                    (at_d_p2)

                    ; #51572: origin
                    (not_at_d_p6)

                    ; #14017: <==negation-removal== 22938 (pos)
                    (not (not_at_d_p2))

                    ; #64212: <==negation-removal== 51572 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6))
        :effect (and
                    ; #19955: origin
                    (at_d_p3)

                    ; #51572: origin
                    (not_at_d_p6)

                    ; #23640: <==negation-removal== 19955 (pos)
                    (not (not_at_d_p3))

                    ; #64212: <==negation-removal== 51572 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6))
        :effect (and
                    ; #51572: origin
                    (not_at_d_p6)

                    ; #87032: origin
                    (at_d_p4)

                    ; #32378: <==negation-removal== 87032 (pos)
                    (not (not_at_d_p4))

                    ; #64212: <==negation-removal== 51572 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #51572: origin
                    (not_at_d_p6)

                    ; #59914: origin
                    (at_d_p5)

                    ; #33227: <==negation-removal== 59914 (pos)
                    (not (not_at_d_p5))

                    ; #64212: <==negation-removal== 51572 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #51572: origin
                    (not_at_d_p6)

                    ; #64212: origin
                    (at_d_p6)

                    ; #51572: <==negation-removal== 64212 (pos)
                    (not (not_at_d_p6))

                    ; #64212: <==negation-removal== 51572 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #30015: origin
                    (at_d_p7)

                    ; #51572: origin
                    (not_at_d_p6)

                    ; #18863: <==negation-removal== 30015 (pos)
                    (not (not_at_d_p7))

                    ; #64212: <==negation-removal== 51572 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #15839: origin
                    (at_d_p8)

                    ; #51572: origin
                    (not_at_d_p6)

                    ; #64212: <==negation-removal== 51572 (pos)
                    (not (at_d_p6))

                    ; #67895: <==negation-removal== 15839 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #47671: origin
                    (at_d_p9)

                    ; #51572: origin
                    (not_at_d_p6)

                    ; #24415: <==negation-removal== 47671 (pos)
                    (not (not_at_d_p9))

                    ; #64212: <==negation-removal== 51572 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #18863: origin
                    (not_at_d_p7)

                    ; #78794: origin
                    (at_d_p1)

                    ; #30015: <==negation-removal== 18863 (pos)
                    (not (at_d_p7))

                    ; #53636: <==negation-removal== 78794 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #18863: origin
                    (not_at_d_p7)

                    ; #22938: origin
                    (at_d_p2)

                    ; #14017: <==negation-removal== 22938 (pos)
                    (not (not_at_d_p2))

                    ; #30015: <==negation-removal== 18863 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #18863: origin
                    (not_at_d_p7)

                    ; #19955: origin
                    (at_d_p3)

                    ; #23640: <==negation-removal== 19955 (pos)
                    (not (not_at_d_p3))

                    ; #30015: <==negation-removal== 18863 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #18863: origin
                    (not_at_d_p7)

                    ; #87032: origin
                    (at_d_p4)

                    ; #30015: <==negation-removal== 18863 (pos)
                    (not (at_d_p7))

                    ; #32378: <==negation-removal== 87032 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #18863: origin
                    (not_at_d_p7)

                    ; #59914: origin
                    (at_d_p5)

                    ; #30015: <==negation-removal== 18863 (pos)
                    (not (at_d_p7))

                    ; #33227: <==negation-removal== 59914 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #18863: origin
                    (not_at_d_p7)

                    ; #64212: origin
                    (at_d_p6)

                    ; #30015: <==negation-removal== 18863 (pos)
                    (not (at_d_p7))

                    ; #51572: <==negation-removal== 64212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7))
        :effect (and
                    ; #18863: origin
                    (not_at_d_p7)

                    ; #30015: origin
                    (at_d_p7)

                    ; #18863: <==negation-removal== 30015 (pos)
                    (not (not_at_d_p7))

                    ; #30015: <==negation-removal== 18863 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #15839: origin
                    (at_d_p8)

                    ; #18863: origin
                    (not_at_d_p7)

                    ; #30015: <==negation-removal== 18863 (pos)
                    (not (at_d_p7))

                    ; #67895: <==negation-removal== 15839 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #18863: origin
                    (not_at_d_p7)

                    ; #47671: origin
                    (at_d_p9)

                    ; #24415: <==negation-removal== 47671 (pos)
                    (not (not_at_d_p9))

                    ; #30015: <==negation-removal== 18863 (pos)
                    (not (at_d_p7))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #67895: origin
                    (not_at_d_p8)

                    ; #78794: origin
                    (at_d_p1)

                    ; #15839: <==negation-removal== 67895 (pos)
                    (not (at_d_p8))

                    ; #53636: <==negation-removal== 78794 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_d_p8))
        :effect (and
                    ; #22938: origin
                    (at_d_p2)

                    ; #67895: origin
                    (not_at_d_p8)

                    ; #14017: <==negation-removal== 22938 (pos)
                    (not (not_at_d_p2))

                    ; #15839: <==negation-removal== 67895 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8))
        :effect (and
                    ; #19955: origin
                    (at_d_p3)

                    ; #67895: origin
                    (not_at_d_p8)

                    ; #15839: <==negation-removal== 67895 (pos)
                    (not (at_d_p8))

                    ; #23640: <==negation-removal== 19955 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_d_p8))
        :effect (and
                    ; #67895: origin
                    (not_at_d_p8)

                    ; #87032: origin
                    (at_d_p4)

                    ; #15839: <==negation-removal== 67895 (pos)
                    (not (at_d_p8))

                    ; #32378: <==negation-removal== 87032 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8))
        :effect (and
                    ; #59914: origin
                    (at_d_p5)

                    ; #67895: origin
                    (not_at_d_p8)

                    ; #15839: <==negation-removal== 67895 (pos)
                    (not (at_d_p8))

                    ; #33227: <==negation-removal== 59914 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_d_p8))
        :effect (and
                    ; #64212: origin
                    (at_d_p6)

                    ; #67895: origin
                    (not_at_d_p8)

                    ; #15839: <==negation-removal== 67895 (pos)
                    (not (at_d_p8))

                    ; #51572: <==negation-removal== 64212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #30015: origin
                    (at_d_p7)

                    ; #67895: origin
                    (not_at_d_p8)

                    ; #15839: <==negation-removal== 67895 (pos)
                    (not (at_d_p8))

                    ; #18863: <==negation-removal== 30015 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8))
        :effect (and
                    ; #15839: origin
                    (at_d_p8)

                    ; #67895: origin
                    (not_at_d_p8)

                    ; #15839: <==negation-removal== 67895 (pos)
                    (not (at_d_p8))

                    ; #67895: <==negation-removal== 15839 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #47671: origin
                    (at_d_p9)

                    ; #67895: origin
                    (not_at_d_p8)

                    ; #15839: <==negation-removal== 67895 (pos)
                    (not (at_d_p8))

                    ; #24415: <==negation-removal== 47671 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9))
        :effect (and
                    ; #24415: origin
                    (not_at_d_p9)

                    ; #78794: origin
                    (at_d_p1)

                    ; #47671: <==negation-removal== 24415 (pos)
                    (not (at_d_p9))

                    ; #53636: <==negation-removal== 78794 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9))
        :effect (and
                    ; #22938: origin
                    (at_d_p2)

                    ; #24415: origin
                    (not_at_d_p9)

                    ; #14017: <==negation-removal== 22938 (pos)
                    (not (not_at_d_p2))

                    ; #47671: <==negation-removal== 24415 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9))
        :effect (and
                    ; #19955: origin
                    (at_d_p3)

                    ; #24415: origin
                    (not_at_d_p9)

                    ; #23640: <==negation-removal== 19955 (pos)
                    (not (not_at_d_p3))

                    ; #47671: <==negation-removal== 24415 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_d_p9))
        :effect (and
                    ; #24415: origin
                    (not_at_d_p9)

                    ; #87032: origin
                    (at_d_p4)

                    ; #32378: <==negation-removal== 87032 (pos)
                    (not (not_at_d_p4))

                    ; #47671: <==negation-removal== 24415 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_d_p9))
        :effect (and
                    ; #24415: origin
                    (not_at_d_p9)

                    ; #59914: origin
                    (at_d_p5)

                    ; #33227: <==negation-removal== 59914 (pos)
                    (not (not_at_d_p5))

                    ; #47671: <==negation-removal== 24415 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9))
        :effect (and
                    ; #24415: origin
                    (not_at_d_p9)

                    ; #64212: origin
                    (at_d_p6)

                    ; #47671: <==negation-removal== 24415 (pos)
                    (not (at_d_p9))

                    ; #51572: <==negation-removal== 64212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_d_p9))
        :effect (and
                    ; #24415: origin
                    (not_at_d_p9)

                    ; #30015: origin
                    (at_d_p7)

                    ; #18863: <==negation-removal== 30015 (pos)
                    (not (not_at_d_p7))

                    ; #47671: <==negation-removal== 24415 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_d_p9))
        :effect (and
                    ; #15839: origin
                    (at_d_p8)

                    ; #24415: origin
                    (not_at_d_p9)

                    ; #47671: <==negation-removal== 24415 (pos)
                    (not (at_d_p9))

                    ; #67895: <==negation-removal== 15839 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9))
        :effect (and
                    ; #24415: origin
                    (not_at_d_p9)

                    ; #47671: origin
                    (at_d_p9)

                    ; #24415: <==negation-removal== 47671 (pos)
                    (not (not_at_d_p9))

                    ; #47671: <==negation-removal== 24415 (pos)
                    (not (at_d_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12520: <==commonly_known== 19548 (pos)
                    (Bc_checked_p1)

                    ; #19548: origin
                    (checked_p1)

                    ; #20804: <==commonly_known== 60165 (neg)
                    (Pb_checked_p1)

                    ; #25540: <==commonly_known== 60165 (neg)
                    (Pd_checked_p1)

                    ; #29560: <==commonly_known== 60165 (neg)
                    (Pc_checked_p1)

                    ; #45580: <==closure== 83658 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #46402: <==commonly_known== 60165 (neg)
                    (Pa_checked_p1)

                    ; #53093: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #61264: <==closure== 53093 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #61453: <==commonly_known== 19548 (pos)
                    (Ba_checked_p1)

                    ; #74037: <==commonly_known== 19548 (pos)
                    (Bd_checked_p1)

                    ; #83043: <==commonly_known== 19548 (pos)
                    (Bb_checked_p1)

                    ; #83658: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #15758: <==uncertain_firing== 53093 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #16309: <==negation-removal== 83043 (pos)
                    (not (Pb_not_checked_p1))

                    ; #17558: <==negation-removal== 61264 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #34238: <==negation-removal== 20804 (pos)
                    (not (Bb_not_checked_p1))

                    ; #36131: <==negation-removal== 83658 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #50355: <==negation-removal== 45580 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #51956: <==negation-removal== 61453 (pos)
                    (not (Pa_not_checked_p1))

                    ; #56191: <==uncertain_firing== 45580 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #60165: <==negation-removal== 19548 (pos)
                    (not (not_checked_p1))

                    ; #61994: <==uncertain_firing== 83658 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #64611: <==negation-removal== 46402 (pos)
                    (not (Ba_not_checked_p1))

                    ; #70015: <==negation-removal== 12520 (pos)
                    (not (Pc_not_checked_p1))

                    ; #70155: <==negation-removal== 53093 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #72709: <==negation-removal== 74037 (pos)
                    (not (Pd_not_checked_p1))

                    ; #81600: <==uncertain_firing== 61264 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #92015: <==negation-removal== 29560 (pos)
                    (not (Bc_not_checked_p1))

                    ; #97384: <==negation-removal== 25540 (pos)
                    (not (Bd_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11460: <==commonly_known== 65103 (neg)
                    (Pc_checked_p2)

                    ; #12287: <==commonly_known== 65103 (neg)
                    (Pd_checked_p2)

                    ; #14102: origin
                    (checked_p2)

                    ; #15716: <==commonly_known== 14102 (pos)
                    (Bc_checked_p2)

                    ; #18559: <==commonly_known== 14102 (pos)
                    (Bb_checked_p2)

                    ; #20015: <==commonly_known== 14102 (pos)
                    (Ba_checked_p2)

                    ; #23113: <==commonly_known== 65103 (neg)
                    (Pb_checked_p2)

                    ; #30308: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #53646: <==commonly_known== 65103 (neg)
                    (Pa_checked_p2)

                    ; #62408: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #74606: <==closure== 62408 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #77261: <==commonly_known== 14102 (pos)
                    (Bd_checked_p2)

                    ; #77452: <==closure== 30308 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #12606: <==uncertain_firing== 77452 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #18272: <==negation-removal== 77452 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #21442: <==negation-removal== 20015 (pos)
                    (not (Pa_not_checked_p2))

                    ; #24447: <==uncertain_firing== 62408 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #45422: <==negation-removal== 62408 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #45532: <==negation-removal== 53646 (pos)
                    (not (Ba_not_checked_p2))

                    ; #46827: <==negation-removal== 12287 (pos)
                    (not (Bd_not_checked_p2))

                    ; #48377: <==negation-removal== 23113 (pos)
                    (not (Bb_not_checked_p2))

                    ; #48946: <==uncertain_firing== 30308 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #58060: <==negation-removal== 11460 (pos)
                    (not (Bc_not_checked_p2))

                    ; #63320: <==negation-removal== 18559 (pos)
                    (not (Pb_not_checked_p2))

                    ; #65103: <==negation-removal== 14102 (pos)
                    (not (not_checked_p2))

                    ; #70582: <==negation-removal== 74606 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #73545: <==uncertain_firing== 74606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #79187: <==negation-removal== 77261 (pos)
                    (not (Pd_not_checked_p2))

                    ; #83139: <==negation-removal== 30308 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #88517: <==negation-removal== 15716 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17882: <==commonly_known== 37750 (pos)
                    (Bb_checked_p3)

                    ; #20468: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #29690: <==commonly_known== 64779 (neg)
                    (Pb_checked_p3)

                    ; #32870: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #37750: origin
                    (checked_p3)

                    ; #39730: <==commonly_known== 37750 (pos)
                    (Bc_checked_p3)

                    ; #40302: <==commonly_known== 64779 (neg)
                    (Pc_checked_p3)

                    ; #45017: <==commonly_known== 37750 (pos)
                    (Bd_checked_p3)

                    ; #45276: <==commonly_known== 37750 (pos)
                    (Ba_checked_p3)

                    ; #68340: <==commonly_known== 64779 (neg)
                    (Pd_checked_p3)

                    ; #76499: <==closure== 32870 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #82958: <==closure== 20468 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #83528: <==commonly_known== 64779 (neg)
                    (Pa_checked_p3)

                    ; #12663: <==uncertain_firing== 82958 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #22963: <==negation-removal== 68340 (pos)
                    (not (Bd_not_checked_p3))

                    ; #29455: <==negation-removal== 39730 (pos)
                    (not (Pc_not_checked_p3))

                    ; #30572: <==uncertain_firing== 76499 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #31363: <==uncertain_firing== 32870 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #37254: <==negation-removal== 40302 (pos)
                    (not (Bc_not_checked_p3))

                    ; #37361: <==negation-removal== 83528 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45692: <==negation-removal== 45276 (pos)
                    (not (Pa_not_checked_p3))

                    ; #46509: <==negation-removal== 20468 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #46823: <==uncertain_firing== 20468 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #52192: <==negation-removal== 82958 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #57488: <==negation-removal== 29690 (pos)
                    (not (Bb_not_checked_p3))

                    ; #60023: <==negation-removal== 17882 (pos)
                    (not (Pb_not_checked_p3))

                    ; #62560: <==negation-removal== 32870 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #64779: <==negation-removal== 37750 (pos)
                    (not (not_checked_p3))

                    ; #71818: <==negation-removal== 45017 (pos)
                    (not (Pd_not_checked_p3))

                    ; #82421: <==negation-removal== 76499 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12617: origin
                    (checked_p4)

                    ; #18968: <==commonly_known== 36839 (neg)
                    (Pa_checked_p4)

                    ; #20037: <==closure== 34268 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #33733: <==commonly_known== 36839 (neg)
                    (Pd_checked_p4)

                    ; #34268: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #38642: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #39467: <==commonly_known== 36839 (neg)
                    (Pb_checked_p4)

                    ; #45441: <==commonly_known== 12617 (pos)
                    (Bb_checked_p4)

                    ; #46984: <==commonly_known== 36839 (neg)
                    (Pc_checked_p4)

                    ; #52819: <==commonly_known== 12617 (pos)
                    (Bc_checked_p4)

                    ; #73240: <==commonly_known== 12617 (pos)
                    (Bd_checked_p4)

                    ; #89754: <==commonly_known== 12617 (pos)
                    (Ba_checked_p4)

                    ; #99595: <==closure== 38642 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #14276: <==negation-removal== 20037 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #16178: <==negation-removal== 18968 (pos)
                    (not (Ba_not_checked_p4))

                    ; #26996: <==negation-removal== 89754 (pos)
                    (not (Pa_not_checked_p4))

                    ; #36839: <==negation-removal== 12617 (pos)
                    (not (not_checked_p4))

                    ; #38752: <==uncertain_firing== 38642 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #50467: <==negation-removal== 33733 (pos)
                    (not (Bd_not_checked_p4))

                    ; #52765: <==negation-removal== 52819 (pos)
                    (not (Pc_not_checked_p4))

                    ; #54227: <==negation-removal== 99595 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #56875: <==uncertain_firing== 20037 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #58565: <==uncertain_firing== 99595 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #72371: <==negation-removal== 73240 (pos)
                    (not (Pd_not_checked_p4))

                    ; #76347: <==uncertain_firing== 34268 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #78974: <==negation-removal== 45441 (pos)
                    (not (Pb_not_checked_p4))

                    ; #79926: <==negation-removal== 38642 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #82427: <==negation-removal== 39467 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86805: <==negation-removal== 46984 (pos)
                    (not (Bc_not_checked_p4))

                    ; #90178: <==negation-removal== 34268 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13526: <==closure== 76732 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #14347: <==commonly_known== 40591 (neg)
                    (Pc_checked_p5)

                    ; #18595: <==commonly_known== 40591 (neg)
                    (Pd_checked_p5)

                    ; #19551: <==commonly_known== 92119 (pos)
                    (Bd_checked_p5)

                    ; #23928: <==commonly_known== 92119 (pos)
                    (Bc_checked_p5)

                    ; #32400: <==commonly_known== 92119 (pos)
                    (Bb_checked_p5)

                    ; #36551: <==commonly_known== 40591 (neg)
                    (Pb_checked_p5)

                    ; #37337: <==commonly_known== 92119 (pos)
                    (Ba_checked_p5)

                    ; #37486: <==commonly_known== 40591 (neg)
                    (Pa_checked_p5)

                    ; #43661: <==closure== 87106 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #76732: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #87106: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #92119: origin
                    (checked_p5)

                    ; #10797: <==negation-removal== 18595 (pos)
                    (not (Bd_not_checked_p5))

                    ; #12595: <==uncertain_firing== 13526 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #23739: <==negation-removal== 37486 (pos)
                    (not (Ba_not_checked_p5))

                    ; #30998: <==negation-removal== 32400 (pos)
                    (not (Pb_not_checked_p5))

                    ; #32933: <==negation-removal== 76732 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #33933: <==uncertain_firing== 87106 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #37784: <==negation-removal== 43661 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #40591: <==negation-removal== 92119 (pos)
                    (not (not_checked_p5))

                    ; #48735: <==uncertain_firing== 43661 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #52263: <==negation-removal== 87106 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #56454: <==negation-removal== 37337 (pos)
                    (not (Pa_not_checked_p5))

                    ; #60563: <==negation-removal== 23928 (pos)
                    (not (Pc_not_checked_p5))

                    ; #62076: <==negation-removal== 13526 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63192: <==uncertain_firing== 76732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #77240: <==negation-removal== 36551 (pos)
                    (not (Bb_not_checked_p5))

                    ; #88523: <==negation-removal== 14347 (pos)
                    (not (Bc_not_checked_p5))

                    ; #96170: <==negation-removal== 19551 (pos)
                    (not (Pd_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10871: <==commonly_known== 76363 (pos)
                    (Bd_checked_p6)

                    ; #11064: <==closure== 20627 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #13280: <==closure== 21707 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #20627: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #21707: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #31717: <==commonly_known== 84097 (neg)
                    (Pb_checked_p6)

                    ; #40479: <==commonly_known== 76363 (pos)
                    (Bc_checked_p6)

                    ; #43718: <==commonly_known== 84097 (neg)
                    (Pc_checked_p6)

                    ; #53945: <==commonly_known== 76363 (pos)
                    (Bb_checked_p6)

                    ; #55296: <==commonly_known== 84097 (neg)
                    (Pa_checked_p6)

                    ; #58104: <==commonly_known== 84097 (neg)
                    (Pd_checked_p6)

                    ; #71378: <==commonly_known== 76363 (pos)
                    (Ba_checked_p6)

                    ; #76363: origin
                    (checked_p6)

                    ; #15744: <==negation-removal== 53945 (pos)
                    (not (Pb_not_checked_p6))

                    ; #23331: <==uncertain_firing== 11064 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #27534: <==uncertain_firing== 20627 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #33346: <==negation-removal== 71378 (pos)
                    (not (Pa_not_checked_p6))

                    ; #43114: <==negation-removal== 58104 (pos)
                    (not (Bd_not_checked_p6))

                    ; #54460: <==negation-removal== 21707 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #55777: <==negation-removal== 13280 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #56961: <==negation-removal== 40479 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60082: <==uncertain_firing== 13280 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #60264: <==negation-removal== 31717 (pos)
                    (not (Bb_not_checked_p6))

                    ; #69496: <==negation-removal== 20627 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #75542: <==negation-removal== 55296 (pos)
                    (not (Ba_not_checked_p6))

                    ; #78386: <==negation-removal== 10871 (pos)
                    (not (Pd_not_checked_p6))

                    ; #83222: <==uncertain_firing== 21707 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #84097: <==negation-removal== 76363 (pos)
                    (not (not_checked_p6))

                    ; #86930: <==negation-removal== 43718 (pos)
                    (not (Bc_not_checked_p6))

                    ; #91240: <==negation-removal== 11064 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11209: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #16054: <==commonly_known== 37027 (pos)
                    (Bb_checked_p7)

                    ; #18480: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #27075: <==commonly_known== 37027 (pos)
                    (Bc_checked_p7)

                    ; #29303: <==commonly_known== 37027 (pos)
                    (Ba_checked_p7)

                    ; #37027: origin
                    (checked_p7)

                    ; #43830: <==commonly_known== 10712 (neg)
                    (Pa_checked_p7)

                    ; #44630: <==commonly_known== 10712 (neg)
                    (Pb_checked_p7)

                    ; #46088: <==closure== 11209 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #60831: <==commonly_known== 37027 (pos)
                    (Bd_checked_p7)

                    ; #66197: <==commonly_known== 10712 (neg)
                    (Pd_checked_p7)

                    ; #79607: <==commonly_known== 10712 (neg)
                    (Pc_checked_p7)

                    ; #88390: <==closure== 18480 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #10712: <==negation-removal== 37027 (pos)
                    (not (not_checked_p7))

                    ; #18875: <==negation-removal== 11209 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #20991: <==uncertain_firing== 88390 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #24044: <==negation-removal== 88390 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #28068: <==uncertain_firing== 46088 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #30992: <==negation-removal== 27075 (pos)
                    (not (Pc_not_checked_p7))

                    ; #36986: <==negation-removal== 44630 (pos)
                    (not (Bb_not_checked_p7))

                    ; #38993: <==negation-removal== 16054 (pos)
                    (not (Pb_not_checked_p7))

                    ; #42682: <==negation-removal== 29303 (pos)
                    (not (Pa_not_checked_p7))

                    ; #53300: <==negation-removal== 79607 (pos)
                    (not (Bc_not_checked_p7))

                    ; #63321: <==uncertain_firing== 11209 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #67240: <==negation-removal== 46088 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #67396: <==negation-removal== 18480 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #71427: <==negation-removal== 60831 (pos)
                    (not (Pd_not_checked_p7))

                    ; #75657: <==uncertain_firing== 18480 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #81773: <==negation-removal== 43830 (pos)
                    (not (Ba_not_checked_p7))

                    ; #84850: <==negation-removal== 66197 (pos)
                    (not (Bd_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16090: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #26089: <==commonly_known== 66759 (pos)
                    (Ba_checked_p8)

                    ; #30505: <==commonly_known== 66759 (pos)
                    (Bd_checked_p8)

                    ; #36861: <==commonly_known== 66759 (pos)
                    (Bc_checked_p8)

                    ; #55970: <==closure== 16090 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #57690: <==commonly_known== 49381 (neg)
                    (Pc_checked_p8)

                    ; #66379: <==closure== 89290 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #66759: origin
                    (checked_p8)

                    ; #70593: <==commonly_known== 49381 (neg)
                    (Pb_checked_p8)

                    ; #73112: <==commonly_known== 49381 (neg)
                    (Pd_checked_p8)

                    ; #73566: <==commonly_known== 49381 (neg)
                    (Pa_checked_p8)

                    ; #88920: <==commonly_known== 66759 (pos)
                    (Bb_checked_p8)

                    ; #89290: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #10336: <==negation-removal== 55970 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #30690: <==uncertain_firing== 66379 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #31719: <==negation-removal== 30505 (pos)
                    (not (Pd_not_checked_p8))

                    ; #38420: <==negation-removal== 89290 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #39763: <==negation-removal== 73566 (pos)
                    (not (Ba_not_checked_p8))

                    ; #40799: <==uncertain_firing== 55970 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #41162: <==negation-removal== 66379 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #42048: <==negation-removal== 70593 (pos)
                    (not (Bb_not_checked_p8))

                    ; #49381: <==negation-removal== 66759 (pos)
                    (not (not_checked_p8))

                    ; #65859: <==negation-removal== 57690 (pos)
                    (not (Bc_not_checked_p8))

                    ; #68034: <==negation-removal== 36861 (pos)
                    (not (Pc_not_checked_p8))

                    ; #78514: <==negation-removal== 88920 (pos)
                    (not (Pb_not_checked_p8))

                    ; #80966: <==negation-removal== 26089 (pos)
                    (not (Pa_not_checked_p8))

                    ; #82361: <==uncertain_firing== 16090 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #82560: <==negation-removal== 16090 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #87314: <==negation-removal== 73112 (pos)
                    (not (Bd_not_checked_p8))

                    ; #99838: <==uncertain_firing== 89290 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13212: <==commonly_known== 63808 (neg)
                    (Pa_checked_p9)

                    ; #14056: <==commonly_known== 63808 (neg)
                    (Pd_checked_p9)

                    ; #14640: <==commonly_known== 63808 (neg)
                    (Pb_checked_p9)

                    ; #22365: <==closure== 55318 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #35310: <==commonly_known== 63808 (neg)
                    (Pc_checked_p9)

                    ; #47248: <==closure== 61732 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #52677: <==commonly_known== 69718 (pos)
                    (Ba_checked_p9)

                    ; #55318: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #56084: <==commonly_known== 69718 (pos)
                    (Bb_checked_p9)

                    ; #61732: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #69718: origin
                    (checked_p9)

                    ; #72140: <==commonly_known== 69718 (pos)
                    (Bd_checked_p9)

                    ; #90017: <==commonly_known== 69718 (pos)
                    (Bc_checked_p9)

                    ; #22216: <==negation-removal== 14640 (pos)
                    (not (Bb_not_checked_p9))

                    ; #22994: <==negation-removal== 56084 (pos)
                    (not (Pb_not_checked_p9))

                    ; #23234: <==uncertain_firing== 47248 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #25833: <==negation-removal== 72140 (pos)
                    (not (Pd_not_checked_p9))

                    ; #26053: <==uncertain_firing== 61732 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #35267: <==negation-removal== 35310 (pos)
                    (not (Bc_not_checked_p9))

                    ; #36876: <==negation-removal== 52677 (pos)
                    (not (Pa_not_checked_p9))

                    ; #41262: <==uncertain_firing== 22365 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #43110: <==negation-removal== 22365 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #48928: <==negation-removal== 14056 (pos)
                    (not (Bd_not_checked_p9))

                    ; #56646: <==negation-removal== 55318 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #57026: <==negation-removal== 61732 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #60568: <==negation-removal== 13212 (pos)
                    (not (Ba_not_checked_p9))

                    ; #63808: <==negation-removal== 69718 (pos)
                    (not (not_checked_p9))

                    ; #74055: <==uncertain_firing== 55318 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #82363: <==negation-removal== 90017 (pos)
                    (not (Pc_not_checked_p9))

                    ; #87103: <==negation-removal== 47248 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12520: <==commonly_known== 19548 (pos)
                    (Bc_checked_p1)

                    ; #19548: origin
                    (checked_p1)

                    ; #20804: <==commonly_known== 60165 (neg)
                    (Pb_checked_p1)

                    ; #25540: <==commonly_known== 60165 (neg)
                    (Pd_checked_p1)

                    ; #29560: <==commonly_known== 60165 (neg)
                    (Pc_checked_p1)

                    ; #41842: <==closure== 46390 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #46390: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #46402: <==commonly_known== 60165 (neg)
                    (Pa_checked_p1)

                    ; #57432: <==closure== 74884 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #61453: <==commonly_known== 19548 (pos)
                    (Ba_checked_p1)

                    ; #74037: <==commonly_known== 19548 (pos)
                    (Bd_checked_p1)

                    ; #74884: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #83043: <==commonly_known== 19548 (pos)
                    (Bb_checked_p1)

                    ; #14988: <==negation-removal== 41842 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #16309: <==negation-removal== 83043 (pos)
                    (not (Pb_not_checked_p1))

                    ; #23221: <==negation-removal== 74884 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #23373: <==uncertain_firing== 57432 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #31681: <==uncertain_firing== 41842 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #31702: <==uncertain_firing== 74884 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #34238: <==negation-removal== 20804 (pos)
                    (not (Bb_not_checked_p1))

                    ; #44877: <==uncertain_firing== 46390 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #51956: <==negation-removal== 61453 (pos)
                    (not (Pa_not_checked_p1))

                    ; #60165: <==negation-removal== 19548 (pos)
                    (not (not_checked_p1))

                    ; #60646: <==negation-removal== 57432 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #64611: <==negation-removal== 46402 (pos)
                    (not (Ba_not_checked_p1))

                    ; #70015: <==negation-removal== 12520 (pos)
                    (not (Pc_not_checked_p1))

                    ; #72709: <==negation-removal== 74037 (pos)
                    (not (Pd_not_checked_p1))

                    ; #78298: <==negation-removal== 46390 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #92015: <==negation-removal== 29560 (pos)
                    (not (Bc_not_checked_p1))

                    ; #97384: <==negation-removal== 25540 (pos)
                    (not (Bd_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11460: <==commonly_known== 65103 (neg)
                    (Pc_checked_p2)

                    ; #12287: <==commonly_known== 65103 (neg)
                    (Pd_checked_p2)

                    ; #14102: origin
                    (checked_p2)

                    ; #15716: <==commonly_known== 14102 (pos)
                    (Bc_checked_p2)

                    ; #18559: <==commonly_known== 14102 (pos)
                    (Bb_checked_p2)

                    ; #20015: <==commonly_known== 14102 (pos)
                    (Ba_checked_p2)

                    ; #22907: <==closure== 29697 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #23113: <==commonly_known== 65103 (neg)
                    (Pb_checked_p2)

                    ; #29697: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #53646: <==commonly_known== 65103 (neg)
                    (Pa_checked_p2)

                    ; #59401: <==closure== 80730 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #77261: <==commonly_known== 14102 (pos)
                    (Bd_checked_p2)

                    ; #80730: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #21442: <==negation-removal== 20015 (pos)
                    (not (Pa_not_checked_p2))

                    ; #28555: <==negation-removal== 22907 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #30475: <==negation-removal== 80730 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #31202: <==uncertain_firing== 59401 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #45532: <==negation-removal== 53646 (pos)
                    (not (Ba_not_checked_p2))

                    ; #46641: <==uncertain_firing== 29697 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #46827: <==negation-removal== 12287 (pos)
                    (not (Bd_not_checked_p2))

                    ; #46858: <==negation-removal== 29697 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #48377: <==negation-removal== 23113 (pos)
                    (not (Bb_not_checked_p2))

                    ; #58060: <==negation-removal== 11460 (pos)
                    (not (Bc_not_checked_p2))

                    ; #62285: <==negation-removal== 59401 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #63320: <==negation-removal== 18559 (pos)
                    (not (Pb_not_checked_p2))

                    ; #65103: <==negation-removal== 14102 (pos)
                    (not (not_checked_p2))

                    ; #71999: <==uncertain_firing== 80730 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #79187: <==negation-removal== 77261 (pos)
                    (not (Pd_not_checked_p2))

                    ; #88517: <==negation-removal== 15716 (pos)
                    (not (Pc_not_checked_p2))

                    ; #91225: <==uncertain_firing== 22907 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12249: <==closure== 86438 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #17882: <==commonly_known== 37750 (pos)
                    (Bb_checked_p3)

                    ; #29690: <==commonly_known== 64779 (neg)
                    (Pb_checked_p3)

                    ; #37750: origin
                    (checked_p3)

                    ; #39730: <==commonly_known== 37750 (pos)
                    (Bc_checked_p3)

                    ; #40302: <==commonly_known== 64779 (neg)
                    (Pc_checked_p3)

                    ; #45017: <==commonly_known== 37750 (pos)
                    (Bd_checked_p3)

                    ; #45276: <==commonly_known== 37750 (pos)
                    (Ba_checked_p3)

                    ; #49279: <==closure== 90171 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #68340: <==commonly_known== 64779 (neg)
                    (Pd_checked_p3)

                    ; #83528: <==commonly_known== 64779 (neg)
                    (Pa_checked_p3)

                    ; #86438: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #90171: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #11105: <==uncertain_firing== 49279 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #20876: <==negation-removal== 49279 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #22963: <==negation-removal== 68340 (pos)
                    (not (Bd_not_checked_p3))

                    ; #29455: <==negation-removal== 39730 (pos)
                    (not (Pc_not_checked_p3))

                    ; #37254: <==negation-removal== 40302 (pos)
                    (not (Bc_not_checked_p3))

                    ; #37361: <==negation-removal== 83528 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45692: <==negation-removal== 45276 (pos)
                    (not (Pa_not_checked_p3))

                    ; #51203: <==negation-removal== 12249 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #57383: <==uncertain_firing== 86438 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #57488: <==negation-removal== 29690 (pos)
                    (not (Bb_not_checked_p3))

                    ; #60023: <==negation-removal== 17882 (pos)
                    (not (Pb_not_checked_p3))

                    ; #62868: <==uncertain_firing== 12249 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #64779: <==negation-removal== 37750 (pos)
                    (not (not_checked_p3))

                    ; #71818: <==negation-removal== 45017 (pos)
                    (not (Pd_not_checked_p3))

                    ; #78123: <==negation-removal== 86438 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #80218: <==uncertain_firing== 90171 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #88622: <==negation-removal== 90171 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12617: origin
                    (checked_p4)

                    ; #18968: <==commonly_known== 36839 (neg)
                    (Pa_checked_p4)

                    ; #33733: <==commonly_known== 36839 (neg)
                    (Pd_checked_p4)

                    ; #39467: <==commonly_known== 36839 (neg)
                    (Pb_checked_p4)

                    ; #45441: <==commonly_known== 12617 (pos)
                    (Bb_checked_p4)

                    ; #46021: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #46984: <==commonly_known== 36839 (neg)
                    (Pc_checked_p4)

                    ; #49421: <==closure== 46021 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #52819: <==commonly_known== 12617 (pos)
                    (Bc_checked_p4)

                    ; #66360: <==closure== 67104 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #67104: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #73240: <==commonly_known== 12617 (pos)
                    (Bd_checked_p4)

                    ; #89754: <==commonly_known== 12617 (pos)
                    (Ba_checked_p4)

                    ; #16178: <==negation-removal== 18968 (pos)
                    (not (Ba_not_checked_p4))

                    ; #16664: <==uncertain_firing== 67104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #22490: <==uncertain_firing== 49421 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #26996: <==negation-removal== 89754 (pos)
                    (not (Pa_not_checked_p4))

                    ; #28093: <==negation-removal== 66360 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #36839: <==negation-removal== 12617 (pos)
                    (not (not_checked_p4))

                    ; #48847: <==negation-removal== 49421 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #50467: <==negation-removal== 33733 (pos)
                    (not (Bd_not_checked_p4))

                    ; #51493: <==negation-removal== 67104 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #52765: <==negation-removal== 52819 (pos)
                    (not (Pc_not_checked_p4))

                    ; #61031: <==uncertain_firing== 66360 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #71837: <==uncertain_firing== 46021 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #72371: <==negation-removal== 73240 (pos)
                    (not (Pd_not_checked_p4))

                    ; #78974: <==negation-removal== 45441 (pos)
                    (not (Pb_not_checked_p4))

                    ; #79043: <==negation-removal== 46021 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #82427: <==negation-removal== 39467 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86805: <==negation-removal== 46984 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14347: <==commonly_known== 40591 (neg)
                    (Pc_checked_p5)

                    ; #18595: <==commonly_known== 40591 (neg)
                    (Pd_checked_p5)

                    ; #19551: <==commonly_known== 92119 (pos)
                    (Bd_checked_p5)

                    ; #23928: <==commonly_known== 92119 (pos)
                    (Bc_checked_p5)

                    ; #32400: <==commonly_known== 92119 (pos)
                    (Bb_checked_p5)

                    ; #36551: <==commonly_known== 40591 (neg)
                    (Pb_checked_p5)

                    ; #37337: <==commonly_known== 92119 (pos)
                    (Ba_checked_p5)

                    ; #37486: <==commonly_known== 40591 (neg)
                    (Pa_checked_p5)

                    ; #41820: <==closure== 77859 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #48957: <==closure== 54349 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #54349: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #77859: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #92119: origin
                    (checked_p5)

                    ; #10797: <==negation-removal== 18595 (pos)
                    (not (Bd_not_checked_p5))

                    ; #10981: <==negation-removal== 48957 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #20193: <==negation-removal== 54349 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #22647: <==negation-removal== 41820 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #23739: <==negation-removal== 37486 (pos)
                    (not (Ba_not_checked_p5))

                    ; #24382: <==uncertain_firing== 41820 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #27162: <==uncertain_firing== 48957 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #30998: <==negation-removal== 32400 (pos)
                    (not (Pb_not_checked_p5))

                    ; #40591: <==negation-removal== 92119 (pos)
                    (not (not_checked_p5))

                    ; #51753: <==uncertain_firing== 54349 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #56454: <==negation-removal== 37337 (pos)
                    (not (Pa_not_checked_p5))

                    ; #60563: <==negation-removal== 23928 (pos)
                    (not (Pc_not_checked_p5))

                    ; #60870: <==uncertain_firing== 77859 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #77240: <==negation-removal== 36551 (pos)
                    (not (Bb_not_checked_p5))

                    ; #88523: <==negation-removal== 14347 (pos)
                    (not (Bc_not_checked_p5))

                    ; #92167: <==negation-removal== 77859 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #96170: <==negation-removal== 19551 (pos)
                    (not (Pd_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10871: <==commonly_known== 76363 (pos)
                    (Bd_checked_p6)

                    ; #14631: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #18245: <==closure== 14631 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #31717: <==commonly_known== 84097 (neg)
                    (Pb_checked_p6)

                    ; #40479: <==commonly_known== 76363 (pos)
                    (Bc_checked_p6)

                    ; #43718: <==commonly_known== 84097 (neg)
                    (Pc_checked_p6)

                    ; #43945: <==closure== 51181 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #51181: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #53945: <==commonly_known== 76363 (pos)
                    (Bb_checked_p6)

                    ; #55296: <==commonly_known== 84097 (neg)
                    (Pa_checked_p6)

                    ; #58104: <==commonly_known== 84097 (neg)
                    (Pd_checked_p6)

                    ; #71378: <==commonly_known== 76363 (pos)
                    (Ba_checked_p6)

                    ; #76363: origin
                    (checked_p6)

                    ; #10038: <==uncertain_firing== 18245 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #15744: <==negation-removal== 53945 (pos)
                    (not (Pb_not_checked_p6))

                    ; #16023: <==uncertain_firing== 43945 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #30498: <==negation-removal== 51181 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #33346: <==negation-removal== 71378 (pos)
                    (not (Pa_not_checked_p6))

                    ; #36621: <==negation-removal== 43945 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #43114: <==negation-removal== 58104 (pos)
                    (not (Bd_not_checked_p6))

                    ; #56733: <==negation-removal== 18245 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #56961: <==negation-removal== 40479 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60264: <==negation-removal== 31717 (pos)
                    (not (Bb_not_checked_p6))

                    ; #65726: <==uncertain_firing== 51181 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #68876: <==uncertain_firing== 14631 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #75542: <==negation-removal== 55296 (pos)
                    (not (Ba_not_checked_p6))

                    ; #77920: <==negation-removal== 14631 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #78386: <==negation-removal== 10871 (pos)
                    (not (Pd_not_checked_p6))

                    ; #84097: <==negation-removal== 76363 (pos)
                    (not (not_checked_p6))

                    ; #86930: <==negation-removal== 43718 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15752: <==closure== 79023 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #16054: <==commonly_known== 37027 (pos)
                    (Bb_checked_p7)

                    ; #27075: <==commonly_known== 37027 (pos)
                    (Bc_checked_p7)

                    ; #29303: <==commonly_known== 37027 (pos)
                    (Ba_checked_p7)

                    ; #37027: origin
                    (checked_p7)

                    ; #43830: <==commonly_known== 10712 (neg)
                    (Pa_checked_p7)

                    ; #44630: <==commonly_known== 10712 (neg)
                    (Pb_checked_p7)

                    ; #57642: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #60831: <==commonly_known== 37027 (pos)
                    (Bd_checked_p7)

                    ; #66197: <==commonly_known== 10712 (neg)
                    (Pd_checked_p7)

                    ; #66940: <==closure== 57642 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #79023: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #79607: <==commonly_known== 10712 (neg)
                    (Pc_checked_p7)

                    ; #10712: <==negation-removal== 37027 (pos)
                    (not (not_checked_p7))

                    ; #19958: <==uncertain_firing== 15752 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24625: <==uncertain_firing== 79023 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #30992: <==negation-removal== 27075 (pos)
                    (not (Pc_not_checked_p7))

                    ; #32630: <==negation-removal== 15752 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #36986: <==negation-removal== 44630 (pos)
                    (not (Bb_not_checked_p7))

                    ; #38993: <==negation-removal== 16054 (pos)
                    (not (Pb_not_checked_p7))

                    ; #42682: <==negation-removal== 29303 (pos)
                    (not (Pa_not_checked_p7))

                    ; #45130: <==negation-removal== 66940 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #53300: <==negation-removal== 79607 (pos)
                    (not (Bc_not_checked_p7))

                    ; #60462: <==negation-removal== 57642 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #67399: <==uncertain_firing== 57642 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #71427: <==negation-removal== 60831 (pos)
                    (not (Pd_not_checked_p7))

                    ; #74336: <==negation-removal== 79023 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #81773: <==negation-removal== 43830 (pos)
                    (not (Ba_not_checked_p7))

                    ; #84365: <==uncertain_firing== 66940 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #84850: <==negation-removal== 66197 (pos)
                    (not (Bd_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #26089: <==commonly_known== 66759 (pos)
                    (Ba_checked_p8)

                    ; #26579: <==closure== 86970 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #30505: <==commonly_known== 66759 (pos)
                    (Bd_checked_p8)

                    ; #36861: <==commonly_known== 66759 (pos)
                    (Bc_checked_p8)

                    ; #57690: <==commonly_known== 49381 (neg)
                    (Pc_checked_p8)

                    ; #66759: origin
                    (checked_p8)

                    ; #69660: <==closure== 90655 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #70593: <==commonly_known== 49381 (neg)
                    (Pb_checked_p8)

                    ; #73112: <==commonly_known== 49381 (neg)
                    (Pd_checked_p8)

                    ; #73566: <==commonly_known== 49381 (neg)
                    (Pa_checked_p8)

                    ; #86970: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #88920: <==commonly_known== 66759 (pos)
                    (Bb_checked_p8)

                    ; #90655: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #11933: <==negation-removal== 26579 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #29876: <==uncertain_firing== 90655 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #31719: <==negation-removal== 30505 (pos)
                    (not (Pd_not_checked_p8))

                    ; #38836: <==negation-removal== 69660 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #39763: <==negation-removal== 73566 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42048: <==negation-removal== 70593 (pos)
                    (not (Bb_not_checked_p8))

                    ; #45897: <==negation-removal== 86970 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #46152: <==uncertain_firing== 69660 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #49381: <==negation-removal== 66759 (pos)
                    (not (not_checked_p8))

                    ; #56895: <==negation-removal== 90655 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #65859: <==negation-removal== 57690 (pos)
                    (not (Bc_not_checked_p8))

                    ; #68034: <==negation-removal== 36861 (pos)
                    (not (Pc_not_checked_p8))

                    ; #78514: <==negation-removal== 88920 (pos)
                    (not (Pb_not_checked_p8))

                    ; #79953: <==uncertain_firing== 86970 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #80966: <==negation-removal== 26089 (pos)
                    (not (Pa_not_checked_p8))

                    ; #86144: <==uncertain_firing== 26579 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #87314: <==negation-removal== 73112 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13212: <==commonly_known== 63808 (neg)
                    (Pa_checked_p9)

                    ; #14056: <==commonly_known== 63808 (neg)
                    (Pd_checked_p9)

                    ; #14640: <==commonly_known== 63808 (neg)
                    (Pb_checked_p9)

                    ; #25980: <==closure== 74256 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #35310: <==commonly_known== 63808 (neg)
                    (Pc_checked_p9)

                    ; #52677: <==commonly_known== 69718 (pos)
                    (Ba_checked_p9)

                    ; #56084: <==commonly_known== 69718 (pos)
                    (Bb_checked_p9)

                    ; #66104: <==closure== 89713 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #69718: origin
                    (checked_p9)

                    ; #72140: <==commonly_known== 69718 (pos)
                    (Bd_checked_p9)

                    ; #74256: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #89713: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #90017: <==commonly_known== 69718 (pos)
                    (Bc_checked_p9)

                    ; #22216: <==negation-removal== 14640 (pos)
                    (not (Bb_not_checked_p9))

                    ; #22994: <==negation-removal== 56084 (pos)
                    (not (Pb_not_checked_p9))

                    ; #25833: <==negation-removal== 72140 (pos)
                    (not (Pd_not_checked_p9))

                    ; #31782: <==uncertain_firing== 89713 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #35267: <==negation-removal== 35310 (pos)
                    (not (Bc_not_checked_p9))

                    ; #36876: <==negation-removal== 52677 (pos)
                    (not (Pa_not_checked_p9))

                    ; #42744: <==uncertain_firing== 25980 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #48928: <==negation-removal== 14056 (pos)
                    (not (Bd_not_checked_p9))

                    ; #49603: <==uncertain_firing== 74256 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #58552: <==uncertain_firing== 66104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #60568: <==negation-removal== 13212 (pos)
                    (not (Ba_not_checked_p9))

                    ; #61014: <==negation-removal== 25980 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #63808: <==negation-removal== 69718 (pos)
                    (not (not_checked_p9))

                    ; #70892: <==negation-removal== 66104 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #73484: <==negation-removal== 74256 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #79551: <==negation-removal== 89713 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #82363: <==negation-removal== 90017 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12520: <==commonly_known== 19548 (pos)
                    (Bc_checked_p1)

                    ; #14239: <==closure== 66784 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #19548: origin
                    (checked_p1)

                    ; #20804: <==commonly_known== 60165 (neg)
                    (Pb_checked_p1)

                    ; #25540: <==commonly_known== 60165 (neg)
                    (Pd_checked_p1)

                    ; #29560: <==commonly_known== 60165 (neg)
                    (Pc_checked_p1)

                    ; #35171: <==closure== 58205 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #46402: <==commonly_known== 60165 (neg)
                    (Pa_checked_p1)

                    ; #58205: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #61453: <==commonly_known== 19548 (pos)
                    (Ba_checked_p1)

                    ; #66784: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #74037: <==commonly_known== 19548 (pos)
                    (Bd_checked_p1)

                    ; #83043: <==commonly_known== 19548 (pos)
                    (Bb_checked_p1)

                    ; #16309: <==negation-removal== 83043 (pos)
                    (not (Pb_not_checked_p1))

                    ; #33096: <==negation-removal== 66784 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #34238: <==negation-removal== 20804 (pos)
                    (not (Bb_not_checked_p1))

                    ; #51956: <==negation-removal== 61453 (pos)
                    (not (Pa_not_checked_p1))

                    ; #60010: <==negation-removal== 35171 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #60165: <==negation-removal== 19548 (pos)
                    (not (not_checked_p1))

                    ; #64611: <==negation-removal== 46402 (pos)
                    (not (Ba_not_checked_p1))

                    ; #69075: <==uncertain_firing== 14239 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #70015: <==negation-removal== 12520 (pos)
                    (not (Pc_not_checked_p1))

                    ; #72709: <==negation-removal== 74037 (pos)
                    (not (Pd_not_checked_p1))

                    ; #73483: <==uncertain_firing== 66784 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #73630: <==uncertain_firing== 58205 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #79958: <==uncertain_firing== 35171 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #80547: <==negation-removal== 14239 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #85812: <==negation-removal== 58205 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #92015: <==negation-removal== 29560 (pos)
                    (not (Bc_not_checked_p1))

                    ; #97384: <==negation-removal== 25540 (pos)
                    (not (Bd_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11460: <==commonly_known== 65103 (neg)
                    (Pc_checked_p2)

                    ; #12287: <==commonly_known== 65103 (neg)
                    (Pd_checked_p2)

                    ; #14102: origin
                    (checked_p2)

                    ; #15716: <==commonly_known== 14102 (pos)
                    (Bc_checked_p2)

                    ; #18559: <==commonly_known== 14102 (pos)
                    (Bb_checked_p2)

                    ; #20015: <==commonly_known== 14102 (pos)
                    (Ba_checked_p2)

                    ; #20023: <==closure== 20939 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #20939: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #23113: <==commonly_known== 65103 (neg)
                    (Pb_checked_p2)

                    ; #36809: <==closure== 85443 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #53646: <==commonly_known== 65103 (neg)
                    (Pa_checked_p2)

                    ; #77261: <==commonly_known== 14102 (pos)
                    (Bd_checked_p2)

                    ; #85443: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #10221: <==negation-removal== 85443 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #11445: <==uncertain_firing== 85443 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #21442: <==negation-removal== 20015 (pos)
                    (not (Pa_not_checked_p2))

                    ; #21446: <==negation-removal== 20939 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #28770: <==negation-removal== 20023 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #43324: <==negation-removal== 36809 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #45532: <==negation-removal== 53646 (pos)
                    (not (Ba_not_checked_p2))

                    ; #46827: <==negation-removal== 12287 (pos)
                    (not (Bd_not_checked_p2))

                    ; #48377: <==negation-removal== 23113 (pos)
                    (not (Bb_not_checked_p2))

                    ; #58060: <==negation-removal== 11460 (pos)
                    (not (Bc_not_checked_p2))

                    ; #62888: <==uncertain_firing== 20939 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #63320: <==negation-removal== 18559 (pos)
                    (not (Pb_not_checked_p2))

                    ; #65103: <==negation-removal== 14102 (pos)
                    (not (not_checked_p2))

                    ; #79187: <==negation-removal== 77261 (pos)
                    (not (Pd_not_checked_p2))

                    ; #82326: <==uncertain_firing== 20023 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #88517: <==negation-removal== 15716 (pos)
                    (not (Pc_not_checked_p2))

                    ; #90464: <==uncertain_firing== 36809 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17882: <==commonly_known== 37750 (pos)
                    (Bb_checked_p3)

                    ; #29690: <==commonly_known== 64779 (neg)
                    (Pb_checked_p3)

                    ; #37750: origin
                    (checked_p3)

                    ; #39730: <==commonly_known== 37750 (pos)
                    (Bc_checked_p3)

                    ; #40302: <==commonly_known== 64779 (neg)
                    (Pc_checked_p3)

                    ; #45017: <==commonly_known== 37750 (pos)
                    (Bd_checked_p3)

                    ; #45104: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #45276: <==commonly_known== 37750 (pos)
                    (Ba_checked_p3)

                    ; #47275: <==closure== 45104 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #67989: <==closure== 84942 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #68340: <==commonly_known== 64779 (neg)
                    (Pd_checked_p3)

                    ; #83528: <==commonly_known== 64779 (neg)
                    (Pa_checked_p3)

                    ; #84942: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #19384: <==negation-removal== 45104 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #20416: <==uncertain_firing== 67989 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #22963: <==negation-removal== 68340 (pos)
                    (not (Bd_not_checked_p3))

                    ; #24277: <==uncertain_firing== 45104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #29455: <==negation-removal== 39730 (pos)
                    (not (Pc_not_checked_p3))

                    ; #31742: <==negation-removal== 67989 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #37254: <==negation-removal== 40302 (pos)
                    (not (Bc_not_checked_p3))

                    ; #37361: <==negation-removal== 83528 (pos)
                    (not (Ba_not_checked_p3))

                    ; #37987: <==uncertain_firing== 84942 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #45692: <==negation-removal== 45276 (pos)
                    (not (Pa_not_checked_p3))

                    ; #57488: <==negation-removal== 29690 (pos)
                    (not (Bb_not_checked_p3))

                    ; #60023: <==negation-removal== 17882 (pos)
                    (not (Pb_not_checked_p3))

                    ; #60126: <==negation-removal== 84942 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #64779: <==negation-removal== 37750 (pos)
                    (not (not_checked_p3))

                    ; #70342: <==uncertain_firing== 47275 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #71818: <==negation-removal== 45017 (pos)
                    (not (Pd_not_checked_p3))

                    ; #89613: <==negation-removal== 47275 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10900: <==closure== 25708 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #12617: origin
                    (checked_p4)

                    ; #14725: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #18968: <==commonly_known== 36839 (neg)
                    (Pa_checked_p4)

                    ; #25708: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #33733: <==commonly_known== 36839 (neg)
                    (Pd_checked_p4)

                    ; #39467: <==commonly_known== 36839 (neg)
                    (Pb_checked_p4)

                    ; #45441: <==commonly_known== 12617 (pos)
                    (Bb_checked_p4)

                    ; #46984: <==commonly_known== 36839 (neg)
                    (Pc_checked_p4)

                    ; #52819: <==commonly_known== 12617 (pos)
                    (Bc_checked_p4)

                    ; #73240: <==commonly_known== 12617 (pos)
                    (Bd_checked_p4)

                    ; #73506: <==closure== 14725 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #89754: <==commonly_known== 12617 (pos)
                    (Ba_checked_p4)

                    ; #10441: <==negation-removal== 10900 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #11273: <==uncertain_firing== 73506 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #16178: <==negation-removal== 18968 (pos)
                    (not (Ba_not_checked_p4))

                    ; #18645: <==uncertain_firing== 14725 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #20040: <==negation-removal== 73506 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #23873: <==negation-removal== 25708 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #26996: <==negation-removal== 89754 (pos)
                    (not (Pa_not_checked_p4))

                    ; #36839: <==negation-removal== 12617 (pos)
                    (not (not_checked_p4))

                    ; #48738: <==uncertain_firing== 10900 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #50467: <==negation-removal== 33733 (pos)
                    (not (Bd_not_checked_p4))

                    ; #52765: <==negation-removal== 52819 (pos)
                    (not (Pc_not_checked_p4))

                    ; #72371: <==negation-removal== 73240 (pos)
                    (not (Pd_not_checked_p4))

                    ; #78974: <==negation-removal== 45441 (pos)
                    (not (Pb_not_checked_p4))

                    ; #81552: <==uncertain_firing== 25708 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #82427: <==negation-removal== 39467 (pos)
                    (not (Bb_not_checked_p4))

                    ; #84754: <==negation-removal== 14725 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #86805: <==negation-removal== 46984 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14347: <==commonly_known== 40591 (neg)
                    (Pc_checked_p5)

                    ; #18595: <==commonly_known== 40591 (neg)
                    (Pd_checked_p5)

                    ; #19025: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #19551: <==commonly_known== 92119 (pos)
                    (Bd_checked_p5)

                    ; #23928: <==commonly_known== 92119 (pos)
                    (Bc_checked_p5)

                    ; #30316: <==closure== 19025 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #32400: <==commonly_known== 92119 (pos)
                    (Bb_checked_p5)

                    ; #36551: <==commonly_known== 40591 (neg)
                    (Pb_checked_p5)

                    ; #37337: <==commonly_known== 92119 (pos)
                    (Ba_checked_p5)

                    ; #37486: <==commonly_known== 40591 (neg)
                    (Pa_checked_p5)

                    ; #73816: <==closure== 87967 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #87967: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #92119: origin
                    (checked_p5)

                    ; #10797: <==negation-removal== 18595 (pos)
                    (not (Bd_not_checked_p5))

                    ; #15467: <==negation-removal== 30316 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #15874: <==negation-removal== 73816 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #23739: <==negation-removal== 37486 (pos)
                    (not (Ba_not_checked_p5))

                    ; #25979: <==uncertain_firing== 19025 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #29791: <==negation-removal== 87967 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #30998: <==negation-removal== 32400 (pos)
                    (not (Pb_not_checked_p5))

                    ; #40591: <==negation-removal== 92119 (pos)
                    (not (not_checked_p5))

                    ; #41882: <==uncertain_firing== 87967 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #47280: <==uncertain_firing== 73816 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #56454: <==negation-removal== 37337 (pos)
                    (not (Pa_not_checked_p5))

                    ; #60563: <==negation-removal== 23928 (pos)
                    (not (Pc_not_checked_p5))

                    ; #61703: <==uncertain_firing== 30316 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62685: <==negation-removal== 19025 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77240: <==negation-removal== 36551 (pos)
                    (not (Bb_not_checked_p5))

                    ; #88523: <==negation-removal== 14347 (pos)
                    (not (Bc_not_checked_p5))

                    ; #96170: <==negation-removal== 19551 (pos)
                    (not (Pd_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10871: <==commonly_known== 76363 (pos)
                    (Bd_checked_p6)

                    ; #26288: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #31717: <==commonly_known== 84097 (neg)
                    (Pb_checked_p6)

                    ; #40479: <==commonly_known== 76363 (pos)
                    (Bc_checked_p6)

                    ; #43718: <==commonly_known== 84097 (neg)
                    (Pc_checked_p6)

                    ; #43978: <==closure== 99038 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #48902: <==closure== 26288 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #53945: <==commonly_known== 76363 (pos)
                    (Bb_checked_p6)

                    ; #55296: <==commonly_known== 84097 (neg)
                    (Pa_checked_p6)

                    ; #58104: <==commonly_known== 84097 (neg)
                    (Pd_checked_p6)

                    ; #71378: <==commonly_known== 76363 (pos)
                    (Ba_checked_p6)

                    ; #76363: origin
                    (checked_p6)

                    ; #99038: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #12048: <==uncertain_firing== 26288 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #14708: <==uncertain_firing== 43978 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #15744: <==negation-removal== 53945 (pos)
                    (not (Pb_not_checked_p6))

                    ; #28644: <==negation-removal== 48902 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #33346: <==negation-removal== 71378 (pos)
                    (not (Pa_not_checked_p6))

                    ; #43114: <==negation-removal== 58104 (pos)
                    (not (Bd_not_checked_p6))

                    ; #56961: <==negation-removal== 40479 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60264: <==negation-removal== 31717 (pos)
                    (not (Bb_not_checked_p6))

                    ; #75542: <==negation-removal== 55296 (pos)
                    (not (Ba_not_checked_p6))

                    ; #76150: <==uncertain_firing== 48902 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #77410: <==negation-removal== 43978 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #78386: <==negation-removal== 10871 (pos)
                    (not (Pd_not_checked_p6))

                    ; #81311: <==uncertain_firing== 99038 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #81681: <==negation-removal== 26288 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #84097: <==negation-removal== 76363 (pos)
                    (not (not_checked_p6))

                    ; #84852: <==negation-removal== 99038 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #86930: <==negation-removal== 43718 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #16054: <==commonly_known== 37027 (pos)
                    (Bb_checked_p7)

                    ; #27075: <==commonly_known== 37027 (pos)
                    (Bc_checked_p7)

                    ; #29303: <==commonly_known== 37027 (pos)
                    (Ba_checked_p7)

                    ; #35356: <==closure== 44792 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #37027: origin
                    (checked_p7)

                    ; #38490: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #43830: <==commonly_known== 10712 (neg)
                    (Pa_checked_p7)

                    ; #44630: <==commonly_known== 10712 (neg)
                    (Pb_checked_p7)

                    ; #44792: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #56321: <==closure== 38490 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #60831: <==commonly_known== 37027 (pos)
                    (Bd_checked_p7)

                    ; #66197: <==commonly_known== 10712 (neg)
                    (Pd_checked_p7)

                    ; #79607: <==commonly_known== 10712 (neg)
                    (Pc_checked_p7)

                    ; #10712: <==negation-removal== 37027 (pos)
                    (not (not_checked_p7))

                    ; #16647: <==uncertain_firing== 35356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #30610: <==negation-removal== 56321 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #30773: <==uncertain_firing== 38490 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #30992: <==negation-removal== 27075 (pos)
                    (not (Pc_not_checked_p7))

                    ; #36986: <==negation-removal== 44630 (pos)
                    (not (Bb_not_checked_p7))

                    ; #38993: <==negation-removal== 16054 (pos)
                    (not (Pb_not_checked_p7))

                    ; #42682: <==negation-removal== 29303 (pos)
                    (not (Pa_not_checked_p7))

                    ; #53300: <==negation-removal== 79607 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65416: <==negation-removal== 38490 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #71427: <==negation-removal== 60831 (pos)
                    (not (Pd_not_checked_p7))

                    ; #71888: <==uncertain_firing== 56321 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81773: <==negation-removal== 43830 (pos)
                    (not (Ba_not_checked_p7))

                    ; #84850: <==negation-removal== 66197 (pos)
                    (not (Bd_not_checked_p7))

                    ; #86226: <==uncertain_firing== 44792 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #89198: <==negation-removal== 44792 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #90301: <==negation-removal== 35356 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15762: <==closure== 66001 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #23654: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #26089: <==commonly_known== 66759 (pos)
                    (Ba_checked_p8)

                    ; #28904: <==closure== 23654 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #30505: <==commonly_known== 66759 (pos)
                    (Bd_checked_p8)

                    ; #36861: <==commonly_known== 66759 (pos)
                    (Bc_checked_p8)

                    ; #57690: <==commonly_known== 49381 (neg)
                    (Pc_checked_p8)

                    ; #66001: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #66759: origin
                    (checked_p8)

                    ; #70593: <==commonly_known== 49381 (neg)
                    (Pb_checked_p8)

                    ; #73112: <==commonly_known== 49381 (neg)
                    (Pd_checked_p8)

                    ; #73566: <==commonly_known== 49381 (neg)
                    (Pa_checked_p8)

                    ; #88920: <==commonly_known== 66759 (pos)
                    (Bb_checked_p8)

                    ; #15916: <==negation-removal== 66001 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #22983: <==uncertain_firing== 66001 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #25640: <==negation-removal== 15762 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #27958: <==negation-removal== 28904 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #31719: <==negation-removal== 30505 (pos)
                    (not (Pd_not_checked_p8))

                    ; #31859: <==uncertain_firing== 28904 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #34145: <==uncertain_firing== 23654 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #39763: <==negation-removal== 73566 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42048: <==negation-removal== 70593 (pos)
                    (not (Bb_not_checked_p8))

                    ; #49381: <==negation-removal== 66759 (pos)
                    (not (not_checked_p8))

                    ; #65859: <==negation-removal== 57690 (pos)
                    (not (Bc_not_checked_p8))

                    ; #68034: <==negation-removal== 36861 (pos)
                    (not (Pc_not_checked_p8))

                    ; #76854: <==negation-removal== 23654 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #78514: <==negation-removal== 88920 (pos)
                    (not (Pb_not_checked_p8))

                    ; #80966: <==negation-removal== 26089 (pos)
                    (not (Pa_not_checked_p8))

                    ; #87314: <==negation-removal== 73112 (pos)
                    (not (Bd_not_checked_p8))

                    ; #90106: <==uncertain_firing== 15762 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12919: <==closure== 65940 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #13212: <==commonly_known== 63808 (neg)
                    (Pa_checked_p9)

                    ; #14056: <==commonly_known== 63808 (neg)
                    (Pd_checked_p9)

                    ; #14640: <==commonly_known== 63808 (neg)
                    (Pb_checked_p9)

                    ; #35310: <==commonly_known== 63808 (neg)
                    (Pc_checked_p9)

                    ; #37568: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #52677: <==commonly_known== 69718 (pos)
                    (Ba_checked_p9)

                    ; #56084: <==commonly_known== 69718 (pos)
                    (Bb_checked_p9)

                    ; #65940: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #69718: origin
                    (checked_p9)

                    ; #72140: <==commonly_known== 69718 (pos)
                    (Bd_checked_p9)

                    ; #90017: <==commonly_known== 69718 (pos)
                    (Bc_checked_p9)

                    ; #92376: <==closure== 37568 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #20504: <==uncertain_firing== 12919 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #22216: <==negation-removal== 14640 (pos)
                    (not (Bb_not_checked_p9))

                    ; #22954: <==negation-removal== 37568 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #22994: <==negation-removal== 56084 (pos)
                    (not (Pb_not_checked_p9))

                    ; #25833: <==negation-removal== 72140 (pos)
                    (not (Pd_not_checked_p9))

                    ; #28571: <==negation-removal== 65940 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #35267: <==negation-removal== 35310 (pos)
                    (not (Bc_not_checked_p9))

                    ; #36876: <==negation-removal== 52677 (pos)
                    (not (Pa_not_checked_p9))

                    ; #43587: <==uncertain_firing== 37568 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #48928: <==negation-removal== 14056 (pos)
                    (not (Bd_not_checked_p9))

                    ; #60035: <==uncertain_firing== 65940 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #60568: <==negation-removal== 13212 (pos)
                    (not (Ba_not_checked_p9))

                    ; #62442: <==negation-removal== 92376 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63808: <==negation-removal== 69718 (pos)
                    (not (not_checked_p9))

                    ; #69569: <==negation-removal== 12919 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #78416: <==uncertain_firing== 92376 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #82363: <==negation-removal== 90017 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12520: <==commonly_known== 19548 (pos)
                    (Bc_checked_p1)

                    ; #13136: <==closure== 19605 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #19548: origin
                    (checked_p1)

                    ; #19605: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #20804: <==commonly_known== 60165 (neg)
                    (Pb_checked_p1)

                    ; #25540: <==commonly_known== 60165 (neg)
                    (Pd_checked_p1)

                    ; #28419: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #29560: <==commonly_known== 60165 (neg)
                    (Pc_checked_p1)

                    ; #46402: <==commonly_known== 60165 (neg)
                    (Pa_checked_p1)

                    ; #61453: <==commonly_known== 19548 (pos)
                    (Ba_checked_p1)

                    ; #74037: <==commonly_known== 19548 (pos)
                    (Bd_checked_p1)

                    ; #80964: <==closure== 28419 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #83043: <==commonly_known== 19548 (pos)
                    (Bb_checked_p1)

                    ; #10493: <==negation-removal== 28419 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #15826: <==negation-removal== 80964 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #16309: <==negation-removal== 83043 (pos)
                    (not (Pb_not_checked_p1))

                    ; #30197: <==negation-removal== 13136 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #34238: <==negation-removal== 20804 (pos)
                    (not (Bb_not_checked_p1))

                    ; #51956: <==negation-removal== 61453 (pos)
                    (not (Pa_not_checked_p1))

                    ; #52667: <==negation-removal== 19605 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #56507: <==uncertain_firing== 19605 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #58874: <==uncertain_firing== 28419 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #60165: <==negation-removal== 19548 (pos)
                    (not (not_checked_p1))

                    ; #64611: <==negation-removal== 46402 (pos)
                    (not (Ba_not_checked_p1))

                    ; #70015: <==negation-removal== 12520 (pos)
                    (not (Pc_not_checked_p1))

                    ; #72709: <==negation-removal== 74037 (pos)
                    (not (Pd_not_checked_p1))

                    ; #82803: <==uncertain_firing== 80964 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #91309: <==uncertain_firing== 13136 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #92015: <==negation-removal== 29560 (pos)
                    (not (Bc_not_checked_p1))

                    ; #97384: <==negation-removal== 25540 (pos)
                    (not (Bd_not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11460: <==commonly_known== 65103 (neg)
                    (Pc_checked_p2)

                    ; #12287: <==commonly_known== 65103 (neg)
                    (Pd_checked_p2)

                    ; #12376: <==closure== 29459 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #14102: origin
                    (checked_p2)

                    ; #15716: <==commonly_known== 14102 (pos)
                    (Bc_checked_p2)

                    ; #18559: <==commonly_known== 14102 (pos)
                    (Bb_checked_p2)

                    ; #20015: <==commonly_known== 14102 (pos)
                    (Ba_checked_p2)

                    ; #23113: <==commonly_known== 65103 (neg)
                    (Pb_checked_p2)

                    ; #29459: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #53646: <==commonly_known== 65103 (neg)
                    (Pa_checked_p2)

                    ; #67281: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #74515: <==closure== 67281 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #77261: <==commonly_known== 14102 (pos)
                    (Bd_checked_p2)

                    ; #21442: <==negation-removal== 20015 (pos)
                    (not (Pa_not_checked_p2))

                    ; #27996: <==negation-removal== 29459 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #29810: <==negation-removal== 67281 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #31322: <==uncertain_firing== 29459 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #34580: <==uncertain_firing== 74515 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #45532: <==negation-removal== 53646 (pos)
                    (not (Ba_not_checked_p2))

                    ; #46827: <==negation-removal== 12287 (pos)
                    (not (Bd_not_checked_p2))

                    ; #48377: <==negation-removal== 23113 (pos)
                    (not (Bb_not_checked_p2))

                    ; #52717: <==negation-removal== 74515 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #58060: <==negation-removal== 11460 (pos)
                    (not (Bc_not_checked_p2))

                    ; #63320: <==negation-removal== 18559 (pos)
                    (not (Pb_not_checked_p2))

                    ; #63861: <==uncertain_firing== 12376 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #65103: <==negation-removal== 14102 (pos)
                    (not (not_checked_p2))

                    ; #69542: <==negation-removal== 12376 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #79187: <==negation-removal== 77261 (pos)
                    (not (Pd_not_checked_p2))

                    ; #83113: <==uncertain_firing== 67281 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #88517: <==negation-removal== 15716 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17882: <==commonly_known== 37750 (pos)
                    (Bb_checked_p3)

                    ; #18888: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #29690: <==commonly_known== 64779 (neg)
                    (Pb_checked_p3)

                    ; #37750: origin
                    (checked_p3)

                    ; #39730: <==commonly_known== 37750 (pos)
                    (Bc_checked_p3)

                    ; #40302: <==commonly_known== 64779 (neg)
                    (Pc_checked_p3)

                    ; #45017: <==commonly_known== 37750 (pos)
                    (Bd_checked_p3)

                    ; #45276: <==commonly_known== 37750 (pos)
                    (Ba_checked_p3)

                    ; #68340: <==commonly_known== 64779 (neg)
                    (Pd_checked_p3)

                    ; #72428: <==closure== 87673 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #82982: <==closure== 18888 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #83528: <==commonly_known== 64779 (neg)
                    (Pa_checked_p3)

                    ; #87673: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #19160: <==uncertain_firing== 72428 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #22963: <==negation-removal== 68340 (pos)
                    (not (Bd_not_checked_p3))

                    ; #29455: <==negation-removal== 39730 (pos)
                    (not (Pc_not_checked_p3))

                    ; #36989: <==negation-removal== 87673 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #37254: <==negation-removal== 40302 (pos)
                    (not (Bc_not_checked_p3))

                    ; #37361: <==negation-removal== 83528 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45692: <==negation-removal== 45276 (pos)
                    (not (Pa_not_checked_p3))

                    ; #47276: <==negation-removal== 72428 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #48732: <==uncertain_firing== 18888 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #57488: <==negation-removal== 29690 (pos)
                    (not (Bb_not_checked_p3))

                    ; #60023: <==negation-removal== 17882 (pos)
                    (not (Pb_not_checked_p3))

                    ; #64779: <==negation-removal== 37750 (pos)
                    (not (not_checked_p3))

                    ; #71818: <==negation-removal== 45017 (pos)
                    (not (Pd_not_checked_p3))

                    ; #74691: <==uncertain_firing== 82982 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #79024: <==negation-removal== 82982 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #83265: <==uncertain_firing== 87673 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #85244: <==negation-removal== 18888 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12617: origin
                    (checked_p4)

                    ; #18968: <==commonly_known== 36839 (neg)
                    (Pa_checked_p4)

                    ; #26394: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #26679: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #33733: <==commonly_known== 36839 (neg)
                    (Pd_checked_p4)

                    ; #36168: <==closure== 26679 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #39467: <==commonly_known== 36839 (neg)
                    (Pb_checked_p4)

                    ; #45441: <==commonly_known== 12617 (pos)
                    (Bb_checked_p4)

                    ; #46984: <==commonly_known== 36839 (neg)
                    (Pc_checked_p4)

                    ; #52819: <==commonly_known== 12617 (pos)
                    (Bc_checked_p4)

                    ; #71639: <==closure== 26394 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #73240: <==commonly_known== 12617 (pos)
                    (Bd_checked_p4)

                    ; #89754: <==commonly_known== 12617 (pos)
                    (Ba_checked_p4)

                    ; #15670: <==negation-removal== 36168 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #16178: <==negation-removal== 18968 (pos)
                    (not (Ba_not_checked_p4))

                    ; #21418: <==negation-removal== 26394 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #26996: <==negation-removal== 89754 (pos)
                    (not (Pa_not_checked_p4))

                    ; #33462: <==uncertain_firing== 71639 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #35588: <==negation-removal== 71639 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #36839: <==negation-removal== 12617 (pos)
                    (not (not_checked_p4))

                    ; #50467: <==negation-removal== 33733 (pos)
                    (not (Bd_not_checked_p4))

                    ; #52765: <==negation-removal== 52819 (pos)
                    (not (Pc_not_checked_p4))

                    ; #69370: <==uncertain_firing== 26679 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #70718: <==negation-removal== 26679 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #72371: <==negation-removal== 73240 (pos)
                    (not (Pd_not_checked_p4))

                    ; #72723: <==uncertain_firing== 26394 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #77086: <==uncertain_firing== 36168 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #78974: <==negation-removal== 45441 (pos)
                    (not (Pb_not_checked_p4))

                    ; #82427: <==negation-removal== 39467 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86805: <==negation-removal== 46984 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14347: <==commonly_known== 40591 (neg)
                    (Pc_checked_p5)

                    ; #18168: <==closure== 89722 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #18595: <==commonly_known== 40591 (neg)
                    (Pd_checked_p5)

                    ; #19551: <==commonly_known== 92119 (pos)
                    (Bd_checked_p5)

                    ; #23928: <==commonly_known== 92119 (pos)
                    (Bc_checked_p5)

                    ; #32400: <==commonly_known== 92119 (pos)
                    (Bb_checked_p5)

                    ; #36551: <==commonly_known== 40591 (neg)
                    (Pb_checked_p5)

                    ; #37337: <==commonly_known== 92119 (pos)
                    (Ba_checked_p5)

                    ; #37486: <==commonly_known== 40591 (neg)
                    (Pa_checked_p5)

                    ; #45472: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #56579: <==closure== 45472 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #89722: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #92119: origin
                    (checked_p5)

                    ; #10797: <==negation-removal== 18595 (pos)
                    (not (Bd_not_checked_p5))

                    ; #23739: <==negation-removal== 37486 (pos)
                    (not (Ba_not_checked_p5))

                    ; #26540: <==uncertain_firing== 89722 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #29614: <==negation-removal== 56579 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #30998: <==negation-removal== 32400 (pos)
                    (not (Pb_not_checked_p5))

                    ; #40591: <==negation-removal== 92119 (pos)
                    (not (not_checked_p5))

                    ; #56454: <==negation-removal== 37337 (pos)
                    (not (Pa_not_checked_p5))

                    ; #56539: <==uncertain_firing== 18168 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #60563: <==negation-removal== 23928 (pos)
                    (not (Pc_not_checked_p5))

                    ; #61029: <==negation-removal== 89722 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #65057: <==negation-removal== 18168 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #77240: <==negation-removal== 36551 (pos)
                    (not (Bb_not_checked_p5))

                    ; #87855: <==uncertain_firing== 45472 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #88523: <==negation-removal== 14347 (pos)
                    (not (Bc_not_checked_p5))

                    ; #90745: <==uncertain_firing== 56579 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #91672: <==negation-removal== 45472 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #96170: <==negation-removal== 19551 (pos)
                    (not (Pd_not_checked_p5))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10871: <==commonly_known== 76363 (pos)
                    (Bd_checked_p6)

                    ; #22034: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #31717: <==commonly_known== 84097 (neg)
                    (Pb_checked_p6)

                    ; #40479: <==commonly_known== 76363 (pos)
                    (Bc_checked_p6)

                    ; #43718: <==commonly_known== 84097 (neg)
                    (Pc_checked_p6)

                    ; #53945: <==commonly_known== 76363 (pos)
                    (Bb_checked_p6)

                    ; #55296: <==commonly_known== 84097 (neg)
                    (Pa_checked_p6)

                    ; #58104: <==commonly_known== 84097 (neg)
                    (Pd_checked_p6)

                    ; #71378: <==commonly_known== 76363 (pos)
                    (Ba_checked_p6)

                    ; #76363: origin
                    (checked_p6)

                    ; #80025: <==closure== 22034 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #80113: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #85078: <==closure== 80113 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #15744: <==negation-removal== 53945 (pos)
                    (not (Pb_not_checked_p6))

                    ; #33346: <==negation-removal== 71378 (pos)
                    (not (Pa_not_checked_p6))

                    ; #43114: <==negation-removal== 58104 (pos)
                    (not (Bd_not_checked_p6))

                    ; #54786: <==uncertain_firing== 22034 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #56961: <==negation-removal== 40479 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60264: <==negation-removal== 31717 (pos)
                    (not (Bb_not_checked_p6))

                    ; #61702: <==negation-removal== 80025 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #65284: <==uncertain_firing== 85078 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #65989: <==uncertain_firing== 80025 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #73286: <==negation-removal== 80113 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #75542: <==negation-removal== 55296 (pos)
                    (not (Ba_not_checked_p6))

                    ; #78386: <==negation-removal== 10871 (pos)
                    (not (Pd_not_checked_p6))

                    ; #84097: <==negation-removal== 76363 (pos)
                    (not (not_checked_p6))

                    ; #84842: <==uncertain_firing== 80113 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #86930: <==negation-removal== 43718 (pos)
                    (not (Bc_not_checked_p6))

                    ; #89009: <==negation-removal== 85078 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #90903: <==negation-removal== 22034 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #16054: <==commonly_known== 37027 (pos)
                    (Bb_checked_p7)

                    ; #27075: <==commonly_known== 37027 (pos)
                    (Bc_checked_p7)

                    ; #29303: <==commonly_known== 37027 (pos)
                    (Ba_checked_p7)

                    ; #37027: origin
                    (checked_p7)

                    ; #43830: <==commonly_known== 10712 (neg)
                    (Pa_checked_p7)

                    ; #44630: <==commonly_known== 10712 (neg)
                    (Pb_checked_p7)

                    ; #60034: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #60831: <==commonly_known== 37027 (pos)
                    (Bd_checked_p7)

                    ; #66197: <==commonly_known== 10712 (neg)
                    (Pd_checked_p7)

                    ; #66630: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #74519: <==closure== 60034 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #75380: <==closure== 66630 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #79607: <==commonly_known== 10712 (neg)
                    (Pc_checked_p7)

                    ; #10712: <==negation-removal== 37027 (pos)
                    (not (not_checked_p7))

                    ; #13341: <==negation-removal== 66630 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #19784: <==uncertain_firing== 74519 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #30992: <==negation-removal== 27075 (pos)
                    (not (Pc_not_checked_p7))

                    ; #35982: <==negation-removal== 75380 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #36986: <==negation-removal== 44630 (pos)
                    (not (Bb_not_checked_p7))

                    ; #38993: <==negation-removal== 16054 (pos)
                    (not (Pb_not_checked_p7))

                    ; #42682: <==negation-removal== 29303 (pos)
                    (not (Pa_not_checked_p7))

                    ; #45199: <==uncertain_firing== 60034 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #51288: <==uncertain_firing== 75380 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #53300: <==negation-removal== 79607 (pos)
                    (not (Bc_not_checked_p7))

                    ; #64724: <==negation-removal== 74519 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #71427: <==negation-removal== 60831 (pos)
                    (not (Pd_not_checked_p7))

                    ; #71740: <==uncertain_firing== 66630 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #81773: <==negation-removal== 43830 (pos)
                    (not (Ba_not_checked_p7))

                    ; #84850: <==negation-removal== 66197 (pos)
                    (not (Bd_not_checked_p7))

                    ; #88099: <==negation-removal== 60034 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11620: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #26089: <==commonly_known== 66759 (pos)
                    (Ba_checked_p8)

                    ; #30505: <==commonly_known== 66759 (pos)
                    (Bd_checked_p8)

                    ; #36861: <==commonly_known== 66759 (pos)
                    (Bc_checked_p8)

                    ; #57690: <==commonly_known== 49381 (neg)
                    (Pc_checked_p8)

                    ; #65467: <==closure== 89535 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #66759: origin
                    (checked_p8)

                    ; #70593: <==commonly_known== 49381 (neg)
                    (Pb_checked_p8)

                    ; #73112: <==commonly_known== 49381 (neg)
                    (Pd_checked_p8)

                    ; #73566: <==commonly_known== 49381 (neg)
                    (Pa_checked_p8)

                    ; #88920: <==commonly_known== 66759 (pos)
                    (Bb_checked_p8)

                    ; #89535: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #91394: <==closure== 11620 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #15291: <==uncertain_firing== 65467 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #29798: <==uncertain_firing== 91394 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #31719: <==negation-removal== 30505 (pos)
                    (not (Pd_not_checked_p8))

                    ; #39763: <==negation-removal== 73566 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42048: <==negation-removal== 70593 (pos)
                    (not (Bb_not_checked_p8))

                    ; #49381: <==negation-removal== 66759 (pos)
                    (not (not_checked_p8))

                    ; #54860: <==negation-removal== 11620 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #62041: <==negation-removal== 89535 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #65859: <==negation-removal== 57690 (pos)
                    (not (Bc_not_checked_p8))

                    ; #68034: <==negation-removal== 36861 (pos)
                    (not (Pc_not_checked_p8))

                    ; #69812: <==negation-removal== 65467 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #73231: <==uncertain_firing== 11620 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #78514: <==negation-removal== 88920 (pos)
                    (not (Pb_not_checked_p8))

                    ; #80966: <==negation-removal== 26089 (pos)
                    (not (Pa_not_checked_p8))

                    ; #83571: <==uncertain_firing== 89535 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #83775: <==negation-removal== 91394 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #87314: <==negation-removal== 73112 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13212: <==commonly_known== 63808 (neg)
                    (Pa_checked_p9)

                    ; #14056: <==commonly_known== 63808 (neg)
                    (Pd_checked_p9)

                    ; #14640: <==commonly_known== 63808 (neg)
                    (Pb_checked_p9)

                    ; #18007: <==closure== 58203 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #20120: <==closure== 69167 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #35310: <==commonly_known== 63808 (neg)
                    (Pc_checked_p9)

                    ; #52677: <==commonly_known== 69718 (pos)
                    (Ba_checked_p9)

                    ; #56084: <==commonly_known== 69718 (pos)
                    (Bb_checked_p9)

                    ; #58203: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #69167: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #69718: origin
                    (checked_p9)

                    ; #72140: <==commonly_known== 69718 (pos)
                    (Bd_checked_p9)

                    ; #90017: <==commonly_known== 69718 (pos)
                    (Bc_checked_p9)

                    ; #22216: <==negation-removal== 14640 (pos)
                    (not (Bb_not_checked_p9))

                    ; #22994: <==negation-removal== 56084 (pos)
                    (not (Pb_not_checked_p9))

                    ; #25833: <==negation-removal== 72140 (pos)
                    (not (Pd_not_checked_p9))

                    ; #32200: <==uncertain_firing== 18007 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #35267: <==negation-removal== 35310 (pos)
                    (not (Bc_not_checked_p9))

                    ; #36876: <==negation-removal== 52677 (pos)
                    (not (Pa_not_checked_p9))

                    ; #38795: <==uncertain_firing== 58203 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #39438: <==negation-removal== 18007 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #40382: <==negation-removal== 69167 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #48477: <==uncertain_firing== 20120 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #48928: <==negation-removal== 14056 (pos)
                    (not (Bd_not_checked_p9))

                    ; #60568: <==negation-removal== 13212 (pos)
                    (not (Ba_not_checked_p9))

                    ; #63808: <==negation-removal== 69718 (pos)
                    (not (not_checked_p9))

                    ; #72606: <==uncertain_firing== 69167 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #75989: <==negation-removal== 58203 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #79057: <==negation-removal== 20120 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #82363: <==negation-removal== 90017 (pos)
                    (not (Pc_not_checked_p9))))

)