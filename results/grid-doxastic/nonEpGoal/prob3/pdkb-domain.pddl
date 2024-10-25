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
                    ; #11752: <==closure== 46791 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #23893: <==closure== 54072 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #46791: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #49827: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #54072: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #77650: <==closure== 88342 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #81604: <==closure== 49827 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #88342: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #16298: <==negation-removal== 54072 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #20636: <==negation-removal== 88342 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #24215: <==negation-removal== 11752 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #25723: <==uncertain_firing== 49827 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #25934: <==negation-removal== 23893 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #30962: <==uncertain_firing== 11752 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #37576: <==negation-removal== 77650 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #44551: <==uncertain_firing== 77650 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #49070: <==negation-removal== 81604 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #54008: <==uncertain_firing== 46791 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #72150: <==negation-removal== 49827 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #78046: <==uncertain_firing== 23893 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #84032: <==uncertain_firing== 81604 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #87777: <==negation-removal== 46791 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #90064: <==uncertain_firing== 54072 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #96715: <==uncertain_firing== 88342 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #11752: <==closure== 46791 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #23893: <==closure== 54072 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #46791: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #49827: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #54072: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #77650: <==closure== 88342 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #81604: <==closure== 49827 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #88342: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #16298: <==negation-removal== 54072 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #20636: <==negation-removal== 88342 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #24215: <==negation-removal== 11752 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #25723: <==uncertain_firing== 49827 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #25934: <==negation-removal== 23893 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #30962: <==uncertain_firing== 11752 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #37576: <==negation-removal== 77650 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #44551: <==uncertain_firing== 77650 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #49070: <==negation-removal== 81604 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #54008: <==uncertain_firing== 46791 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #72150: <==negation-removal== 49827 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #78046: <==uncertain_firing== 23893 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #84032: <==uncertain_firing== 81604 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #87777: <==negation-removal== 46791 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #90064: <==uncertain_firing== 54072 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #96715: <==uncertain_firing== 88342 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #11752: <==closure== 46791 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #23893: <==closure== 54072 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #46791: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #49827: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #54072: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #77650: <==closure== 88342 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #81604: <==closure== 49827 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #88342: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #16298: <==negation-removal== 54072 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #20636: <==negation-removal== 88342 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #24215: <==negation-removal== 11752 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #25723: <==uncertain_firing== 49827 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #25934: <==negation-removal== 23893 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #30962: <==uncertain_firing== 11752 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #37576: <==negation-removal== 77650 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #44551: <==uncertain_firing== 77650 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #49070: <==negation-removal== 81604 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #54008: <==uncertain_firing== 46791 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #72150: <==negation-removal== 49827 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #78046: <==uncertain_firing== 23893 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #84032: <==uncertain_firing== 81604 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #87777: <==negation-removal== 46791 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #90064: <==uncertain_firing== 54072 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #96715: <==uncertain_firing== 88342 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #11752: <==closure== 46791 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #23893: <==closure== 54072 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #46791: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #49827: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #54072: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #77650: <==closure== 88342 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #81604: <==closure== 49827 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #88342: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #16298: <==negation-removal== 54072 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #20636: <==negation-removal== 88342 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #24215: <==negation-removal== 11752 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #25723: <==uncertain_firing== 49827 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #25934: <==negation-removal== 23893 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #30962: <==uncertain_firing== 11752 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #37576: <==negation-removal== 77650 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #44551: <==uncertain_firing== 77650 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #49070: <==negation-removal== 81604 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #54008: <==uncertain_firing== 46791 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #72150: <==negation-removal== 49827 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #78046: <==uncertain_firing== 23893 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #84032: <==uncertain_firing== 81604 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #87777: <==negation-removal== 46791 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #90064: <==uncertain_firing== 54072 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #96715: <==uncertain_firing== 88342 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #16466: <==closure== 53530 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #19921: <==closure== 55055 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #31615: <==closure== 77743 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #53530: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #55055: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #63237: <==closure== 75904 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #75904: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #77743: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #25050: <==uncertain_firing== 53530 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #26682: <==negation-removal== 19921 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #29131: <==uncertain_firing== 19921 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #32162: <==negation-removal== 75904 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #35502: <==uncertain_firing== 31615 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #36595: <==negation-removal== 31615 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41464: <==uncertain_firing== 16466 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #45266: <==negation-removal== 77743 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46451: <==negation-removal== 55055 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #48559: <==negation-removal== 16466 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #63458: <==uncertain_firing== 75904 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #63946: <==uncertain_firing== 55055 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #73370: <==negation-removal== 53530 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #84479: <==negation-removal== 63237 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #85230: <==uncertain_firing== 77743 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #85432: <==uncertain_firing== 63237 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #16466: <==closure== 53530 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #19921: <==closure== 55055 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #31615: <==closure== 77743 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #53530: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #55055: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #63237: <==closure== 75904 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #75904: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #77743: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #25050: <==uncertain_firing== 53530 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #26682: <==negation-removal== 19921 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #29131: <==uncertain_firing== 19921 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #32162: <==negation-removal== 75904 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #35502: <==uncertain_firing== 31615 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #36595: <==negation-removal== 31615 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41464: <==uncertain_firing== 16466 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #45266: <==negation-removal== 77743 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46451: <==negation-removal== 55055 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #48559: <==negation-removal== 16466 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #63458: <==uncertain_firing== 75904 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #63946: <==uncertain_firing== 55055 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #73370: <==negation-removal== 53530 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #84479: <==negation-removal== 63237 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #85230: <==uncertain_firing== 77743 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #85432: <==uncertain_firing== 63237 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #16466: <==closure== 53530 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #19921: <==closure== 55055 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #31615: <==closure== 77743 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #53530: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #55055: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #63237: <==closure== 75904 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #75904: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #77743: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #25050: <==uncertain_firing== 53530 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #26682: <==negation-removal== 19921 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #29131: <==uncertain_firing== 19921 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #32162: <==negation-removal== 75904 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #35502: <==uncertain_firing== 31615 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #36595: <==negation-removal== 31615 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41464: <==uncertain_firing== 16466 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #45266: <==negation-removal== 77743 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46451: <==negation-removal== 55055 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #48559: <==negation-removal== 16466 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #63458: <==uncertain_firing== 75904 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #63946: <==uncertain_firing== 55055 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #73370: <==negation-removal== 53530 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #84479: <==negation-removal== 63237 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #85230: <==uncertain_firing== 77743 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #85432: <==uncertain_firing== 63237 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (at_d_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #16466: <==closure== 53530 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #19921: <==closure== 55055 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #31615: <==closure== 77743 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #53530: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #55055: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #63237: <==closure== 75904 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #75904: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #77743: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #25050: <==uncertain_firing== 53530 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #26682: <==negation-removal== 19921 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #29131: <==uncertain_firing== 19921 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #32162: <==negation-removal== 75904 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #35502: <==uncertain_firing== 31615 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #36595: <==negation-removal== 31615 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41464: <==uncertain_firing== 16466 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #45266: <==negation-removal== 77743 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46451: <==negation-removal== 55055 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #48559: <==negation-removal== 16466 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #63458: <==uncertain_firing== 75904 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #63946: <==uncertain_firing== 55055 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #73370: <==negation-removal== 53530 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #84479: <==negation-removal== 63237 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #85230: <==uncertain_firing== 77743 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #85432: <==uncertain_firing== 63237 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #13198: <==closure== 25443 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #17003: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #25443: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #30824: <==closure== 52754 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #52754: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #67263: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #79459: <==closure== 67263 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #86760: <==closure== 17003 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #10157: <==negation-removal== 25443 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #12771: <==negation-removal== 17003 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #16384: <==negation-removal== 30824 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #23514: <==uncertain_firing== 17003 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #26170: <==uncertain_firing== 67263 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #37053: <==negation-removal== 86760 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #46125: <==uncertain_firing== 86760 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #46213: <==negation-removal== 13198 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #48569: <==uncertain_firing== 13198 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #50751: <==uncertain_firing== 30824 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59002: <==uncertain_firing== 52754 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #63244: <==negation-removal== 67263 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #68023: <==negation-removal== 79459 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #73729: <==negation-removal== 52754 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #78352: <==uncertain_firing== 25443 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #85923: <==uncertain_firing== 79459 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #13198: <==closure== 25443 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #17003: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #25443: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #30824: <==closure== 52754 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #52754: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #67263: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #79459: <==closure== 67263 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #86760: <==closure== 17003 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #10157: <==negation-removal== 25443 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #12771: <==negation-removal== 17003 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #16384: <==negation-removal== 30824 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #23514: <==uncertain_firing== 17003 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #26170: <==uncertain_firing== 67263 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #37053: <==negation-removal== 86760 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #46125: <==uncertain_firing== 86760 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #46213: <==negation-removal== 13198 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #48569: <==uncertain_firing== 13198 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #50751: <==uncertain_firing== 30824 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59002: <==uncertain_firing== 52754 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #63244: <==negation-removal== 67263 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #68023: <==negation-removal== 79459 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #73729: <==negation-removal== 52754 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #78352: <==uncertain_firing== 25443 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #85923: <==uncertain_firing== 79459 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #13198: <==closure== 25443 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #17003: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #25443: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #30824: <==closure== 52754 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #52754: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #67263: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #79459: <==closure== 67263 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #86760: <==closure== 17003 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #10157: <==negation-removal== 25443 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #12771: <==negation-removal== 17003 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #16384: <==negation-removal== 30824 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #23514: <==uncertain_firing== 17003 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #26170: <==uncertain_firing== 67263 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #37053: <==negation-removal== 86760 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #46125: <==uncertain_firing== 86760 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #46213: <==negation-removal== 13198 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #48569: <==uncertain_firing== 13198 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #50751: <==uncertain_firing== 30824 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59002: <==uncertain_firing== 52754 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #63244: <==negation-removal== 67263 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #68023: <==negation-removal== 79459 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #73729: <==negation-removal== 52754 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #78352: <==uncertain_firing== 25443 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #85923: <==uncertain_firing== 79459 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #13198: <==closure== 25443 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #17003: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #25443: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #30824: <==closure== 52754 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #52754: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #67263: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #79459: <==closure== 67263 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #86760: <==closure== 17003 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #10157: <==negation-removal== 25443 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #12771: <==negation-removal== 17003 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #16384: <==negation-removal== 30824 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #23514: <==uncertain_firing== 17003 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #26170: <==uncertain_firing== 67263 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #37053: <==negation-removal== 86760 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #46125: <==uncertain_firing== 86760 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #46213: <==negation-removal== 13198 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #48569: <==uncertain_firing== 13198 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #50751: <==uncertain_firing== 30824 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59002: <==uncertain_firing== 52754 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #63244: <==negation-removal== 67263 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #68023: <==negation-removal== 79459 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #73729: <==negation-removal== 52754 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #78352: <==uncertain_firing== 25443 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #85923: <==uncertain_firing== 79459 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #10630: <==closure== 22847 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #22847: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #30271: <==closure== 36248 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #32061: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #36248: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #38953: <==closure== 75138 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #71568: <==closure== 32061 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #75138: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #10826: <==negation-removal== 75138 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #12238: <==uncertain_firing== 30271 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #13113: <==uncertain_firing== 10630 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #18271: <==uncertain_firing== 32061 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #20814: <==uncertain_firing== 38953 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #23610: <==uncertain_firing== 75138 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #36134: <==negation-removal== 22847 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #36525: <==uncertain_firing== 36248 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #46833: <==negation-removal== 10630 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #54682: <==negation-removal== 38953 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #54998: <==uncertain_firing== 22847 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #59084: <==negation-removal== 32061 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #69468: <==uncertain_firing== 71568 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #70352: <==negation-removal== 71568 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #83637: <==negation-removal== 30271 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #92306: <==negation-removal== 36248 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #10630: <==closure== 22847 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #22847: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #30271: <==closure== 36248 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #32061: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #36248: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #38953: <==closure== 75138 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #71568: <==closure== 32061 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #75138: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #10826: <==negation-removal== 75138 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #12238: <==uncertain_firing== 30271 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #13113: <==uncertain_firing== 10630 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #18271: <==uncertain_firing== 32061 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #20814: <==uncertain_firing== 38953 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #23610: <==uncertain_firing== 75138 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #36134: <==negation-removal== 22847 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #36525: <==uncertain_firing== 36248 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #46833: <==negation-removal== 10630 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #54682: <==negation-removal== 38953 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #54998: <==uncertain_firing== 22847 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #59084: <==negation-removal== 32061 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #69468: <==uncertain_firing== 71568 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #70352: <==negation-removal== 71568 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #83637: <==negation-removal== 30271 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #92306: <==negation-removal== 36248 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #10630: <==closure== 22847 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #22847: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #30271: <==closure== 36248 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #32061: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #36248: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #38953: <==closure== 75138 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #71568: <==closure== 32061 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #75138: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #10826: <==negation-removal== 75138 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #12238: <==uncertain_firing== 30271 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #13113: <==uncertain_firing== 10630 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #18271: <==uncertain_firing== 32061 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #20814: <==uncertain_firing== 38953 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #23610: <==uncertain_firing== 75138 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #36134: <==negation-removal== 22847 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #36525: <==uncertain_firing== 36248 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #46833: <==negation-removal== 10630 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #54682: <==negation-removal== 38953 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #54998: <==uncertain_firing== 22847 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #59084: <==negation-removal== 32061 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #69468: <==uncertain_firing== 71568 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #70352: <==negation-removal== 71568 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #83637: <==negation-removal== 30271 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #92306: <==negation-removal== 36248 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #10630: <==closure== 22847 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #22847: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #30271: <==closure== 36248 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #32061: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #36248: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #38953: <==closure== 75138 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #71568: <==closure== 32061 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #75138: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #10826: <==negation-removal== 75138 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #12238: <==uncertain_firing== 30271 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #13113: <==uncertain_firing== 10630 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #18271: <==uncertain_firing== 32061 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #20814: <==uncertain_firing== 38953 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #23610: <==uncertain_firing== 75138 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #36134: <==negation-removal== 22847 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #36525: <==uncertain_firing== 36248 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #46833: <==negation-removal== 10630 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #54682: <==negation-removal== 38953 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #54998: <==uncertain_firing== 22847 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #59084: <==negation-removal== 32061 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #69468: <==uncertain_firing== 71568 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #70352: <==negation-removal== 71568 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #83637: <==negation-removal== 30271 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #92306: <==negation-removal== 36248 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #10444: <==closure== 35328 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #23265: <==closure== 74667 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #35328: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #38324: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #56415: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #74667: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #79986: <==closure== 56415 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #86500: <==closure== 38324 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #11416: <==negation-removal== 35328 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #12550: <==uncertain_firing== 23265 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #14996: <==uncertain_firing== 86500 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #15595: <==negation-removal== 86500 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #17338: <==uncertain_firing== 10444 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25475: <==uncertain_firing== 79986 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #27034: <==uncertain_firing== 74667 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #29487: <==negation-removal== 10444 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #39307: <==negation-removal== 38324 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #48762: <==negation-removal== 23265 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #60327: <==uncertain_firing== 35328 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #62603: <==negation-removal== 74667 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #69477: <==negation-removal== 79986 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #74023: <==negation-removal== 56415 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #76011: <==uncertain_firing== 56415 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #80883: <==uncertain_firing== 38324 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #10444: <==closure== 35328 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #23265: <==closure== 74667 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #35328: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #38324: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #56415: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #74667: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #79986: <==closure== 56415 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #86500: <==closure== 38324 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #11416: <==negation-removal== 35328 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #12550: <==uncertain_firing== 23265 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #14996: <==uncertain_firing== 86500 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #15595: <==negation-removal== 86500 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #17338: <==uncertain_firing== 10444 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25475: <==uncertain_firing== 79986 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #27034: <==uncertain_firing== 74667 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #29487: <==negation-removal== 10444 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #39307: <==negation-removal== 38324 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #48762: <==negation-removal== 23265 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #60327: <==uncertain_firing== 35328 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #62603: <==negation-removal== 74667 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #69477: <==negation-removal== 79986 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #74023: <==negation-removal== 56415 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #76011: <==uncertain_firing== 56415 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #80883: <==uncertain_firing== 38324 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #10444: <==closure== 35328 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #23265: <==closure== 74667 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #35328: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #38324: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #56415: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #74667: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #79986: <==closure== 56415 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #86500: <==closure== 38324 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #11416: <==negation-removal== 35328 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #12550: <==uncertain_firing== 23265 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #14996: <==uncertain_firing== 86500 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #15595: <==negation-removal== 86500 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #17338: <==uncertain_firing== 10444 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25475: <==uncertain_firing== 79986 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #27034: <==uncertain_firing== 74667 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #29487: <==negation-removal== 10444 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #39307: <==negation-removal== 38324 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #48762: <==negation-removal== 23265 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #60327: <==uncertain_firing== 35328 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #62603: <==negation-removal== 74667 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #69477: <==negation-removal== 79986 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #74023: <==negation-removal== 56415 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #76011: <==uncertain_firing== 56415 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #80883: <==uncertain_firing== 38324 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #10444: <==closure== 35328 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #23265: <==closure== 74667 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #35328: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #38324: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #56415: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #74667: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #79986: <==closure== 56415 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #86500: <==closure== 38324 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #11416: <==negation-removal== 35328 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #12550: <==uncertain_firing== 23265 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #14996: <==uncertain_firing== 86500 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #15595: <==negation-removal== 86500 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #17338: <==uncertain_firing== 10444 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25475: <==uncertain_firing== 79986 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #27034: <==uncertain_firing== 74667 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #29487: <==negation-removal== 10444 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #39307: <==negation-removal== 38324 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #48762: <==negation-removal== 23265 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #60327: <==uncertain_firing== 35328 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #62603: <==negation-removal== 74667 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #69477: <==negation-removal== 79986 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #74023: <==negation-removal== 56415 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #76011: <==uncertain_firing== 56415 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #80883: <==uncertain_firing== 38324 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #18539: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #39256: <==closure== 83191 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #40254: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #50437: <==closure== 40254 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #58774: <==closure== 18539 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #70271: <==closure== 81460 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #81460: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #83191: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #10947: <==negation-removal== 39256 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #16661: <==negation-removal== 40254 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #20190: <==uncertain_firing== 70271 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #27198: <==uncertain_firing== 58774 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #27424: <==uncertain_firing== 18539 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #29200: <==uncertain_firing== 40254 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #32141: <==negation-removal== 18539 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #34807: <==negation-removal== 58774 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #36373: <==negation-removal== 81460 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #40049: <==negation-removal== 83191 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #52186: <==negation-removal== 70271 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #53389: <==negation-removal== 50437 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #63900: <==uncertain_firing== 83191 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #67457: <==uncertain_firing== 81460 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #76941: <==uncertain_firing== 50437 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #83654: <==uncertain_firing== 39256 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #18539: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #39256: <==closure== 83191 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #40254: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #50437: <==closure== 40254 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #58774: <==closure== 18539 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #70271: <==closure== 81460 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #81460: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #83191: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #10947: <==negation-removal== 39256 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #16661: <==negation-removal== 40254 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #20190: <==uncertain_firing== 70271 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #27198: <==uncertain_firing== 58774 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #27424: <==uncertain_firing== 18539 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #29200: <==uncertain_firing== 40254 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #32141: <==negation-removal== 18539 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #34807: <==negation-removal== 58774 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #36373: <==negation-removal== 81460 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #40049: <==negation-removal== 83191 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #52186: <==negation-removal== 70271 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #53389: <==negation-removal== 50437 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #63900: <==uncertain_firing== 83191 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #67457: <==uncertain_firing== 81460 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #76941: <==uncertain_firing== 50437 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #83654: <==uncertain_firing== 39256 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #18539: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #39256: <==closure== 83191 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #40254: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #50437: <==closure== 40254 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #58774: <==closure== 18539 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #70271: <==closure== 81460 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #81460: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #83191: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #10947: <==negation-removal== 39256 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #16661: <==negation-removal== 40254 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #20190: <==uncertain_firing== 70271 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #27198: <==uncertain_firing== 58774 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #27424: <==uncertain_firing== 18539 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #29200: <==uncertain_firing== 40254 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #32141: <==negation-removal== 18539 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #34807: <==negation-removal== 58774 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #36373: <==negation-removal== 81460 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #40049: <==negation-removal== 83191 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #52186: <==negation-removal== 70271 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #53389: <==negation-removal== 50437 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #63900: <==uncertain_firing== 83191 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #67457: <==uncertain_firing== 81460 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #76941: <==uncertain_firing== 50437 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #83654: <==uncertain_firing== 39256 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (at_d_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #18539: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #39256: <==closure== 83191 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #40254: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #50437: <==closure== 40254 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #58774: <==closure== 18539 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #70271: <==closure== 81460 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #81460: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #83191: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #10947: <==negation-removal== 39256 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #16661: <==negation-removal== 40254 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #20190: <==uncertain_firing== 70271 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #27198: <==uncertain_firing== 58774 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #27424: <==uncertain_firing== 18539 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #29200: <==uncertain_firing== 40254 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #32141: <==negation-removal== 18539 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #34807: <==negation-removal== 58774 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #36373: <==negation-removal== 81460 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #40049: <==negation-removal== 83191 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #52186: <==negation-removal== 70271 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #53389: <==negation-removal== 50437 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #63900: <==uncertain_firing== 83191 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #67457: <==uncertain_firing== 81460 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #76941: <==uncertain_firing== 50437 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #83654: <==uncertain_firing== 39256 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #42576: <==closure== 50763 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #44689: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #45193: <==closure== 85888 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #50763: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #67494: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #67807: <==closure== 67494 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #77852: <==closure== 44689 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #85888: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #16860: <==negation-removal== 44689 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25050: <==uncertain_firing== 44689 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #36944: <==negation-removal== 85888 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #36977: <==negation-removal== 67494 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #37030: <==uncertain_firing== 77852 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40991: <==uncertain_firing== 67494 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41680: <==uncertain_firing== 45193 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #43283: <==negation-removal== 50763 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #51644: <==negation-removal== 77852 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #56212: <==negation-removal== 42576 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #62548: <==uncertain_firing== 67807 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #75222: <==negation-removal== 67807 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76323: <==uncertain_firing== 50763 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #79839: <==negation-removal== 45193 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #83565: <==uncertain_firing== 85888 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #90418: <==uncertain_firing== 42576 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #42576: <==closure== 50763 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #44689: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #45193: <==closure== 85888 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #50763: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #67494: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #67807: <==closure== 67494 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #77852: <==closure== 44689 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #85888: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #16860: <==negation-removal== 44689 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25050: <==uncertain_firing== 44689 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #36944: <==negation-removal== 85888 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #36977: <==negation-removal== 67494 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #37030: <==uncertain_firing== 77852 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40991: <==uncertain_firing== 67494 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41680: <==uncertain_firing== 45193 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #43283: <==negation-removal== 50763 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #51644: <==negation-removal== 77852 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #56212: <==negation-removal== 42576 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #62548: <==uncertain_firing== 67807 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #75222: <==negation-removal== 67807 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76323: <==uncertain_firing== 50763 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #79839: <==negation-removal== 45193 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #83565: <==uncertain_firing== 85888 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #90418: <==uncertain_firing== 42576 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #42576: <==closure== 50763 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #44689: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #45193: <==closure== 85888 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #50763: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #67494: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #67807: <==closure== 67494 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #77852: <==closure== 44689 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #85888: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #16860: <==negation-removal== 44689 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25050: <==uncertain_firing== 44689 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #36944: <==negation-removal== 85888 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #36977: <==negation-removal== 67494 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #37030: <==uncertain_firing== 77852 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40991: <==uncertain_firing== 67494 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41680: <==uncertain_firing== 45193 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #43283: <==negation-removal== 50763 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #51644: <==negation-removal== 77852 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #56212: <==negation-removal== 42576 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #62548: <==uncertain_firing== 67807 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #75222: <==negation-removal== 67807 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76323: <==uncertain_firing== 50763 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #79839: <==negation-removal== 45193 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #83565: <==uncertain_firing== 85888 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #90418: <==uncertain_firing== 42576 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #42576: <==closure== 50763 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #44689: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #45193: <==closure== 85888 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #50763: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #67494: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #67807: <==closure== 67494 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #77852: <==closure== 44689 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #85888: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #16860: <==negation-removal== 44689 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25050: <==uncertain_firing== 44689 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #36944: <==negation-removal== 85888 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #36977: <==negation-removal== 67494 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #37030: <==uncertain_firing== 77852 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40991: <==uncertain_firing== 67494 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41680: <==uncertain_firing== 45193 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #43283: <==negation-removal== 50763 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #51644: <==negation-removal== 77852 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #56212: <==negation-removal== 42576 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #62548: <==uncertain_firing== 67807 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #75222: <==negation-removal== 67807 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76323: <==uncertain_firing== 50763 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #79839: <==negation-removal== 45193 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #83565: <==uncertain_firing== 85888 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #90418: <==uncertain_firing== 42576 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #25445: <==closure== 29812 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #29812: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #33859: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #36750: <==closure== 58458 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #44430: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #58458: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #67757: <==closure== 33859 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #87505: <==closure== 44430 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #17341: <==uncertain_firing== 36750 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #21549: <==uncertain_firing== 87505 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #24428: <==negation-removal== 44430 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #29303: <==negation-removal== 33859 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #48900: <==negation-removal== 67757 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #53647: <==negation-removal== 36750 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #55747: <==uncertain_firing== 44430 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60016: <==negation-removal== 87505 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #63842: <==negation-removal== 25445 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #68444: <==uncertain_firing== 58458 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #77737: <==uncertain_firing== 67757 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #79163: <==uncertain_firing== 25445 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #79482: <==uncertain_firing== 33859 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #83393: <==negation-removal== 58458 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #83758: <==uncertain_firing== 29812 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #84011: <==negation-removal== 29812 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #25445: <==closure== 29812 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #29812: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #33859: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #36750: <==closure== 58458 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #44430: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #58458: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #67757: <==closure== 33859 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #87505: <==closure== 44430 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #17341: <==uncertain_firing== 36750 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #21549: <==uncertain_firing== 87505 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #24428: <==negation-removal== 44430 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #29303: <==negation-removal== 33859 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #48900: <==negation-removal== 67757 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #53647: <==negation-removal== 36750 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #55747: <==uncertain_firing== 44430 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60016: <==negation-removal== 87505 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #63842: <==negation-removal== 25445 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #68444: <==uncertain_firing== 58458 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #77737: <==uncertain_firing== 67757 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #79163: <==uncertain_firing== 25445 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #79482: <==uncertain_firing== 33859 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #83393: <==negation-removal== 58458 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #83758: <==uncertain_firing== 29812 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #84011: <==negation-removal== 29812 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #25445: <==closure== 29812 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #29812: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #33859: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #36750: <==closure== 58458 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #44430: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #58458: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #67757: <==closure== 33859 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #87505: <==closure== 44430 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #17341: <==uncertain_firing== 36750 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #21549: <==uncertain_firing== 87505 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #24428: <==negation-removal== 44430 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #29303: <==negation-removal== 33859 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #48900: <==negation-removal== 67757 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #53647: <==negation-removal== 36750 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #55747: <==uncertain_firing== 44430 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60016: <==negation-removal== 87505 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #63842: <==negation-removal== 25445 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #68444: <==uncertain_firing== 58458 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #77737: <==uncertain_firing== 67757 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #79163: <==uncertain_firing== 25445 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #79482: <==uncertain_firing== 33859 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #83393: <==negation-removal== 58458 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #83758: <==uncertain_firing== 29812 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #84011: <==negation-removal== 29812 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #25445: <==closure== 29812 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #29812: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #33859: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #36750: <==closure== 58458 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #44430: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #58458: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #67757: <==closure== 33859 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #87505: <==closure== 44430 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #17341: <==uncertain_firing== 36750 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #21549: <==uncertain_firing== 87505 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #24428: <==negation-removal== 44430 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #29303: <==negation-removal== 33859 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #48900: <==negation-removal== 67757 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #53647: <==negation-removal== 36750 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #55747: <==uncertain_firing== 44430 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60016: <==negation-removal== 87505 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #63842: <==negation-removal== 25445 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #68444: <==uncertain_firing== 58458 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #77737: <==uncertain_firing== 67757 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #79163: <==uncertain_firing== 25445 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #79482: <==uncertain_firing== 33859 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #83393: <==negation-removal== 58458 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #83758: <==uncertain_firing== 29812 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #84011: <==negation-removal== 29812 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #19855: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #23571: <==closure== 33461 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #30875: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #33461: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #51596: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #52024: <==closure== 19855 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #57871: <==closure== 51596 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #59472: <==closure== 30875 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #11743: <==negation-removal== 19855 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #15775: <==uncertain_firing== 59472 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #21288: <==negation-removal== 33461 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #23608: <==uncertain_firing== 33461 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #30763: <==negation-removal== 51596 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #33345: <==negation-removal== 23571 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #34241: <==negation-removal== 57871 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36918: <==uncertain_firing== 23571 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #47880: <==uncertain_firing== 52024 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #54344: <==negation-removal== 30875 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #61840: <==negation-removal== 59472 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #67630: <==uncertain_firing== 19855 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69249: <==uncertain_firing== 30875 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #77933: <==negation-removal== 52024 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #81875: <==uncertain_firing== 57871 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88606: <==uncertain_firing== 51596 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #19855: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #23571: <==closure== 33461 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #30875: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #33461: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #51596: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #52024: <==closure== 19855 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #57871: <==closure== 51596 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #59472: <==closure== 30875 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #11743: <==negation-removal== 19855 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #15775: <==uncertain_firing== 59472 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #21288: <==negation-removal== 33461 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #23608: <==uncertain_firing== 33461 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #30763: <==negation-removal== 51596 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #33345: <==negation-removal== 23571 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #34241: <==negation-removal== 57871 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36918: <==uncertain_firing== 23571 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #47880: <==uncertain_firing== 52024 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #54344: <==negation-removal== 30875 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #61840: <==negation-removal== 59472 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #67630: <==uncertain_firing== 19855 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69249: <==uncertain_firing== 30875 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #77933: <==negation-removal== 52024 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #81875: <==uncertain_firing== 57871 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88606: <==uncertain_firing== 51596 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #19855: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #23571: <==closure== 33461 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #30875: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #33461: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #51596: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #52024: <==closure== 19855 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #57871: <==closure== 51596 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #59472: <==closure== 30875 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #11743: <==negation-removal== 19855 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #15775: <==uncertain_firing== 59472 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #21288: <==negation-removal== 33461 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #23608: <==uncertain_firing== 33461 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #30763: <==negation-removal== 51596 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #33345: <==negation-removal== 23571 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #34241: <==negation-removal== 57871 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36918: <==uncertain_firing== 23571 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #47880: <==uncertain_firing== 52024 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #54344: <==negation-removal== 30875 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #61840: <==negation-removal== 59472 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #67630: <==uncertain_firing== 19855 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69249: <==uncertain_firing== 30875 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #77933: <==negation-removal== 52024 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #81875: <==uncertain_firing== 57871 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88606: <==uncertain_firing== 51596 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #19855: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #23571: <==closure== 33461 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #30875: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #33461: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #51596: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #52024: <==closure== 19855 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #57871: <==closure== 51596 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #59472: <==closure== 30875 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #11743: <==negation-removal== 19855 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #15775: <==uncertain_firing== 59472 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #21288: <==negation-removal== 33461 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #23608: <==uncertain_firing== 33461 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #30763: <==negation-removal== 51596 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #33345: <==negation-removal== 23571 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #34241: <==negation-removal== 57871 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36918: <==uncertain_firing== 23571 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #47880: <==uncertain_firing== 52024 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #54344: <==negation-removal== 30875 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #61840: <==negation-removal== 59472 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #67630: <==uncertain_firing== 19855 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69249: <==uncertain_firing== 30875 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #77933: <==negation-removal== 52024 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #81875: <==uncertain_firing== 57871 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88606: <==uncertain_firing== 51596 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #12524: origin
                    (Bb_survivorat_s_p1)

                    ; #15525: <==closure== 86192 (pos)
                    (Pa_survivorat_s_p1)

                    ; #61254: <==closure== 72832 (pos)
                    (Pd_survivorat_s_p1)

                    ; #66186: <==closure== 83762 (pos)
                    (Pc_survivorat_s_p1)

                    ; #67813: <==closure== 12524 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72832: origin
                    (Bd_survivorat_s_p1)

                    ; #83762: origin
                    (Bc_survivorat_s_p1)

                    ; #86192: origin
                    (Ba_survivorat_s_p1)

                    ; #12086: <==negation-removal== 12524 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #12290: <==negation-removal== 83762 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #12590: <==negation-removal== 66186 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #36936: <==negation-removal== 15525 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #39137: <==negation-removal== 86192 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #58952: <==negation-removal== 67813 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75198: <==negation-removal== 61254 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #86126: <==negation-removal== 72832 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #12524: origin
                    (Bb_survivorat_s_p1)

                    ; #15525: <==closure== 86192 (pos)
                    (Pa_survivorat_s_p1)

                    ; #61254: <==closure== 72832 (pos)
                    (Pd_survivorat_s_p1)

                    ; #66186: <==closure== 83762 (pos)
                    (Pc_survivorat_s_p1)

                    ; #67813: <==closure== 12524 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72832: origin
                    (Bd_survivorat_s_p1)

                    ; #83762: origin
                    (Bc_survivorat_s_p1)

                    ; #86192: origin
                    (Ba_survivorat_s_p1)

                    ; #12086: <==negation-removal== 12524 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #12290: <==negation-removal== 83762 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #12590: <==negation-removal== 66186 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #36936: <==negation-removal== 15525 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #39137: <==negation-removal== 86192 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #58952: <==negation-removal== 67813 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75198: <==negation-removal== 61254 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #86126: <==negation-removal== 72832 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #12524: origin
                    (Bb_survivorat_s_p1)

                    ; #15525: <==closure== 86192 (pos)
                    (Pa_survivorat_s_p1)

                    ; #61254: <==closure== 72832 (pos)
                    (Pd_survivorat_s_p1)

                    ; #66186: <==closure== 83762 (pos)
                    (Pc_survivorat_s_p1)

                    ; #67813: <==closure== 12524 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72832: origin
                    (Bd_survivorat_s_p1)

                    ; #83762: origin
                    (Bc_survivorat_s_p1)

                    ; #86192: origin
                    (Ba_survivorat_s_p1)

                    ; #12086: <==negation-removal== 12524 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #12290: <==negation-removal== 83762 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #12590: <==negation-removal== 66186 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #36936: <==negation-removal== 15525 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #39137: <==negation-removal== 86192 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #58952: <==negation-removal== 67813 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75198: <==negation-removal== 61254 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #86126: <==negation-removal== 72832 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #12524: origin
                    (Bb_survivorat_s_p1)

                    ; #15525: <==closure== 86192 (pos)
                    (Pa_survivorat_s_p1)

                    ; #61254: <==closure== 72832 (pos)
                    (Pd_survivorat_s_p1)

                    ; #66186: <==closure== 83762 (pos)
                    (Pc_survivorat_s_p1)

                    ; #67813: <==closure== 12524 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72832: origin
                    (Bd_survivorat_s_p1)

                    ; #83762: origin
                    (Bc_survivorat_s_p1)

                    ; #86192: origin
                    (Ba_survivorat_s_p1)

                    ; #12086: <==negation-removal== 12524 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #12290: <==negation-removal== 83762 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #12590: <==negation-removal== 66186 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #36936: <==negation-removal== 15525 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #39137: <==negation-removal== 86192 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #58952: <==negation-removal== 67813 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75198: <==negation-removal== 61254 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #86126: <==negation-removal== 72832 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #15308: <==closure== 82212 (pos)
                    (Pa_survivorat_s_p2)

                    ; #25522: origin
                    (Bb_survivorat_s_p2)

                    ; #27728: origin
                    (Bd_survivorat_s_p2)

                    ; #40690: origin
                    (Bc_survivorat_s_p2)

                    ; #50663: <==closure== 27728 (pos)
                    (Pd_survivorat_s_p2)

                    ; #71514: <==closure== 25522 (pos)
                    (Pb_survivorat_s_p2)

                    ; #77601: <==closure== 40690 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82212: origin
                    (Ba_survivorat_s_p2)

                    ; #10752: <==negation-removal== 27728 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #19619: <==negation-removal== 71514 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #49439: <==negation-removal== 15308 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #50277: <==negation-removal== 40690 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #56493: <==negation-removal== 25522 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #60195: <==negation-removal== 50663 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #79872: <==negation-removal== 82212 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #91837: <==negation-removal== 77601 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #15308: <==closure== 82212 (pos)
                    (Pa_survivorat_s_p2)

                    ; #25522: origin
                    (Bb_survivorat_s_p2)

                    ; #27728: origin
                    (Bd_survivorat_s_p2)

                    ; #40690: origin
                    (Bc_survivorat_s_p2)

                    ; #50663: <==closure== 27728 (pos)
                    (Pd_survivorat_s_p2)

                    ; #71514: <==closure== 25522 (pos)
                    (Pb_survivorat_s_p2)

                    ; #77601: <==closure== 40690 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82212: origin
                    (Ba_survivorat_s_p2)

                    ; #10752: <==negation-removal== 27728 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #19619: <==negation-removal== 71514 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #49439: <==negation-removal== 15308 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #50277: <==negation-removal== 40690 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #56493: <==negation-removal== 25522 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #60195: <==negation-removal== 50663 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #79872: <==negation-removal== 82212 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #91837: <==negation-removal== 77601 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #15308: <==closure== 82212 (pos)
                    (Pa_survivorat_s_p2)

                    ; #25522: origin
                    (Bb_survivorat_s_p2)

                    ; #27728: origin
                    (Bd_survivorat_s_p2)

                    ; #40690: origin
                    (Bc_survivorat_s_p2)

                    ; #50663: <==closure== 27728 (pos)
                    (Pd_survivorat_s_p2)

                    ; #71514: <==closure== 25522 (pos)
                    (Pb_survivorat_s_p2)

                    ; #77601: <==closure== 40690 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82212: origin
                    (Ba_survivorat_s_p2)

                    ; #10752: <==negation-removal== 27728 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #19619: <==negation-removal== 71514 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #49439: <==negation-removal== 15308 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #50277: <==negation-removal== 40690 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #56493: <==negation-removal== 25522 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #60195: <==negation-removal== 50663 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #79872: <==negation-removal== 82212 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #91837: <==negation-removal== 77601 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (at_d_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #15308: <==closure== 82212 (pos)
                    (Pa_survivorat_s_p2)

                    ; #25522: origin
                    (Bb_survivorat_s_p2)

                    ; #27728: origin
                    (Bd_survivorat_s_p2)

                    ; #40690: origin
                    (Bc_survivorat_s_p2)

                    ; #50663: <==closure== 27728 (pos)
                    (Pd_survivorat_s_p2)

                    ; #71514: <==closure== 25522 (pos)
                    (Pb_survivorat_s_p2)

                    ; #77601: <==closure== 40690 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82212: origin
                    (Ba_survivorat_s_p2)

                    ; #10752: <==negation-removal== 27728 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #19619: <==negation-removal== 71514 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #49439: <==negation-removal== 15308 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #50277: <==negation-removal== 40690 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #56493: <==negation-removal== 25522 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #60195: <==negation-removal== 50663 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #79872: <==negation-removal== 82212 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #91837: <==negation-removal== 77601 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #20209: origin
                    (Bb_survivorat_s_p3)

                    ; #21312: <==closure== 65636 (pos)
                    (Pc_survivorat_s_p3)

                    ; #30702: origin
                    (Bd_survivorat_s_p3)

                    ; #33310: origin
                    (Ba_survivorat_s_p3)

                    ; #45297: <==closure== 20209 (pos)
                    (Pb_survivorat_s_p3)

                    ; #52082: <==closure== 33310 (pos)
                    (Pa_survivorat_s_p3)

                    ; #65636: origin
                    (Bc_survivorat_s_p3)

                    ; #87894: <==closure== 30702 (pos)
                    (Pd_survivorat_s_p3)

                    ; #19180: <==negation-removal== 52082 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #38142: <==negation-removal== 45297 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #38277: <==negation-removal== 21312 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #49860: <==negation-removal== 65636 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #80482: <==negation-removal== 33310 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #86457: <==negation-removal== 87894 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #87813: <==negation-removal== 30702 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #94570: <==negation-removal== 20209 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #20209: origin
                    (Bb_survivorat_s_p3)

                    ; #21312: <==closure== 65636 (pos)
                    (Pc_survivorat_s_p3)

                    ; #30702: origin
                    (Bd_survivorat_s_p3)

                    ; #33310: origin
                    (Ba_survivorat_s_p3)

                    ; #45297: <==closure== 20209 (pos)
                    (Pb_survivorat_s_p3)

                    ; #52082: <==closure== 33310 (pos)
                    (Pa_survivorat_s_p3)

                    ; #65636: origin
                    (Bc_survivorat_s_p3)

                    ; #87894: <==closure== 30702 (pos)
                    (Pd_survivorat_s_p3)

                    ; #19180: <==negation-removal== 52082 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #38142: <==negation-removal== 45297 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #38277: <==negation-removal== 21312 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #49860: <==negation-removal== 65636 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #80482: <==negation-removal== 33310 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #86457: <==negation-removal== 87894 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #87813: <==negation-removal== 30702 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #94570: <==negation-removal== 20209 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #20209: origin
                    (Bb_survivorat_s_p3)

                    ; #21312: <==closure== 65636 (pos)
                    (Pc_survivorat_s_p3)

                    ; #30702: origin
                    (Bd_survivorat_s_p3)

                    ; #33310: origin
                    (Ba_survivorat_s_p3)

                    ; #45297: <==closure== 20209 (pos)
                    (Pb_survivorat_s_p3)

                    ; #52082: <==closure== 33310 (pos)
                    (Pa_survivorat_s_p3)

                    ; #65636: origin
                    (Bc_survivorat_s_p3)

                    ; #87894: <==closure== 30702 (pos)
                    (Pd_survivorat_s_p3)

                    ; #19180: <==negation-removal== 52082 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #38142: <==negation-removal== 45297 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #38277: <==negation-removal== 21312 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #49860: <==negation-removal== 65636 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #80482: <==negation-removal== 33310 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #86457: <==negation-removal== 87894 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #87813: <==negation-removal== 30702 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #94570: <==negation-removal== 20209 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #20209: origin
                    (Bb_survivorat_s_p3)

                    ; #21312: <==closure== 65636 (pos)
                    (Pc_survivorat_s_p3)

                    ; #30702: origin
                    (Bd_survivorat_s_p3)

                    ; #33310: origin
                    (Ba_survivorat_s_p3)

                    ; #45297: <==closure== 20209 (pos)
                    (Pb_survivorat_s_p3)

                    ; #52082: <==closure== 33310 (pos)
                    (Pa_survivorat_s_p3)

                    ; #65636: origin
                    (Bc_survivorat_s_p3)

                    ; #87894: <==closure== 30702 (pos)
                    (Pd_survivorat_s_p3)

                    ; #19180: <==negation-removal== 52082 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #38142: <==negation-removal== 45297 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #38277: <==negation-removal== 21312 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #49860: <==negation-removal== 65636 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #80482: <==negation-removal== 33310 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #86457: <==negation-removal== 87894 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #87813: <==negation-removal== 30702 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #94570: <==negation-removal== 20209 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #27299: <==closure== 81105 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28160: origin
                    (Bd_survivorat_s_p4)

                    ; #29781: <==closure== 76133 (pos)
                    (Pa_survivorat_s_p4)

                    ; #69760: <==closure== 88127 (pos)
                    (Pc_survivorat_s_p4)

                    ; #76133: origin
                    (Ba_survivorat_s_p4)

                    ; #81105: origin
                    (Bb_survivorat_s_p4)

                    ; #86479: <==closure== 28160 (pos)
                    (Pd_survivorat_s_p4)

                    ; #88127: origin
                    (Bc_survivorat_s_p4)

                    ; #16404: <==negation-removal== 76133 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #26404: <==negation-removal== 27299 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #40152: <==negation-removal== 86479 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #46804: <==negation-removal== 88127 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #56973: <==negation-removal== 69760 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #65192: <==negation-removal== 81105 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #77872: <==negation-removal== 29781 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #85742: <==negation-removal== 28160 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #27299: <==closure== 81105 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28160: origin
                    (Bd_survivorat_s_p4)

                    ; #29781: <==closure== 76133 (pos)
                    (Pa_survivorat_s_p4)

                    ; #69760: <==closure== 88127 (pos)
                    (Pc_survivorat_s_p4)

                    ; #76133: origin
                    (Ba_survivorat_s_p4)

                    ; #81105: origin
                    (Bb_survivorat_s_p4)

                    ; #86479: <==closure== 28160 (pos)
                    (Pd_survivorat_s_p4)

                    ; #88127: origin
                    (Bc_survivorat_s_p4)

                    ; #16404: <==negation-removal== 76133 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #26404: <==negation-removal== 27299 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #40152: <==negation-removal== 86479 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #46804: <==negation-removal== 88127 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #56973: <==negation-removal== 69760 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #65192: <==negation-removal== 81105 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #77872: <==negation-removal== 29781 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #85742: <==negation-removal== 28160 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #27299: <==closure== 81105 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28160: origin
                    (Bd_survivorat_s_p4)

                    ; #29781: <==closure== 76133 (pos)
                    (Pa_survivorat_s_p4)

                    ; #69760: <==closure== 88127 (pos)
                    (Pc_survivorat_s_p4)

                    ; #76133: origin
                    (Ba_survivorat_s_p4)

                    ; #81105: origin
                    (Bb_survivorat_s_p4)

                    ; #86479: <==closure== 28160 (pos)
                    (Pd_survivorat_s_p4)

                    ; #88127: origin
                    (Bc_survivorat_s_p4)

                    ; #16404: <==negation-removal== 76133 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #26404: <==negation-removal== 27299 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #40152: <==negation-removal== 86479 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #46804: <==negation-removal== 88127 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #56973: <==negation-removal== 69760 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #65192: <==negation-removal== 81105 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #77872: <==negation-removal== 29781 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #85742: <==negation-removal== 28160 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #27299: <==closure== 81105 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28160: origin
                    (Bd_survivorat_s_p4)

                    ; #29781: <==closure== 76133 (pos)
                    (Pa_survivorat_s_p4)

                    ; #69760: <==closure== 88127 (pos)
                    (Pc_survivorat_s_p4)

                    ; #76133: origin
                    (Ba_survivorat_s_p4)

                    ; #81105: origin
                    (Bb_survivorat_s_p4)

                    ; #86479: <==closure== 28160 (pos)
                    (Pd_survivorat_s_p4)

                    ; #88127: origin
                    (Bc_survivorat_s_p4)

                    ; #16404: <==negation-removal== 76133 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #26404: <==negation-removal== 27299 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #40152: <==negation-removal== 86479 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #46804: <==negation-removal== 88127 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #56973: <==negation-removal== 69760 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #65192: <==negation-removal== 81105 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #77872: <==negation-removal== 29781 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #85742: <==negation-removal== 28160 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #54176: origin
                    (Bd_survivorat_s_p5)

                    ; #58009: <==closure== 54176 (pos)
                    (Pd_survivorat_s_p5)

                    ; #59902: <==closure== 65306 (pos)
                    (Pc_survivorat_s_p5)

                    ; #61642: <==closure== 83454 (pos)
                    (Pb_survivorat_s_p5)

                    ; #65306: origin
                    (Bc_survivorat_s_p5)

                    ; #78028: <==closure== 84593 (pos)
                    (Pa_survivorat_s_p5)

                    ; #83454: origin
                    (Bb_survivorat_s_p5)

                    ; #84593: origin
                    (Ba_survivorat_s_p5)

                    ; #12285: <==negation-removal== 78028 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #21232: <==negation-removal== 54176 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #25082: <==negation-removal== 65306 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #26326: <==negation-removal== 83454 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #52973: <==negation-removal== 59902 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #67627: <==negation-removal== 84593 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #72292: <==negation-removal== 58009 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #86026: <==negation-removal== 61642 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #54176: origin
                    (Bd_survivorat_s_p5)

                    ; #58009: <==closure== 54176 (pos)
                    (Pd_survivorat_s_p5)

                    ; #59902: <==closure== 65306 (pos)
                    (Pc_survivorat_s_p5)

                    ; #61642: <==closure== 83454 (pos)
                    (Pb_survivorat_s_p5)

                    ; #65306: origin
                    (Bc_survivorat_s_p5)

                    ; #78028: <==closure== 84593 (pos)
                    (Pa_survivorat_s_p5)

                    ; #83454: origin
                    (Bb_survivorat_s_p5)

                    ; #84593: origin
                    (Ba_survivorat_s_p5)

                    ; #12285: <==negation-removal== 78028 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #21232: <==negation-removal== 54176 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #25082: <==negation-removal== 65306 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #26326: <==negation-removal== 83454 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #52973: <==negation-removal== 59902 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #67627: <==negation-removal== 84593 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #72292: <==negation-removal== 58009 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #86026: <==negation-removal== 61642 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #54176: origin
                    (Bd_survivorat_s_p5)

                    ; #58009: <==closure== 54176 (pos)
                    (Pd_survivorat_s_p5)

                    ; #59902: <==closure== 65306 (pos)
                    (Pc_survivorat_s_p5)

                    ; #61642: <==closure== 83454 (pos)
                    (Pb_survivorat_s_p5)

                    ; #65306: origin
                    (Bc_survivorat_s_p5)

                    ; #78028: <==closure== 84593 (pos)
                    (Pa_survivorat_s_p5)

                    ; #83454: origin
                    (Bb_survivorat_s_p5)

                    ; #84593: origin
                    (Ba_survivorat_s_p5)

                    ; #12285: <==negation-removal== 78028 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #21232: <==negation-removal== 54176 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #25082: <==negation-removal== 65306 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #26326: <==negation-removal== 83454 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #52973: <==negation-removal== 59902 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #67627: <==negation-removal== 84593 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #72292: <==negation-removal== 58009 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #86026: <==negation-removal== 61642 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #54176: origin
                    (Bd_survivorat_s_p5)

                    ; #58009: <==closure== 54176 (pos)
                    (Pd_survivorat_s_p5)

                    ; #59902: <==closure== 65306 (pos)
                    (Pc_survivorat_s_p5)

                    ; #61642: <==closure== 83454 (pos)
                    (Pb_survivorat_s_p5)

                    ; #65306: origin
                    (Bc_survivorat_s_p5)

                    ; #78028: <==closure== 84593 (pos)
                    (Pa_survivorat_s_p5)

                    ; #83454: origin
                    (Bb_survivorat_s_p5)

                    ; #84593: origin
                    (Ba_survivorat_s_p5)

                    ; #12285: <==negation-removal== 78028 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #21232: <==negation-removal== 54176 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #25082: <==negation-removal== 65306 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #26326: <==negation-removal== 83454 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #52973: <==negation-removal== 59902 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #67627: <==negation-removal== 84593 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #72292: <==negation-removal== 58009 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #86026: <==negation-removal== 61642 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #32371: <==closure== 84856 (pos)
                    (Pa_survivorat_s_p6)

                    ; #33209: origin
                    (Bc_survivorat_s_p6)

                    ; #41075: origin
                    (Bd_survivorat_s_p6)

                    ; #68777: origin
                    (Bb_survivorat_s_p6)

                    ; #71831: <==closure== 41075 (pos)
                    (Pd_survivorat_s_p6)

                    ; #76932: <==closure== 33209 (pos)
                    (Pc_survivorat_s_p6)

                    ; #84856: origin
                    (Ba_survivorat_s_p6)

                    ; #87065: <==closure== 68777 (pos)
                    (Pb_survivorat_s_p6)

                    ; #23098: <==negation-removal== 76932 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #33471: <==negation-removal== 68777 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #34607: <==negation-removal== 33209 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #44608: <==negation-removal== 71831 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #51074: <==negation-removal== 41075 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #72129: <==negation-removal== 87065 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #81978: <==negation-removal== 32371 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #83119: <==negation-removal== 84856 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #32371: <==closure== 84856 (pos)
                    (Pa_survivorat_s_p6)

                    ; #33209: origin
                    (Bc_survivorat_s_p6)

                    ; #41075: origin
                    (Bd_survivorat_s_p6)

                    ; #68777: origin
                    (Bb_survivorat_s_p6)

                    ; #71831: <==closure== 41075 (pos)
                    (Pd_survivorat_s_p6)

                    ; #76932: <==closure== 33209 (pos)
                    (Pc_survivorat_s_p6)

                    ; #84856: origin
                    (Ba_survivorat_s_p6)

                    ; #87065: <==closure== 68777 (pos)
                    (Pb_survivorat_s_p6)

                    ; #23098: <==negation-removal== 76932 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #33471: <==negation-removal== 68777 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #34607: <==negation-removal== 33209 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #44608: <==negation-removal== 71831 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #51074: <==negation-removal== 41075 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #72129: <==negation-removal== 87065 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #81978: <==negation-removal== 32371 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #83119: <==negation-removal== 84856 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #32371: <==closure== 84856 (pos)
                    (Pa_survivorat_s_p6)

                    ; #33209: origin
                    (Bc_survivorat_s_p6)

                    ; #41075: origin
                    (Bd_survivorat_s_p6)

                    ; #68777: origin
                    (Bb_survivorat_s_p6)

                    ; #71831: <==closure== 41075 (pos)
                    (Pd_survivorat_s_p6)

                    ; #76932: <==closure== 33209 (pos)
                    (Pc_survivorat_s_p6)

                    ; #84856: origin
                    (Ba_survivorat_s_p6)

                    ; #87065: <==closure== 68777 (pos)
                    (Pb_survivorat_s_p6)

                    ; #23098: <==negation-removal== 76932 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #33471: <==negation-removal== 68777 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #34607: <==negation-removal== 33209 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #44608: <==negation-removal== 71831 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #51074: <==negation-removal== 41075 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #72129: <==negation-removal== 87065 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #81978: <==negation-removal== 32371 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #83119: <==negation-removal== 84856 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (at_d_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #32371: <==closure== 84856 (pos)
                    (Pa_survivorat_s_p6)

                    ; #33209: origin
                    (Bc_survivorat_s_p6)

                    ; #41075: origin
                    (Bd_survivorat_s_p6)

                    ; #68777: origin
                    (Bb_survivorat_s_p6)

                    ; #71831: <==closure== 41075 (pos)
                    (Pd_survivorat_s_p6)

                    ; #76932: <==closure== 33209 (pos)
                    (Pc_survivorat_s_p6)

                    ; #84856: origin
                    (Ba_survivorat_s_p6)

                    ; #87065: <==closure== 68777 (pos)
                    (Pb_survivorat_s_p6)

                    ; #23098: <==negation-removal== 76932 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #33471: <==negation-removal== 68777 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #34607: <==negation-removal== 33209 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #44608: <==negation-removal== 71831 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #51074: <==negation-removal== 41075 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #72129: <==negation-removal== 87065 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #81978: <==negation-removal== 32371 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #83119: <==negation-removal== 84856 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #22687: <==closure== 52722 (pos)
                    (Pa_survivorat_s_p7)

                    ; #33407: origin
                    (Bc_survivorat_s_p7)

                    ; #51294: <==closure== 33407 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52722: origin
                    (Ba_survivorat_s_p7)

                    ; #58530: <==closure== 59913 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59913: origin
                    (Bd_survivorat_s_p7)

                    ; #70457: origin
                    (Bb_survivorat_s_p7)

                    ; #81410: <==closure== 70457 (pos)
                    (Pb_survivorat_s_p7)

                    ; #24451: <==negation-removal== 33407 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #25487: <==negation-removal== 81410 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #29758: <==negation-removal== 59913 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #39338: <==negation-removal== 52722 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #43359: <==negation-removal== 58530 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #63774: <==negation-removal== 70457 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #77361: <==negation-removal== 22687 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #83463: <==negation-removal== 51294 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #22687: <==closure== 52722 (pos)
                    (Pa_survivorat_s_p7)

                    ; #33407: origin
                    (Bc_survivorat_s_p7)

                    ; #51294: <==closure== 33407 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52722: origin
                    (Ba_survivorat_s_p7)

                    ; #58530: <==closure== 59913 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59913: origin
                    (Bd_survivorat_s_p7)

                    ; #70457: origin
                    (Bb_survivorat_s_p7)

                    ; #81410: <==closure== 70457 (pos)
                    (Pb_survivorat_s_p7)

                    ; #24451: <==negation-removal== 33407 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #25487: <==negation-removal== 81410 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #29758: <==negation-removal== 59913 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #39338: <==negation-removal== 52722 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #43359: <==negation-removal== 58530 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #63774: <==negation-removal== 70457 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #77361: <==negation-removal== 22687 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #83463: <==negation-removal== 51294 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #22687: <==closure== 52722 (pos)
                    (Pa_survivorat_s_p7)

                    ; #33407: origin
                    (Bc_survivorat_s_p7)

                    ; #51294: <==closure== 33407 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52722: origin
                    (Ba_survivorat_s_p7)

                    ; #58530: <==closure== 59913 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59913: origin
                    (Bd_survivorat_s_p7)

                    ; #70457: origin
                    (Bb_survivorat_s_p7)

                    ; #81410: <==closure== 70457 (pos)
                    (Pb_survivorat_s_p7)

                    ; #24451: <==negation-removal== 33407 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #25487: <==negation-removal== 81410 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #29758: <==negation-removal== 59913 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #39338: <==negation-removal== 52722 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #43359: <==negation-removal== 58530 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #63774: <==negation-removal== 70457 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #77361: <==negation-removal== 22687 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #83463: <==negation-removal== 51294 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #22687: <==closure== 52722 (pos)
                    (Pa_survivorat_s_p7)

                    ; #33407: origin
                    (Bc_survivorat_s_p7)

                    ; #51294: <==closure== 33407 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52722: origin
                    (Ba_survivorat_s_p7)

                    ; #58530: <==closure== 59913 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59913: origin
                    (Bd_survivorat_s_p7)

                    ; #70457: origin
                    (Bb_survivorat_s_p7)

                    ; #81410: <==closure== 70457 (pos)
                    (Pb_survivorat_s_p7)

                    ; #24451: <==negation-removal== 33407 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #25487: <==negation-removal== 81410 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #29758: <==negation-removal== 59913 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #39338: <==negation-removal== 52722 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #43359: <==negation-removal== 58530 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #63774: <==negation-removal== 70457 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #77361: <==negation-removal== 22687 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #83463: <==negation-removal== 51294 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #31305: origin
                    (Bc_survivorat_s_p8)

                    ; #33475: <==closure== 60342 (pos)
                    (Pd_survivorat_s_p8)

                    ; #44215: <==closure== 64846 (pos)
                    (Pa_survivorat_s_p8)

                    ; #60342: origin
                    (Bd_survivorat_s_p8)

                    ; #64846: origin
                    (Ba_survivorat_s_p8)

                    ; #70923: origin
                    (Bb_survivorat_s_p8)

                    ; #71737: <==closure== 31305 (pos)
                    (Pc_survivorat_s_p8)

                    ; #81386: <==closure== 70923 (pos)
                    (Pb_survivorat_s_p8)

                    ; #10665: <==negation-removal== 31305 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #16396: <==negation-removal== 70923 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #22718: <==negation-removal== 33475 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #33550: <==negation-removal== 81386 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #44409: <==negation-removal== 64846 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #49884: <==negation-removal== 44215 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #51603: <==negation-removal== 71737 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #89021: <==negation-removal== 60342 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #31305: origin
                    (Bc_survivorat_s_p8)

                    ; #33475: <==closure== 60342 (pos)
                    (Pd_survivorat_s_p8)

                    ; #44215: <==closure== 64846 (pos)
                    (Pa_survivorat_s_p8)

                    ; #60342: origin
                    (Bd_survivorat_s_p8)

                    ; #64846: origin
                    (Ba_survivorat_s_p8)

                    ; #70923: origin
                    (Bb_survivorat_s_p8)

                    ; #71737: <==closure== 31305 (pos)
                    (Pc_survivorat_s_p8)

                    ; #81386: <==closure== 70923 (pos)
                    (Pb_survivorat_s_p8)

                    ; #10665: <==negation-removal== 31305 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #16396: <==negation-removal== 70923 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #22718: <==negation-removal== 33475 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #33550: <==negation-removal== 81386 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #44409: <==negation-removal== 64846 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #49884: <==negation-removal== 44215 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #51603: <==negation-removal== 71737 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #89021: <==negation-removal== 60342 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #31305: origin
                    (Bc_survivorat_s_p8)

                    ; #33475: <==closure== 60342 (pos)
                    (Pd_survivorat_s_p8)

                    ; #44215: <==closure== 64846 (pos)
                    (Pa_survivorat_s_p8)

                    ; #60342: origin
                    (Bd_survivorat_s_p8)

                    ; #64846: origin
                    (Ba_survivorat_s_p8)

                    ; #70923: origin
                    (Bb_survivorat_s_p8)

                    ; #71737: <==closure== 31305 (pos)
                    (Pc_survivorat_s_p8)

                    ; #81386: <==closure== 70923 (pos)
                    (Pb_survivorat_s_p8)

                    ; #10665: <==negation-removal== 31305 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #16396: <==negation-removal== 70923 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #22718: <==negation-removal== 33475 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #33550: <==negation-removal== 81386 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #44409: <==negation-removal== 64846 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #49884: <==negation-removal== 44215 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #51603: <==negation-removal== 71737 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #89021: <==negation-removal== 60342 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #31305: origin
                    (Bc_survivorat_s_p8)

                    ; #33475: <==closure== 60342 (pos)
                    (Pd_survivorat_s_p8)

                    ; #44215: <==closure== 64846 (pos)
                    (Pa_survivorat_s_p8)

                    ; #60342: origin
                    (Bd_survivorat_s_p8)

                    ; #64846: origin
                    (Ba_survivorat_s_p8)

                    ; #70923: origin
                    (Bb_survivorat_s_p8)

                    ; #71737: <==closure== 31305 (pos)
                    (Pc_survivorat_s_p8)

                    ; #81386: <==closure== 70923 (pos)
                    (Pb_survivorat_s_p8)

                    ; #10665: <==negation-removal== 31305 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #16396: <==negation-removal== 70923 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #22718: <==negation-removal== 33475 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #33550: <==negation-removal== 81386 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #44409: <==negation-removal== 64846 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #49884: <==negation-removal== 44215 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #51603: <==negation-removal== 71737 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #89021: <==negation-removal== 60342 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #12554: origin
                    (Bc_survivorat_s_p9)

                    ; #23493: <==closure== 42740 (pos)
                    (Pa_survivorat_s_p9)

                    ; #42740: origin
                    (Ba_survivorat_s_p9)

                    ; #61528: <==closure== 61788 (pos)
                    (Pb_survivorat_s_p9)

                    ; #61788: origin
                    (Bb_survivorat_s_p9)

                    ; #67629: <==closure== 12554 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69204: origin
                    (Bd_survivorat_s_p9)

                    ; #83814: <==closure== 69204 (pos)
                    (Pd_survivorat_s_p9)

                    ; #33190: <==negation-removal== 42740 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #51170: <==negation-removal== 12554 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #57913: <==negation-removal== 61788 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #59442: <==negation-removal== 67629 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79750: <==negation-removal== 69204 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #80092: <==negation-removal== 83814 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #87593: <==negation-removal== 61528 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #90693: <==negation-removal== 23493 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #12554: origin
                    (Bc_survivorat_s_p9)

                    ; #23493: <==closure== 42740 (pos)
                    (Pa_survivorat_s_p9)

                    ; #42740: origin
                    (Ba_survivorat_s_p9)

                    ; #61528: <==closure== 61788 (pos)
                    (Pb_survivorat_s_p9)

                    ; #61788: origin
                    (Bb_survivorat_s_p9)

                    ; #67629: <==closure== 12554 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69204: origin
                    (Bd_survivorat_s_p9)

                    ; #83814: <==closure== 69204 (pos)
                    (Pd_survivorat_s_p9)

                    ; #33190: <==negation-removal== 42740 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #51170: <==negation-removal== 12554 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #57913: <==negation-removal== 61788 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #59442: <==negation-removal== 67629 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79750: <==negation-removal== 69204 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #80092: <==negation-removal== 83814 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #87593: <==negation-removal== 61528 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #90693: <==negation-removal== 23493 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #12554: origin
                    (Bc_survivorat_s_p9)

                    ; #23493: <==closure== 42740 (pos)
                    (Pa_survivorat_s_p9)

                    ; #42740: origin
                    (Ba_survivorat_s_p9)

                    ; #61528: <==closure== 61788 (pos)
                    (Pb_survivorat_s_p9)

                    ; #61788: origin
                    (Bb_survivorat_s_p9)

                    ; #67629: <==closure== 12554 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69204: origin
                    (Bd_survivorat_s_p9)

                    ; #83814: <==closure== 69204 (pos)
                    (Pd_survivorat_s_p9)

                    ; #33190: <==negation-removal== 42740 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #51170: <==negation-removal== 12554 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #57913: <==negation-removal== 61788 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #59442: <==negation-removal== 67629 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79750: <==negation-removal== 69204 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #80092: <==negation-removal== 83814 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #87593: <==negation-removal== 61528 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #90693: <==negation-removal== 23493 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #12554: origin
                    (Bc_survivorat_s_p9)

                    ; #23493: <==closure== 42740 (pos)
                    (Pa_survivorat_s_p9)

                    ; #42740: origin
                    (Ba_survivorat_s_p9)

                    ; #61528: <==closure== 61788 (pos)
                    (Pb_survivorat_s_p9)

                    ; #61788: origin
                    (Bb_survivorat_s_p9)

                    ; #67629: <==closure== 12554 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69204: origin
                    (Bd_survivorat_s_p9)

                    ; #83814: <==closure== 69204 (pos)
                    (Pd_survivorat_s_p9)

                    ; #33190: <==negation-removal== 42740 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #51170: <==negation-removal== 12554 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #57913: <==negation-removal== 61788 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #59442: <==negation-removal== 67629 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79750: <==negation-removal== 69204 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #80092: <==negation-removal== 83814 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #87593: <==negation-removal== 61528 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #90693: <==negation-removal== 23493 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #20521: origin
                    (at_a_p1)

                    ; #77892: origin
                    (not_at_a_p1)

                    ; #20521: <==negation-removal== 77892 (pos)
                    (not (at_a_p1))

                    ; #77892: <==negation-removal== 20521 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #16196: origin
                    (at_a_p2)

                    ; #77892: origin
                    (not_at_a_p1)

                    ; #20521: <==negation-removal== 77892 (pos)
                    (not (at_a_p1))

                    ; #42569: <==negation-removal== 16196 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #76511: origin
                    (at_a_p3)

                    ; #77892: origin
                    (not_at_a_p1)

                    ; #11509: <==negation-removal== 76511 (pos)
                    (not (not_at_a_p3))

                    ; #20521: <==negation-removal== 77892 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #34136: origin
                    (at_a_p4)

                    ; #77892: origin
                    (not_at_a_p1)

                    ; #20521: <==negation-removal== 77892 (pos)
                    (not (at_a_p1))

                    ; #87947: <==negation-removal== 34136 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #77892: origin
                    (not_at_a_p1)

                    ; #95761: origin
                    (at_a_p5)

                    ; #20521: <==negation-removal== 77892 (pos)
                    (not (at_a_p1))

                    ; #33763: <==negation-removal== 95761 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #77892: origin
                    (not_at_a_p1)

                    ; #80995: origin
                    (at_a_p6)

                    ; #20521: <==negation-removal== 77892 (pos)
                    (not (at_a_p1))

                    ; #57603: <==negation-removal== 80995 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #16017: origin
                    (at_a_p7)

                    ; #77892: origin
                    (not_at_a_p1)

                    ; #20521: <==negation-removal== 77892 (pos)
                    (not (at_a_p1))

                    ; #82959: <==negation-removal== 16017 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #43343: origin
                    (at_a_p8)

                    ; #77892: origin
                    (not_at_a_p1)

                    ; #20521: <==negation-removal== 77892 (pos)
                    (not (at_a_p1))

                    ; #43588: <==negation-removal== 43343 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #64187: origin
                    (at_a_p9)

                    ; #77892: origin
                    (not_at_a_p1)

                    ; #20521: <==negation-removal== 77892 (pos)
                    (not (at_a_p1))

                    ; #48287: <==negation-removal== 64187 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #20521: origin
                    (at_a_p1)

                    ; #42569: origin
                    (not_at_a_p2)

                    ; #16196: <==negation-removal== 42569 (pos)
                    (not (at_a_p2))

                    ; #77892: <==negation-removal== 20521 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #16196: origin
                    (at_a_p2)

                    ; #42569: origin
                    (not_at_a_p2)

                    ; #16196: <==negation-removal== 42569 (pos)
                    (not (at_a_p2))

                    ; #42569: <==negation-removal== 16196 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #42569: origin
                    (not_at_a_p2)

                    ; #76511: origin
                    (at_a_p3)

                    ; #11509: <==negation-removal== 76511 (pos)
                    (not (not_at_a_p3))

                    ; #16196: <==negation-removal== 42569 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #34136: origin
                    (at_a_p4)

                    ; #42569: origin
                    (not_at_a_p2)

                    ; #16196: <==negation-removal== 42569 (pos)
                    (not (at_a_p2))

                    ; #87947: <==negation-removal== 34136 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #42569: origin
                    (not_at_a_p2)

                    ; #95761: origin
                    (at_a_p5)

                    ; #16196: <==negation-removal== 42569 (pos)
                    (not (at_a_p2))

                    ; #33763: <==negation-removal== 95761 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #42569: origin
                    (not_at_a_p2)

                    ; #80995: origin
                    (at_a_p6)

                    ; #16196: <==negation-removal== 42569 (pos)
                    (not (at_a_p2))

                    ; #57603: <==negation-removal== 80995 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #16017: origin
                    (at_a_p7)

                    ; #42569: origin
                    (not_at_a_p2)

                    ; #16196: <==negation-removal== 42569 (pos)
                    (not (at_a_p2))

                    ; #82959: <==negation-removal== 16017 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #42569: origin
                    (not_at_a_p2)

                    ; #43343: origin
                    (at_a_p8)

                    ; #16196: <==negation-removal== 42569 (pos)
                    (not (at_a_p2))

                    ; #43588: <==negation-removal== 43343 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #42569: origin
                    (not_at_a_p2)

                    ; #64187: origin
                    (at_a_p9)

                    ; #16196: <==negation-removal== 42569 (pos)
                    (not (at_a_p2))

                    ; #48287: <==negation-removal== 64187 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #11509: origin
                    (not_at_a_p3)

                    ; #20521: origin
                    (at_a_p1)

                    ; #76511: <==negation-removal== 11509 (pos)
                    (not (at_a_p3))

                    ; #77892: <==negation-removal== 20521 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #11509: origin
                    (not_at_a_p3)

                    ; #16196: origin
                    (at_a_p2)

                    ; #42569: <==negation-removal== 16196 (pos)
                    (not (not_at_a_p2))

                    ; #76511: <==negation-removal== 11509 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #11509: origin
                    (not_at_a_p3)

                    ; #76511: origin
                    (at_a_p3)

                    ; #11509: <==negation-removal== 76511 (pos)
                    (not (not_at_a_p3))

                    ; #76511: <==negation-removal== 11509 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #11509: origin
                    (not_at_a_p3)

                    ; #34136: origin
                    (at_a_p4)

                    ; #76511: <==negation-removal== 11509 (pos)
                    (not (at_a_p3))

                    ; #87947: <==negation-removal== 34136 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #11509: origin
                    (not_at_a_p3)

                    ; #95761: origin
                    (at_a_p5)

                    ; #33763: <==negation-removal== 95761 (pos)
                    (not (not_at_a_p5))

                    ; #76511: <==negation-removal== 11509 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #11509: origin
                    (not_at_a_p3)

                    ; #80995: origin
                    (at_a_p6)

                    ; #57603: <==negation-removal== 80995 (pos)
                    (not (not_at_a_p6))

                    ; #76511: <==negation-removal== 11509 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #11509: origin
                    (not_at_a_p3)

                    ; #16017: origin
                    (at_a_p7)

                    ; #76511: <==negation-removal== 11509 (pos)
                    (not (at_a_p3))

                    ; #82959: <==negation-removal== 16017 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #11509: origin
                    (not_at_a_p3)

                    ; #43343: origin
                    (at_a_p8)

                    ; #43588: <==negation-removal== 43343 (pos)
                    (not (not_at_a_p8))

                    ; #76511: <==negation-removal== 11509 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #11509: origin
                    (not_at_a_p3)

                    ; #64187: origin
                    (at_a_p9)

                    ; #48287: <==negation-removal== 64187 (pos)
                    (not (not_at_a_p9))

                    ; #76511: <==negation-removal== 11509 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #20521: origin
                    (at_a_p1)

                    ; #87947: origin
                    (not_at_a_p4)

                    ; #34136: <==negation-removal== 87947 (pos)
                    (not (at_a_p4))

                    ; #77892: <==negation-removal== 20521 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #16196: origin
                    (at_a_p2)

                    ; #87947: origin
                    (not_at_a_p4)

                    ; #34136: <==negation-removal== 87947 (pos)
                    (not (at_a_p4))

                    ; #42569: <==negation-removal== 16196 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #76511: origin
                    (at_a_p3)

                    ; #87947: origin
                    (not_at_a_p4)

                    ; #11509: <==negation-removal== 76511 (pos)
                    (not (not_at_a_p3))

                    ; #34136: <==negation-removal== 87947 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #34136: origin
                    (at_a_p4)

                    ; #87947: origin
                    (not_at_a_p4)

                    ; #34136: <==negation-removal== 87947 (pos)
                    (not (at_a_p4))

                    ; #87947: <==negation-removal== 34136 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #87947: origin
                    (not_at_a_p4)

                    ; #95761: origin
                    (at_a_p5)

                    ; #33763: <==negation-removal== 95761 (pos)
                    (not (not_at_a_p5))

                    ; #34136: <==negation-removal== 87947 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #80995: origin
                    (at_a_p6)

                    ; #87947: origin
                    (not_at_a_p4)

                    ; #34136: <==negation-removal== 87947 (pos)
                    (not (at_a_p4))

                    ; #57603: <==negation-removal== 80995 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #16017: origin
                    (at_a_p7)

                    ; #87947: origin
                    (not_at_a_p4)

                    ; #34136: <==negation-removal== 87947 (pos)
                    (not (at_a_p4))

                    ; #82959: <==negation-removal== 16017 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #43343: origin
                    (at_a_p8)

                    ; #87947: origin
                    (not_at_a_p4)

                    ; #34136: <==negation-removal== 87947 (pos)
                    (not (at_a_p4))

                    ; #43588: <==negation-removal== 43343 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #64187: origin
                    (at_a_p9)

                    ; #87947: origin
                    (not_at_a_p4)

                    ; #34136: <==negation-removal== 87947 (pos)
                    (not (at_a_p4))

                    ; #48287: <==negation-removal== 64187 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #20521: origin
                    (at_a_p1)

                    ; #33763: origin
                    (not_at_a_p5)

                    ; #77892: <==negation-removal== 20521 (pos)
                    (not (not_at_a_p1))

                    ; #95761: <==negation-removal== 33763 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #16196: origin
                    (at_a_p2)

                    ; #33763: origin
                    (not_at_a_p5)

                    ; #42569: <==negation-removal== 16196 (pos)
                    (not (not_at_a_p2))

                    ; #95761: <==negation-removal== 33763 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #33763: origin
                    (not_at_a_p5)

                    ; #76511: origin
                    (at_a_p3)

                    ; #11509: <==negation-removal== 76511 (pos)
                    (not (not_at_a_p3))

                    ; #95761: <==negation-removal== 33763 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #33763: origin
                    (not_at_a_p5)

                    ; #34136: origin
                    (at_a_p4)

                    ; #87947: <==negation-removal== 34136 (pos)
                    (not (not_at_a_p4))

                    ; #95761: <==negation-removal== 33763 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #33763: origin
                    (not_at_a_p5)

                    ; #95761: origin
                    (at_a_p5)

                    ; #33763: <==negation-removal== 95761 (pos)
                    (not (not_at_a_p5))

                    ; #95761: <==negation-removal== 33763 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #33763: origin
                    (not_at_a_p5)

                    ; #80995: origin
                    (at_a_p6)

                    ; #57603: <==negation-removal== 80995 (pos)
                    (not (not_at_a_p6))

                    ; #95761: <==negation-removal== 33763 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #16017: origin
                    (at_a_p7)

                    ; #33763: origin
                    (not_at_a_p5)

                    ; #82959: <==negation-removal== 16017 (pos)
                    (not (not_at_a_p7))

                    ; #95761: <==negation-removal== 33763 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #33763: origin
                    (not_at_a_p5)

                    ; #43343: origin
                    (at_a_p8)

                    ; #43588: <==negation-removal== 43343 (pos)
                    (not (not_at_a_p8))

                    ; #95761: <==negation-removal== 33763 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #33763: origin
                    (not_at_a_p5)

                    ; #64187: origin
                    (at_a_p9)

                    ; #48287: <==negation-removal== 64187 (pos)
                    (not (not_at_a_p9))

                    ; #95761: <==negation-removal== 33763 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #20521: origin
                    (at_a_p1)

                    ; #57603: origin
                    (not_at_a_p6)

                    ; #77892: <==negation-removal== 20521 (pos)
                    (not (not_at_a_p1))

                    ; #80995: <==negation-removal== 57603 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #16196: origin
                    (at_a_p2)

                    ; #57603: origin
                    (not_at_a_p6)

                    ; #42569: <==negation-removal== 16196 (pos)
                    (not (not_at_a_p2))

                    ; #80995: <==negation-removal== 57603 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #57603: origin
                    (not_at_a_p6)

                    ; #76511: origin
                    (at_a_p3)

                    ; #11509: <==negation-removal== 76511 (pos)
                    (not (not_at_a_p3))

                    ; #80995: <==negation-removal== 57603 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #34136: origin
                    (at_a_p4)

                    ; #57603: origin
                    (not_at_a_p6)

                    ; #80995: <==negation-removal== 57603 (pos)
                    (not (at_a_p6))

                    ; #87947: <==negation-removal== 34136 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #57603: origin
                    (not_at_a_p6)

                    ; #95761: origin
                    (at_a_p5)

                    ; #33763: <==negation-removal== 95761 (pos)
                    (not (not_at_a_p5))

                    ; #80995: <==negation-removal== 57603 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #57603: origin
                    (not_at_a_p6)

                    ; #80995: origin
                    (at_a_p6)

                    ; #57603: <==negation-removal== 80995 (pos)
                    (not (not_at_a_p6))

                    ; #80995: <==negation-removal== 57603 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #16017: origin
                    (at_a_p7)

                    ; #57603: origin
                    (not_at_a_p6)

                    ; #80995: <==negation-removal== 57603 (pos)
                    (not (at_a_p6))

                    ; #82959: <==negation-removal== 16017 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #43343: origin
                    (at_a_p8)

                    ; #57603: origin
                    (not_at_a_p6)

                    ; #43588: <==negation-removal== 43343 (pos)
                    (not (not_at_a_p8))

                    ; #80995: <==negation-removal== 57603 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #57603: origin
                    (not_at_a_p6)

                    ; #64187: origin
                    (at_a_p9)

                    ; #48287: <==negation-removal== 64187 (pos)
                    (not (not_at_a_p9))

                    ; #80995: <==negation-removal== 57603 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #20521: origin
                    (at_a_p1)

                    ; #82959: origin
                    (not_at_a_p7)

                    ; #16017: <==negation-removal== 82959 (pos)
                    (not (at_a_p7))

                    ; #77892: <==negation-removal== 20521 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #16196: origin
                    (at_a_p2)

                    ; #82959: origin
                    (not_at_a_p7)

                    ; #16017: <==negation-removal== 82959 (pos)
                    (not (at_a_p7))

                    ; #42569: <==negation-removal== 16196 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #76511: origin
                    (at_a_p3)

                    ; #82959: origin
                    (not_at_a_p7)

                    ; #11509: <==negation-removal== 76511 (pos)
                    (not (not_at_a_p3))

                    ; #16017: <==negation-removal== 82959 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #34136: origin
                    (at_a_p4)

                    ; #82959: origin
                    (not_at_a_p7)

                    ; #16017: <==negation-removal== 82959 (pos)
                    (not (at_a_p7))

                    ; #87947: <==negation-removal== 34136 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #82959: origin
                    (not_at_a_p7)

                    ; #95761: origin
                    (at_a_p5)

                    ; #16017: <==negation-removal== 82959 (pos)
                    (not (at_a_p7))

                    ; #33763: <==negation-removal== 95761 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #80995: origin
                    (at_a_p6)

                    ; #82959: origin
                    (not_at_a_p7)

                    ; #16017: <==negation-removal== 82959 (pos)
                    (not (at_a_p7))

                    ; #57603: <==negation-removal== 80995 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #16017: origin
                    (at_a_p7)

                    ; #82959: origin
                    (not_at_a_p7)

                    ; #16017: <==negation-removal== 82959 (pos)
                    (not (at_a_p7))

                    ; #82959: <==negation-removal== 16017 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #43343: origin
                    (at_a_p8)

                    ; #82959: origin
                    (not_at_a_p7)

                    ; #16017: <==negation-removal== 82959 (pos)
                    (not (at_a_p7))

                    ; #43588: <==negation-removal== 43343 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #64187: origin
                    (at_a_p9)

                    ; #82959: origin
                    (not_at_a_p7)

                    ; #16017: <==negation-removal== 82959 (pos)
                    (not (at_a_p7))

                    ; #48287: <==negation-removal== 64187 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #20521: origin
                    (at_a_p1)

                    ; #43588: origin
                    (not_at_a_p8)

                    ; #43343: <==negation-removal== 43588 (pos)
                    (not (at_a_p8))

                    ; #77892: <==negation-removal== 20521 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #16196: origin
                    (at_a_p2)

                    ; #43588: origin
                    (not_at_a_p8)

                    ; #42569: <==negation-removal== 16196 (pos)
                    (not (not_at_a_p2))

                    ; #43343: <==negation-removal== 43588 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #43588: origin
                    (not_at_a_p8)

                    ; #76511: origin
                    (at_a_p3)

                    ; #11509: <==negation-removal== 76511 (pos)
                    (not (not_at_a_p3))

                    ; #43343: <==negation-removal== 43588 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #34136: origin
                    (at_a_p4)

                    ; #43588: origin
                    (not_at_a_p8)

                    ; #43343: <==negation-removal== 43588 (pos)
                    (not (at_a_p8))

                    ; #87947: <==negation-removal== 34136 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #43588: origin
                    (not_at_a_p8)

                    ; #95761: origin
                    (at_a_p5)

                    ; #33763: <==negation-removal== 95761 (pos)
                    (not (not_at_a_p5))

                    ; #43343: <==negation-removal== 43588 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #43588: origin
                    (not_at_a_p8)

                    ; #80995: origin
                    (at_a_p6)

                    ; #43343: <==negation-removal== 43588 (pos)
                    (not (at_a_p8))

                    ; #57603: <==negation-removal== 80995 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #16017: origin
                    (at_a_p7)

                    ; #43588: origin
                    (not_at_a_p8)

                    ; #43343: <==negation-removal== 43588 (pos)
                    (not (at_a_p8))

                    ; #82959: <==negation-removal== 16017 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #43343: origin
                    (at_a_p8)

                    ; #43588: origin
                    (not_at_a_p8)

                    ; #43343: <==negation-removal== 43588 (pos)
                    (not (at_a_p8))

                    ; #43588: <==negation-removal== 43343 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #43588: origin
                    (not_at_a_p8)

                    ; #64187: origin
                    (at_a_p9)

                    ; #43343: <==negation-removal== 43588 (pos)
                    (not (at_a_p8))

                    ; #48287: <==negation-removal== 64187 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #20521: origin
                    (at_a_p1)

                    ; #48287: origin
                    (not_at_a_p9)

                    ; #64187: <==negation-removal== 48287 (pos)
                    (not (at_a_p9))

                    ; #77892: <==negation-removal== 20521 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #16196: origin
                    (at_a_p2)

                    ; #48287: origin
                    (not_at_a_p9)

                    ; #42569: <==negation-removal== 16196 (pos)
                    (not (not_at_a_p2))

                    ; #64187: <==negation-removal== 48287 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #48287: origin
                    (not_at_a_p9)

                    ; #76511: origin
                    (at_a_p3)

                    ; #11509: <==negation-removal== 76511 (pos)
                    (not (not_at_a_p3))

                    ; #64187: <==negation-removal== 48287 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #34136: origin
                    (at_a_p4)

                    ; #48287: origin
                    (not_at_a_p9)

                    ; #64187: <==negation-removal== 48287 (pos)
                    (not (at_a_p9))

                    ; #87947: <==negation-removal== 34136 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #48287: origin
                    (not_at_a_p9)

                    ; #95761: origin
                    (at_a_p5)

                    ; #33763: <==negation-removal== 95761 (pos)
                    (not (not_at_a_p5))

                    ; #64187: <==negation-removal== 48287 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #48287: origin
                    (not_at_a_p9)

                    ; #80995: origin
                    (at_a_p6)

                    ; #57603: <==negation-removal== 80995 (pos)
                    (not (not_at_a_p6))

                    ; #64187: <==negation-removal== 48287 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #16017: origin
                    (at_a_p7)

                    ; #48287: origin
                    (not_at_a_p9)

                    ; #64187: <==negation-removal== 48287 (pos)
                    (not (at_a_p9))

                    ; #82959: <==negation-removal== 16017 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #43343: origin
                    (at_a_p8)

                    ; #48287: origin
                    (not_at_a_p9)

                    ; #43588: <==negation-removal== 43343 (pos)
                    (not (not_at_a_p8))

                    ; #64187: <==negation-removal== 48287 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #48287: origin
                    (not_at_a_p9)

                    ; #64187: origin
                    (at_a_p9)

                    ; #48287: <==negation-removal== 64187 (pos)
                    (not (not_at_a_p9))

                    ; #64187: <==negation-removal== 48287 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #21001: origin
                    (at_b_p1)

                    ; #54359: origin
                    (not_at_b_p1)

                    ; #21001: <==negation-removal== 54359 (pos)
                    (not (at_b_p1))

                    ; #54359: <==negation-removal== 21001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #54359: origin
                    (not_at_b_p1)

                    ; #83960: origin
                    (at_b_p2)

                    ; #21001: <==negation-removal== 54359 (pos)
                    (not (at_b_p1))

                    ; #28925: <==negation-removal== 83960 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #54359: origin
                    (not_at_b_p1)

                    ; #69975: origin
                    (at_b_p3)

                    ; #21001: <==negation-removal== 54359 (pos)
                    (not (at_b_p1))

                    ; #36550: <==negation-removal== 69975 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #54359: origin
                    (not_at_b_p1)

                    ; #73288: origin
                    (at_b_p4)

                    ; #20901: <==negation-removal== 73288 (pos)
                    (not (not_at_b_p4))

                    ; #21001: <==negation-removal== 54359 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #34953: origin
                    (at_b_p5)

                    ; #54359: origin
                    (not_at_b_p1)

                    ; #21001: <==negation-removal== 54359 (pos)
                    (not (at_b_p1))

                    ; #86921: <==negation-removal== 34953 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #12011: origin
                    (at_b_p6)

                    ; #54359: origin
                    (not_at_b_p1)

                    ; #21001: <==negation-removal== 54359 (pos)
                    (not (at_b_p1))

                    ; #63799: <==negation-removal== 12011 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #38554: origin
                    (at_b_p7)

                    ; #54359: origin
                    (not_at_b_p1)

                    ; #21001: <==negation-removal== 54359 (pos)
                    (not (at_b_p1))

                    ; #85878: <==negation-removal== 38554 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #54359: origin
                    (not_at_b_p1)

                    ; #61539: origin
                    (at_b_p8)

                    ; #21001: <==negation-removal== 54359 (pos)
                    (not (at_b_p1))

                    ; #89290: <==negation-removal== 61539 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #54359: origin
                    (not_at_b_p1)

                    ; #62216: origin
                    (at_b_p9)

                    ; #21001: <==negation-removal== 54359 (pos)
                    (not (at_b_p1))

                    ; #73994: <==negation-removal== 62216 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #21001: origin
                    (at_b_p1)

                    ; #28925: origin
                    (not_at_b_p2)

                    ; #54359: <==negation-removal== 21001 (pos)
                    (not (not_at_b_p1))

                    ; #83960: <==negation-removal== 28925 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #28925: origin
                    (not_at_b_p2)

                    ; #83960: origin
                    (at_b_p2)

                    ; #28925: <==negation-removal== 83960 (pos)
                    (not (not_at_b_p2))

                    ; #83960: <==negation-removal== 28925 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #28925: origin
                    (not_at_b_p2)

                    ; #69975: origin
                    (at_b_p3)

                    ; #36550: <==negation-removal== 69975 (pos)
                    (not (not_at_b_p3))

                    ; #83960: <==negation-removal== 28925 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #28925: origin
                    (not_at_b_p2)

                    ; #73288: origin
                    (at_b_p4)

                    ; #20901: <==negation-removal== 73288 (pos)
                    (not (not_at_b_p4))

                    ; #83960: <==negation-removal== 28925 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #28925: origin
                    (not_at_b_p2)

                    ; #34953: origin
                    (at_b_p5)

                    ; #83960: <==negation-removal== 28925 (pos)
                    (not (at_b_p2))

                    ; #86921: <==negation-removal== 34953 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #12011: origin
                    (at_b_p6)

                    ; #28925: origin
                    (not_at_b_p2)

                    ; #63799: <==negation-removal== 12011 (pos)
                    (not (not_at_b_p6))

                    ; #83960: <==negation-removal== 28925 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #28925: origin
                    (not_at_b_p2)

                    ; #38554: origin
                    (at_b_p7)

                    ; #83960: <==negation-removal== 28925 (pos)
                    (not (at_b_p2))

                    ; #85878: <==negation-removal== 38554 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #28925: origin
                    (not_at_b_p2)

                    ; #61539: origin
                    (at_b_p8)

                    ; #83960: <==negation-removal== 28925 (pos)
                    (not (at_b_p2))

                    ; #89290: <==negation-removal== 61539 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #28925: origin
                    (not_at_b_p2)

                    ; #62216: origin
                    (at_b_p9)

                    ; #73994: <==negation-removal== 62216 (pos)
                    (not (not_at_b_p9))

                    ; #83960: <==negation-removal== 28925 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #21001: origin
                    (at_b_p1)

                    ; #36550: origin
                    (not_at_b_p3)

                    ; #54359: <==negation-removal== 21001 (pos)
                    (not (not_at_b_p1))

                    ; #69975: <==negation-removal== 36550 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #36550: origin
                    (not_at_b_p3)

                    ; #83960: origin
                    (at_b_p2)

                    ; #28925: <==negation-removal== 83960 (pos)
                    (not (not_at_b_p2))

                    ; #69975: <==negation-removal== 36550 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #36550: origin
                    (not_at_b_p3)

                    ; #69975: origin
                    (at_b_p3)

                    ; #36550: <==negation-removal== 69975 (pos)
                    (not (not_at_b_p3))

                    ; #69975: <==negation-removal== 36550 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #36550: origin
                    (not_at_b_p3)

                    ; #73288: origin
                    (at_b_p4)

                    ; #20901: <==negation-removal== 73288 (pos)
                    (not (not_at_b_p4))

                    ; #69975: <==negation-removal== 36550 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #34953: origin
                    (at_b_p5)

                    ; #36550: origin
                    (not_at_b_p3)

                    ; #69975: <==negation-removal== 36550 (pos)
                    (not (at_b_p3))

                    ; #86921: <==negation-removal== 34953 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #12011: origin
                    (at_b_p6)

                    ; #36550: origin
                    (not_at_b_p3)

                    ; #63799: <==negation-removal== 12011 (pos)
                    (not (not_at_b_p6))

                    ; #69975: <==negation-removal== 36550 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #36550: origin
                    (not_at_b_p3)

                    ; #38554: origin
                    (at_b_p7)

                    ; #69975: <==negation-removal== 36550 (pos)
                    (not (at_b_p3))

                    ; #85878: <==negation-removal== 38554 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #36550: origin
                    (not_at_b_p3)

                    ; #61539: origin
                    (at_b_p8)

                    ; #69975: <==negation-removal== 36550 (pos)
                    (not (at_b_p3))

                    ; #89290: <==negation-removal== 61539 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #36550: origin
                    (not_at_b_p3)

                    ; #62216: origin
                    (at_b_p9)

                    ; #69975: <==negation-removal== 36550 (pos)
                    (not (at_b_p3))

                    ; #73994: <==negation-removal== 62216 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #20901: origin
                    (not_at_b_p4)

                    ; #21001: origin
                    (at_b_p1)

                    ; #54359: <==negation-removal== 21001 (pos)
                    (not (not_at_b_p1))

                    ; #73288: <==negation-removal== 20901 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #20901: origin
                    (not_at_b_p4)

                    ; #83960: origin
                    (at_b_p2)

                    ; #28925: <==negation-removal== 83960 (pos)
                    (not (not_at_b_p2))

                    ; #73288: <==negation-removal== 20901 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #20901: origin
                    (not_at_b_p4)

                    ; #69975: origin
                    (at_b_p3)

                    ; #36550: <==negation-removal== 69975 (pos)
                    (not (not_at_b_p3))

                    ; #73288: <==negation-removal== 20901 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #20901: origin
                    (not_at_b_p4)

                    ; #73288: origin
                    (at_b_p4)

                    ; #20901: <==negation-removal== 73288 (pos)
                    (not (not_at_b_p4))

                    ; #73288: <==negation-removal== 20901 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #20901: origin
                    (not_at_b_p4)

                    ; #34953: origin
                    (at_b_p5)

                    ; #73288: <==negation-removal== 20901 (pos)
                    (not (at_b_p4))

                    ; #86921: <==negation-removal== 34953 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #12011: origin
                    (at_b_p6)

                    ; #20901: origin
                    (not_at_b_p4)

                    ; #63799: <==negation-removal== 12011 (pos)
                    (not (not_at_b_p6))

                    ; #73288: <==negation-removal== 20901 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #20901: origin
                    (not_at_b_p4)

                    ; #38554: origin
                    (at_b_p7)

                    ; #73288: <==negation-removal== 20901 (pos)
                    (not (at_b_p4))

                    ; #85878: <==negation-removal== 38554 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #20901: origin
                    (not_at_b_p4)

                    ; #61539: origin
                    (at_b_p8)

                    ; #73288: <==negation-removal== 20901 (pos)
                    (not (at_b_p4))

                    ; #89290: <==negation-removal== 61539 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #20901: origin
                    (not_at_b_p4)

                    ; #62216: origin
                    (at_b_p9)

                    ; #73288: <==negation-removal== 20901 (pos)
                    (not (at_b_p4))

                    ; #73994: <==negation-removal== 62216 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #21001: origin
                    (at_b_p1)

                    ; #86921: origin
                    (not_at_b_p5)

                    ; #34953: <==negation-removal== 86921 (pos)
                    (not (at_b_p5))

                    ; #54359: <==negation-removal== 21001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #83960: origin
                    (at_b_p2)

                    ; #86921: origin
                    (not_at_b_p5)

                    ; #28925: <==negation-removal== 83960 (pos)
                    (not (not_at_b_p2))

                    ; #34953: <==negation-removal== 86921 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #69975: origin
                    (at_b_p3)

                    ; #86921: origin
                    (not_at_b_p5)

                    ; #34953: <==negation-removal== 86921 (pos)
                    (not (at_b_p5))

                    ; #36550: <==negation-removal== 69975 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #73288: origin
                    (at_b_p4)

                    ; #86921: origin
                    (not_at_b_p5)

                    ; #20901: <==negation-removal== 73288 (pos)
                    (not (not_at_b_p4))

                    ; #34953: <==negation-removal== 86921 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #34953: origin
                    (at_b_p5)

                    ; #86921: origin
                    (not_at_b_p5)

                    ; #34953: <==negation-removal== 86921 (pos)
                    (not (at_b_p5))

                    ; #86921: <==negation-removal== 34953 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #12011: origin
                    (at_b_p6)

                    ; #86921: origin
                    (not_at_b_p5)

                    ; #34953: <==negation-removal== 86921 (pos)
                    (not (at_b_p5))

                    ; #63799: <==negation-removal== 12011 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #38554: origin
                    (at_b_p7)

                    ; #86921: origin
                    (not_at_b_p5)

                    ; #34953: <==negation-removal== 86921 (pos)
                    (not (at_b_p5))

                    ; #85878: <==negation-removal== 38554 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #61539: origin
                    (at_b_p8)

                    ; #86921: origin
                    (not_at_b_p5)

                    ; #34953: <==negation-removal== 86921 (pos)
                    (not (at_b_p5))

                    ; #89290: <==negation-removal== 61539 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #62216: origin
                    (at_b_p9)

                    ; #86921: origin
                    (not_at_b_p5)

                    ; #34953: <==negation-removal== 86921 (pos)
                    (not (at_b_p5))

                    ; #73994: <==negation-removal== 62216 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #21001: origin
                    (at_b_p1)

                    ; #63799: origin
                    (not_at_b_p6)

                    ; #12011: <==negation-removal== 63799 (pos)
                    (not (at_b_p6))

                    ; #54359: <==negation-removal== 21001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #63799: origin
                    (not_at_b_p6)

                    ; #83960: origin
                    (at_b_p2)

                    ; #12011: <==negation-removal== 63799 (pos)
                    (not (at_b_p6))

                    ; #28925: <==negation-removal== 83960 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #63799: origin
                    (not_at_b_p6)

                    ; #69975: origin
                    (at_b_p3)

                    ; #12011: <==negation-removal== 63799 (pos)
                    (not (at_b_p6))

                    ; #36550: <==negation-removal== 69975 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #63799: origin
                    (not_at_b_p6)

                    ; #73288: origin
                    (at_b_p4)

                    ; #12011: <==negation-removal== 63799 (pos)
                    (not (at_b_p6))

                    ; #20901: <==negation-removal== 73288 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #34953: origin
                    (at_b_p5)

                    ; #63799: origin
                    (not_at_b_p6)

                    ; #12011: <==negation-removal== 63799 (pos)
                    (not (at_b_p6))

                    ; #86921: <==negation-removal== 34953 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #12011: origin
                    (at_b_p6)

                    ; #63799: origin
                    (not_at_b_p6)

                    ; #12011: <==negation-removal== 63799 (pos)
                    (not (at_b_p6))

                    ; #63799: <==negation-removal== 12011 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #38554: origin
                    (at_b_p7)

                    ; #63799: origin
                    (not_at_b_p6)

                    ; #12011: <==negation-removal== 63799 (pos)
                    (not (at_b_p6))

                    ; #85878: <==negation-removal== 38554 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #61539: origin
                    (at_b_p8)

                    ; #63799: origin
                    (not_at_b_p6)

                    ; #12011: <==negation-removal== 63799 (pos)
                    (not (at_b_p6))

                    ; #89290: <==negation-removal== 61539 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #62216: origin
                    (at_b_p9)

                    ; #63799: origin
                    (not_at_b_p6)

                    ; #12011: <==negation-removal== 63799 (pos)
                    (not (at_b_p6))

                    ; #73994: <==negation-removal== 62216 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #21001: origin
                    (at_b_p1)

                    ; #85878: origin
                    (not_at_b_p7)

                    ; #38554: <==negation-removal== 85878 (pos)
                    (not (at_b_p7))

                    ; #54359: <==negation-removal== 21001 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #83960: origin
                    (at_b_p2)

                    ; #85878: origin
                    (not_at_b_p7)

                    ; #28925: <==negation-removal== 83960 (pos)
                    (not (not_at_b_p2))

                    ; #38554: <==negation-removal== 85878 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #69975: origin
                    (at_b_p3)

                    ; #85878: origin
                    (not_at_b_p7)

                    ; #36550: <==negation-removal== 69975 (pos)
                    (not (not_at_b_p3))

                    ; #38554: <==negation-removal== 85878 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #73288: origin
                    (at_b_p4)

                    ; #85878: origin
                    (not_at_b_p7)

                    ; #20901: <==negation-removal== 73288 (pos)
                    (not (not_at_b_p4))

                    ; #38554: <==negation-removal== 85878 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #34953: origin
                    (at_b_p5)

                    ; #85878: origin
                    (not_at_b_p7)

                    ; #38554: <==negation-removal== 85878 (pos)
                    (not (at_b_p7))

                    ; #86921: <==negation-removal== 34953 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #12011: origin
                    (at_b_p6)

                    ; #85878: origin
                    (not_at_b_p7)

                    ; #38554: <==negation-removal== 85878 (pos)
                    (not (at_b_p7))

                    ; #63799: <==negation-removal== 12011 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #38554: origin
                    (at_b_p7)

                    ; #85878: origin
                    (not_at_b_p7)

                    ; #38554: <==negation-removal== 85878 (pos)
                    (not (at_b_p7))

                    ; #85878: <==negation-removal== 38554 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #61539: origin
                    (at_b_p8)

                    ; #85878: origin
                    (not_at_b_p7)

                    ; #38554: <==negation-removal== 85878 (pos)
                    (not (at_b_p7))

                    ; #89290: <==negation-removal== 61539 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #62216: origin
                    (at_b_p9)

                    ; #85878: origin
                    (not_at_b_p7)

                    ; #38554: <==negation-removal== 85878 (pos)
                    (not (at_b_p7))

                    ; #73994: <==negation-removal== 62216 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #21001: origin
                    (at_b_p1)

                    ; #89290: origin
                    (not_at_b_p8)

                    ; #54359: <==negation-removal== 21001 (pos)
                    (not (not_at_b_p1))

                    ; #61539: <==negation-removal== 89290 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #83960: origin
                    (at_b_p2)

                    ; #89290: origin
                    (not_at_b_p8)

                    ; #28925: <==negation-removal== 83960 (pos)
                    (not (not_at_b_p2))

                    ; #61539: <==negation-removal== 89290 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #69975: origin
                    (at_b_p3)

                    ; #89290: origin
                    (not_at_b_p8)

                    ; #36550: <==negation-removal== 69975 (pos)
                    (not (not_at_b_p3))

                    ; #61539: <==negation-removal== 89290 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #73288: origin
                    (at_b_p4)

                    ; #89290: origin
                    (not_at_b_p8)

                    ; #20901: <==negation-removal== 73288 (pos)
                    (not (not_at_b_p4))

                    ; #61539: <==negation-removal== 89290 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #34953: origin
                    (at_b_p5)

                    ; #89290: origin
                    (not_at_b_p8)

                    ; #61539: <==negation-removal== 89290 (pos)
                    (not (at_b_p8))

                    ; #86921: <==negation-removal== 34953 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #12011: origin
                    (at_b_p6)

                    ; #89290: origin
                    (not_at_b_p8)

                    ; #61539: <==negation-removal== 89290 (pos)
                    (not (at_b_p8))

                    ; #63799: <==negation-removal== 12011 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #38554: origin
                    (at_b_p7)

                    ; #89290: origin
                    (not_at_b_p8)

                    ; #61539: <==negation-removal== 89290 (pos)
                    (not (at_b_p8))

                    ; #85878: <==negation-removal== 38554 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #61539: origin
                    (at_b_p8)

                    ; #89290: origin
                    (not_at_b_p8)

                    ; #61539: <==negation-removal== 89290 (pos)
                    (not (at_b_p8))

                    ; #89290: <==negation-removal== 61539 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #62216: origin
                    (at_b_p9)

                    ; #89290: origin
                    (not_at_b_p8)

                    ; #61539: <==negation-removal== 89290 (pos)
                    (not (at_b_p8))

                    ; #73994: <==negation-removal== 62216 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #21001: origin
                    (at_b_p1)

                    ; #73994: origin
                    (not_at_b_p9)

                    ; #54359: <==negation-removal== 21001 (pos)
                    (not (not_at_b_p1))

                    ; #62216: <==negation-removal== 73994 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #73994: origin
                    (not_at_b_p9)

                    ; #83960: origin
                    (at_b_p2)

                    ; #28925: <==negation-removal== 83960 (pos)
                    (not (not_at_b_p2))

                    ; #62216: <==negation-removal== 73994 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #69975: origin
                    (at_b_p3)

                    ; #73994: origin
                    (not_at_b_p9)

                    ; #36550: <==negation-removal== 69975 (pos)
                    (not (not_at_b_p3))

                    ; #62216: <==negation-removal== 73994 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #73288: origin
                    (at_b_p4)

                    ; #73994: origin
                    (not_at_b_p9)

                    ; #20901: <==negation-removal== 73288 (pos)
                    (not (not_at_b_p4))

                    ; #62216: <==negation-removal== 73994 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #34953: origin
                    (at_b_p5)

                    ; #73994: origin
                    (not_at_b_p9)

                    ; #62216: <==negation-removal== 73994 (pos)
                    (not (at_b_p9))

                    ; #86921: <==negation-removal== 34953 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #12011: origin
                    (at_b_p6)

                    ; #73994: origin
                    (not_at_b_p9)

                    ; #62216: <==negation-removal== 73994 (pos)
                    (not (at_b_p9))

                    ; #63799: <==negation-removal== 12011 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #38554: origin
                    (at_b_p7)

                    ; #73994: origin
                    (not_at_b_p9)

                    ; #62216: <==negation-removal== 73994 (pos)
                    (not (at_b_p9))

                    ; #85878: <==negation-removal== 38554 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #61539: origin
                    (at_b_p8)

                    ; #73994: origin
                    (not_at_b_p9)

                    ; #62216: <==negation-removal== 73994 (pos)
                    (not (at_b_p9))

                    ; #89290: <==negation-removal== 61539 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #62216: origin
                    (at_b_p9)

                    ; #73994: origin
                    (not_at_b_p9)

                    ; #62216: <==negation-removal== 73994 (pos)
                    (not (at_b_p9))

                    ; #73994: <==negation-removal== 62216 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #33570: origin
                    (at_c_p1)

                    ; #46042: origin
                    (not_at_c_p1)

                    ; #33570: <==negation-removal== 46042 (pos)
                    (not (at_c_p1))

                    ; #46042: <==negation-removal== 33570 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #41122: origin
                    (at_c_p2)

                    ; #46042: origin
                    (not_at_c_p1)

                    ; #15277: <==negation-removal== 41122 (pos)
                    (not (not_at_c_p2))

                    ; #33570: <==negation-removal== 46042 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #46042: origin
                    (not_at_c_p1)

                    ; #58169: origin
                    (at_c_p3)

                    ; #33570: <==negation-removal== 46042 (pos)
                    (not (at_c_p1))

                    ; #44453: <==negation-removal== 58169 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #46042: origin
                    (not_at_c_p1)

                    ; #75700: origin
                    (at_c_p4)

                    ; #33570: <==negation-removal== 46042 (pos)
                    (not (at_c_p1))

                    ; #91029: <==negation-removal== 75700 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #46042: origin
                    (not_at_c_p1)

                    ; #51907: origin
                    (at_c_p5)

                    ; #33570: <==negation-removal== 46042 (pos)
                    (not (at_c_p1))

                    ; #86799: <==negation-removal== 51907 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #27404: origin
                    (at_c_p6)

                    ; #46042: origin
                    (not_at_c_p1)

                    ; #33570: <==negation-removal== 46042 (pos)
                    (not (at_c_p1))

                    ; #53754: <==negation-removal== 27404 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #11564: origin
                    (at_c_p7)

                    ; #46042: origin
                    (not_at_c_p1)

                    ; #33570: <==negation-removal== 46042 (pos)
                    (not (at_c_p1))

                    ; #91782: <==negation-removal== 11564 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #46042: origin
                    (not_at_c_p1)

                    ; #82032: origin
                    (at_c_p8)

                    ; #24400: <==negation-removal== 82032 (pos)
                    (not (not_at_c_p8))

                    ; #33570: <==negation-removal== 46042 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #11871: origin
                    (at_c_p9)

                    ; #46042: origin
                    (not_at_c_p1)

                    ; #33570: <==negation-removal== 46042 (pos)
                    (not (at_c_p1))

                    ; #72866: <==negation-removal== 11871 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #15277: origin
                    (not_at_c_p2)

                    ; #33570: origin
                    (at_c_p1)

                    ; #41122: <==negation-removal== 15277 (pos)
                    (not (at_c_p2))

                    ; #46042: <==negation-removal== 33570 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #15277: origin
                    (not_at_c_p2)

                    ; #41122: origin
                    (at_c_p2)

                    ; #15277: <==negation-removal== 41122 (pos)
                    (not (not_at_c_p2))

                    ; #41122: <==negation-removal== 15277 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #15277: origin
                    (not_at_c_p2)

                    ; #58169: origin
                    (at_c_p3)

                    ; #41122: <==negation-removal== 15277 (pos)
                    (not (at_c_p2))

                    ; #44453: <==negation-removal== 58169 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #15277: origin
                    (not_at_c_p2)

                    ; #75700: origin
                    (at_c_p4)

                    ; #41122: <==negation-removal== 15277 (pos)
                    (not (at_c_p2))

                    ; #91029: <==negation-removal== 75700 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #15277: origin
                    (not_at_c_p2)

                    ; #51907: origin
                    (at_c_p5)

                    ; #41122: <==negation-removal== 15277 (pos)
                    (not (at_c_p2))

                    ; #86799: <==negation-removal== 51907 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #15277: origin
                    (not_at_c_p2)

                    ; #27404: origin
                    (at_c_p6)

                    ; #41122: <==negation-removal== 15277 (pos)
                    (not (at_c_p2))

                    ; #53754: <==negation-removal== 27404 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #11564: origin
                    (at_c_p7)

                    ; #15277: origin
                    (not_at_c_p2)

                    ; #41122: <==negation-removal== 15277 (pos)
                    (not (at_c_p2))

                    ; #91782: <==negation-removal== 11564 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #15277: origin
                    (not_at_c_p2)

                    ; #82032: origin
                    (at_c_p8)

                    ; #24400: <==negation-removal== 82032 (pos)
                    (not (not_at_c_p8))

                    ; #41122: <==negation-removal== 15277 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #11871: origin
                    (at_c_p9)

                    ; #15277: origin
                    (not_at_c_p2)

                    ; #41122: <==negation-removal== 15277 (pos)
                    (not (at_c_p2))

                    ; #72866: <==negation-removal== 11871 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #33570: origin
                    (at_c_p1)

                    ; #44453: origin
                    (not_at_c_p3)

                    ; #46042: <==negation-removal== 33570 (pos)
                    (not (not_at_c_p1))

                    ; #58169: <==negation-removal== 44453 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #41122: origin
                    (at_c_p2)

                    ; #44453: origin
                    (not_at_c_p3)

                    ; #15277: <==negation-removal== 41122 (pos)
                    (not (not_at_c_p2))

                    ; #58169: <==negation-removal== 44453 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #44453: origin
                    (not_at_c_p3)

                    ; #58169: origin
                    (at_c_p3)

                    ; #44453: <==negation-removal== 58169 (pos)
                    (not (not_at_c_p3))

                    ; #58169: <==negation-removal== 44453 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #44453: origin
                    (not_at_c_p3)

                    ; #75700: origin
                    (at_c_p4)

                    ; #58169: <==negation-removal== 44453 (pos)
                    (not (at_c_p3))

                    ; #91029: <==negation-removal== 75700 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #44453: origin
                    (not_at_c_p3)

                    ; #51907: origin
                    (at_c_p5)

                    ; #58169: <==negation-removal== 44453 (pos)
                    (not (at_c_p3))

                    ; #86799: <==negation-removal== 51907 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #27404: origin
                    (at_c_p6)

                    ; #44453: origin
                    (not_at_c_p3)

                    ; #53754: <==negation-removal== 27404 (pos)
                    (not (not_at_c_p6))

                    ; #58169: <==negation-removal== 44453 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #11564: origin
                    (at_c_p7)

                    ; #44453: origin
                    (not_at_c_p3)

                    ; #58169: <==negation-removal== 44453 (pos)
                    (not (at_c_p3))

                    ; #91782: <==negation-removal== 11564 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #44453: origin
                    (not_at_c_p3)

                    ; #82032: origin
                    (at_c_p8)

                    ; #24400: <==negation-removal== 82032 (pos)
                    (not (not_at_c_p8))

                    ; #58169: <==negation-removal== 44453 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #11871: origin
                    (at_c_p9)

                    ; #44453: origin
                    (not_at_c_p3)

                    ; #58169: <==negation-removal== 44453 (pos)
                    (not (at_c_p3))

                    ; #72866: <==negation-removal== 11871 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #33570: origin
                    (at_c_p1)

                    ; #91029: origin
                    (not_at_c_p4)

                    ; #46042: <==negation-removal== 33570 (pos)
                    (not (not_at_c_p1))

                    ; #75700: <==negation-removal== 91029 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #41122: origin
                    (at_c_p2)

                    ; #91029: origin
                    (not_at_c_p4)

                    ; #15277: <==negation-removal== 41122 (pos)
                    (not (not_at_c_p2))

                    ; #75700: <==negation-removal== 91029 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #58169: origin
                    (at_c_p3)

                    ; #91029: origin
                    (not_at_c_p4)

                    ; #44453: <==negation-removal== 58169 (pos)
                    (not (not_at_c_p3))

                    ; #75700: <==negation-removal== 91029 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #75700: origin
                    (at_c_p4)

                    ; #91029: origin
                    (not_at_c_p4)

                    ; #75700: <==negation-removal== 91029 (pos)
                    (not (at_c_p4))

                    ; #91029: <==negation-removal== 75700 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #51907: origin
                    (at_c_p5)

                    ; #91029: origin
                    (not_at_c_p4)

                    ; #75700: <==negation-removal== 91029 (pos)
                    (not (at_c_p4))

                    ; #86799: <==negation-removal== 51907 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #27404: origin
                    (at_c_p6)

                    ; #91029: origin
                    (not_at_c_p4)

                    ; #53754: <==negation-removal== 27404 (pos)
                    (not (not_at_c_p6))

                    ; #75700: <==negation-removal== 91029 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #11564: origin
                    (at_c_p7)

                    ; #91029: origin
                    (not_at_c_p4)

                    ; #75700: <==negation-removal== 91029 (pos)
                    (not (at_c_p4))

                    ; #91782: <==negation-removal== 11564 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #82032: origin
                    (at_c_p8)

                    ; #91029: origin
                    (not_at_c_p4)

                    ; #24400: <==negation-removal== 82032 (pos)
                    (not (not_at_c_p8))

                    ; #75700: <==negation-removal== 91029 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #11871: origin
                    (at_c_p9)

                    ; #91029: origin
                    (not_at_c_p4)

                    ; #72866: <==negation-removal== 11871 (pos)
                    (not (not_at_c_p9))

                    ; #75700: <==negation-removal== 91029 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #33570: origin
                    (at_c_p1)

                    ; #86799: origin
                    (not_at_c_p5)

                    ; #46042: <==negation-removal== 33570 (pos)
                    (not (not_at_c_p1))

                    ; #51907: <==negation-removal== 86799 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #41122: origin
                    (at_c_p2)

                    ; #86799: origin
                    (not_at_c_p5)

                    ; #15277: <==negation-removal== 41122 (pos)
                    (not (not_at_c_p2))

                    ; #51907: <==negation-removal== 86799 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #58169: origin
                    (at_c_p3)

                    ; #86799: origin
                    (not_at_c_p5)

                    ; #44453: <==negation-removal== 58169 (pos)
                    (not (not_at_c_p3))

                    ; #51907: <==negation-removal== 86799 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #75700: origin
                    (at_c_p4)

                    ; #86799: origin
                    (not_at_c_p5)

                    ; #51907: <==negation-removal== 86799 (pos)
                    (not (at_c_p5))

                    ; #91029: <==negation-removal== 75700 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #51907: origin
                    (at_c_p5)

                    ; #86799: origin
                    (not_at_c_p5)

                    ; #51907: <==negation-removal== 86799 (pos)
                    (not (at_c_p5))

                    ; #86799: <==negation-removal== 51907 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #27404: origin
                    (at_c_p6)

                    ; #86799: origin
                    (not_at_c_p5)

                    ; #51907: <==negation-removal== 86799 (pos)
                    (not (at_c_p5))

                    ; #53754: <==negation-removal== 27404 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #11564: origin
                    (at_c_p7)

                    ; #86799: origin
                    (not_at_c_p5)

                    ; #51907: <==negation-removal== 86799 (pos)
                    (not (at_c_p5))

                    ; #91782: <==negation-removal== 11564 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #82032: origin
                    (at_c_p8)

                    ; #86799: origin
                    (not_at_c_p5)

                    ; #24400: <==negation-removal== 82032 (pos)
                    (not (not_at_c_p8))

                    ; #51907: <==negation-removal== 86799 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #11871: origin
                    (at_c_p9)

                    ; #86799: origin
                    (not_at_c_p5)

                    ; #51907: <==negation-removal== 86799 (pos)
                    (not (at_c_p5))

                    ; #72866: <==negation-removal== 11871 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #33570: origin
                    (at_c_p1)

                    ; #53754: origin
                    (not_at_c_p6)

                    ; #27404: <==negation-removal== 53754 (pos)
                    (not (at_c_p6))

                    ; #46042: <==negation-removal== 33570 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #41122: origin
                    (at_c_p2)

                    ; #53754: origin
                    (not_at_c_p6)

                    ; #15277: <==negation-removal== 41122 (pos)
                    (not (not_at_c_p2))

                    ; #27404: <==negation-removal== 53754 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #53754: origin
                    (not_at_c_p6)

                    ; #58169: origin
                    (at_c_p3)

                    ; #27404: <==negation-removal== 53754 (pos)
                    (not (at_c_p6))

                    ; #44453: <==negation-removal== 58169 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #53754: origin
                    (not_at_c_p6)

                    ; #75700: origin
                    (at_c_p4)

                    ; #27404: <==negation-removal== 53754 (pos)
                    (not (at_c_p6))

                    ; #91029: <==negation-removal== 75700 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #51907: origin
                    (at_c_p5)

                    ; #53754: origin
                    (not_at_c_p6)

                    ; #27404: <==negation-removal== 53754 (pos)
                    (not (at_c_p6))

                    ; #86799: <==negation-removal== 51907 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #27404: origin
                    (at_c_p6)

                    ; #53754: origin
                    (not_at_c_p6)

                    ; #27404: <==negation-removal== 53754 (pos)
                    (not (at_c_p6))

                    ; #53754: <==negation-removal== 27404 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #11564: origin
                    (at_c_p7)

                    ; #53754: origin
                    (not_at_c_p6)

                    ; #27404: <==negation-removal== 53754 (pos)
                    (not (at_c_p6))

                    ; #91782: <==negation-removal== 11564 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #53754: origin
                    (not_at_c_p6)

                    ; #82032: origin
                    (at_c_p8)

                    ; #24400: <==negation-removal== 82032 (pos)
                    (not (not_at_c_p8))

                    ; #27404: <==negation-removal== 53754 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #11871: origin
                    (at_c_p9)

                    ; #53754: origin
                    (not_at_c_p6)

                    ; #27404: <==negation-removal== 53754 (pos)
                    (not (at_c_p6))

                    ; #72866: <==negation-removal== 11871 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #33570: origin
                    (at_c_p1)

                    ; #91782: origin
                    (not_at_c_p7)

                    ; #11564: <==negation-removal== 91782 (pos)
                    (not (at_c_p7))

                    ; #46042: <==negation-removal== 33570 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #41122: origin
                    (at_c_p2)

                    ; #91782: origin
                    (not_at_c_p7)

                    ; #11564: <==negation-removal== 91782 (pos)
                    (not (at_c_p7))

                    ; #15277: <==negation-removal== 41122 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #58169: origin
                    (at_c_p3)

                    ; #91782: origin
                    (not_at_c_p7)

                    ; #11564: <==negation-removal== 91782 (pos)
                    (not (at_c_p7))

                    ; #44453: <==negation-removal== 58169 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #75700: origin
                    (at_c_p4)

                    ; #91782: origin
                    (not_at_c_p7)

                    ; #11564: <==negation-removal== 91782 (pos)
                    (not (at_c_p7))

                    ; #91029: <==negation-removal== 75700 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #51907: origin
                    (at_c_p5)

                    ; #91782: origin
                    (not_at_c_p7)

                    ; #11564: <==negation-removal== 91782 (pos)
                    (not (at_c_p7))

                    ; #86799: <==negation-removal== 51907 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #27404: origin
                    (at_c_p6)

                    ; #91782: origin
                    (not_at_c_p7)

                    ; #11564: <==negation-removal== 91782 (pos)
                    (not (at_c_p7))

                    ; #53754: <==negation-removal== 27404 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #11564: origin
                    (at_c_p7)

                    ; #91782: origin
                    (not_at_c_p7)

                    ; #11564: <==negation-removal== 91782 (pos)
                    (not (at_c_p7))

                    ; #91782: <==negation-removal== 11564 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #82032: origin
                    (at_c_p8)

                    ; #91782: origin
                    (not_at_c_p7)

                    ; #11564: <==negation-removal== 91782 (pos)
                    (not (at_c_p7))

                    ; #24400: <==negation-removal== 82032 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #11871: origin
                    (at_c_p9)

                    ; #91782: origin
                    (not_at_c_p7)

                    ; #11564: <==negation-removal== 91782 (pos)
                    (not (at_c_p7))

                    ; #72866: <==negation-removal== 11871 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #24400: origin
                    (not_at_c_p8)

                    ; #33570: origin
                    (at_c_p1)

                    ; #46042: <==negation-removal== 33570 (pos)
                    (not (not_at_c_p1))

                    ; #82032: <==negation-removal== 24400 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #24400: origin
                    (not_at_c_p8)

                    ; #41122: origin
                    (at_c_p2)

                    ; #15277: <==negation-removal== 41122 (pos)
                    (not (not_at_c_p2))

                    ; #82032: <==negation-removal== 24400 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #24400: origin
                    (not_at_c_p8)

                    ; #58169: origin
                    (at_c_p3)

                    ; #44453: <==negation-removal== 58169 (pos)
                    (not (not_at_c_p3))

                    ; #82032: <==negation-removal== 24400 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #24400: origin
                    (not_at_c_p8)

                    ; #75700: origin
                    (at_c_p4)

                    ; #82032: <==negation-removal== 24400 (pos)
                    (not (at_c_p8))

                    ; #91029: <==negation-removal== 75700 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #24400: origin
                    (not_at_c_p8)

                    ; #51907: origin
                    (at_c_p5)

                    ; #82032: <==negation-removal== 24400 (pos)
                    (not (at_c_p8))

                    ; #86799: <==negation-removal== 51907 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #24400: origin
                    (not_at_c_p8)

                    ; #27404: origin
                    (at_c_p6)

                    ; #53754: <==negation-removal== 27404 (pos)
                    (not (not_at_c_p6))

                    ; #82032: <==negation-removal== 24400 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #11564: origin
                    (at_c_p7)

                    ; #24400: origin
                    (not_at_c_p8)

                    ; #82032: <==negation-removal== 24400 (pos)
                    (not (at_c_p8))

                    ; #91782: <==negation-removal== 11564 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #24400: origin
                    (not_at_c_p8)

                    ; #82032: origin
                    (at_c_p8)

                    ; #24400: <==negation-removal== 82032 (pos)
                    (not (not_at_c_p8))

                    ; #82032: <==negation-removal== 24400 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #11871: origin
                    (at_c_p9)

                    ; #24400: origin
                    (not_at_c_p8)

                    ; #72866: <==negation-removal== 11871 (pos)
                    (not (not_at_c_p9))

                    ; #82032: <==negation-removal== 24400 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #33570: origin
                    (at_c_p1)

                    ; #72866: origin
                    (not_at_c_p9)

                    ; #11871: <==negation-removal== 72866 (pos)
                    (not (at_c_p9))

                    ; #46042: <==negation-removal== 33570 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #41122: origin
                    (at_c_p2)

                    ; #72866: origin
                    (not_at_c_p9)

                    ; #11871: <==negation-removal== 72866 (pos)
                    (not (at_c_p9))

                    ; #15277: <==negation-removal== 41122 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #58169: origin
                    (at_c_p3)

                    ; #72866: origin
                    (not_at_c_p9)

                    ; #11871: <==negation-removal== 72866 (pos)
                    (not (at_c_p9))

                    ; #44453: <==negation-removal== 58169 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #72866: origin
                    (not_at_c_p9)

                    ; #75700: origin
                    (at_c_p4)

                    ; #11871: <==negation-removal== 72866 (pos)
                    (not (at_c_p9))

                    ; #91029: <==negation-removal== 75700 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #51907: origin
                    (at_c_p5)

                    ; #72866: origin
                    (not_at_c_p9)

                    ; #11871: <==negation-removal== 72866 (pos)
                    (not (at_c_p9))

                    ; #86799: <==negation-removal== 51907 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #27404: origin
                    (at_c_p6)

                    ; #72866: origin
                    (not_at_c_p9)

                    ; #11871: <==negation-removal== 72866 (pos)
                    (not (at_c_p9))

                    ; #53754: <==negation-removal== 27404 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #11564: origin
                    (at_c_p7)

                    ; #72866: origin
                    (not_at_c_p9)

                    ; #11871: <==negation-removal== 72866 (pos)
                    (not (at_c_p9))

                    ; #91782: <==negation-removal== 11564 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #72866: origin
                    (not_at_c_p9)

                    ; #82032: origin
                    (at_c_p8)

                    ; #11871: <==negation-removal== 72866 (pos)
                    (not (at_c_p9))

                    ; #24400: <==negation-removal== 82032 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #11871: origin
                    (at_c_p9)

                    ; #72866: origin
                    (not_at_c_p9)

                    ; #11871: <==negation-removal== 72866 (pos)
                    (not (at_c_p9))

                    ; #72866: <==negation-removal== 11871 (pos)
                    (not (not_at_c_p9))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1))
        :effect (and
                    ; #17888: origin
                    (at_d_p1)

                    ; #78787: origin
                    (not_at_d_p1)

                    ; #17888: <==negation-removal== 78787 (pos)
                    (not (at_d_p1))

                    ; #78787: <==negation-removal== 17888 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #55638: origin
                    (at_d_p2)

                    ; #78787: origin
                    (not_at_d_p1)

                    ; #17888: <==negation-removal== 78787 (pos)
                    (not (at_d_p1))

                    ; #55147: <==negation-removal== 55638 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #78787: origin
                    (not_at_d_p1)

                    ; #83350: origin
                    (at_d_p3)

                    ; #17888: <==negation-removal== 78787 (pos)
                    (not (at_d_p1))

                    ; #94318: <==negation-removal== 83350 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1))
        :effect (and
                    ; #61521: origin
                    (at_d_p4)

                    ; #78787: origin
                    (not_at_d_p1)

                    ; #12142: <==negation-removal== 61521 (pos)
                    (not (not_at_d_p4))

                    ; #17888: <==negation-removal== 78787 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #56935: origin
                    (at_d_p5)

                    ; #78787: origin
                    (not_at_d_p1)

                    ; #17888: <==negation-removal== 78787 (pos)
                    (not (at_d_p1))

                    ; #41491: <==negation-removal== 56935 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #78787: origin
                    (not_at_d_p1)

                    ; #80374: origin
                    (at_d_p6)

                    ; #17888: <==negation-removal== 78787 (pos)
                    (not (at_d_p1))

                    ; #66394: <==negation-removal== 80374 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #66042: origin
                    (at_d_p7)

                    ; #78787: origin
                    (not_at_d_p1)

                    ; #15189: <==negation-removal== 66042 (pos)
                    (not (not_at_d_p7))

                    ; #17888: <==negation-removal== 78787 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1))
        :effect (and
                    ; #46208: origin
                    (at_d_p8)

                    ; #78787: origin
                    (not_at_d_p1)

                    ; #17888: <==negation-removal== 78787 (pos)
                    (not (at_d_p1))

                    ; #72098: <==negation-removal== 46208 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #20373: origin
                    (at_d_p9)

                    ; #78787: origin
                    (not_at_d_p1)

                    ; #17888: <==negation-removal== 78787 (pos)
                    (not (at_d_p1))

                    ; #47304: <==negation-removal== 20373 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #17888: origin
                    (at_d_p1)

                    ; #55147: origin
                    (not_at_d_p2)

                    ; #55638: <==negation-removal== 55147 (pos)
                    (not (at_d_p2))

                    ; #78787: <==negation-removal== 17888 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #55147: origin
                    (not_at_d_p2)

                    ; #55638: origin
                    (at_d_p2)

                    ; #55147: <==negation-removal== 55638 (pos)
                    (not (not_at_d_p2))

                    ; #55638: <==negation-removal== 55147 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #55147: origin
                    (not_at_d_p2)

                    ; #83350: origin
                    (at_d_p3)

                    ; #55638: <==negation-removal== 55147 (pos)
                    (not (at_d_p2))

                    ; #94318: <==negation-removal== 83350 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #55147: origin
                    (not_at_d_p2)

                    ; #61521: origin
                    (at_d_p4)

                    ; #12142: <==negation-removal== 61521 (pos)
                    (not (not_at_d_p4))

                    ; #55638: <==negation-removal== 55147 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #55147: origin
                    (not_at_d_p2)

                    ; #56935: origin
                    (at_d_p5)

                    ; #41491: <==negation-removal== 56935 (pos)
                    (not (not_at_d_p5))

                    ; #55638: <==negation-removal== 55147 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (at_d_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #55147: origin
                    (not_at_d_p2)

                    ; #80374: origin
                    (at_d_p6)

                    ; #55638: <==negation-removal== 55147 (pos)
                    (not (at_d_p2))

                    ; #66394: <==negation-removal== 80374 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #55147: origin
                    (not_at_d_p2)

                    ; #66042: origin
                    (at_d_p7)

                    ; #15189: <==negation-removal== 66042 (pos)
                    (not (not_at_d_p7))

                    ; #55638: <==negation-removal== 55147 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #46208: origin
                    (at_d_p8)

                    ; #55147: origin
                    (not_at_d_p2)

                    ; #55638: <==negation-removal== 55147 (pos)
                    (not (at_d_p2))

                    ; #72098: <==negation-removal== 46208 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #20373: origin
                    (at_d_p9)

                    ; #55147: origin
                    (not_at_d_p2)

                    ; #47304: <==negation-removal== 20373 (pos)
                    (not (not_at_d_p9))

                    ; #55638: <==negation-removal== 55147 (pos)
                    (not (at_d_p2))))

    (:action move_d_p3_p1
        :precondition (and (at_d_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #17888: origin
                    (at_d_p1)

                    ; #94318: origin
                    (not_at_d_p3)

                    ; #78787: <==negation-removal== 17888 (pos)
                    (not (not_at_d_p1))

                    ; #83350: <==negation-removal== 94318 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p2
        :precondition (and (at_d_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #55638: origin
                    (at_d_p2)

                    ; #94318: origin
                    (not_at_d_p3)

                    ; #55147: <==negation-removal== 55638 (pos)
                    (not (not_at_d_p2))

                    ; #83350: <==negation-removal== 94318 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #83350: origin
                    (at_d_p3)

                    ; #94318: origin
                    (not_at_d_p3)

                    ; #83350: <==negation-removal== 94318 (pos)
                    (not (at_d_p3))

                    ; #94318: <==negation-removal== 83350 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #61521: origin
                    (at_d_p4)

                    ; #94318: origin
                    (not_at_d_p3)

                    ; #12142: <==negation-removal== 61521 (pos)
                    (not (not_at_d_p4))

                    ; #83350: <==negation-removal== 94318 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #56935: origin
                    (at_d_p5)

                    ; #94318: origin
                    (not_at_d_p3)

                    ; #41491: <==negation-removal== 56935 (pos)
                    (not (not_at_d_p5))

                    ; #83350: <==negation-removal== 94318 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p6
        :precondition (and (at_d_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #80374: origin
                    (at_d_p6)

                    ; #94318: origin
                    (not_at_d_p3)

                    ; #66394: <==negation-removal== 80374 (pos)
                    (not (not_at_d_p6))

                    ; #83350: <==negation-removal== 94318 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #66042: origin
                    (at_d_p7)

                    ; #94318: origin
                    (not_at_d_p3)

                    ; #15189: <==negation-removal== 66042 (pos)
                    (not (not_at_d_p7))

                    ; #83350: <==negation-removal== 94318 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (at_d_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #46208: origin
                    (at_d_p8)

                    ; #94318: origin
                    (not_at_d_p3)

                    ; #72098: <==negation-removal== 46208 (pos)
                    (not (not_at_d_p8))

                    ; #83350: <==negation-removal== 94318 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p9
        :precondition (and (at_d_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #20373: origin
                    (at_d_p9)

                    ; #94318: origin
                    (not_at_d_p3)

                    ; #47304: <==negation-removal== 20373 (pos)
                    (not (not_at_d_p9))

                    ; #83350: <==negation-removal== 94318 (pos)
                    (not (at_d_p3))))

    (:action move_d_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_d_p4))
        :effect (and
                    ; #12142: origin
                    (not_at_d_p4)

                    ; #17888: origin
                    (at_d_p1)

                    ; #61521: <==negation-removal== 12142 (pos)
                    (not (at_d_p4))

                    ; #78787: <==negation-removal== 17888 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #12142: origin
                    (not_at_d_p4)

                    ; #55638: origin
                    (at_d_p2)

                    ; #55147: <==negation-removal== 55638 (pos)
                    (not (not_at_d_p2))

                    ; #61521: <==negation-removal== 12142 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_d_p4))
        :effect (and
                    ; #12142: origin
                    (not_at_d_p4)

                    ; #83350: origin
                    (at_d_p3)

                    ; #61521: <==negation-removal== 12142 (pos)
                    (not (at_d_p4))

                    ; #94318: <==negation-removal== 83350 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4))
        :effect (and
                    ; #12142: origin
                    (not_at_d_p4)

                    ; #61521: origin
                    (at_d_p4)

                    ; #12142: <==negation-removal== 61521 (pos)
                    (not (not_at_d_p4))

                    ; #61521: <==negation-removal== 12142 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_d_p4))
        :effect (and
                    ; #12142: origin
                    (not_at_d_p4)

                    ; #56935: origin
                    (at_d_p5)

                    ; #41491: <==negation-removal== 56935 (pos)
                    (not (not_at_d_p5))

                    ; #61521: <==negation-removal== 12142 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_d_p4))
        :effect (and
                    ; #12142: origin
                    (not_at_d_p4)

                    ; #80374: origin
                    (at_d_p6)

                    ; #61521: <==negation-removal== 12142 (pos)
                    (not (at_d_p4))

                    ; #66394: <==negation-removal== 80374 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_d_p4))
        :effect (and
                    ; #12142: origin
                    (not_at_d_p4)

                    ; #66042: origin
                    (at_d_p7)

                    ; #15189: <==negation-removal== 66042 (pos)
                    (not (not_at_d_p7))

                    ; #61521: <==negation-removal== 12142 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4))
        :effect (and
                    ; #12142: origin
                    (not_at_d_p4)

                    ; #46208: origin
                    (at_d_p8)

                    ; #61521: <==negation-removal== 12142 (pos)
                    (not (at_d_p4))

                    ; #72098: <==negation-removal== 46208 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #12142: origin
                    (not_at_d_p4)

                    ; #20373: origin
                    (at_d_p9)

                    ; #47304: <==negation-removal== 20373 (pos)
                    (not (not_at_d_p9))

                    ; #61521: <==negation-removal== 12142 (pos)
                    (not (at_d_p4))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #17888: origin
                    (at_d_p1)

                    ; #41491: origin
                    (not_at_d_p5)

                    ; #56935: <==negation-removal== 41491 (pos)
                    (not (at_d_p5))

                    ; #78787: <==negation-removal== 17888 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #41491: origin
                    (not_at_d_p5)

                    ; #55638: origin
                    (at_d_p2)

                    ; #55147: <==negation-removal== 55638 (pos)
                    (not (not_at_d_p2))

                    ; #56935: <==negation-removal== 41491 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #41491: origin
                    (not_at_d_p5)

                    ; #83350: origin
                    (at_d_p3)

                    ; #56935: <==negation-removal== 41491 (pos)
                    (not (at_d_p5))

                    ; #94318: <==negation-removal== 83350 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #41491: origin
                    (not_at_d_p5)

                    ; #61521: origin
                    (at_d_p4)

                    ; #12142: <==negation-removal== 61521 (pos)
                    (not (not_at_d_p4))

                    ; #56935: <==negation-removal== 41491 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #41491: origin
                    (not_at_d_p5)

                    ; #56935: origin
                    (at_d_p5)

                    ; #41491: <==negation-removal== 56935 (pos)
                    (not (not_at_d_p5))

                    ; #56935: <==negation-removal== 41491 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #41491: origin
                    (not_at_d_p5)

                    ; #80374: origin
                    (at_d_p6)

                    ; #56935: <==negation-removal== 41491 (pos)
                    (not (at_d_p5))

                    ; #66394: <==negation-removal== 80374 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #41491: origin
                    (not_at_d_p5)

                    ; #66042: origin
                    (at_d_p7)

                    ; #15189: <==negation-removal== 66042 (pos)
                    (not (not_at_d_p7))

                    ; #56935: <==negation-removal== 41491 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #41491: origin
                    (not_at_d_p5)

                    ; #46208: origin
                    (at_d_p8)

                    ; #56935: <==negation-removal== 41491 (pos)
                    (not (at_d_p5))

                    ; #72098: <==negation-removal== 46208 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #20373: origin
                    (at_d_p9)

                    ; #41491: origin
                    (not_at_d_p5)

                    ; #47304: <==negation-removal== 20373 (pos)
                    (not (not_at_d_p9))

                    ; #56935: <==negation-removal== 41491 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (at_d_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #17888: origin
                    (at_d_p1)

                    ; #66394: origin
                    (not_at_d_p6)

                    ; #78787: <==negation-removal== 17888 (pos)
                    (not (not_at_d_p1))

                    ; #80374: <==negation-removal== 66394 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #55638: origin
                    (at_d_p2)

                    ; #66394: origin
                    (not_at_d_p6)

                    ; #55147: <==negation-removal== 55638 (pos)
                    (not (not_at_d_p2))

                    ; #80374: <==negation-removal== 66394 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #66394: origin
                    (not_at_d_p6)

                    ; #83350: origin
                    (at_d_p3)

                    ; #80374: <==negation-removal== 66394 (pos)
                    (not (at_d_p6))

                    ; #94318: <==negation-removal== 83350 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #61521: origin
                    (at_d_p4)

                    ; #66394: origin
                    (not_at_d_p6)

                    ; #12142: <==negation-removal== 61521 (pos)
                    (not (not_at_d_p4))

                    ; #80374: <==negation-removal== 66394 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #56935: origin
                    (at_d_p5)

                    ; #66394: origin
                    (not_at_d_p6)

                    ; #41491: <==negation-removal== 56935 (pos)
                    (not (not_at_d_p5))

                    ; #80374: <==negation-removal== 66394 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #66394: origin
                    (not_at_d_p6)

                    ; #80374: origin
                    (at_d_p6)

                    ; #66394: <==negation-removal== 80374 (pos)
                    (not (not_at_d_p6))

                    ; #80374: <==negation-removal== 66394 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #66042: origin
                    (at_d_p7)

                    ; #66394: origin
                    (not_at_d_p6)

                    ; #15189: <==negation-removal== 66042 (pos)
                    (not (not_at_d_p7))

                    ; #80374: <==negation-removal== 66394 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (at_d_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #46208: origin
                    (at_d_p8)

                    ; #66394: origin
                    (not_at_d_p6)

                    ; #72098: <==negation-removal== 46208 (pos)
                    (not (not_at_d_p8))

                    ; #80374: <==negation-removal== 66394 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (at_d_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #20373: origin
                    (at_d_p9)

                    ; #66394: origin
                    (not_at_d_p6)

                    ; #47304: <==negation-removal== 20373 (pos)
                    (not (not_at_d_p9))

                    ; #80374: <==negation-removal== 66394 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7))
        :effect (and
                    ; #15189: origin
                    (not_at_d_p7)

                    ; #17888: origin
                    (at_d_p1)

                    ; #66042: <==negation-removal== 15189 (pos)
                    (not (at_d_p7))

                    ; #78787: <==negation-removal== 17888 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7))
        :effect (and
                    ; #15189: origin
                    (not_at_d_p7)

                    ; #55638: origin
                    (at_d_p2)

                    ; #55147: <==negation-removal== 55638 (pos)
                    (not (not_at_d_p2))

                    ; #66042: <==negation-removal== 15189 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #15189: origin
                    (not_at_d_p7)

                    ; #83350: origin
                    (at_d_p3)

                    ; #66042: <==negation-removal== 15189 (pos)
                    (not (at_d_p7))

                    ; #94318: <==negation-removal== 83350 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7))
        :effect (and
                    ; #15189: origin
                    (not_at_d_p7)

                    ; #61521: origin
                    (at_d_p4)

                    ; #12142: <==negation-removal== 61521 (pos)
                    (not (not_at_d_p4))

                    ; #66042: <==negation-removal== 15189 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #15189: origin
                    (not_at_d_p7)

                    ; #56935: origin
                    (at_d_p5)

                    ; #41491: <==negation-removal== 56935 (pos)
                    (not (not_at_d_p5))

                    ; #66042: <==negation-removal== 15189 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7))
        :effect (and
                    ; #15189: origin
                    (not_at_d_p7)

                    ; #80374: origin
                    (at_d_p6)

                    ; #66042: <==negation-removal== 15189 (pos)
                    (not (at_d_p7))

                    ; #66394: <==negation-removal== 80374 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7))
        :effect (and
                    ; #15189: origin
                    (not_at_d_p7)

                    ; #66042: origin
                    (at_d_p7)

                    ; #15189: <==negation-removal== 66042 (pos)
                    (not (not_at_d_p7))

                    ; #66042: <==negation-removal== 15189 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #15189: origin
                    (not_at_d_p7)

                    ; #46208: origin
                    (at_d_p8)

                    ; #66042: <==negation-removal== 15189 (pos)
                    (not (at_d_p7))

                    ; #72098: <==negation-removal== 46208 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #15189: origin
                    (not_at_d_p7)

                    ; #20373: origin
                    (at_d_p9)

                    ; #47304: <==negation-removal== 20373 (pos)
                    (not (not_at_d_p9))

                    ; #66042: <==negation-removal== 15189 (pos)
                    (not (at_d_p7))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #17888: origin
                    (at_d_p1)

                    ; #72098: origin
                    (not_at_d_p8)

                    ; #46208: <==negation-removal== 72098 (pos)
                    (not (at_d_p8))

                    ; #78787: <==negation-removal== 17888 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_d_p8))
        :effect (and
                    ; #55638: origin
                    (at_d_p2)

                    ; #72098: origin
                    (not_at_d_p8)

                    ; #46208: <==negation-removal== 72098 (pos)
                    (not (at_d_p8))

                    ; #55147: <==negation-removal== 55638 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8))
        :effect (and
                    ; #72098: origin
                    (not_at_d_p8)

                    ; #83350: origin
                    (at_d_p3)

                    ; #46208: <==negation-removal== 72098 (pos)
                    (not (at_d_p8))

                    ; #94318: <==negation-removal== 83350 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_d_p8))
        :effect (and
                    ; #61521: origin
                    (at_d_p4)

                    ; #72098: origin
                    (not_at_d_p8)

                    ; #12142: <==negation-removal== 61521 (pos)
                    (not (not_at_d_p4))

                    ; #46208: <==negation-removal== 72098 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8))
        :effect (and
                    ; #56935: origin
                    (at_d_p5)

                    ; #72098: origin
                    (not_at_d_p8)

                    ; #41491: <==negation-removal== 56935 (pos)
                    (not (not_at_d_p5))

                    ; #46208: <==negation-removal== 72098 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #72098: origin
                    (not_at_d_p8)

                    ; #80374: origin
                    (at_d_p6)

                    ; #46208: <==negation-removal== 72098 (pos)
                    (not (at_d_p8))

                    ; #66394: <==negation-removal== 80374 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #66042: origin
                    (at_d_p7)

                    ; #72098: origin
                    (not_at_d_p8)

                    ; #15189: <==negation-removal== 66042 (pos)
                    (not (not_at_d_p7))

                    ; #46208: <==negation-removal== 72098 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #46208: origin
                    (at_d_p8)

                    ; #72098: origin
                    (not_at_d_p8)

                    ; #46208: <==negation-removal== 72098 (pos)
                    (not (at_d_p8))

                    ; #72098: <==negation-removal== 46208 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #20373: origin
                    (at_d_p9)

                    ; #72098: origin
                    (not_at_d_p8)

                    ; #46208: <==negation-removal== 72098 (pos)
                    (not (at_d_p8))

                    ; #47304: <==negation-removal== 20373 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #17888: origin
                    (at_d_p1)

                    ; #47304: origin
                    (not_at_d_p9)

                    ; #20373: <==negation-removal== 47304 (pos)
                    (not (at_d_p9))

                    ; #78787: <==negation-removal== 17888 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #47304: origin
                    (not_at_d_p9)

                    ; #55638: origin
                    (at_d_p2)

                    ; #20373: <==negation-removal== 47304 (pos)
                    (not (at_d_p9))

                    ; #55147: <==negation-removal== 55638 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #47304: origin
                    (not_at_d_p9)

                    ; #83350: origin
                    (at_d_p3)

                    ; #20373: <==negation-removal== 47304 (pos)
                    (not (at_d_p9))

                    ; #94318: <==negation-removal== 83350 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #47304: origin
                    (not_at_d_p9)

                    ; #61521: origin
                    (at_d_p4)

                    ; #12142: <==negation-removal== 61521 (pos)
                    (not (not_at_d_p4))

                    ; #20373: <==negation-removal== 47304 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #47304: origin
                    (not_at_d_p9)

                    ; #56935: origin
                    (at_d_p5)

                    ; #20373: <==negation-removal== 47304 (pos)
                    (not (at_d_p9))

                    ; #41491: <==negation-removal== 56935 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #47304: origin
                    (not_at_d_p9)

                    ; #80374: origin
                    (at_d_p6)

                    ; #20373: <==negation-removal== 47304 (pos)
                    (not (at_d_p9))

                    ; #66394: <==negation-removal== 80374 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #47304: origin
                    (not_at_d_p9)

                    ; #66042: origin
                    (at_d_p7)

                    ; #15189: <==negation-removal== 66042 (pos)
                    (not (not_at_d_p7))

                    ; #20373: <==negation-removal== 47304 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #46208: origin
                    (at_d_p8)

                    ; #47304: origin
                    (not_at_d_p9)

                    ; #20373: <==negation-removal== 47304 (pos)
                    (not (at_d_p9))

                    ; #72098: <==negation-removal== 46208 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #20373: origin
                    (at_d_p9)

                    ; #47304: origin
                    (not_at_d_p9)

                    ; #20373: <==negation-removal== 47304 (pos)
                    (not (at_d_p9))

                    ; #47304: <==negation-removal== 20373 (pos)
                    (not (not_at_d_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24152: <==commonly_known== 87113 (neg)
                    (Pb_checked_p1)

                    ; #34139: <==commonly_known== 87113 (neg)
                    (Pa_checked_p1)

                    ; #36010: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #37931: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #38388: <==commonly_known== 87113 (neg)
                    (Pd_checked_p1)

                    ; #51820: <==commonly_known== 72623 (pos)
                    (Bd_checked_p1)

                    ; #52683: <==commonly_known== 72623 (pos)
                    (Bb_checked_p1)

                    ; #56221: <==commonly_known== 72623 (pos)
                    (Bc_checked_p1)

                    ; #59997: <==closure== 37931 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #72623: origin
                    (checked_p1)

                    ; #77872: <==commonly_known== 87113 (neg)
                    (Pc_checked_p1)

                    ; #81397: <==closure== 36010 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #81656: <==commonly_known== 72623 (pos)
                    (Ba_checked_p1)

                    ; #10913: <==negation-removal== 56221 (pos)
                    (not (Pc_not_checked_p1))

                    ; #13560: <==uncertain_firing== 37931 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #17282: <==uncertain_firing== 59997 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #24031: <==negation-removal== 81397 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #33255: <==negation-removal== 51820 (pos)
                    (not (Pd_not_checked_p1))

                    ; #34769: <==negation-removal== 37931 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #36771: <==negation-removal== 38388 (pos)
                    (not (Bd_not_checked_p1))

                    ; #41071: <==negation-removal== 81656 (pos)
                    (not (Pa_not_checked_p1))

                    ; #48134: <==uncertain_firing== 81397 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #51985: <==negation-removal== 24152 (pos)
                    (not (Bb_not_checked_p1))

                    ; #54168: <==negation-removal== 77872 (pos)
                    (not (Bc_not_checked_p1))

                    ; #57412: <==negation-removal== 59997 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #62507: <==uncertain_firing== 36010 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #63726: <==negation-removal== 34139 (pos)
                    (not (Ba_not_checked_p1))

                    ; #68500: <==negation-removal== 36010 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #83613: <==negation-removal== 52683 (pos)
                    (not (Pb_not_checked_p1))

                    ; #87113: <==negation-removal== 72623 (pos)
                    (not (not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11502: <==commonly_known== 25061 (pos)
                    (Bb_checked_p2)

                    ; #25061: origin
                    (checked_p2)

                    ; #34261: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #39185: <==commonly_known== 25061 (pos)
                    (Bc_checked_p2)

                    ; #52970: <==closure== 67752 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #55043: <==commonly_known== 25061 (pos)
                    (Ba_checked_p2)

                    ; #60991: <==commonly_known== 25061 (pos)
                    (Bd_checked_p2)

                    ; #67752: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #70569: <==commonly_known== 72707 (neg)
                    (Pc_checked_p2)

                    ; #71424: <==commonly_known== 72707 (neg)
                    (Pd_checked_p2)

                    ; #78874: <==commonly_known== 72707 (neg)
                    (Pb_checked_p2)

                    ; #80474: <==commonly_known== 72707 (neg)
                    (Pa_checked_p2)

                    ; #84222: <==closure== 34261 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #19927: <==negation-removal== 78874 (pos)
                    (not (Bb_not_checked_p2))

                    ; #21960: <==negation-removal== 71424 (pos)
                    (not (Bd_not_checked_p2))

                    ; #21962: <==negation-removal== 60991 (pos)
                    (not (Pd_not_checked_p2))

                    ; #25747: <==uncertain_firing== 34261 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #31065: <==negation-removal== 52970 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #31370: <==negation-removal== 34261 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #35488: <==uncertain_firing== 84222 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #39071: <==negation-removal== 67752 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #55532: <==negation-removal== 80474 (pos)
                    (not (Ba_not_checked_p2))

                    ; #61742: <==negation-removal== 84222 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #65131: <==uncertain_firing== 67752 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #70592: <==negation-removal== 70569 (pos)
                    (not (Bc_not_checked_p2))

                    ; #72201: <==uncertain_firing== 52970 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #72707: <==negation-removal== 25061 (pos)
                    (not (not_checked_p2))

                    ; #75224: <==negation-removal== 55043 (pos)
                    (not (Pa_not_checked_p2))

                    ; #84560: <==negation-removal== 39185 (pos)
                    (not (Pc_not_checked_p2))

                    ; #90611: <==negation-removal== 11502 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13708: <==closure== 15608 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #15608: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #15863: <==commonly_known== 38447 (neg)
                    (Pc_checked_p3)

                    ; #24216: <==commonly_known== 38447 (neg)
                    (Pa_checked_p3)

                    ; #28824: origin
                    (checked_p3)

                    ; #38194: <==commonly_known== 38447 (neg)
                    (Pb_checked_p3)

                    ; #42124: <==commonly_known== 28824 (pos)
                    (Ba_checked_p3)

                    ; #42922: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #51157: <==closure== 42922 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #52733: <==commonly_known== 38447 (neg)
                    (Pd_checked_p3)

                    ; #53759: <==commonly_known== 28824 (pos)
                    (Bd_checked_p3)

                    ; #56078: <==commonly_known== 28824 (pos)
                    (Bc_checked_p3)

                    ; #72934: <==commonly_known== 28824 (pos)
                    (Bb_checked_p3)

                    ; #25962: <==negation-removal== 13708 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #32840: <==negation-removal== 38194 (pos)
                    (not (Bb_not_checked_p3))

                    ; #38447: <==negation-removal== 28824 (pos)
                    (not (not_checked_p3))

                    ; #40292: <==negation-removal== 42124 (pos)
                    (not (Pa_not_checked_p3))

                    ; #42049: <==uncertain_firing== 51157 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #42258: <==uncertain_firing== 13708 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #44226: <==negation-removal== 52733 (pos)
                    (not (Bd_not_checked_p3))

                    ; #50121: <==negation-removal== 24216 (pos)
                    (not (Ba_not_checked_p3))

                    ; #51477: <==negation-removal== 51157 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #54427: <==negation-removal== 72934 (pos)
                    (not (Pb_not_checked_p3))

                    ; #67284: <==negation-removal== 53759 (pos)
                    (not (Pd_not_checked_p3))

                    ; #70714: <==uncertain_firing== 42922 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #72309: <==uncertain_firing== 15608 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #74184: <==negation-removal== 56078 (pos)
                    (not (Pc_not_checked_p3))

                    ; #76935: <==negation-removal== 42922 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #83830: <==negation-removal== 15608 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86414: <==negation-removal== 15863 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10682: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #13495: <==commonly_known== 16183 (pos)
                    (Bc_checked_p4)

                    ; #16183: origin
                    (checked_p4)

                    ; #36847: <==commonly_known== 16183 (pos)
                    (Ba_checked_p4)

                    ; #38619: <==commonly_known== 89604 (neg)
                    (Pa_checked_p4)

                    ; #44020: <==commonly_known== 16183 (pos)
                    (Bb_checked_p4)

                    ; #70757: <==closure== 80535 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #80535: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #84962: <==commonly_known== 89604 (neg)
                    (Pc_checked_p4)

                    ; #84990: <==commonly_known== 89604 (neg)
                    (Pd_checked_p4)

                    ; #86193: <==closure== 10682 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #88041: <==commonly_known== 89604 (neg)
                    (Pb_checked_p4)

                    ; #92029: <==commonly_known== 16183 (pos)
                    (Bd_checked_p4)

                    ; #13613: <==negation-removal== 84962 (pos)
                    (not (Bc_not_checked_p4))

                    ; #23656: <==negation-removal== 80535 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #41448: <==negation-removal== 84990 (pos)
                    (not (Bd_not_checked_p4))

                    ; #49118: <==negation-removal== 36847 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49950: <==negation-removal== 92029 (pos)
                    (not (Pd_not_checked_p4))

                    ; #52094: <==uncertain_firing== 80535 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #53015: <==negation-removal== 13495 (pos)
                    (not (Pc_not_checked_p4))

                    ; #66716: <==negation-removal== 70757 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #67334: <==negation-removal== 44020 (pos)
                    (not (Pb_not_checked_p4))

                    ; #68610: <==uncertain_firing== 10682 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #70213: <==uncertain_firing== 70757 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #72090: <==negation-removal== 10682 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #73030: <==negation-removal== 38619 (pos)
                    (not (Ba_not_checked_p4))

                    ; #73552: <==negation-removal== 86193 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #75333: <==uncertain_firing== 86193 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #85384: <==negation-removal== 88041 (pos)
                    (not (Bb_not_checked_p4))

                    ; #89604: <==negation-removal== 16183 (pos)
                    (not (not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10087: <==commonly_known== 59752 (neg)
                    (Pb_checked_p5)

                    ; #11919: <==commonly_known== 32022 (pos)
                    (Bc_checked_p5)

                    ; #21234: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #25336: <==closure== 54619 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #32022: origin
                    (checked_p5)

                    ; #34906: <==commonly_known== 32022 (pos)
                    (Bb_checked_p5)

                    ; #36933: <==commonly_known== 59752 (neg)
                    (Pa_checked_p5)

                    ; #45546: <==commonly_known== 32022 (pos)
                    (Ba_checked_p5)

                    ; #54619: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #58902: <==commonly_known== 32022 (pos)
                    (Bd_checked_p5)

                    ; #68485: <==closure== 21234 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #78116: <==commonly_known== 59752 (neg)
                    (Pd_checked_p5)

                    ; #84928: <==commonly_known== 59752 (neg)
                    (Pc_checked_p5)

                    ; #14113: <==uncertain_firing== 21234 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #14751: <==negation-removal== 10087 (pos)
                    (not (Bb_not_checked_p5))

                    ; #23117: <==negation-removal== 45546 (pos)
                    (not (Pa_not_checked_p5))

                    ; #26017: <==negation-removal== 68485 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #34042: <==negation-removal== 11919 (pos)
                    (not (Pc_not_checked_p5))

                    ; #35350: <==negation-removal== 54619 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #37673: <==negation-removal== 21234 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #47433: <==uncertain_firing== 68485 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #51341: <==negation-removal== 78116 (pos)
                    (not (Bd_not_checked_p5))

                    ; #59752: <==negation-removal== 32022 (pos)
                    (not (not_checked_p5))

                    ; #62709: <==negation-removal== 84928 (pos)
                    (not (Bc_not_checked_p5))

                    ; #70657: <==negation-removal== 34906 (pos)
                    (not (Pb_not_checked_p5))

                    ; #71089: <==negation-removal== 58902 (pos)
                    (not (Pd_not_checked_p5))

                    ; #79968: <==negation-removal== 25336 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #83312: <==negation-removal== 36933 (pos)
                    (not (Ba_not_checked_p5))

                    ; #87224: <==uncertain_firing== 25336 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #89967: <==uncertain_firing== 54619 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13678: <==commonly_known== 25112 (pos)
                    (Ba_checked_p6)

                    ; #17213: <==commonly_known== 25112 (pos)
                    (Bc_checked_p6)

                    ; #22004: <==commonly_known== 25112 (pos)
                    (Bd_checked_p6)

                    ; #25112: origin
                    (checked_p6)

                    ; #30036: <==commonly_known== 25112 (pos)
                    (Bb_checked_p6)

                    ; #31224: <==commonly_known== 15470 (neg)
                    (Pa_checked_p6)

                    ; #32236: <==closure== 70159 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #37148: <==commonly_known== 15470 (neg)
                    (Pc_checked_p6)

                    ; #39102: <==commonly_known== 15470 (neg)
                    (Pd_checked_p6)

                    ; #52038: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #70159: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #74632: <==closure== 52038 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #85653: <==commonly_known== 15470 (neg)
                    (Pb_checked_p6)

                    ; #11465: <==negation-removal== 30036 (pos)
                    (not (Pb_not_checked_p6))

                    ; #14263: <==uncertain_firing== 74632 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #14923: <==negation-removal== 31224 (pos)
                    (not (Ba_not_checked_p6))

                    ; #15470: <==negation-removal== 25112 (pos)
                    (not (not_checked_p6))

                    ; #45059: <==negation-removal== 85653 (pos)
                    (not (Bb_not_checked_p6))

                    ; #46334: <==negation-removal== 39102 (pos)
                    (not (Bd_not_checked_p6))

                    ; #48318: <==negation-removal== 13678 (pos)
                    (not (Pa_not_checked_p6))

                    ; #48736: <==uncertain_firing== 52038 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #52577: <==negation-removal== 70159 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #55025: <==negation-removal== 17213 (pos)
                    (not (Pc_not_checked_p6))

                    ; #61795: <==uncertain_firing== 70159 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #62235: <==negation-removal== 37148 (pos)
                    (not (Bc_not_checked_p6))

                    ; #63469: <==negation-removal== 32236 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #66926: <==negation-removal== 52038 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #71648: <==uncertain_firing== 32236 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #72861: <==negation-removal== 22004 (pos)
                    (not (Pd_not_checked_p6))

                    ; #78728: <==negation-removal== 74632 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14429: <==commonly_known== 51335 (neg)
                    (Pa_checked_p7)

                    ; #20375: <==closure== 64108 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #31751: <==closure== 31997 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #31766: <==commonly_known== 33089 (pos)
                    (Bd_checked_p7)

                    ; #31997: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #33089: origin
                    (checked_p7)

                    ; #37839: <==commonly_known== 33089 (pos)
                    (Bb_checked_p7)

                    ; #40502: <==commonly_known== 33089 (pos)
                    (Ba_checked_p7)

                    ; #46956: <==commonly_known== 51335 (neg)
                    (Pd_checked_p7)

                    ; #53500: <==commonly_known== 33089 (pos)
                    (Bc_checked_p7)

                    ; #63242: <==commonly_known== 51335 (neg)
                    (Pc_checked_p7)

                    ; #64108: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #99387: <==commonly_known== 51335 (neg)
                    (Pb_checked_p7)

                    ; #11013: <==negation-removal== 20375 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #21332: <==negation-removal== 63242 (pos)
                    (not (Bc_not_checked_p7))

                    ; #22174: <==negation-removal== 31751 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #34508: <==negation-removal== 31997 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #37955: <==negation-removal== 46956 (pos)
                    (not (Bd_not_checked_p7))

                    ; #38101: <==negation-removal== 53500 (pos)
                    (not (Pc_not_checked_p7))

                    ; #39514: <==negation-removal== 31766 (pos)
                    (not (Pd_not_checked_p7))

                    ; #47296: <==uncertain_firing== 31997 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #51335: <==negation-removal== 33089 (pos)
                    (not (not_checked_p7))

                    ; #59744: <==negation-removal== 37839 (pos)
                    (not (Pb_not_checked_p7))

                    ; #64548: <==negation-removal== 99387 (pos)
                    (not (Bb_not_checked_p7))

                    ; #65697: <==uncertain_firing== 64108 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #65940: <==negation-removal== 40502 (pos)
                    (not (Pa_not_checked_p7))

                    ; #68913: <==uncertain_firing== 20375 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #77308: <==uncertain_firing== 31751 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #84340: <==negation-removal== 14429 (pos)
                    (not (Ba_not_checked_p7))

                    ; #88618: <==negation-removal== 64108 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #24732: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #43203: <==closure== 24732 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #43893: <==commonly_known== 75882 (pos)
                    (Ba_checked_p8)

                    ; #51122: <==commonly_known== 75882 (pos)
                    (Bd_checked_p8)

                    ; #58316: <==commonly_known== 15989 (neg)
                    (Pa_checked_p8)

                    ; #62579: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #65824: <==commonly_known== 75882 (pos)
                    (Bb_checked_p8)

                    ; #66003: <==commonly_known== 15989 (neg)
                    (Pb_checked_p8)

                    ; #75882: origin
                    (checked_p8)

                    ; #77896: <==commonly_known== 15989 (neg)
                    (Pd_checked_p8)

                    ; #81975: <==commonly_known== 15989 (neg)
                    (Pc_checked_p8)

                    ; #88700: <==closure== 62579 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #90871: <==commonly_known== 75882 (pos)
                    (Bc_checked_p8)

                    ; #14718: <==negation-removal== 81975 (pos)
                    (not (Bc_not_checked_p8))

                    ; #15989: <==negation-removal== 75882 (pos)
                    (not (not_checked_p8))

                    ; #23682: <==uncertain_firing== 24732 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #26071: <==uncertain_firing== 62579 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #26684: <==uncertain_firing== 88700 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #31909: <==negation-removal== 43893 (pos)
                    (not (Pa_not_checked_p8))

                    ; #38328: <==negation-removal== 65824 (pos)
                    (not (Pb_not_checked_p8))

                    ; #43831: <==negation-removal== 51122 (pos)
                    (not (Pd_not_checked_p8))

                    ; #45148: <==negation-removal== 24732 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #48821: <==negation-removal== 43203 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #51336: <==uncertain_firing== 43203 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #53613: <==negation-removal== 90871 (pos)
                    (not (Pc_not_checked_p8))

                    ; #54383: <==negation-removal== 62579 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #67422: <==negation-removal== 66003 (pos)
                    (not (Bb_not_checked_p8))

                    ; #68400: <==negation-removal== 88700 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #74551: <==negation-removal== 58316 (pos)
                    (not (Ba_not_checked_p8))

                    ; #75818: <==negation-removal== 77896 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13687: origin
                    (checked_p9)

                    ; #14137: <==commonly_known== 23287 (neg)
                    (Pa_checked_p9)

                    ; #15855: <==commonly_known== 13687 (pos)
                    (Bb_checked_p9)

                    ; #19986: <==closure== 63967 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #30025: <==commonly_known== 23287 (neg)
                    (Pb_checked_p9)

                    ; #44781: <==commonly_known== 23287 (neg)
                    (Pc_checked_p9)

                    ; #55562: <==commonly_known== 23287 (neg)
                    (Pd_checked_p9)

                    ; #62858: <==commonly_known== 13687 (pos)
                    (Ba_checked_p9)

                    ; #63282: <==commonly_known== 13687 (pos)
                    (Bc_checked_p9)

                    ; #63967: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #65122: <==commonly_known== 13687 (pos)
                    (Bd_checked_p9)

                    ; #82906: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #90716: <==closure== 82906 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #23287: <==negation-removal== 13687 (pos)
                    (not (not_checked_p9))

                    ; #29765: <==uncertain_firing== 63967 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #34252: <==negation-removal== 63967 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #42007: <==negation-removal== 30025 (pos)
                    (not (Bb_not_checked_p9))

                    ; #42668: <==negation-removal== 65122 (pos)
                    (not (Pd_not_checked_p9))

                    ; #50405: <==uncertain_firing== 82906 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #50936: <==negation-removal== 15855 (pos)
                    (not (Pb_not_checked_p9))

                    ; #51293: <==negation-removal== 19986 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #57280: <==negation-removal== 55562 (pos)
                    (not (Bd_not_checked_p9))

                    ; #57597: <==negation-removal== 62858 (pos)
                    (not (Pa_not_checked_p9))

                    ; #61907: <==negation-removal== 63282 (pos)
                    (not (Pc_not_checked_p9))

                    ; #63800: <==negation-removal== 44781 (pos)
                    (not (Bc_not_checked_p9))

                    ; #64142: <==uncertain_firing== 90716 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #65384: <==negation-removal== 90716 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #68469: <==negation-removal== 82906 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #68966: <==uncertain_firing== 19986 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #71756: <==negation-removal== 14137 (pos)
                    (not (Ba_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #22020: <==closure== 69695 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #24152: <==commonly_known== 87113 (neg)
                    (Pb_checked_p1)

                    ; #34139: <==commonly_known== 87113 (neg)
                    (Pa_checked_p1)

                    ; #38388: <==commonly_known== 87113 (neg)
                    (Pd_checked_p1)

                    ; #50706: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #51820: <==commonly_known== 72623 (pos)
                    (Bd_checked_p1)

                    ; #52683: <==commonly_known== 72623 (pos)
                    (Bb_checked_p1)

                    ; #53759: <==closure== 50706 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #56221: <==commonly_known== 72623 (pos)
                    (Bc_checked_p1)

                    ; #69695: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #72623: origin
                    (checked_p1)

                    ; #77872: <==commonly_known== 87113 (neg)
                    (Pc_checked_p1)

                    ; #81656: <==commonly_known== 72623 (pos)
                    (Ba_checked_p1)

                    ; #10913: <==negation-removal== 56221 (pos)
                    (not (Pc_not_checked_p1))

                    ; #11575: <==uncertain_firing== 69695 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #12002: <==negation-removal== 69695 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #33255: <==negation-removal== 51820 (pos)
                    (not (Pd_not_checked_p1))

                    ; #36771: <==negation-removal== 38388 (pos)
                    (not (Bd_not_checked_p1))

                    ; #41071: <==negation-removal== 81656 (pos)
                    (not (Pa_not_checked_p1))

                    ; #43190: <==negation-removal== 53759 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #44965: <==uncertain_firing== 22020 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #51985: <==negation-removal== 24152 (pos)
                    (not (Bb_not_checked_p1))

                    ; #52085: <==uncertain_firing== 50706 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #54168: <==negation-removal== 77872 (pos)
                    (not (Bc_not_checked_p1))

                    ; #63726: <==negation-removal== 34139 (pos)
                    (not (Ba_not_checked_p1))

                    ; #83613: <==negation-removal== 52683 (pos)
                    (not (Pb_not_checked_p1))

                    ; #83665: <==uncertain_firing== 53759 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #83753: <==negation-removal== 50706 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #83954: <==negation-removal== 22020 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #87113: <==negation-removal== 72623 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11502: <==commonly_known== 25061 (pos)
                    (Bb_checked_p2)

                    ; #25061: origin
                    (checked_p2)

                    ; #30440: <==closure== 65266 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #39185: <==commonly_known== 25061 (pos)
                    (Bc_checked_p2)

                    ; #55043: <==commonly_known== 25061 (pos)
                    (Ba_checked_p2)

                    ; #60991: <==commonly_known== 25061 (pos)
                    (Bd_checked_p2)

                    ; #64921: <==closure== 87124 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #65266: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #70569: <==commonly_known== 72707 (neg)
                    (Pc_checked_p2)

                    ; #71424: <==commonly_known== 72707 (neg)
                    (Pd_checked_p2)

                    ; #78874: <==commonly_known== 72707 (neg)
                    (Pb_checked_p2)

                    ; #80474: <==commonly_known== 72707 (neg)
                    (Pa_checked_p2)

                    ; #87124: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #19874: <==negation-removal== 87124 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #19927: <==negation-removal== 78874 (pos)
                    (not (Bb_not_checked_p2))

                    ; #21960: <==negation-removal== 71424 (pos)
                    (not (Bd_not_checked_p2))

                    ; #21962: <==negation-removal== 60991 (pos)
                    (not (Pd_not_checked_p2))

                    ; #26764: <==uncertain_firing== 30440 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #37867: <==negation-removal== 65266 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #45910: <==uncertain_firing== 64921 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #55532: <==negation-removal== 80474 (pos)
                    (not (Ba_not_checked_p2))

                    ; #58530: <==negation-removal== 64921 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #70592: <==negation-removal== 70569 (pos)
                    (not (Bc_not_checked_p2))

                    ; #72707: <==negation-removal== 25061 (pos)
                    (not (not_checked_p2))

                    ; #75224: <==negation-removal== 55043 (pos)
                    (not (Pa_not_checked_p2))

                    ; #79454: <==uncertain_firing== 87124 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #80439: <==uncertain_firing== 65266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #82669: <==negation-removal== 30440 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #84560: <==negation-removal== 39185 (pos)
                    (not (Pc_not_checked_p2))

                    ; #90611: <==negation-removal== 11502 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15863: <==commonly_known== 38447 (neg)
                    (Pc_checked_p3)

                    ; #24216: <==commonly_known== 38447 (neg)
                    (Pa_checked_p3)

                    ; #28824: origin
                    (checked_p3)

                    ; #38194: <==commonly_known== 38447 (neg)
                    (Pb_checked_p3)

                    ; #42124: <==commonly_known== 28824 (pos)
                    (Ba_checked_p3)

                    ; #52733: <==commonly_known== 38447 (neg)
                    (Pd_checked_p3)

                    ; #53759: <==commonly_known== 28824 (pos)
                    (Bd_checked_p3)

                    ; #55467: <==closure== 72780 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #56078: <==commonly_known== 28824 (pos)
                    (Bc_checked_p3)

                    ; #61264: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #70266: <==closure== 61264 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #72780: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #72934: <==commonly_known== 28824 (pos)
                    (Bb_checked_p3)

                    ; #11520: <==negation-removal== 55467 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #14058: <==negation-removal== 70266 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #25044: <==negation-removal== 72780 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #32840: <==negation-removal== 38194 (pos)
                    (not (Bb_not_checked_p3))

                    ; #38447: <==negation-removal== 28824 (pos)
                    (not (not_checked_p3))

                    ; #40292: <==negation-removal== 42124 (pos)
                    (not (Pa_not_checked_p3))

                    ; #44226: <==negation-removal== 52733 (pos)
                    (not (Bd_not_checked_p3))

                    ; #50121: <==negation-removal== 24216 (pos)
                    (not (Ba_not_checked_p3))

                    ; #54427: <==negation-removal== 72934 (pos)
                    (not (Pb_not_checked_p3))

                    ; #61944: <==uncertain_firing== 55467 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #67284: <==negation-removal== 53759 (pos)
                    (not (Pd_not_checked_p3))

                    ; #67762: <==uncertain_firing== 70266 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #69188: <==negation-removal== 61264 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #74184: <==negation-removal== 56078 (pos)
                    (not (Pc_not_checked_p3))

                    ; #86233: <==uncertain_firing== 61264 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #86414: <==negation-removal== 15863 (pos)
                    (not (Bc_not_checked_p3))

                    ; #91605: <==uncertain_firing== 72780 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12390: <==closure== 26573 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #13495: <==commonly_known== 16183 (pos)
                    (Bc_checked_p4)

                    ; #16183: origin
                    (checked_p4)

                    ; #26573: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #36847: <==commonly_known== 16183 (pos)
                    (Ba_checked_p4)

                    ; #38619: <==commonly_known== 89604 (neg)
                    (Pa_checked_p4)

                    ; #44020: <==commonly_known== 16183 (pos)
                    (Bb_checked_p4)

                    ; #56289: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #73266: <==closure== 56289 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #84962: <==commonly_known== 89604 (neg)
                    (Pc_checked_p4)

                    ; #84990: <==commonly_known== 89604 (neg)
                    (Pd_checked_p4)

                    ; #88041: <==commonly_known== 89604 (neg)
                    (Pb_checked_p4)

                    ; #92029: <==commonly_known== 16183 (pos)
                    (Bd_checked_p4)

                    ; #13613: <==negation-removal== 84962 (pos)
                    (not (Bc_not_checked_p4))

                    ; #17232: <==negation-removal== 26573 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #27378: <==uncertain_firing== 12390 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #41448: <==negation-removal== 84990 (pos)
                    (not (Bd_not_checked_p4))

                    ; #49118: <==negation-removal== 36847 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49950: <==negation-removal== 92029 (pos)
                    (not (Pd_not_checked_p4))

                    ; #53015: <==negation-removal== 13495 (pos)
                    (not (Pc_not_checked_p4))

                    ; #54850: <==negation-removal== 73266 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #67334: <==negation-removal== 44020 (pos)
                    (not (Pb_not_checked_p4))

                    ; #70762: <==uncertain_firing== 26573 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #71475: <==uncertain_firing== 73266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #73030: <==negation-removal== 38619 (pos)
                    (not (Ba_not_checked_p4))

                    ; #75261: <==uncertain_firing== 56289 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #75612: <==negation-removal== 56289 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #80091: <==negation-removal== 12390 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #85384: <==negation-removal== 88041 (pos)
                    (not (Bb_not_checked_p4))

                    ; #89604: <==negation-removal== 16183 (pos)
                    (not (not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10087: <==commonly_known== 59752 (neg)
                    (Pb_checked_p5)

                    ; #11919: <==commonly_known== 32022 (pos)
                    (Bc_checked_p5)

                    ; #19757: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #21019: <==closure== 25245 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #25245: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #32022: origin
                    (checked_p5)

                    ; #32628: <==closure== 19757 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #34906: <==commonly_known== 32022 (pos)
                    (Bb_checked_p5)

                    ; #36933: <==commonly_known== 59752 (neg)
                    (Pa_checked_p5)

                    ; #45546: <==commonly_known== 32022 (pos)
                    (Ba_checked_p5)

                    ; #58902: <==commonly_known== 32022 (pos)
                    (Bd_checked_p5)

                    ; #78116: <==commonly_known== 59752 (neg)
                    (Pd_checked_p5)

                    ; #84928: <==commonly_known== 59752 (neg)
                    (Pc_checked_p5)

                    ; #14751: <==negation-removal== 10087 (pos)
                    (not (Bb_not_checked_p5))

                    ; #15442: <==uncertain_firing== 25245 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #23117: <==negation-removal== 45546 (pos)
                    (not (Pa_not_checked_p5))

                    ; #31166: <==negation-removal== 21019 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #34042: <==negation-removal== 11919 (pos)
                    (not (Pc_not_checked_p5))

                    ; #36740: <==uncertain_firing== 32628 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #51341: <==negation-removal== 78116 (pos)
                    (not (Bd_not_checked_p5))

                    ; #55200: <==negation-removal== 25245 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #59752: <==negation-removal== 32022 (pos)
                    (not (not_checked_p5))

                    ; #62709: <==negation-removal== 84928 (pos)
                    (not (Bc_not_checked_p5))

                    ; #67979: <==uncertain_firing== 19757 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #70657: <==negation-removal== 34906 (pos)
                    (not (Pb_not_checked_p5))

                    ; #71089: <==negation-removal== 58902 (pos)
                    (not (Pd_not_checked_p5))

                    ; #73730: <==negation-removal== 32628 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #75482: <==uncertain_firing== 21019 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #83312: <==negation-removal== 36933 (pos)
                    (not (Ba_not_checked_p5))

                    ; #92195: <==negation-removal== 19757 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13678: <==commonly_known== 25112 (pos)
                    (Ba_checked_p6)

                    ; #17213: <==commonly_known== 25112 (pos)
                    (Bc_checked_p6)

                    ; #19463: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #22004: <==commonly_known== 25112 (pos)
                    (Bd_checked_p6)

                    ; #25112: origin
                    (checked_p6)

                    ; #30036: <==commonly_known== 25112 (pos)
                    (Bb_checked_p6)

                    ; #31224: <==commonly_known== 15470 (neg)
                    (Pa_checked_p6)

                    ; #37148: <==commonly_known== 15470 (neg)
                    (Pc_checked_p6)

                    ; #39102: <==commonly_known== 15470 (neg)
                    (Pd_checked_p6)

                    ; #39457: <==closure== 19463 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #70698: <==closure== 71650 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #71650: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #85653: <==commonly_known== 15470 (neg)
                    (Pb_checked_p6)

                    ; #11465: <==negation-removal== 30036 (pos)
                    (not (Pb_not_checked_p6))

                    ; #14923: <==negation-removal== 31224 (pos)
                    (not (Ba_not_checked_p6))

                    ; #15009: <==negation-removal== 70698 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #15470: <==negation-removal== 25112 (pos)
                    (not (not_checked_p6))

                    ; #16036: <==negation-removal== 39457 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #19794: <==negation-removal== 19463 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #43928: <==uncertain_firing== 70698 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #45059: <==negation-removal== 85653 (pos)
                    (not (Bb_not_checked_p6))

                    ; #46334: <==negation-removal== 39102 (pos)
                    (not (Bd_not_checked_p6))

                    ; #47439: <==uncertain_firing== 71650 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #48318: <==negation-removal== 13678 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55025: <==negation-removal== 17213 (pos)
                    (not (Pc_not_checked_p6))

                    ; #62235: <==negation-removal== 37148 (pos)
                    (not (Bc_not_checked_p6))

                    ; #67034: <==uncertain_firing== 39457 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #72861: <==negation-removal== 22004 (pos)
                    (not (Pd_not_checked_p6))

                    ; #74084: <==uncertain_firing== 19463 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #74431: <==negation-removal== 71650 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14429: <==commonly_known== 51335 (neg)
                    (Pa_checked_p7)

                    ; #18753: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #19881: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #22981: <==closure== 19881 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #31766: <==commonly_known== 33089 (pos)
                    (Bd_checked_p7)

                    ; #33089: origin
                    (checked_p7)

                    ; #37839: <==commonly_known== 33089 (pos)
                    (Bb_checked_p7)

                    ; #40502: <==commonly_known== 33089 (pos)
                    (Ba_checked_p7)

                    ; #46956: <==commonly_known== 51335 (neg)
                    (Pd_checked_p7)

                    ; #53500: <==commonly_known== 33089 (pos)
                    (Bc_checked_p7)

                    ; #63242: <==commonly_known== 51335 (neg)
                    (Pc_checked_p7)

                    ; #75612: <==closure== 18753 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #99387: <==commonly_known== 51335 (neg)
                    (Pb_checked_p7)

                    ; #21332: <==negation-removal== 63242 (pos)
                    (not (Bc_not_checked_p7))

                    ; #23993: <==uncertain_firing== 19881 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #34094: <==uncertain_firing== 18753 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #37955: <==negation-removal== 46956 (pos)
                    (not (Bd_not_checked_p7))

                    ; #38101: <==negation-removal== 53500 (pos)
                    (not (Pc_not_checked_p7))

                    ; #39514: <==negation-removal== 31766 (pos)
                    (not (Pd_not_checked_p7))

                    ; #45244: <==negation-removal== 18753 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #51335: <==negation-removal== 33089 (pos)
                    (not (not_checked_p7))

                    ; #54206: <==negation-removal== 75612 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #54716: <==negation-removal== 22981 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #55359: <==uncertain_firing== 75612 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59218: <==uncertain_firing== 22981 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #59744: <==negation-removal== 37839 (pos)
                    (not (Pb_not_checked_p7))

                    ; #64548: <==negation-removal== 99387 (pos)
                    (not (Bb_not_checked_p7))

                    ; #65940: <==negation-removal== 40502 (pos)
                    (not (Pa_not_checked_p7))

                    ; #84340: <==negation-removal== 14429 (pos)
                    (not (Ba_not_checked_p7))

                    ; #89205: <==negation-removal== 19881 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #43893: <==commonly_known== 75882 (pos)
                    (Ba_checked_p8)

                    ; #51122: <==commonly_known== 75882 (pos)
                    (Bd_checked_p8)

                    ; #55032: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #58316: <==commonly_known== 15989 (neg)
                    (Pa_checked_p8)

                    ; #65824: <==commonly_known== 75882 (pos)
                    (Bb_checked_p8)

                    ; #66003: <==commonly_known== 15989 (neg)
                    (Pb_checked_p8)

                    ; #75230: <==closure== 97745 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #75882: origin
                    (checked_p8)

                    ; #77896: <==commonly_known== 15989 (neg)
                    (Pd_checked_p8)

                    ; #81975: <==commonly_known== 15989 (neg)
                    (Pc_checked_p8)

                    ; #90664: <==closure== 55032 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #90871: <==commonly_known== 75882 (pos)
                    (Bc_checked_p8)

                    ; #97745: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #14718: <==negation-removal== 81975 (pos)
                    (not (Bc_not_checked_p8))

                    ; #15989: <==negation-removal== 75882 (pos)
                    (not (not_checked_p8))

                    ; #29913: <==negation-removal== 90664 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #31909: <==negation-removal== 43893 (pos)
                    (not (Pa_not_checked_p8))

                    ; #33234: <==uncertain_firing== 97745 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #36962: <==uncertain_firing== 55032 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #38328: <==negation-removal== 65824 (pos)
                    (not (Pb_not_checked_p8))

                    ; #43831: <==negation-removal== 51122 (pos)
                    (not (Pd_not_checked_p8))

                    ; #48562: <==uncertain_firing== 75230 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #49175: <==uncertain_firing== 90664 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #53613: <==negation-removal== 90871 (pos)
                    (not (Pc_not_checked_p8))

                    ; #60820: <==negation-removal== 55032 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #62288: <==negation-removal== 75230 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #62813: <==negation-removal== 97745 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #67422: <==negation-removal== 66003 (pos)
                    (not (Bb_not_checked_p8))

                    ; #74551: <==negation-removal== 58316 (pos)
                    (not (Ba_not_checked_p8))

                    ; #75818: <==negation-removal== 77896 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13687: origin
                    (checked_p9)

                    ; #14137: <==commonly_known== 23287 (neg)
                    (Pa_checked_p9)

                    ; #15855: <==commonly_known== 13687 (pos)
                    (Bb_checked_p9)

                    ; #30025: <==commonly_known== 23287 (neg)
                    (Pb_checked_p9)

                    ; #44781: <==commonly_known== 23287 (neg)
                    (Pc_checked_p9)

                    ; #49993: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #55562: <==commonly_known== 23287 (neg)
                    (Pd_checked_p9)

                    ; #62858: <==commonly_known== 13687 (pos)
                    (Ba_checked_p9)

                    ; #63282: <==commonly_known== 13687 (pos)
                    (Bc_checked_p9)

                    ; #63794: <==closure== 86447 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #65122: <==commonly_known== 13687 (pos)
                    (Bd_checked_p9)

                    ; #72361: <==closure== 49993 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #86447: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #19214: <==negation-removal== 63794 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #23287: <==negation-removal== 13687 (pos)
                    (not (not_checked_p9))

                    ; #37680: <==uncertain_firing== 63794 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #42007: <==negation-removal== 30025 (pos)
                    (not (Bb_not_checked_p9))

                    ; #42668: <==negation-removal== 65122 (pos)
                    (not (Pd_not_checked_p9))

                    ; #47603: <==negation-removal== 49993 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #50936: <==negation-removal== 15855 (pos)
                    (not (Pb_not_checked_p9))

                    ; #52480: <==uncertain_firing== 49993 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #57280: <==negation-removal== 55562 (pos)
                    (not (Bd_not_checked_p9))

                    ; #57597: <==negation-removal== 62858 (pos)
                    (not (Pa_not_checked_p9))

                    ; #61907: <==negation-removal== 63282 (pos)
                    (not (Pc_not_checked_p9))

                    ; #63571: <==negation-removal== 72361 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #63800: <==negation-removal== 44781 (pos)
                    (not (Bc_not_checked_p9))

                    ; #65280: <==uncertain_firing== 72361 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #71756: <==negation-removal== 14137 (pos)
                    (not (Ba_not_checked_p9))

                    ; #85906: <==uncertain_firing== 86447 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #89413: <==negation-removal== 86447 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24152: <==commonly_known== 87113 (neg)
                    (Pb_checked_p1)

                    ; #34139: <==commonly_known== 87113 (neg)
                    (Pa_checked_p1)

                    ; #38388: <==commonly_known== 87113 (neg)
                    (Pd_checked_p1)

                    ; #42544: <==closure== 89190 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #51820: <==commonly_known== 72623 (pos)
                    (Bd_checked_p1)

                    ; #52683: <==commonly_known== 72623 (pos)
                    (Bb_checked_p1)

                    ; #56221: <==commonly_known== 72623 (pos)
                    (Bc_checked_p1)

                    ; #72623: origin
                    (checked_p1)

                    ; #77872: <==commonly_known== 87113 (neg)
                    (Pc_checked_p1)

                    ; #81656: <==commonly_known== 72623 (pos)
                    (Ba_checked_p1)

                    ; #83894: <==closure== 89631 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #89190: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #89631: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #10913: <==negation-removal== 56221 (pos)
                    (not (Pc_not_checked_p1))

                    ; #15764: <==uncertain_firing== 42544 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #24541: <==negation-removal== 89631 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #33255: <==negation-removal== 51820 (pos)
                    (not (Pd_not_checked_p1))

                    ; #36771: <==negation-removal== 38388 (pos)
                    (not (Bd_not_checked_p1))

                    ; #38139: <==negation-removal== 42544 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #41071: <==negation-removal== 81656 (pos)
                    (not (Pa_not_checked_p1))

                    ; #51985: <==negation-removal== 24152 (pos)
                    (not (Bb_not_checked_p1))

                    ; #54168: <==negation-removal== 77872 (pos)
                    (not (Bc_not_checked_p1))

                    ; #55506: <==uncertain_firing== 89190 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #62556: <==negation-removal== 83894 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #63726: <==negation-removal== 34139 (pos)
                    (not (Ba_not_checked_p1))

                    ; #70804: <==uncertain_firing== 83894 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #75369: <==uncertain_firing== 89631 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #81938: <==negation-removal== 89190 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #83613: <==negation-removal== 52683 (pos)
                    (not (Pb_not_checked_p1))

                    ; #87113: <==negation-removal== 72623 (pos)
                    (not (not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11502: <==commonly_known== 25061 (pos)
                    (Bb_checked_p2)

                    ; #25061: origin
                    (checked_p2)

                    ; #34001: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #39185: <==commonly_known== 25061 (pos)
                    (Bc_checked_p2)

                    ; #39667: <==closure== 34001 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #55043: <==commonly_known== 25061 (pos)
                    (Ba_checked_p2)

                    ; #60991: <==commonly_known== 25061 (pos)
                    (Bd_checked_p2)

                    ; #63221: <==closure== 89696 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #70569: <==commonly_known== 72707 (neg)
                    (Pc_checked_p2)

                    ; #71424: <==commonly_known== 72707 (neg)
                    (Pd_checked_p2)

                    ; #78874: <==commonly_known== 72707 (neg)
                    (Pb_checked_p2)

                    ; #80474: <==commonly_known== 72707 (neg)
                    (Pa_checked_p2)

                    ; #89696: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #12121: <==negation-removal== 34001 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #19927: <==negation-removal== 78874 (pos)
                    (not (Bb_not_checked_p2))

                    ; #21960: <==negation-removal== 71424 (pos)
                    (not (Bd_not_checked_p2))

                    ; #21962: <==negation-removal== 60991 (pos)
                    (not (Pd_not_checked_p2))

                    ; #28343: <==uncertain_firing== 39667 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #55532: <==negation-removal== 80474 (pos)
                    (not (Ba_not_checked_p2))

                    ; #55689: <==negation-removal== 63221 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #58293: <==negation-removal== 39667 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #69566: <==uncertain_firing== 34001 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #70094: <==uncertain_firing== 63221 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #70592: <==negation-removal== 70569 (pos)
                    (not (Bc_not_checked_p2))

                    ; #72707: <==negation-removal== 25061 (pos)
                    (not (not_checked_p2))

                    ; #75224: <==negation-removal== 55043 (pos)
                    (not (Pa_not_checked_p2))

                    ; #78346: <==negation-removal== 89696 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #84560: <==negation-removal== 39185 (pos)
                    (not (Pc_not_checked_p2))

                    ; #90611: <==negation-removal== 11502 (pos)
                    (not (Pb_not_checked_p2))

                    ; #92959: <==uncertain_firing== 89696 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15863: <==commonly_known== 38447 (neg)
                    (Pc_checked_p3)

                    ; #22365: <==closure== 54457 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #24216: <==commonly_known== 38447 (neg)
                    (Pa_checked_p3)

                    ; #28824: origin
                    (checked_p3)

                    ; #30736: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #38194: <==commonly_known== 38447 (neg)
                    (Pb_checked_p3)

                    ; #42124: <==commonly_known== 28824 (pos)
                    (Ba_checked_p3)

                    ; #52733: <==commonly_known== 38447 (neg)
                    (Pd_checked_p3)

                    ; #53759: <==commonly_known== 28824 (pos)
                    (Bd_checked_p3)

                    ; #54457: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #56078: <==commonly_known== 28824 (pos)
                    (Bc_checked_p3)

                    ; #72934: <==commonly_known== 28824 (pos)
                    (Bb_checked_p3)

                    ; #80296: <==closure== 30736 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #31116: <==uncertain_firing== 54457 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #32840: <==negation-removal== 38194 (pos)
                    (not (Bb_not_checked_p3))

                    ; #38447: <==negation-removal== 28824 (pos)
                    (not (not_checked_p3))

                    ; #40292: <==negation-removal== 42124 (pos)
                    (not (Pa_not_checked_p3))

                    ; #44226: <==negation-removal== 52733 (pos)
                    (not (Bd_not_checked_p3))

                    ; #48850: <==uncertain_firing== 30736 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #50121: <==negation-removal== 24216 (pos)
                    (not (Ba_not_checked_p3))

                    ; #54252: <==negation-removal== 22365 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #54427: <==negation-removal== 72934 (pos)
                    (not (Pb_not_checked_p3))

                    ; #56495: <==uncertain_firing== 22365 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #59637: <==negation-removal== 80296 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #67284: <==negation-removal== 53759 (pos)
                    (not (Pd_not_checked_p3))

                    ; #74184: <==negation-removal== 56078 (pos)
                    (not (Pc_not_checked_p3))

                    ; #84532: <==negation-removal== 54457 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #86414: <==negation-removal== 15863 (pos)
                    (not (Bc_not_checked_p3))

                    ; #88073: <==uncertain_firing== 80296 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #88286: <==negation-removal== 30736 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13495: <==commonly_known== 16183 (pos)
                    (Bc_checked_p4)

                    ; #16183: origin
                    (checked_p4)

                    ; #36847: <==commonly_known== 16183 (pos)
                    (Ba_checked_p4)

                    ; #38619: <==commonly_known== 89604 (neg)
                    (Pa_checked_p4)

                    ; #38709: <==closure== 92126 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #44020: <==commonly_known== 16183 (pos)
                    (Bb_checked_p4)

                    ; #45246: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #59502: <==closure== 45246 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #84962: <==commonly_known== 89604 (neg)
                    (Pc_checked_p4)

                    ; #84990: <==commonly_known== 89604 (neg)
                    (Pd_checked_p4)

                    ; #88041: <==commonly_known== 89604 (neg)
                    (Pb_checked_p4)

                    ; #92029: <==commonly_known== 16183 (pos)
                    (Bd_checked_p4)

                    ; #92126: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #13613: <==negation-removal== 84962 (pos)
                    (not (Bc_not_checked_p4))

                    ; #20255: <==negation-removal== 92126 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #26947: <==uncertain_firing== 59502 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #27903: <==negation-removal== 38709 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #29358: <==negation-removal== 45246 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #41448: <==negation-removal== 84990 (pos)
                    (not (Bd_not_checked_p4))

                    ; #48370: <==uncertain_firing== 92126 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #49118: <==negation-removal== 36847 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49950: <==negation-removal== 92029 (pos)
                    (not (Pd_not_checked_p4))

                    ; #53015: <==negation-removal== 13495 (pos)
                    (not (Pc_not_checked_p4))

                    ; #57187: <==negation-removal== 59502 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #63180: <==uncertain_firing== 45246 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #67334: <==negation-removal== 44020 (pos)
                    (not (Pb_not_checked_p4))

                    ; #73030: <==negation-removal== 38619 (pos)
                    (not (Ba_not_checked_p4))

                    ; #74532: <==uncertain_firing== 38709 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #85384: <==negation-removal== 88041 (pos)
                    (not (Bb_not_checked_p4))

                    ; #89604: <==negation-removal== 16183 (pos)
                    (not (not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10087: <==commonly_known== 59752 (neg)
                    (Pb_checked_p5)

                    ; #11919: <==commonly_known== 32022 (pos)
                    (Bc_checked_p5)

                    ; #32022: origin
                    (checked_p5)

                    ; #34906: <==commonly_known== 32022 (pos)
                    (Bb_checked_p5)

                    ; #36933: <==commonly_known== 59752 (neg)
                    (Pa_checked_p5)

                    ; #37321: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #45546: <==commonly_known== 32022 (pos)
                    (Ba_checked_p5)

                    ; #48056: <==closure== 37321 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #49585: <==closure== 51816 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #51816: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #58902: <==commonly_known== 32022 (pos)
                    (Bd_checked_p5)

                    ; #78116: <==commonly_known== 59752 (neg)
                    (Pd_checked_p5)

                    ; #84928: <==commonly_known== 59752 (neg)
                    (Pc_checked_p5)

                    ; #12585: <==negation-removal== 51816 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #14751: <==negation-removal== 10087 (pos)
                    (not (Bb_not_checked_p5))

                    ; #18447: <==negation-removal== 48056 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #23117: <==negation-removal== 45546 (pos)
                    (not (Pa_not_checked_p5))

                    ; #24334: <==uncertain_firing== 48056 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #28438: <==negation-removal== 37321 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #34042: <==negation-removal== 11919 (pos)
                    (not (Pc_not_checked_p5))

                    ; #48488: <==negation-removal== 49585 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #51341: <==negation-removal== 78116 (pos)
                    (not (Bd_not_checked_p5))

                    ; #53186: <==uncertain_firing== 37321 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #59752: <==negation-removal== 32022 (pos)
                    (not (not_checked_p5))

                    ; #62709: <==negation-removal== 84928 (pos)
                    (not (Bc_not_checked_p5))

                    ; #63981: <==uncertain_firing== 51816 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #70657: <==negation-removal== 34906 (pos)
                    (not (Pb_not_checked_p5))

                    ; #71089: <==negation-removal== 58902 (pos)
                    (not (Pd_not_checked_p5))

                    ; #83312: <==negation-removal== 36933 (pos)
                    (not (Ba_not_checked_p5))

                    ; #83584: <==uncertain_firing== 49585 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13678: <==commonly_known== 25112 (pos)
                    (Ba_checked_p6)

                    ; #17213: <==commonly_known== 25112 (pos)
                    (Bc_checked_p6)

                    ; #22004: <==commonly_known== 25112 (pos)
                    (Bd_checked_p6)

                    ; #22804: <==closure== 75336 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #25112: origin
                    (checked_p6)

                    ; #30036: <==commonly_known== 25112 (pos)
                    (Bb_checked_p6)

                    ; #31224: <==commonly_known== 15470 (neg)
                    (Pa_checked_p6)

                    ; #32130: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #37148: <==commonly_known== 15470 (neg)
                    (Pc_checked_p6)

                    ; #39102: <==commonly_known== 15470 (neg)
                    (Pd_checked_p6)

                    ; #40908: <==closure== 32130 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #75336: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #85653: <==commonly_known== 15470 (neg)
                    (Pb_checked_p6)

                    ; #11465: <==negation-removal== 30036 (pos)
                    (not (Pb_not_checked_p6))

                    ; #14923: <==negation-removal== 31224 (pos)
                    (not (Ba_not_checked_p6))

                    ; #15470: <==negation-removal== 25112 (pos)
                    (not (not_checked_p6))

                    ; #16584: <==negation-removal== 22804 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #17476: <==uncertain_firing== 32130 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #45059: <==negation-removal== 85653 (pos)
                    (not (Bb_not_checked_p6))

                    ; #46334: <==negation-removal== 39102 (pos)
                    (not (Bd_not_checked_p6))

                    ; #48318: <==negation-removal== 13678 (pos)
                    (not (Pa_not_checked_p6))

                    ; #54008: <==uncertain_firing== 22804 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #55025: <==negation-removal== 17213 (pos)
                    (not (Pc_not_checked_p6))

                    ; #61575: <==negation-removal== 75336 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #62235: <==negation-removal== 37148 (pos)
                    (not (Bc_not_checked_p6))

                    ; #72861: <==negation-removal== 22004 (pos)
                    (not (Pd_not_checked_p6))

                    ; #77694: <==negation-removal== 40908 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81315: <==uncertain_firing== 75336 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #88508: <==uncertain_firing== 40908 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #92221: <==negation-removal== 32130 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14429: <==commonly_known== 51335 (neg)
                    (Pa_checked_p7)

                    ; #31766: <==commonly_known== 33089 (pos)
                    (Bd_checked_p7)

                    ; #33089: origin
                    (checked_p7)

                    ; #37839: <==commonly_known== 33089 (pos)
                    (Bb_checked_p7)

                    ; #40502: <==commonly_known== 33089 (pos)
                    (Ba_checked_p7)

                    ; #45550: <==closure== 62128 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #46956: <==commonly_known== 51335 (neg)
                    (Pd_checked_p7)

                    ; #53500: <==commonly_known== 33089 (pos)
                    (Bc_checked_p7)

                    ; #55631: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #62128: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #63242: <==commonly_known== 51335 (neg)
                    (Pc_checked_p7)

                    ; #65073: <==closure== 55631 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #99387: <==commonly_known== 51335 (neg)
                    (Pb_checked_p7)

                    ; #10125: <==negation-removal== 65073 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #14246: <==negation-removal== 55631 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #21332: <==negation-removal== 63242 (pos)
                    (not (Bc_not_checked_p7))

                    ; #21680: <==negation-removal== 45550 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #30789: <==uncertain_firing== 45550 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #37955: <==negation-removal== 46956 (pos)
                    (not (Bd_not_checked_p7))

                    ; #38101: <==negation-removal== 53500 (pos)
                    (not (Pc_not_checked_p7))

                    ; #39514: <==negation-removal== 31766 (pos)
                    (not (Pd_not_checked_p7))

                    ; #48159: <==uncertain_firing== 62128 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #51335: <==negation-removal== 33089 (pos)
                    (not (not_checked_p7))

                    ; #59244: <==uncertain_firing== 65073 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #59744: <==negation-removal== 37839 (pos)
                    (not (Pb_not_checked_p7))

                    ; #64548: <==negation-removal== 99387 (pos)
                    (not (Bb_not_checked_p7))

                    ; #65940: <==negation-removal== 40502 (pos)
                    (not (Pa_not_checked_p7))

                    ; #68471: <==uncertain_firing== 55631 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #76801: <==negation-removal== 62128 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #84340: <==negation-removal== 14429 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #21403: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #33023: <==closure== 45846 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #43893: <==commonly_known== 75882 (pos)
                    (Ba_checked_p8)

                    ; #45846: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #51122: <==commonly_known== 75882 (pos)
                    (Bd_checked_p8)

                    ; #53730: <==closure== 21403 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #58316: <==commonly_known== 15989 (neg)
                    (Pa_checked_p8)

                    ; #65824: <==commonly_known== 75882 (pos)
                    (Bb_checked_p8)

                    ; #66003: <==commonly_known== 15989 (neg)
                    (Pb_checked_p8)

                    ; #75882: origin
                    (checked_p8)

                    ; #77896: <==commonly_known== 15989 (neg)
                    (Pd_checked_p8)

                    ; #81975: <==commonly_known== 15989 (neg)
                    (Pc_checked_p8)

                    ; #90871: <==commonly_known== 75882 (pos)
                    (Bc_checked_p8)

                    ; #10483: <==uncertain_firing== 53730 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #14718: <==negation-removal== 81975 (pos)
                    (not (Bc_not_checked_p8))

                    ; #15839: <==uncertain_firing== 45846 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #15989: <==negation-removal== 75882 (pos)
                    (not (not_checked_p8))

                    ; #28789: <==uncertain_firing== 33023 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #31909: <==negation-removal== 43893 (pos)
                    (not (Pa_not_checked_p8))

                    ; #38328: <==negation-removal== 65824 (pos)
                    (not (Pb_not_checked_p8))

                    ; #40010: <==negation-removal== 53730 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #43831: <==negation-removal== 51122 (pos)
                    (not (Pd_not_checked_p8))

                    ; #50267: <==negation-removal== 45846 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #53613: <==negation-removal== 90871 (pos)
                    (not (Pc_not_checked_p8))

                    ; #64955: <==negation-removal== 33023 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #67422: <==negation-removal== 66003 (pos)
                    (not (Bb_not_checked_p8))

                    ; #72359: <==negation-removal== 21403 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #74551: <==negation-removal== 58316 (pos)
                    (not (Ba_not_checked_p8))

                    ; #75818: <==negation-removal== 77896 (pos)
                    (not (Bd_not_checked_p8))

                    ; #79248: <==uncertain_firing== 21403 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13687: origin
                    (checked_p9)

                    ; #14137: <==commonly_known== 23287 (neg)
                    (Pa_checked_p9)

                    ; #15855: <==commonly_known== 13687 (pos)
                    (Bb_checked_p9)

                    ; #30025: <==commonly_known== 23287 (neg)
                    (Pb_checked_p9)

                    ; #44781: <==commonly_known== 23287 (neg)
                    (Pc_checked_p9)

                    ; #51721: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #55562: <==commonly_known== 23287 (neg)
                    (Pd_checked_p9)

                    ; #62858: <==commonly_known== 13687 (pos)
                    (Ba_checked_p9)

                    ; #63282: <==commonly_known== 13687 (pos)
                    (Bc_checked_p9)

                    ; #65122: <==commonly_known== 13687 (pos)
                    (Bd_checked_p9)

                    ; #72473: <==closure== 51721 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #76570: <==closure== 81793 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #81793: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #17954: <==uncertain_firing== 76570 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #20985: <==negation-removal== 76570 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #23287: <==negation-removal== 13687 (pos)
                    (not (not_checked_p9))

                    ; #28568: <==negation-removal== 72473 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #42007: <==negation-removal== 30025 (pos)
                    (not (Bb_not_checked_p9))

                    ; #42668: <==negation-removal== 65122 (pos)
                    (not (Pd_not_checked_p9))

                    ; #44484: <==uncertain_firing== 51721 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #47884: <==negation-removal== 51721 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #50936: <==negation-removal== 15855 (pos)
                    (not (Pb_not_checked_p9))

                    ; #57280: <==negation-removal== 55562 (pos)
                    (not (Bd_not_checked_p9))

                    ; #57597: <==negation-removal== 62858 (pos)
                    (not (Pa_not_checked_p9))

                    ; #61907: <==negation-removal== 63282 (pos)
                    (not (Pc_not_checked_p9))

                    ; #63800: <==negation-removal== 44781 (pos)
                    (not (Bc_not_checked_p9))

                    ; #71756: <==negation-removal== 14137 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76835: <==uncertain_firing== 72473 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #82096: <==negation-removal== 81793 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #89285: <==uncertain_firing== 81793 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12549: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #20540: <==closure== 12549 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #24152: <==commonly_known== 87113 (neg)
                    (Pb_checked_p1)

                    ; #34139: <==commonly_known== 87113 (neg)
                    (Pa_checked_p1)

                    ; #38388: <==commonly_known== 87113 (neg)
                    (Pd_checked_p1)

                    ; #51820: <==commonly_known== 72623 (pos)
                    (Bd_checked_p1)

                    ; #52683: <==commonly_known== 72623 (pos)
                    (Bb_checked_p1)

                    ; #56221: <==commonly_known== 72623 (pos)
                    (Bc_checked_p1)

                    ; #62630: <==closure== 74651 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #72623: origin
                    (checked_p1)

                    ; #74651: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #77872: <==commonly_known== 87113 (neg)
                    (Pc_checked_p1)

                    ; #81656: <==commonly_known== 72623 (pos)
                    (Ba_checked_p1)

                    ; #10913: <==negation-removal== 56221 (pos)
                    (not (Pc_not_checked_p1))

                    ; #20109: <==negation-removal== 74651 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #26312: <==negation-removal== 20540 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #32561: <==negation-removal== 12549 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #33255: <==negation-removal== 51820 (pos)
                    (not (Pd_not_checked_p1))

                    ; #36771: <==negation-removal== 38388 (pos)
                    (not (Bd_not_checked_p1))

                    ; #41071: <==negation-removal== 81656 (pos)
                    (not (Pa_not_checked_p1))

                    ; #44779: <==uncertain_firing== 20540 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #51985: <==negation-removal== 24152 (pos)
                    (not (Bb_not_checked_p1))

                    ; #54168: <==negation-removal== 77872 (pos)
                    (not (Bc_not_checked_p1))

                    ; #63726: <==negation-removal== 34139 (pos)
                    (not (Ba_not_checked_p1))

                    ; #70275: <==uncertain_firing== 74651 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #72396: <==uncertain_firing== 12549 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #83613: <==negation-removal== 52683 (pos)
                    (not (Pb_not_checked_p1))

                    ; #84019: <==negation-removal== 62630 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #87113: <==negation-removal== 72623 (pos)
                    (not (not_checked_p1))

                    ; #94499: <==uncertain_firing== 62630 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11502: <==commonly_known== 25061 (pos)
                    (Bb_checked_p2)

                    ; #11728: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #13158: <==closure== 52623 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #25061: origin
                    (checked_p2)

                    ; #27995: <==closure== 11728 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #39185: <==commonly_known== 25061 (pos)
                    (Bc_checked_p2)

                    ; #52623: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #55043: <==commonly_known== 25061 (pos)
                    (Ba_checked_p2)

                    ; #60991: <==commonly_known== 25061 (pos)
                    (Bd_checked_p2)

                    ; #70569: <==commonly_known== 72707 (neg)
                    (Pc_checked_p2)

                    ; #71424: <==commonly_known== 72707 (neg)
                    (Pd_checked_p2)

                    ; #78874: <==commonly_known== 72707 (neg)
                    (Pb_checked_p2)

                    ; #80474: <==commonly_known== 72707 (neg)
                    (Pa_checked_p2)

                    ; #15677: <==uncertain_firing== 13158 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #17495: <==uncertain_firing== 27995 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #19252: <==negation-removal== 52623 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #19927: <==negation-removal== 78874 (pos)
                    (not (Bb_not_checked_p2))

                    ; #21960: <==negation-removal== 71424 (pos)
                    (not (Bd_not_checked_p2))

                    ; #21962: <==negation-removal== 60991 (pos)
                    (not (Pd_not_checked_p2))

                    ; #55532: <==negation-removal== 80474 (pos)
                    (not (Ba_not_checked_p2))

                    ; #60018: <==negation-removal== 27995 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #60350: <==uncertain_firing== 52623 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #65412: <==negation-removal== 11728 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #70592: <==negation-removal== 70569 (pos)
                    (not (Bc_not_checked_p2))

                    ; #72707: <==negation-removal== 25061 (pos)
                    (not (not_checked_p2))

                    ; #75224: <==negation-removal== 55043 (pos)
                    (not (Pa_not_checked_p2))

                    ; #77661: <==uncertain_firing== 11728 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #77980: <==negation-removal== 13158 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #84560: <==negation-removal== 39185 (pos)
                    (not (Pc_not_checked_p2))

                    ; #90611: <==negation-removal== 11502 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15863: <==commonly_known== 38447 (neg)
                    (Pc_checked_p3)

                    ; #24216: <==commonly_known== 38447 (neg)
                    (Pa_checked_p3)

                    ; #28824: origin
                    (checked_p3)

                    ; #38194: <==commonly_known== 38447 (neg)
                    (Pb_checked_p3)

                    ; #42124: <==commonly_known== 28824 (pos)
                    (Ba_checked_p3)

                    ; #46182: <==closure== 61843 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #52733: <==commonly_known== 38447 (neg)
                    (Pd_checked_p3)

                    ; #52934: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #53759: <==commonly_known== 28824 (pos)
                    (Bd_checked_p3)

                    ; #56078: <==commonly_known== 28824 (pos)
                    (Bc_checked_p3)

                    ; #58346: <==closure== 52934 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #61843: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #72934: <==commonly_known== 28824 (pos)
                    (Bb_checked_p3)

                    ; #28098: <==negation-removal== 58346 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #32840: <==negation-removal== 38194 (pos)
                    (not (Bb_not_checked_p3))

                    ; #38447: <==negation-removal== 28824 (pos)
                    (not (not_checked_p3))

                    ; #40292: <==negation-removal== 42124 (pos)
                    (not (Pa_not_checked_p3))

                    ; #44226: <==negation-removal== 52733 (pos)
                    (not (Bd_not_checked_p3))

                    ; #44682: <==negation-removal== 46182 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #44785: <==uncertain_firing== 58346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #47395: <==uncertain_firing== 61843 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #47693: <==uncertain_firing== 46182 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #50121: <==negation-removal== 24216 (pos)
                    (not (Ba_not_checked_p3))

                    ; #54288: <==negation-removal== 61843 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #54427: <==negation-removal== 72934 (pos)
                    (not (Pb_not_checked_p3))

                    ; #57129: <==uncertain_firing== 52934 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #67284: <==negation-removal== 53759 (pos)
                    (not (Pd_not_checked_p3))

                    ; #74184: <==negation-removal== 56078 (pos)
                    (not (Pc_not_checked_p3))

                    ; #78234: <==negation-removal== 52934 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #86414: <==negation-removal== 15863 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13495: <==commonly_known== 16183 (pos)
                    (Bc_checked_p4)

                    ; #16183: origin
                    (checked_p4)

                    ; #18464: <==closure== 53009 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #36847: <==commonly_known== 16183 (pos)
                    (Ba_checked_p4)

                    ; #38619: <==commonly_known== 89604 (neg)
                    (Pa_checked_p4)

                    ; #44020: <==commonly_known== 16183 (pos)
                    (Bb_checked_p4)

                    ; #53009: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #76609: <==closure== 81286 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #81286: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #84962: <==commonly_known== 89604 (neg)
                    (Pc_checked_p4)

                    ; #84990: <==commonly_known== 89604 (neg)
                    (Pd_checked_p4)

                    ; #88041: <==commonly_known== 89604 (neg)
                    (Pb_checked_p4)

                    ; #92029: <==commonly_known== 16183 (pos)
                    (Bd_checked_p4)

                    ; #13613: <==negation-removal== 84962 (pos)
                    (not (Bc_not_checked_p4))

                    ; #16930: <==negation-removal== 53009 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #23351: <==uncertain_firing== 53009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #28820: <==uncertain_firing== 76609 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #35032: <==negation-removal== 81286 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #41448: <==negation-removal== 84990 (pos)
                    (not (Bd_not_checked_p4))

                    ; #45355: <==uncertain_firing== 81286 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #49118: <==negation-removal== 36847 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49950: <==negation-removal== 92029 (pos)
                    (not (Pd_not_checked_p4))

                    ; #52643: <==uncertain_firing== 18464 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #53015: <==negation-removal== 13495 (pos)
                    (not (Pc_not_checked_p4))

                    ; #62021: <==negation-removal== 76609 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #67334: <==negation-removal== 44020 (pos)
                    (not (Pb_not_checked_p4))

                    ; #73030: <==negation-removal== 38619 (pos)
                    (not (Ba_not_checked_p4))

                    ; #85384: <==negation-removal== 88041 (pos)
                    (not (Bb_not_checked_p4))

                    ; #89604: <==negation-removal== 16183 (pos)
                    (not (not_checked_p4))

                    ; #92270: <==negation-removal== 18464 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10087: <==commonly_known== 59752 (neg)
                    (Pb_checked_p5)

                    ; #11919: <==commonly_known== 32022 (pos)
                    (Bc_checked_p5)

                    ; #32022: origin
                    (checked_p5)

                    ; #34906: <==commonly_known== 32022 (pos)
                    (Bb_checked_p5)

                    ; #36933: <==commonly_known== 59752 (neg)
                    (Pa_checked_p5)

                    ; #45546: <==commonly_known== 32022 (pos)
                    (Ba_checked_p5)

                    ; #50732: <==closure== 69319 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #58902: <==commonly_known== 32022 (pos)
                    (Bd_checked_p5)

                    ; #69319: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #77936: <==closure== 85994 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #78116: <==commonly_known== 59752 (neg)
                    (Pd_checked_p5)

                    ; #84928: <==commonly_known== 59752 (neg)
                    (Pc_checked_p5)

                    ; #85994: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #14751: <==negation-removal== 10087 (pos)
                    (not (Bb_not_checked_p5))

                    ; #23117: <==negation-removal== 45546 (pos)
                    (not (Pa_not_checked_p5))

                    ; #33496: <==uncertain_firing== 50732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #34042: <==negation-removal== 11919 (pos)
                    (not (Pc_not_checked_p5))

                    ; #36047: <==uncertain_firing== 69319 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #38570: <==uncertain_firing== 85994 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #48032: <==negation-removal== 50732 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #51341: <==negation-removal== 78116 (pos)
                    (not (Bd_not_checked_p5))

                    ; #51469: <==uncertain_firing== 77936 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #59752: <==negation-removal== 32022 (pos)
                    (not (not_checked_p5))

                    ; #62709: <==negation-removal== 84928 (pos)
                    (not (Bc_not_checked_p5))

                    ; #63899: <==negation-removal== 69319 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #70657: <==negation-removal== 34906 (pos)
                    (not (Pb_not_checked_p5))

                    ; #71089: <==negation-removal== 58902 (pos)
                    (not (Pd_not_checked_p5))

                    ; #72095: <==negation-removal== 85994 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #83312: <==negation-removal== 36933 (pos)
                    (not (Ba_not_checked_p5))

                    ; #86884: <==negation-removal== 77936 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11014: <==closure== 88465 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #13678: <==commonly_known== 25112 (pos)
                    (Ba_checked_p6)

                    ; #17213: <==commonly_known== 25112 (pos)
                    (Bc_checked_p6)

                    ; #22004: <==commonly_known== 25112 (pos)
                    (Bd_checked_p6)

                    ; #25112: origin
                    (checked_p6)

                    ; #30036: <==commonly_known== 25112 (pos)
                    (Bb_checked_p6)

                    ; #30174: <==closure== 79522 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #31224: <==commonly_known== 15470 (neg)
                    (Pa_checked_p6)

                    ; #37148: <==commonly_known== 15470 (neg)
                    (Pc_checked_p6)

                    ; #39102: <==commonly_known== 15470 (neg)
                    (Pd_checked_p6)

                    ; #79522: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #85653: <==commonly_known== 15470 (neg)
                    (Pb_checked_p6)

                    ; #88465: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #11465: <==negation-removal== 30036 (pos)
                    (not (Pb_not_checked_p6))

                    ; #14923: <==negation-removal== 31224 (pos)
                    (not (Ba_not_checked_p6))

                    ; #15470: <==negation-removal== 25112 (pos)
                    (not (not_checked_p6))

                    ; #28179: <==uncertain_firing== 79522 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #40009: <==uncertain_firing== 88465 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #44875: <==negation-removal== 88465 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #45059: <==negation-removal== 85653 (pos)
                    (not (Bb_not_checked_p6))

                    ; #46334: <==negation-removal== 39102 (pos)
                    (not (Bd_not_checked_p6))

                    ; #48318: <==negation-removal== 13678 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55025: <==negation-removal== 17213 (pos)
                    (not (Pc_not_checked_p6))

                    ; #58490: <==uncertain_firing== 11014 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #62235: <==negation-removal== 37148 (pos)
                    (not (Bc_not_checked_p6))

                    ; #65067: <==uncertain_firing== 30174 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #72861: <==negation-removal== 22004 (pos)
                    (not (Pd_not_checked_p6))

                    ; #80994: <==negation-removal== 30174 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #90859: <==negation-removal== 11014 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #91186: <==negation-removal== 79522 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14429: <==commonly_known== 51335 (neg)
                    (Pa_checked_p7)

                    ; #31766: <==commonly_known== 33089 (pos)
                    (Bd_checked_p7)

                    ; #33089: origin
                    (checked_p7)

                    ; #37839: <==commonly_known== 33089 (pos)
                    (Bb_checked_p7)

                    ; #40502: <==commonly_known== 33089 (pos)
                    (Ba_checked_p7)

                    ; #41912: <==closure== 74142 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #46956: <==commonly_known== 51335 (neg)
                    (Pd_checked_p7)

                    ; #53500: <==commonly_known== 33089 (pos)
                    (Bc_checked_p7)

                    ; #57346: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #63242: <==commonly_known== 51335 (neg)
                    (Pc_checked_p7)

                    ; #74142: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #76838: <==closure== 57346 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #99387: <==commonly_known== 51335 (neg)
                    (Pb_checked_p7)

                    ; #17157: <==uncertain_firing== 76838 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #18276: <==negation-removal== 57346 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #21332: <==negation-removal== 63242 (pos)
                    (not (Bc_not_checked_p7))

                    ; #37955: <==negation-removal== 46956 (pos)
                    (not (Bd_not_checked_p7))

                    ; #38101: <==negation-removal== 53500 (pos)
                    (not (Pc_not_checked_p7))

                    ; #39514: <==negation-removal== 31766 (pos)
                    (not (Pd_not_checked_p7))

                    ; #43242: <==negation-removal== 76838 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #47079: <==uncertain_firing== 57346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #51335: <==negation-removal== 33089 (pos)
                    (not (not_checked_p7))

                    ; #53185: <==uncertain_firing== 74142 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #59744: <==negation-removal== 37839 (pos)
                    (not (Pb_not_checked_p7))

                    ; #64548: <==negation-removal== 99387 (pos)
                    (not (Bb_not_checked_p7))

                    ; #65940: <==negation-removal== 40502 (pos)
                    (not (Pa_not_checked_p7))

                    ; #68916: <==negation-removal== 41912 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #76726: <==negation-removal== 74142 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #84340: <==negation-removal== 14429 (pos)
                    (not (Ba_not_checked_p7))

                    ; #87897: <==uncertain_firing== 41912 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11674: <==closure== 34763 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #34763: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #43893: <==commonly_known== 75882 (pos)
                    (Ba_checked_p8)

                    ; #51122: <==commonly_known== 75882 (pos)
                    (Bd_checked_p8)

                    ; #54529: <==closure== 85566 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #58316: <==commonly_known== 15989 (neg)
                    (Pa_checked_p8)

                    ; #65824: <==commonly_known== 75882 (pos)
                    (Bb_checked_p8)

                    ; #66003: <==commonly_known== 15989 (neg)
                    (Pb_checked_p8)

                    ; #75882: origin
                    (checked_p8)

                    ; #77896: <==commonly_known== 15989 (neg)
                    (Pd_checked_p8)

                    ; #81975: <==commonly_known== 15989 (neg)
                    (Pc_checked_p8)

                    ; #85566: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #90871: <==commonly_known== 75882 (pos)
                    (Bc_checked_p8)

                    ; #14718: <==negation-removal== 81975 (pos)
                    (not (Bc_not_checked_p8))

                    ; #15989: <==negation-removal== 75882 (pos)
                    (not (not_checked_p8))

                    ; #22421: <==negation-removal== 54529 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #22725: <==uncertain_firing== 85566 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #30137: <==negation-removal== 85566 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #31698: <==negation-removal== 11674 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #31909: <==negation-removal== 43893 (pos)
                    (not (Pa_not_checked_p8))

                    ; #38328: <==negation-removal== 65824 (pos)
                    (not (Pb_not_checked_p8))

                    ; #42699: <==uncertain_firing== 54529 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #43831: <==negation-removal== 51122 (pos)
                    (not (Pd_not_checked_p8))

                    ; #53613: <==negation-removal== 90871 (pos)
                    (not (Pc_not_checked_p8))

                    ; #54148: <==negation-removal== 34763 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #58442: <==uncertain_firing== 11674 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #63094: <==uncertain_firing== 34763 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #67422: <==negation-removal== 66003 (pos)
                    (not (Bb_not_checked_p8))

                    ; #74551: <==negation-removal== 58316 (pos)
                    (not (Ba_not_checked_p8))

                    ; #75818: <==negation-removal== 77896 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13687: origin
                    (checked_p9)

                    ; #14137: <==commonly_known== 23287 (neg)
                    (Pa_checked_p9)

                    ; #15855: <==commonly_known== 13687 (pos)
                    (Bb_checked_p9)

                    ; #25308: <==closure== 78492 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #30025: <==commonly_known== 23287 (neg)
                    (Pb_checked_p9)

                    ; #44781: <==commonly_known== 23287 (neg)
                    (Pc_checked_p9)

                    ; #48126: <==closure== 48255 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #48255: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #55562: <==commonly_known== 23287 (neg)
                    (Pd_checked_p9)

                    ; #62858: <==commonly_known== 13687 (pos)
                    (Ba_checked_p9)

                    ; #63282: <==commonly_known== 13687 (pos)
                    (Bc_checked_p9)

                    ; #65122: <==commonly_known== 13687 (pos)
                    (Bd_checked_p9)

                    ; #78492: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #13197: <==negation-removal== 48255 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #13270: <==negation-removal== 25308 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #23287: <==negation-removal== 13687 (pos)
                    (not (not_checked_p9))

                    ; #24030: <==uncertain_firing== 48126 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #27177: <==uncertain_firing== 78492 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #42007: <==negation-removal== 30025 (pos)
                    (not (Bb_not_checked_p9))

                    ; #42668: <==negation-removal== 65122 (pos)
                    (not (Pd_not_checked_p9))

                    ; #50936: <==negation-removal== 15855 (pos)
                    (not (Pb_not_checked_p9))

                    ; #57017: <==uncertain_firing== 48255 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #57280: <==negation-removal== 55562 (pos)
                    (not (Bd_not_checked_p9))

                    ; #57597: <==negation-removal== 62858 (pos)
                    (not (Pa_not_checked_p9))

                    ; #61907: <==negation-removal== 63282 (pos)
                    (not (Pc_not_checked_p9))

                    ; #63800: <==negation-removal== 44781 (pos)
                    (not (Bc_not_checked_p9))

                    ; #69068: <==negation-removal== 48126 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #71756: <==negation-removal== 14137 (pos)
                    (not (Ba_not_checked_p9))

                    ; #73014: <==uncertain_firing== 25308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #90919: <==negation-removal== 78492 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))))

)