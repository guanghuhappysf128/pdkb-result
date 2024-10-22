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
        (not_leader_a)
        (not_leader_b)
        (not_leader_c)
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
        (leader_a)
        (leader_b)
        (leader_c)
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

    (:action badcomm_p1_a_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_a)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #10594: origin
                    (Ba_not_survivorat_s_p1)

                    ; #39449: <==closure== 10594 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #51087: <==negation-removal== 10594 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #52510: <==negation-removal== 39449 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #33812: <==closure== 91494 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #91494: origin
                    (Bb_not_survivorat_s_p1)

                    ; #48834: <==negation-removal== 91494 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #68844: <==negation-removal== 33812 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_c)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #91310: <==closure== 91579 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #91579: origin
                    (Bc_not_survivorat_s_p1)

                    ; #60432: <==negation-removal== 91579 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #73282: <==negation-removal== 91310 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_a)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #10594: origin
                    (Ba_not_survivorat_s_p1)

                    ; #39449: <==closure== 10594 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #51087: <==negation-removal== 10594 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #52510: <==negation-removal== 39449 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_b)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #33812: <==closure== 91494 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #91494: origin
                    (Bb_not_survivorat_s_p1)

                    ; #48834: <==negation-removal== 91494 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #68844: <==negation-removal== 33812 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_c)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #91310: <==closure== 91579 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #91579: origin
                    (Bc_not_survivorat_s_p1)

                    ; #60432: <==negation-removal== 91579 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #73282: <==negation-removal== 91310 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #10594: origin
                    (Ba_not_survivorat_s_p1)

                    ; #39449: <==closure== 10594 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #51087: <==negation-removal== 10594 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #52510: <==negation-removal== 39449 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b))
        :effect (and
                    ; #33812: <==closure== 91494 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #91494: origin
                    (Bb_not_survivorat_s_p1)

                    ; #48834: <==negation-removal== 91494 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #68844: <==negation-removal== 33812 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #91310: <==closure== 91579 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #91579: origin
                    (Bc_not_survivorat_s_p1)

                    ; #60432: <==negation-removal== 91579 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #73282: <==negation-removal== 91310 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_a)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #15844: origin
                    (Ba_not_survivorat_s_p2)

                    ; #46102: <==closure== 15844 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #22548: <==negation-removal== 46102 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #55839: <==negation-removal== 15844 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (leader_b)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #14963: <==closure== 37793 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #37793: origin
                    (Bb_not_survivorat_s_p2)

                    ; #11774: <==negation-removal== 14963 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #70860: <==negation-removal== 37793 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_c)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #13191: <==closure== 84084 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #84084: origin
                    (Bc_not_survivorat_s_p2)

                    ; #77432: <==negation-removal== 84084 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #90256: <==negation-removal== 13191 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #15844: origin
                    (Ba_not_survivorat_s_p2)

                    ; #46102: <==closure== 15844 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #22548: <==negation-removal== 46102 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #55839: <==negation-removal== 15844 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b))
        :effect (and
                    ; #14963: <==closure== 37793 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #37793: origin
                    (Bb_not_survivorat_s_p2)

                    ; #11774: <==negation-removal== 14963 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #70860: <==negation-removal== 37793 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_c)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #13191: <==closure== 84084 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #84084: origin
                    (Bc_not_survivorat_s_p2)

                    ; #77432: <==negation-removal== 84084 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #90256: <==negation-removal== 13191 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_a)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #15844: origin
                    (Ba_not_survivorat_s_p2)

                    ; #46102: <==closure== 15844 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #22548: <==negation-removal== 46102 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #55839: <==negation-removal== 15844 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_b)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #14963: <==closure== 37793 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #37793: origin
                    (Bb_not_survivorat_s_p2)

                    ; #11774: <==negation-removal== 14963 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #70860: <==negation-removal== 37793 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_c)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #13191: <==closure== 84084 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #84084: origin
                    (Bc_not_survivorat_s_p2)

                    ; #77432: <==negation-removal== 84084 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #90256: <==negation-removal== 13191 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (leader_a)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #17952: origin
                    (Ba_not_survivorat_s_p3)

                    ; #76878: <==closure== 17952 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #24446: <==negation-removal== 76878 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #36838: <==negation-removal== 17952 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (at_a_p3)
                           (leader_b)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #41113: origin
                    (Bb_not_survivorat_s_p3)

                    ; #57862: <==closure== 41113 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #61344: <==negation-removal== 57862 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #89946: <==negation-removal== 41113 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (leader_c)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #21377: <==closure== 76717 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #76717: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16671: <==negation-removal== 21377 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #82570: <==negation-removal== 76717 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #17952: origin
                    (Ba_not_survivorat_s_p3)

                    ; #76878: <==closure== 17952 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #24446: <==negation-removal== 76878 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #36838: <==negation-removal== 17952 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #41113: origin
                    (Bb_not_survivorat_s_p3)

                    ; #57862: <==closure== 41113 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #61344: <==negation-removal== 57862 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #89946: <==negation-removal== 41113 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #21377: <==closure== 76717 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #76717: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16671: <==negation-removal== 21377 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #82570: <==negation-removal== 76717 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #17952: origin
                    (Ba_not_survivorat_s_p3)

                    ; #76878: <==closure== 17952 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #24446: <==negation-removal== 76878 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #36838: <==negation-removal== 17952 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (Pc_survivorat_s_p3)
                           (leader_b)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #41113: origin
                    (Bb_not_survivorat_s_p3)

                    ; #57862: <==closure== 41113 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #61344: <==negation-removal== 57862 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #89946: <==negation-removal== 41113 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #21377: <==closure== 76717 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #76717: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16671: <==negation-removal== 21377 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #82570: <==negation-removal== 76717 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_a)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #67586: origin
                    (Ba_not_survivorat_s_p4)

                    ; #70246: <==closure== 67586 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #58686: <==negation-removal== 70246 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #69702: <==negation-removal== 67586 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #46778: origin
                    (Bb_not_survivorat_s_p4)

                    ; #92131: <==closure== 46778 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #54102: <==negation-removal== 92131 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #80158: <==negation-removal== 46778 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_c)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #28393: origin
                    (Bc_not_survivorat_s_p4)

                    ; #55476: <==closure== 28393 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #42750: <==negation-removal== 55476 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #74328: <==negation-removal== 28393 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (leader_a)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #67586: origin
                    (Ba_not_survivorat_s_p4)

                    ; #70246: <==closure== 67586 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #58686: <==negation-removal== 70246 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #69702: <==negation-removal== 67586 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b))
        :effect (and
                    ; #46778: origin
                    (Bb_not_survivorat_s_p4)

                    ; #92131: <==closure== 46778 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #54102: <==negation-removal== 92131 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #80158: <==negation-removal== 46778 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (leader_c)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #28393: origin
                    (Bc_not_survivorat_s_p4)

                    ; #55476: <==closure== 28393 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #42750: <==negation-removal== 55476 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #74328: <==negation-removal== 28393 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_a)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #67586: origin
                    (Ba_not_survivorat_s_p4)

                    ; #70246: <==closure== 67586 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #58686: <==negation-removal== 70246 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #69702: <==negation-removal== 67586 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #46778: origin
                    (Bb_not_survivorat_s_p4)

                    ; #92131: <==closure== 46778 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #54102: <==negation-removal== 92131 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #80158: <==negation-removal== 46778 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #28393: origin
                    (Bc_not_survivorat_s_p4)

                    ; #55476: <==closure== 28393 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #42750: <==negation-removal== 55476 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #74328: <==negation-removal== 28393 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (leader_a)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #24157: <==closure== 73120 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #73120: origin
                    (Ba_not_survivorat_s_p5)

                    ; #23403: <==negation-removal== 73120 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #61367: <==negation-removal== 24157 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #42970: origin
                    (Bb_not_survivorat_s_p5)

                    ; #65463: <==closure== 42970 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #31888: <==negation-removal== 42970 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #49712: <==negation-removal== 65463 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #83898: <==closure== 91496 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #91496: origin
                    (Bc_not_survivorat_s_p5)

                    ; #15725: <==negation-removal== 83898 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #60669: <==negation-removal== 91496 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #24157: <==closure== 73120 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #73120: origin
                    (Ba_not_survivorat_s_p5)

                    ; #23403: <==negation-removal== 73120 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #61367: <==negation-removal== 24157 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #42970: origin
                    (Bb_not_survivorat_s_p5)

                    ; #65463: <==closure== 42970 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #31888: <==negation-removal== 42970 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #49712: <==negation-removal== 65463 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #83898: <==closure== 91496 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #91496: origin
                    (Bc_not_survivorat_s_p5)

                    ; #15725: <==negation-removal== 83898 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #60669: <==negation-removal== 91496 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #24157: <==closure== 73120 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #73120: origin
                    (Ba_not_survivorat_s_p5)

                    ; #23403: <==negation-removal== 73120 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #61367: <==negation-removal== 24157 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b)
                           (at_c_p5))
        :effect (and
                    ; #42970: origin
                    (Bb_not_survivorat_s_p5)

                    ; #65463: <==closure== 42970 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #31888: <==negation-removal== 42970 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #49712: <==negation-removal== 65463 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #83898: <==closure== 91496 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #91496: origin
                    (Bc_not_survivorat_s_p5)

                    ; #15725: <==negation-removal== 83898 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #60669: <==negation-removal== 91496 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #15888: <==closure== 82797 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #82797: origin
                    (Ba_not_survivorat_s_p6)

                    ; #23445: <==negation-removal== 15888 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #36091: <==negation-removal== 82797 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #80961: origin
                    (Bb_not_survivorat_s_p6)

                    ; #85360: <==closure== 80961 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #12570: <==negation-removal== 80961 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #33868: <==negation-removal== 85360 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #10824: <==closure== 90223 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #90223: origin
                    (Bc_not_survivorat_s_p6)

                    ; #26678: <==negation-removal== 10824 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #55207: <==negation-removal== 90223 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (leader_a)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #15888: <==closure== 82797 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #82797: origin
                    (Ba_not_survivorat_s_p6)

                    ; #23445: <==negation-removal== 15888 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #36091: <==negation-removal== 82797 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (at_b_p6)
                           (leader_b)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #80961: origin
                    (Bb_not_survivorat_s_p6)

                    ; #85360: <==closure== 80961 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #12570: <==negation-removal== 80961 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #33868: <==negation-removal== 85360 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (leader_c)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #10824: <==closure== 90223 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #90223: origin
                    (Bc_not_survivorat_s_p6)

                    ; #26678: <==negation-removal== 10824 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #55207: <==negation-removal== 90223 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #15888: <==closure== 82797 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #82797: origin
                    (Ba_not_survivorat_s_p6)

                    ; #23445: <==negation-removal== 15888 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #36091: <==negation-removal== 82797 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #80961: origin
                    (Bb_not_survivorat_s_p6)

                    ; #85360: <==closure== 80961 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #12570: <==negation-removal== 80961 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #33868: <==negation-removal== 85360 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #10824: <==closure== 90223 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #90223: origin
                    (Bc_not_survivorat_s_p6)

                    ; #26678: <==negation-removal== 10824 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #55207: <==negation-removal== 90223 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a))
        :effect (and
                    ; #62300: <==closure== 75788 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #75788: origin
                    (Ba_not_survivorat_s_p7)

                    ; #16528: <==negation-removal== 75788 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #36446: <==negation-removal== 62300 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #58959: <==closure== 78516 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #78516: origin
                    (Bb_not_survivorat_s_p7)

                    ; #12523: <==negation-removal== 78516 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #54032: <==negation-removal== 58959 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c))
        :effect (and
                    ; #13541: origin
                    (Bc_not_survivorat_s_p7)

                    ; #54444: <==closure== 13541 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #33705: <==negation-removal== 13541 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #39375: <==negation-removal== 54444 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #62300: <==closure== 75788 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #75788: origin
                    (Ba_not_survivorat_s_p7)

                    ; #16528: <==negation-removal== 75788 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #36446: <==negation-removal== 62300 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #58959: <==closure== 78516 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #78516: origin
                    (Bb_not_survivorat_s_p7)

                    ; #12523: <==negation-removal== 78516 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #54032: <==negation-removal== 58959 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #13541: origin
                    (Bc_not_survivorat_s_p7)

                    ; #54444: <==closure== 13541 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #33705: <==negation-removal== 13541 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #39375: <==negation-removal== 54444 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #62300: <==closure== 75788 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #75788: origin
                    (Ba_not_survivorat_s_p7)

                    ; #16528: <==negation-removal== 75788 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #36446: <==negation-removal== 62300 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_b))
        :effect (and
                    ; #58959: <==closure== 78516 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #78516: origin
                    (Bb_not_survivorat_s_p7)

                    ; #12523: <==negation-removal== 78516 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #54032: <==negation-removal== 58959 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #13541: origin
                    (Bc_not_survivorat_s_p7)

                    ; #54444: <==closure== 13541 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #33705: <==negation-removal== 13541 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #39375: <==negation-removal== 54444 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #12940: <==closure== 52299 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #52299: origin
                    (Ba_not_survivorat_s_p8)

                    ; #24087: <==negation-removal== 52299 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #83219: <==negation-removal== 12940 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (leader_b)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #66903: <==closure== 69975 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #69975: origin
                    (Bb_not_survivorat_s_p8)

                    ; #50969: <==negation-removal== 66903 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #80563: <==negation-removal== 69975 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #32970: <==closure== 54068 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #54068: origin
                    (Bc_not_survivorat_s_p8)

                    ; #25983: <==negation-removal== 32970 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #52278: <==negation-removal== 54068 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (at_b_p8)
                           (leader_a)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #12940: <==closure== 52299 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #52299: origin
                    (Ba_not_survivorat_s_p8)

                    ; #24087: <==negation-removal== 52299 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #83219: <==negation-removal== 12940 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (at_b_p8)
                           (leader_b)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #66903: <==closure== 69975 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #69975: origin
                    (Bb_not_survivorat_s_p8)

                    ; #50969: <==negation-removal== 66903 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #80563: <==negation-removal== 69975 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (at_b_p8)
                           (leader_c)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #32970: <==closure== 54068 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #54068: origin
                    (Bc_not_survivorat_s_p8)

                    ; #25983: <==negation-removal== 32970 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #52278: <==negation-removal== 54068 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_a)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #12940: <==closure== 52299 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #52299: origin
                    (Ba_not_survivorat_s_p8)

                    ; #24087: <==negation-removal== 52299 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #83219: <==negation-removal== 12940 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #66903: <==closure== 69975 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #69975: origin
                    (Bb_not_survivorat_s_p8)

                    ; #50969: <==negation-removal== 66903 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #80563: <==negation-removal== 69975 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #32970: <==closure== 54068 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #54068: origin
                    (Bc_not_survivorat_s_p8)

                    ; #25983: <==negation-removal== 32970 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #52278: <==negation-removal== 54068 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (at_a_p9)
                           (leader_a)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #30182: origin
                    (Ba_not_survivorat_s_p9)

                    ; #84846: <==closure== 30182 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #10877: <==negation-removal== 30182 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #33362: <==negation-removal== 84846 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #18955: origin
                    (Bb_not_survivorat_s_p9)

                    ; #54928: <==closure== 18955 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #34804: <==negation-removal== 54928 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #84264: <==negation-removal== 18955 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (leader_c)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #12205: origin
                    (Bc_not_survivorat_s_p9)

                    ; #38701: <==closure== 12205 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #65071: <==negation-removal== 38701 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #80557: <==negation-removal== 12205 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #30182: origin
                    (Ba_not_survivorat_s_p9)

                    ; #84846: <==closure== 30182 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #10877: <==negation-removal== 30182 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #33362: <==negation-removal== 84846 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_b)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #18955: origin
                    (Bb_not_survivorat_s_p9)

                    ; #54928: <==closure== 18955 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #34804: <==negation-removal== 54928 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #84264: <==negation-removal== 18955 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #12205: origin
                    (Bc_not_survivorat_s_p9)

                    ; #38701: <==closure== 12205 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #65071: <==negation-removal== 38701 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #80557: <==negation-removal== 12205 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (at_c_p9)
                           (leader_a)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #30182: origin
                    (Ba_not_survivorat_s_p9)

                    ; #84846: <==closure== 30182 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #10877: <==negation-removal== 30182 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #33362: <==negation-removal== 84846 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #18955: origin
                    (Bb_not_survivorat_s_p9)

                    ; #54928: <==closure== 18955 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #34804: <==negation-removal== 54928 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #84264: <==negation-removal== 18955 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (at_c_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #12205: origin
                    (Bc_not_survivorat_s_p9)

                    ; #38701: <==closure== 12205 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #65071: <==negation-removal== 38701 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #80557: <==negation-removal== 12205 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action comm_p1_a_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_a)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #51087: <==closure== 52510 (pos)
                    (Pa_survivorat_s_p1)

                    ; #52510: origin
                    (Ba_survivorat_s_p1)

                    ; #10594: <==negation-removal== 51087 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #39449: <==negation-removal== 52510 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #48834: <==closure== 68844 (pos)
                    (Pb_survivorat_s_p1)

                    ; #68844: origin
                    (Bb_survivorat_s_p1)

                    ; #33812: <==negation-removal== 68844 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #91494: <==negation-removal== 48834 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_c)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #60432: <==closure== 73282 (pos)
                    (Pc_survivorat_s_p1)

                    ; #73282: origin
                    (Bc_survivorat_s_p1)

                    ; #91310: <==negation-removal== 73282 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #91579: <==negation-removal== 60432 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_a)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #51087: <==closure== 52510 (pos)
                    (Pa_survivorat_s_p1)

                    ; #52510: origin
                    (Ba_survivorat_s_p1)

                    ; #10594: <==negation-removal== 51087 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #39449: <==negation-removal== 52510 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_b)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #48834: <==closure== 68844 (pos)
                    (Pb_survivorat_s_p1)

                    ; #68844: origin
                    (Bb_survivorat_s_p1)

                    ; #33812: <==negation-removal== 68844 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #91494: <==negation-removal== 48834 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_c)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #60432: <==closure== 73282 (pos)
                    (Pc_survivorat_s_p1)

                    ; #73282: origin
                    (Bc_survivorat_s_p1)

                    ; #91310: <==negation-removal== 73282 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #91579: <==negation-removal== 60432 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #51087: <==closure== 52510 (pos)
                    (Pa_survivorat_s_p1)

                    ; #52510: origin
                    (Ba_survivorat_s_p1)

                    ; #10594: <==negation-removal== 51087 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #39449: <==negation-removal== 52510 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b))
        :effect (and
                    ; #48834: <==closure== 68844 (pos)
                    (Pb_survivorat_s_p1)

                    ; #68844: origin
                    (Bb_survivorat_s_p1)

                    ; #33812: <==negation-removal== 68844 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #91494: <==negation-removal== 48834 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #60432: <==closure== 73282 (pos)
                    (Pc_survivorat_s_p1)

                    ; #73282: origin
                    (Bc_survivorat_s_p1)

                    ; #91310: <==negation-removal== 73282 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #91579: <==negation-removal== 60432 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_a)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #22548: origin
                    (Ba_survivorat_s_p2)

                    ; #55839: <==closure== 22548 (pos)
                    (Pa_survivorat_s_p2)

                    ; #15844: <==negation-removal== 55839 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #46102: <==negation-removal== 22548 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (leader_b)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #11774: origin
                    (Bb_survivorat_s_p2)

                    ; #70860: <==closure== 11774 (pos)
                    (Pb_survivorat_s_p2)

                    ; #14963: <==negation-removal== 11774 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #37793: <==negation-removal== 70860 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_c)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #77432: <==closure== 90256 (pos)
                    (Pc_survivorat_s_p2)

                    ; #90256: origin
                    (Bc_survivorat_s_p2)

                    ; #13191: <==negation-removal== 90256 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #84084: <==negation-removal== 77432 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #22548: origin
                    (Ba_survivorat_s_p2)

                    ; #55839: <==closure== 22548 (pos)
                    (Pa_survivorat_s_p2)

                    ; #15844: <==negation-removal== 55839 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #46102: <==negation-removal== 22548 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b))
        :effect (and
                    ; #11774: origin
                    (Bb_survivorat_s_p2)

                    ; #70860: <==closure== 11774 (pos)
                    (Pb_survivorat_s_p2)

                    ; #14963: <==negation-removal== 11774 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #37793: <==negation-removal== 70860 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_c)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #77432: <==closure== 90256 (pos)
                    (Pc_survivorat_s_p2)

                    ; #90256: origin
                    (Bc_survivorat_s_p2)

                    ; #13191: <==negation-removal== 90256 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #84084: <==negation-removal== 77432 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_a)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #22548: origin
                    (Ba_survivorat_s_p2)

                    ; #55839: <==closure== 22548 (pos)
                    (Pa_survivorat_s_p2)

                    ; #15844: <==negation-removal== 55839 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #46102: <==negation-removal== 22548 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_b)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #11774: origin
                    (Bb_survivorat_s_p2)

                    ; #70860: <==closure== 11774 (pos)
                    (Pb_survivorat_s_p2)

                    ; #14963: <==negation-removal== 11774 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #37793: <==negation-removal== 70860 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_c)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #77432: <==closure== 90256 (pos)
                    (Pc_survivorat_s_p2)

                    ; #90256: origin
                    (Bc_survivorat_s_p2)

                    ; #13191: <==negation-removal== 90256 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #84084: <==negation-removal== 77432 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #24446: origin
                    (Ba_survivorat_s_p3)

                    ; #36838: <==closure== 24446 (pos)
                    (Pa_survivorat_s_p3)

                    ; #17952: <==negation-removal== 36838 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76878: <==negation-removal== 24446 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (at_a_p3)
                           (leader_b)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #61344: origin
                    (Bb_survivorat_s_p3)

                    ; #89946: <==closure== 61344 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41113: <==negation-removal== 89946 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #57862: <==negation-removal== 61344 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (leader_c)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #16671: origin
                    (Bc_survivorat_s_p3)

                    ; #82570: <==closure== 16671 (pos)
                    (Pc_survivorat_s_p3)

                    ; #21377: <==negation-removal== 16671 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #76717: <==negation-removal== 82570 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #24446: origin
                    (Ba_survivorat_s_p3)

                    ; #36838: <==closure== 24446 (pos)
                    (Pa_survivorat_s_p3)

                    ; #17952: <==negation-removal== 36838 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76878: <==negation-removal== 24446 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #61344: origin
                    (Bb_survivorat_s_p3)

                    ; #89946: <==closure== 61344 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41113: <==negation-removal== 89946 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #57862: <==negation-removal== 61344 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #16671: origin
                    (Bc_survivorat_s_p3)

                    ; #82570: <==closure== 16671 (pos)
                    (Pc_survivorat_s_p3)

                    ; #21377: <==negation-removal== 16671 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #76717: <==negation-removal== 82570 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #24446: origin
                    (Ba_survivorat_s_p3)

                    ; #36838: <==closure== 24446 (pos)
                    (Pa_survivorat_s_p3)

                    ; #17952: <==negation-removal== 36838 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76878: <==negation-removal== 24446 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (Pc_survivorat_s_p3)
                           (leader_b)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #61344: origin
                    (Bb_survivorat_s_p3)

                    ; #89946: <==closure== 61344 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41113: <==negation-removal== 89946 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #57862: <==negation-removal== 61344 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #16671: origin
                    (Bc_survivorat_s_p3)

                    ; #82570: <==closure== 16671 (pos)
                    (Pc_survivorat_s_p3)

                    ; #21377: <==negation-removal== 16671 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #76717: <==negation-removal== 82570 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_a)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #58686: origin
                    (Ba_survivorat_s_p4)

                    ; #69702: <==closure== 58686 (pos)
                    (Pa_survivorat_s_p4)

                    ; #67586: <==negation-removal== 69702 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #70246: <==negation-removal== 58686 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #54102: origin
                    (Bb_survivorat_s_p4)

                    ; #80158: <==closure== 54102 (pos)
                    (Pb_survivorat_s_p4)

                    ; #46778: <==negation-removal== 80158 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #92131: <==negation-removal== 54102 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_c)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #42750: origin
                    (Bc_survivorat_s_p4)

                    ; #74328: <==closure== 42750 (pos)
                    (Pc_survivorat_s_p4)

                    ; #28393: <==negation-removal== 74328 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #55476: <==negation-removal== 42750 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (leader_a)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #58686: origin
                    (Ba_survivorat_s_p4)

                    ; #69702: <==closure== 58686 (pos)
                    (Pa_survivorat_s_p4)

                    ; #67586: <==negation-removal== 69702 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #70246: <==negation-removal== 58686 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b))
        :effect (and
                    ; #54102: origin
                    (Bb_survivorat_s_p4)

                    ; #80158: <==closure== 54102 (pos)
                    (Pb_survivorat_s_p4)

                    ; #46778: <==negation-removal== 80158 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #92131: <==negation-removal== 54102 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (leader_c)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #42750: origin
                    (Bc_survivorat_s_p4)

                    ; #74328: <==closure== 42750 (pos)
                    (Pc_survivorat_s_p4)

                    ; #28393: <==negation-removal== 74328 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #55476: <==negation-removal== 42750 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_a)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #58686: origin
                    (Ba_survivorat_s_p4)

                    ; #69702: <==closure== 58686 (pos)
                    (Pa_survivorat_s_p4)

                    ; #67586: <==negation-removal== 69702 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #70246: <==negation-removal== 58686 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #54102: origin
                    (Bb_survivorat_s_p4)

                    ; #80158: <==closure== 54102 (pos)
                    (Pb_survivorat_s_p4)

                    ; #46778: <==negation-removal== 80158 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #92131: <==negation-removal== 54102 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #42750: origin
                    (Bc_survivorat_s_p4)

                    ; #74328: <==closure== 42750 (pos)
                    (Pc_survivorat_s_p4)

                    ; #28393: <==negation-removal== 74328 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #55476: <==negation-removal== 42750 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (leader_a)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #23403: <==closure== 61367 (pos)
                    (Pa_survivorat_s_p5)

                    ; #61367: origin
                    (Ba_survivorat_s_p5)

                    ; #24157: <==negation-removal== 61367 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #73120: <==negation-removal== 23403 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #31888: <==closure== 49712 (pos)
                    (Pb_survivorat_s_p5)

                    ; #49712: origin
                    (Bb_survivorat_s_p5)

                    ; #42970: <==negation-removal== 31888 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #65463: <==negation-removal== 49712 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #15725: origin
                    (Bc_survivorat_s_p5)

                    ; #60669: <==closure== 15725 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83898: <==negation-removal== 15725 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #91496: <==negation-removal== 60669 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #23403: <==closure== 61367 (pos)
                    (Pa_survivorat_s_p5)

                    ; #61367: origin
                    (Ba_survivorat_s_p5)

                    ; #24157: <==negation-removal== 61367 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #73120: <==negation-removal== 23403 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #31888: <==closure== 49712 (pos)
                    (Pb_survivorat_s_p5)

                    ; #49712: origin
                    (Bb_survivorat_s_p5)

                    ; #42970: <==negation-removal== 31888 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #65463: <==negation-removal== 49712 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #15725: origin
                    (Bc_survivorat_s_p5)

                    ; #60669: <==closure== 15725 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83898: <==negation-removal== 15725 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #91496: <==negation-removal== 60669 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #23403: <==closure== 61367 (pos)
                    (Pa_survivorat_s_p5)

                    ; #61367: origin
                    (Ba_survivorat_s_p5)

                    ; #24157: <==negation-removal== 61367 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #73120: <==negation-removal== 23403 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b)
                           (at_c_p5))
        :effect (and
                    ; #31888: <==closure== 49712 (pos)
                    (Pb_survivorat_s_p5)

                    ; #49712: origin
                    (Bb_survivorat_s_p5)

                    ; #42970: <==negation-removal== 31888 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #65463: <==negation-removal== 49712 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #15725: origin
                    (Bc_survivorat_s_p5)

                    ; #60669: <==closure== 15725 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83898: <==negation-removal== 15725 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #91496: <==negation-removal== 60669 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #23445: origin
                    (Ba_survivorat_s_p6)

                    ; #36091: <==closure== 23445 (pos)
                    (Pa_survivorat_s_p6)

                    ; #15888: <==negation-removal== 23445 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #82797: <==negation-removal== 36091 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #12570: <==closure== 33868 (pos)
                    (Pb_survivorat_s_p6)

                    ; #33868: origin
                    (Bb_survivorat_s_p6)

                    ; #80961: <==negation-removal== 12570 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #85360: <==negation-removal== 33868 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #26678: origin
                    (Bc_survivorat_s_p6)

                    ; #55207: <==closure== 26678 (pos)
                    (Pc_survivorat_s_p6)

                    ; #10824: <==negation-removal== 26678 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #90223: <==negation-removal== 55207 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (leader_a)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #23445: origin
                    (Ba_survivorat_s_p6)

                    ; #36091: <==closure== 23445 (pos)
                    (Pa_survivorat_s_p6)

                    ; #15888: <==negation-removal== 23445 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #82797: <==negation-removal== 36091 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (at_b_p6)
                           (leader_b)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #12570: <==closure== 33868 (pos)
                    (Pb_survivorat_s_p6)

                    ; #33868: origin
                    (Bb_survivorat_s_p6)

                    ; #80961: <==negation-removal== 12570 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #85360: <==negation-removal== 33868 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (leader_c)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #26678: origin
                    (Bc_survivorat_s_p6)

                    ; #55207: <==closure== 26678 (pos)
                    (Pc_survivorat_s_p6)

                    ; #10824: <==negation-removal== 26678 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #90223: <==negation-removal== 55207 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #23445: origin
                    (Ba_survivorat_s_p6)

                    ; #36091: <==closure== 23445 (pos)
                    (Pa_survivorat_s_p6)

                    ; #15888: <==negation-removal== 23445 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #82797: <==negation-removal== 36091 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #12570: <==closure== 33868 (pos)
                    (Pb_survivorat_s_p6)

                    ; #33868: origin
                    (Bb_survivorat_s_p6)

                    ; #80961: <==negation-removal== 12570 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #85360: <==negation-removal== 33868 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #26678: origin
                    (Bc_survivorat_s_p6)

                    ; #55207: <==closure== 26678 (pos)
                    (Pc_survivorat_s_p6)

                    ; #10824: <==negation-removal== 26678 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #90223: <==negation-removal== 55207 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a))
        :effect (and
                    ; #16528: <==closure== 36446 (pos)
                    (Pa_survivorat_s_p7)

                    ; #36446: origin
                    (Ba_survivorat_s_p7)

                    ; #62300: <==negation-removal== 36446 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #75788: <==negation-removal== 16528 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #12523: <==closure== 54032 (pos)
                    (Pb_survivorat_s_p7)

                    ; #54032: origin
                    (Bb_survivorat_s_p7)

                    ; #58959: <==negation-removal== 54032 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #78516: <==negation-removal== 12523 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c))
        :effect (and
                    ; #33705: <==closure== 39375 (pos)
                    (Pc_survivorat_s_p7)

                    ; #39375: origin
                    (Bc_survivorat_s_p7)

                    ; #13541: <==negation-removal== 33705 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #54444: <==negation-removal== 39375 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #16528: <==closure== 36446 (pos)
                    (Pa_survivorat_s_p7)

                    ; #36446: origin
                    (Ba_survivorat_s_p7)

                    ; #62300: <==negation-removal== 36446 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #75788: <==negation-removal== 16528 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #12523: <==closure== 54032 (pos)
                    (Pb_survivorat_s_p7)

                    ; #54032: origin
                    (Bb_survivorat_s_p7)

                    ; #58959: <==negation-removal== 54032 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #78516: <==negation-removal== 12523 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #33705: <==closure== 39375 (pos)
                    (Pc_survivorat_s_p7)

                    ; #39375: origin
                    (Bc_survivorat_s_p7)

                    ; #13541: <==negation-removal== 33705 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #54444: <==negation-removal== 39375 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #16528: <==closure== 36446 (pos)
                    (Pa_survivorat_s_p7)

                    ; #36446: origin
                    (Ba_survivorat_s_p7)

                    ; #62300: <==negation-removal== 36446 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #75788: <==negation-removal== 16528 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_b))
        :effect (and
                    ; #12523: <==closure== 54032 (pos)
                    (Pb_survivorat_s_p7)

                    ; #54032: origin
                    (Bb_survivorat_s_p7)

                    ; #58959: <==negation-removal== 54032 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #78516: <==negation-removal== 12523 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #33705: <==closure== 39375 (pos)
                    (Pc_survivorat_s_p7)

                    ; #39375: origin
                    (Bc_survivorat_s_p7)

                    ; #13541: <==negation-removal== 33705 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #54444: <==negation-removal== 39375 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #24087: <==closure== 83219 (pos)
                    (Pa_survivorat_s_p8)

                    ; #83219: origin
                    (Ba_survivorat_s_p8)

                    ; #12940: <==negation-removal== 83219 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #52299: <==negation-removal== 24087 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (leader_b)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #50969: origin
                    (Bb_survivorat_s_p8)

                    ; #80563: <==closure== 50969 (pos)
                    (Pb_survivorat_s_p8)

                    ; #66903: <==negation-removal== 50969 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #69975: <==negation-removal== 80563 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #25983: origin
                    (Bc_survivorat_s_p8)

                    ; #52278: <==closure== 25983 (pos)
                    (Pc_survivorat_s_p8)

                    ; #32970: <==negation-removal== 25983 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #54068: <==negation-removal== 52278 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (at_b_p8)
                           (leader_a)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #24087: <==closure== 83219 (pos)
                    (Pa_survivorat_s_p8)

                    ; #83219: origin
                    (Ba_survivorat_s_p8)

                    ; #12940: <==negation-removal== 83219 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #52299: <==negation-removal== 24087 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (at_b_p8)
                           (leader_b)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #50969: origin
                    (Bb_survivorat_s_p8)

                    ; #80563: <==closure== 50969 (pos)
                    (Pb_survivorat_s_p8)

                    ; #66903: <==negation-removal== 50969 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #69975: <==negation-removal== 80563 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (at_b_p8)
                           (leader_c)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #25983: origin
                    (Bc_survivorat_s_p8)

                    ; #52278: <==closure== 25983 (pos)
                    (Pc_survivorat_s_p8)

                    ; #32970: <==negation-removal== 25983 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #54068: <==negation-removal== 52278 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_a)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #24087: <==closure== 83219 (pos)
                    (Pa_survivorat_s_p8)

                    ; #83219: origin
                    (Ba_survivorat_s_p8)

                    ; #12940: <==negation-removal== 83219 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #52299: <==negation-removal== 24087 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #50969: origin
                    (Bb_survivorat_s_p8)

                    ; #80563: <==closure== 50969 (pos)
                    (Pb_survivorat_s_p8)

                    ; #66903: <==negation-removal== 50969 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #69975: <==negation-removal== 80563 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #25983: origin
                    (Bc_survivorat_s_p8)

                    ; #52278: <==closure== 25983 (pos)
                    (Pc_survivorat_s_p8)

                    ; #32970: <==negation-removal== 25983 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #54068: <==negation-removal== 52278 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (at_a_p9)
                           (leader_a)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #10877: <==closure== 33362 (pos)
                    (Pa_survivorat_s_p9)

                    ; #33362: origin
                    (Ba_survivorat_s_p9)

                    ; #30182: <==negation-removal== 10877 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #84846: <==negation-removal== 33362 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #34804: origin
                    (Bb_survivorat_s_p9)

                    ; #84264: <==closure== 34804 (pos)
                    (Pb_survivorat_s_p9)

                    ; #18955: <==negation-removal== 84264 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #54928: <==negation-removal== 34804 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (leader_c)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #65071: origin
                    (Bc_survivorat_s_p9)

                    ; #80557: <==closure== 65071 (pos)
                    (Pc_survivorat_s_p9)

                    ; #12205: <==negation-removal== 80557 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #38701: <==negation-removal== 65071 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #10877: <==closure== 33362 (pos)
                    (Pa_survivorat_s_p9)

                    ; #33362: origin
                    (Ba_survivorat_s_p9)

                    ; #30182: <==negation-removal== 10877 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #84846: <==negation-removal== 33362 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_b)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #34804: origin
                    (Bb_survivorat_s_p9)

                    ; #84264: <==closure== 34804 (pos)
                    (Pb_survivorat_s_p9)

                    ; #18955: <==negation-removal== 84264 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #54928: <==negation-removal== 34804 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #65071: origin
                    (Bc_survivorat_s_p9)

                    ; #80557: <==closure== 65071 (pos)
                    (Pc_survivorat_s_p9)

                    ; #12205: <==negation-removal== 80557 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #38701: <==negation-removal== 65071 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (at_c_p9)
                           (leader_a)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #10877: <==closure== 33362 (pos)
                    (Pa_survivorat_s_p9)

                    ; #33362: origin
                    (Ba_survivorat_s_p9)

                    ; #30182: <==negation-removal== 10877 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #84846: <==negation-removal== 33362 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #34804: origin
                    (Bb_survivorat_s_p9)

                    ; #84264: <==closure== 34804 (pos)
                    (Pb_survivorat_s_p9)

                    ; #18955: <==negation-removal== 84264 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #54928: <==negation-removal== 34804 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (at_c_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #65071: origin
                    (Bc_survivorat_s_p9)

                    ; #80557: <==closure== 65071 (pos)
                    (Pc_survivorat_s_p9)

                    ; #12205: <==negation-removal== 80557 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #38701: <==negation-removal== 65071 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46279: origin
                    (at_a_p1)

                    ; #56979: origin
                    (not_at_a_p1)

                    ; #46279: <==negation-removal== 56979 (pos)
                    (not (at_a_p1))

                    ; #56979: <==negation-removal== 46279 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #56979: origin
                    (not_at_a_p1)

                    ; #91341: origin
                    (at_a_p2)

                    ; #18806: <==negation-removal== 91341 (pos)
                    (not (not_at_a_p2))

                    ; #46279: <==negation-removal== 56979 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #10246: origin
                    (at_a_p3)

                    ; #56979: origin
                    (not_at_a_p1)

                    ; #46279: <==negation-removal== 56979 (pos)
                    (not (at_a_p1))

                    ; #65693: <==negation-removal== 10246 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #56979: origin
                    (not_at_a_p1)

                    ; #85930: origin
                    (at_a_p4)

                    ; #29007: <==negation-removal== 85930 (pos)
                    (not (not_at_a_p4))

                    ; #46279: <==negation-removal== 56979 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #26132: origin
                    (at_a_p5)

                    ; #56979: origin
                    (not_at_a_p1)

                    ; #12057: <==negation-removal== 26132 (pos)
                    (not (not_at_a_p5))

                    ; #46279: <==negation-removal== 56979 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #39640: origin
                    (at_a_p6)

                    ; #56979: origin
                    (not_at_a_p1)

                    ; #46279: <==negation-removal== 56979 (pos)
                    (not (at_a_p1))

                    ; #71243: <==negation-removal== 39640 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38365: origin
                    (at_a_p7)

                    ; #56979: origin
                    (not_at_a_p1)

                    ; #15796: <==negation-removal== 38365 (pos)
                    (not (not_at_a_p7))

                    ; #46279: <==negation-removal== 56979 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #51392: origin
                    (at_a_p8)

                    ; #56979: origin
                    (not_at_a_p1)

                    ; #25381: <==negation-removal== 51392 (pos)
                    (not (not_at_a_p8))

                    ; #46279: <==negation-removal== 56979 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #32969: origin
                    (at_a_p9)

                    ; #56979: origin
                    (not_at_a_p1)

                    ; #46279: <==negation-removal== 56979 (pos)
                    (not (at_a_p1))

                    ; #84635: <==negation-removal== 32969 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #18806: origin
                    (not_at_a_p2)

                    ; #46279: origin
                    (at_a_p1)

                    ; #56979: <==negation-removal== 46279 (pos)
                    (not (not_at_a_p1))

                    ; #91341: <==negation-removal== 18806 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18806: origin
                    (not_at_a_p2)

                    ; #91341: origin
                    (at_a_p2)

                    ; #18806: <==negation-removal== 91341 (pos)
                    (not (not_at_a_p2))

                    ; #91341: <==negation-removal== 18806 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #10246: origin
                    (at_a_p3)

                    ; #18806: origin
                    (not_at_a_p2)

                    ; #65693: <==negation-removal== 10246 (pos)
                    (not (not_at_a_p3))

                    ; #91341: <==negation-removal== 18806 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #18806: origin
                    (not_at_a_p2)

                    ; #85930: origin
                    (at_a_p4)

                    ; #29007: <==negation-removal== 85930 (pos)
                    (not (not_at_a_p4))

                    ; #91341: <==negation-removal== 18806 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #18806: origin
                    (not_at_a_p2)

                    ; #26132: origin
                    (at_a_p5)

                    ; #12057: <==negation-removal== 26132 (pos)
                    (not (not_at_a_p5))

                    ; #91341: <==negation-removal== 18806 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18806: origin
                    (not_at_a_p2)

                    ; #39640: origin
                    (at_a_p6)

                    ; #71243: <==negation-removal== 39640 (pos)
                    (not (not_at_a_p6))

                    ; #91341: <==negation-removal== 18806 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18806: origin
                    (not_at_a_p2)

                    ; #38365: origin
                    (at_a_p7)

                    ; #15796: <==negation-removal== 38365 (pos)
                    (not (not_at_a_p7))

                    ; #91341: <==negation-removal== 18806 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18806: origin
                    (not_at_a_p2)

                    ; #51392: origin
                    (at_a_p8)

                    ; #25381: <==negation-removal== 51392 (pos)
                    (not (not_at_a_p8))

                    ; #91341: <==negation-removal== 18806 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #18806: origin
                    (not_at_a_p2)

                    ; #32969: origin
                    (at_a_p9)

                    ; #84635: <==negation-removal== 32969 (pos)
                    (not (not_at_a_p9))

                    ; #91341: <==negation-removal== 18806 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #46279: origin
                    (at_a_p1)

                    ; #65693: origin
                    (not_at_a_p3)

                    ; #10246: <==negation-removal== 65693 (pos)
                    (not (at_a_p3))

                    ; #56979: <==negation-removal== 46279 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #65693: origin
                    (not_at_a_p3)

                    ; #91341: origin
                    (at_a_p2)

                    ; #10246: <==negation-removal== 65693 (pos)
                    (not (at_a_p3))

                    ; #18806: <==negation-removal== 91341 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #10246: origin
                    (at_a_p3)

                    ; #65693: origin
                    (not_at_a_p3)

                    ; #10246: <==negation-removal== 65693 (pos)
                    (not (at_a_p3))

                    ; #65693: <==negation-removal== 10246 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #65693: origin
                    (not_at_a_p3)

                    ; #85930: origin
                    (at_a_p4)

                    ; #10246: <==negation-removal== 65693 (pos)
                    (not (at_a_p3))

                    ; #29007: <==negation-removal== 85930 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #26132: origin
                    (at_a_p5)

                    ; #65693: origin
                    (not_at_a_p3)

                    ; #10246: <==negation-removal== 65693 (pos)
                    (not (at_a_p3))

                    ; #12057: <==negation-removal== 26132 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #39640: origin
                    (at_a_p6)

                    ; #65693: origin
                    (not_at_a_p3)

                    ; #10246: <==negation-removal== 65693 (pos)
                    (not (at_a_p3))

                    ; #71243: <==negation-removal== 39640 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #38365: origin
                    (at_a_p7)

                    ; #65693: origin
                    (not_at_a_p3)

                    ; #10246: <==negation-removal== 65693 (pos)
                    (not (at_a_p3))

                    ; #15796: <==negation-removal== 38365 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #51392: origin
                    (at_a_p8)

                    ; #65693: origin
                    (not_at_a_p3)

                    ; #10246: <==negation-removal== 65693 (pos)
                    (not (at_a_p3))

                    ; #25381: <==negation-removal== 51392 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #32969: origin
                    (at_a_p9)

                    ; #65693: origin
                    (not_at_a_p3)

                    ; #10246: <==negation-removal== 65693 (pos)
                    (not (at_a_p3))

                    ; #84635: <==negation-removal== 32969 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #29007: origin
                    (not_at_a_p4)

                    ; #46279: origin
                    (at_a_p1)

                    ; #56979: <==negation-removal== 46279 (pos)
                    (not (not_at_a_p1))

                    ; #85930: <==negation-removal== 29007 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #29007: origin
                    (not_at_a_p4)

                    ; #91341: origin
                    (at_a_p2)

                    ; #18806: <==negation-removal== 91341 (pos)
                    (not (not_at_a_p2))

                    ; #85930: <==negation-removal== 29007 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10246: origin
                    (at_a_p3)

                    ; #29007: origin
                    (not_at_a_p4)

                    ; #65693: <==negation-removal== 10246 (pos)
                    (not (not_at_a_p3))

                    ; #85930: <==negation-removal== 29007 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #29007: origin
                    (not_at_a_p4)

                    ; #85930: origin
                    (at_a_p4)

                    ; #29007: <==negation-removal== 85930 (pos)
                    (not (not_at_a_p4))

                    ; #85930: <==negation-removal== 29007 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #26132: origin
                    (at_a_p5)

                    ; #29007: origin
                    (not_at_a_p4)

                    ; #12057: <==negation-removal== 26132 (pos)
                    (not (not_at_a_p5))

                    ; #85930: <==negation-removal== 29007 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #29007: origin
                    (not_at_a_p4)

                    ; #39640: origin
                    (at_a_p6)

                    ; #71243: <==negation-removal== 39640 (pos)
                    (not (not_at_a_p6))

                    ; #85930: <==negation-removal== 29007 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #29007: origin
                    (not_at_a_p4)

                    ; #38365: origin
                    (at_a_p7)

                    ; #15796: <==negation-removal== 38365 (pos)
                    (not (not_at_a_p7))

                    ; #85930: <==negation-removal== 29007 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #29007: origin
                    (not_at_a_p4)

                    ; #51392: origin
                    (at_a_p8)

                    ; #25381: <==negation-removal== 51392 (pos)
                    (not (not_at_a_p8))

                    ; #85930: <==negation-removal== 29007 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #29007: origin
                    (not_at_a_p4)

                    ; #32969: origin
                    (at_a_p9)

                    ; #84635: <==negation-removal== 32969 (pos)
                    (not (not_at_a_p9))

                    ; #85930: <==negation-removal== 29007 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12057: origin
                    (not_at_a_p5)

                    ; #46279: origin
                    (at_a_p1)

                    ; #26132: <==negation-removal== 12057 (pos)
                    (not (at_a_p5))

                    ; #56979: <==negation-removal== 46279 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12057: origin
                    (not_at_a_p5)

                    ; #91341: origin
                    (at_a_p2)

                    ; #18806: <==negation-removal== 91341 (pos)
                    (not (not_at_a_p2))

                    ; #26132: <==negation-removal== 12057 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #10246: origin
                    (at_a_p3)

                    ; #12057: origin
                    (not_at_a_p5)

                    ; #26132: <==negation-removal== 12057 (pos)
                    (not (at_a_p5))

                    ; #65693: <==negation-removal== 10246 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12057: origin
                    (not_at_a_p5)

                    ; #85930: origin
                    (at_a_p4)

                    ; #26132: <==negation-removal== 12057 (pos)
                    (not (at_a_p5))

                    ; #29007: <==negation-removal== 85930 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12057: origin
                    (not_at_a_p5)

                    ; #26132: origin
                    (at_a_p5)

                    ; #12057: <==negation-removal== 26132 (pos)
                    (not (not_at_a_p5))

                    ; #26132: <==negation-removal== 12057 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12057: origin
                    (not_at_a_p5)

                    ; #39640: origin
                    (at_a_p6)

                    ; #26132: <==negation-removal== 12057 (pos)
                    (not (at_a_p5))

                    ; #71243: <==negation-removal== 39640 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12057: origin
                    (not_at_a_p5)

                    ; #38365: origin
                    (at_a_p7)

                    ; #15796: <==negation-removal== 38365 (pos)
                    (not (not_at_a_p7))

                    ; #26132: <==negation-removal== 12057 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12057: origin
                    (not_at_a_p5)

                    ; #51392: origin
                    (at_a_p8)

                    ; #25381: <==negation-removal== 51392 (pos)
                    (not (not_at_a_p8))

                    ; #26132: <==negation-removal== 12057 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12057: origin
                    (not_at_a_p5)

                    ; #32969: origin
                    (at_a_p9)

                    ; #26132: <==negation-removal== 12057 (pos)
                    (not (at_a_p5))

                    ; #84635: <==negation-removal== 32969 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46279: origin
                    (at_a_p1)

                    ; #71243: origin
                    (not_at_a_p6)

                    ; #39640: <==negation-removal== 71243 (pos)
                    (not (at_a_p6))

                    ; #56979: <==negation-removal== 46279 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2)
                           (not (leader_a)))
        :effect (and
                    ; #71243: origin
                    (not_at_a_p6)

                    ; #91341: origin
                    (at_a_p2)

                    ; #18806: <==negation-removal== 91341 (pos)
                    (not (not_at_a_p2))

                    ; #39640: <==negation-removal== 71243 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #10246: origin
                    (at_a_p3)

                    ; #71243: origin
                    (not_at_a_p6)

                    ; #39640: <==negation-removal== 71243 (pos)
                    (not (at_a_p6))

                    ; #65693: <==negation-removal== 10246 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4)
                           (not (leader_a)))
        :effect (and
                    ; #71243: origin
                    (not_at_a_p6)

                    ; #85930: origin
                    (at_a_p4)

                    ; #29007: <==negation-removal== 85930 (pos)
                    (not (not_at_a_p4))

                    ; #39640: <==negation-removal== 71243 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #26132: origin
                    (at_a_p5)

                    ; #71243: origin
                    (not_at_a_p6)

                    ; #12057: <==negation-removal== 26132 (pos)
                    (not (not_at_a_p5))

                    ; #39640: <==negation-removal== 71243 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #39640: origin
                    (at_a_p6)

                    ; #71243: origin
                    (not_at_a_p6)

                    ; #39640: <==negation-removal== 71243 (pos)
                    (not (at_a_p6))

                    ; #71243: <==negation-removal== 39640 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38365: origin
                    (at_a_p7)

                    ; #71243: origin
                    (not_at_a_p6)

                    ; #15796: <==negation-removal== 38365 (pos)
                    (not (not_at_a_p7))

                    ; #39640: <==negation-removal== 71243 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #51392: origin
                    (at_a_p8)

                    ; #71243: origin
                    (not_at_a_p6)

                    ; #25381: <==negation-removal== 51392 (pos)
                    (not (not_at_a_p8))

                    ; #39640: <==negation-removal== 71243 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9)
                           (not (leader_a)))
        :effect (and
                    ; #32969: origin
                    (at_a_p9)

                    ; #71243: origin
                    (not_at_a_p6)

                    ; #39640: <==negation-removal== 71243 (pos)
                    (not (at_a_p6))

                    ; #84635: <==negation-removal== 32969 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15796: origin
                    (not_at_a_p7)

                    ; #46279: origin
                    (at_a_p1)

                    ; #38365: <==negation-removal== 15796 (pos)
                    (not (at_a_p7))

                    ; #56979: <==negation-removal== 46279 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15796: origin
                    (not_at_a_p7)

                    ; #91341: origin
                    (at_a_p2)

                    ; #18806: <==negation-removal== 91341 (pos)
                    (not (not_at_a_p2))

                    ; #38365: <==negation-removal== 15796 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10246: origin
                    (at_a_p3)

                    ; #15796: origin
                    (not_at_a_p7)

                    ; #38365: <==negation-removal== 15796 (pos)
                    (not (at_a_p7))

                    ; #65693: <==negation-removal== 10246 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #15796: origin
                    (not_at_a_p7)

                    ; #85930: origin
                    (at_a_p4)

                    ; #29007: <==negation-removal== 85930 (pos)
                    (not (not_at_a_p4))

                    ; #38365: <==negation-removal== 15796 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15796: origin
                    (not_at_a_p7)

                    ; #26132: origin
                    (at_a_p5)

                    ; #12057: <==negation-removal== 26132 (pos)
                    (not (not_at_a_p5))

                    ; #38365: <==negation-removal== 15796 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15796: origin
                    (not_at_a_p7)

                    ; #39640: origin
                    (at_a_p6)

                    ; #38365: <==negation-removal== 15796 (pos)
                    (not (at_a_p7))

                    ; #71243: <==negation-removal== 39640 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15796: origin
                    (not_at_a_p7)

                    ; #38365: origin
                    (at_a_p7)

                    ; #15796: <==negation-removal== 38365 (pos)
                    (not (not_at_a_p7))

                    ; #38365: <==negation-removal== 15796 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15796: origin
                    (not_at_a_p7)

                    ; #51392: origin
                    (at_a_p8)

                    ; #25381: <==negation-removal== 51392 (pos)
                    (not (not_at_a_p8))

                    ; #38365: <==negation-removal== 15796 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #15796: origin
                    (not_at_a_p7)

                    ; #32969: origin
                    (at_a_p9)

                    ; #38365: <==negation-removal== 15796 (pos)
                    (not (at_a_p7))

                    ; #84635: <==negation-removal== 32969 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #25381: origin
                    (not_at_a_p8)

                    ; #46279: origin
                    (at_a_p1)

                    ; #51392: <==negation-removal== 25381 (pos)
                    (not (at_a_p8))

                    ; #56979: <==negation-removal== 46279 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #25381: origin
                    (not_at_a_p8)

                    ; #91341: origin
                    (at_a_p2)

                    ; #18806: <==negation-removal== 91341 (pos)
                    (not (not_at_a_p2))

                    ; #51392: <==negation-removal== 25381 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #10246: origin
                    (at_a_p3)

                    ; #25381: origin
                    (not_at_a_p8)

                    ; #51392: <==negation-removal== 25381 (pos)
                    (not (at_a_p8))

                    ; #65693: <==negation-removal== 10246 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #25381: origin
                    (not_at_a_p8)

                    ; #85930: origin
                    (at_a_p4)

                    ; #29007: <==negation-removal== 85930 (pos)
                    (not (not_at_a_p4))

                    ; #51392: <==negation-removal== 25381 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #25381: origin
                    (not_at_a_p8)

                    ; #26132: origin
                    (at_a_p5)

                    ; #12057: <==negation-removal== 26132 (pos)
                    (not (not_at_a_p5))

                    ; #51392: <==negation-removal== 25381 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #25381: origin
                    (not_at_a_p8)

                    ; #39640: origin
                    (at_a_p6)

                    ; #51392: <==negation-removal== 25381 (pos)
                    (not (at_a_p8))

                    ; #71243: <==negation-removal== 39640 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25381: origin
                    (not_at_a_p8)

                    ; #38365: origin
                    (at_a_p7)

                    ; #15796: <==negation-removal== 38365 (pos)
                    (not (not_at_a_p7))

                    ; #51392: <==negation-removal== 25381 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #25381: origin
                    (not_at_a_p8)

                    ; #51392: origin
                    (at_a_p8)

                    ; #25381: <==negation-removal== 51392 (pos)
                    (not (not_at_a_p8))

                    ; #51392: <==negation-removal== 25381 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9)
                           (not (leader_a)))
        :effect (and
                    ; #25381: origin
                    (not_at_a_p8)

                    ; #32969: origin
                    (at_a_p9)

                    ; #51392: <==negation-removal== 25381 (pos)
                    (not (at_a_p8))

                    ; #84635: <==negation-removal== 32969 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46279: origin
                    (at_a_p1)

                    ; #84635: origin
                    (not_at_a_p9)

                    ; #32969: <==negation-removal== 84635 (pos)
                    (not (at_a_p9))

                    ; #56979: <==negation-removal== 46279 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2)
                           (not (leader_a)))
        :effect (and
                    ; #84635: origin
                    (not_at_a_p9)

                    ; #91341: origin
                    (at_a_p2)

                    ; #18806: <==negation-removal== 91341 (pos)
                    (not (not_at_a_p2))

                    ; #32969: <==negation-removal== 84635 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3)
                           (not (leader_a)))
        :effect (and
                    ; #10246: origin
                    (at_a_p3)

                    ; #84635: origin
                    (not_at_a_p9)

                    ; #32969: <==negation-removal== 84635 (pos)
                    (not (at_a_p9))

                    ; #65693: <==negation-removal== 10246 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4)
                           (not (leader_a)))
        :effect (and
                    ; #84635: origin
                    (not_at_a_p9)

                    ; #85930: origin
                    (at_a_p4)

                    ; #29007: <==negation-removal== 85930 (pos)
                    (not (not_at_a_p4))

                    ; #32969: <==negation-removal== 84635 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5)
                           (not (leader_a)))
        :effect (and
                    ; #26132: origin
                    (at_a_p5)

                    ; #84635: origin
                    (not_at_a_p9)

                    ; #12057: <==negation-removal== 26132 (pos)
                    (not (not_at_a_p5))

                    ; #32969: <==negation-removal== 84635 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6)
                           (not (leader_a)))
        :effect (and
                    ; #39640: origin
                    (at_a_p6)

                    ; #84635: origin
                    (not_at_a_p9)

                    ; #32969: <==negation-removal== 84635 (pos)
                    (not (at_a_p9))

                    ; #71243: <==negation-removal== 39640 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38365: origin
                    (at_a_p7)

                    ; #84635: origin
                    (not_at_a_p9)

                    ; #15796: <==negation-removal== 38365 (pos)
                    (not (not_at_a_p7))

                    ; #32969: <==negation-removal== 84635 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8)
                           (not (leader_a)))
        :effect (and
                    ; #51392: origin
                    (at_a_p8)

                    ; #84635: origin
                    (not_at_a_p9)

                    ; #25381: <==negation-removal== 51392 (pos)
                    (not (not_at_a_p8))

                    ; #32969: <==negation-removal== 84635 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9)
                           (not (leader_a)))
        :effect (and
                    ; #32969: origin
                    (at_a_p9)

                    ; #84635: origin
                    (not_at_a_p9)

                    ; #32969: <==negation-removal== 84635 (pos)
                    (not (at_a_p9))

                    ; #84635: <==negation-removal== 32969 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #36878: origin
                    (at_b_p1)

                    ; #55290: origin
                    (not_at_b_p1)

                    ; #36878: <==negation-removal== 55290 (pos)
                    (not (at_b_p1))

                    ; #55290: <==negation-removal== 36878 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #35605: origin
                    (at_b_p2)

                    ; #55290: origin
                    (not_at_b_p1)

                    ; #36878: <==negation-removal== 55290 (pos)
                    (not (at_b_p1))

                    ; #67236: <==negation-removal== 35605 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #21064: origin
                    (at_b_p3)

                    ; #55290: origin
                    (not_at_b_p1)

                    ; #36878: <==negation-removal== 55290 (pos)
                    (not (at_b_p1))

                    ; #87751: <==negation-removal== 21064 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19123: origin
                    (at_b_p4)

                    ; #55290: origin
                    (not_at_b_p1)

                    ; #36878: <==negation-removal== 55290 (pos)
                    (not (at_b_p1))

                    ; #41732: <==negation-removal== 19123 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #32757: origin
                    (at_b_p5)

                    ; #55290: origin
                    (not_at_b_p1)

                    ; #21815: <==negation-removal== 32757 (pos)
                    (not (not_at_b_p5))

                    ; #36878: <==negation-removal== 55290 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #20710: origin
                    (at_b_p6)

                    ; #55290: origin
                    (not_at_b_p1)

                    ; #36878: <==negation-removal== 55290 (pos)
                    (not (at_b_p1))

                    ; #43565: <==negation-removal== 20710 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #55290: origin
                    (not_at_b_p1)

                    ; #78056: origin
                    (at_b_p7)

                    ; #23879: <==negation-removal== 78056 (pos)
                    (not (not_at_b_p7))

                    ; #36878: <==negation-removal== 55290 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #45620: origin
                    (at_b_p8)

                    ; #55290: origin
                    (not_at_b_p1)

                    ; #36878: <==negation-removal== 55290 (pos)
                    (not (at_b_p1))

                    ; #52896: <==negation-removal== 45620 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #55290: origin
                    (not_at_b_p1)

                    ; #85947: origin
                    (at_b_p9)

                    ; #23246: <==negation-removal== 85947 (pos)
                    (not (not_at_b_p9))

                    ; #36878: <==negation-removal== 55290 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #36878: origin
                    (at_b_p1)

                    ; #67236: origin
                    (not_at_b_p2)

                    ; #35605: <==negation-removal== 67236 (pos)
                    (not (at_b_p2))

                    ; #55290: <==negation-removal== 36878 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #35605: origin
                    (at_b_p2)

                    ; #67236: origin
                    (not_at_b_p2)

                    ; #35605: <==negation-removal== 67236 (pos)
                    (not (at_b_p2))

                    ; #67236: <==negation-removal== 35605 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #21064: origin
                    (at_b_p3)

                    ; #67236: origin
                    (not_at_b_p2)

                    ; #35605: <==negation-removal== 67236 (pos)
                    (not (at_b_p2))

                    ; #87751: <==negation-removal== 21064 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19123: origin
                    (at_b_p4)

                    ; #67236: origin
                    (not_at_b_p2)

                    ; #35605: <==negation-removal== 67236 (pos)
                    (not (at_b_p2))

                    ; #41732: <==negation-removal== 19123 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #32757: origin
                    (at_b_p5)

                    ; #67236: origin
                    (not_at_b_p2)

                    ; #21815: <==negation-removal== 32757 (pos)
                    (not (not_at_b_p5))

                    ; #35605: <==negation-removal== 67236 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #20710: origin
                    (at_b_p6)

                    ; #67236: origin
                    (not_at_b_p2)

                    ; #35605: <==negation-removal== 67236 (pos)
                    (not (at_b_p2))

                    ; #43565: <==negation-removal== 20710 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #67236: origin
                    (not_at_b_p2)

                    ; #78056: origin
                    (at_b_p7)

                    ; #23879: <==negation-removal== 78056 (pos)
                    (not (not_at_b_p7))

                    ; #35605: <==negation-removal== 67236 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #45620: origin
                    (at_b_p8)

                    ; #67236: origin
                    (not_at_b_p2)

                    ; #35605: <==negation-removal== 67236 (pos)
                    (not (at_b_p2))

                    ; #52896: <==negation-removal== 45620 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #67236: origin
                    (not_at_b_p2)

                    ; #85947: origin
                    (at_b_p9)

                    ; #23246: <==negation-removal== 85947 (pos)
                    (not (not_at_b_p9))

                    ; #35605: <==negation-removal== 67236 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #36878: origin
                    (at_b_p1)

                    ; #87751: origin
                    (not_at_b_p3)

                    ; #21064: <==negation-removal== 87751 (pos)
                    (not (at_b_p3))

                    ; #55290: <==negation-removal== 36878 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #35605: origin
                    (at_b_p2)

                    ; #87751: origin
                    (not_at_b_p3)

                    ; #21064: <==negation-removal== 87751 (pos)
                    (not (at_b_p3))

                    ; #67236: <==negation-removal== 35605 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #21064: origin
                    (at_b_p3)

                    ; #87751: origin
                    (not_at_b_p3)

                    ; #21064: <==negation-removal== 87751 (pos)
                    (not (at_b_p3))

                    ; #87751: <==negation-removal== 21064 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19123: origin
                    (at_b_p4)

                    ; #87751: origin
                    (not_at_b_p3)

                    ; #21064: <==negation-removal== 87751 (pos)
                    (not (at_b_p3))

                    ; #41732: <==negation-removal== 19123 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #32757: origin
                    (at_b_p5)

                    ; #87751: origin
                    (not_at_b_p3)

                    ; #21064: <==negation-removal== 87751 (pos)
                    (not (at_b_p3))

                    ; #21815: <==negation-removal== 32757 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #20710: origin
                    (at_b_p6)

                    ; #87751: origin
                    (not_at_b_p3)

                    ; #21064: <==negation-removal== 87751 (pos)
                    (not (at_b_p3))

                    ; #43565: <==negation-removal== 20710 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #78056: origin
                    (at_b_p7)

                    ; #87751: origin
                    (not_at_b_p3)

                    ; #21064: <==negation-removal== 87751 (pos)
                    (not (at_b_p3))

                    ; #23879: <==negation-removal== 78056 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #45620: origin
                    (at_b_p8)

                    ; #87751: origin
                    (not_at_b_p3)

                    ; #21064: <==negation-removal== 87751 (pos)
                    (not (at_b_p3))

                    ; #52896: <==negation-removal== 45620 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #85947: origin
                    (at_b_p9)

                    ; #87751: origin
                    (not_at_b_p3)

                    ; #21064: <==negation-removal== 87751 (pos)
                    (not (at_b_p3))

                    ; #23246: <==negation-removal== 85947 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #36878: origin
                    (at_b_p1)

                    ; #41732: origin
                    (not_at_b_p4)

                    ; #19123: <==negation-removal== 41732 (pos)
                    (not (at_b_p4))

                    ; #55290: <==negation-removal== 36878 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35605: origin
                    (at_b_p2)

                    ; #41732: origin
                    (not_at_b_p4)

                    ; #19123: <==negation-removal== 41732 (pos)
                    (not (at_b_p4))

                    ; #67236: <==negation-removal== 35605 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #21064: origin
                    (at_b_p3)

                    ; #41732: origin
                    (not_at_b_p4)

                    ; #19123: <==negation-removal== 41732 (pos)
                    (not (at_b_p4))

                    ; #87751: <==negation-removal== 21064 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19123: origin
                    (at_b_p4)

                    ; #41732: origin
                    (not_at_b_p4)

                    ; #19123: <==negation-removal== 41732 (pos)
                    (not (at_b_p4))

                    ; #41732: <==negation-removal== 19123 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5)
                           (not (leader_b)))
        :effect (and
                    ; #32757: origin
                    (at_b_p5)

                    ; #41732: origin
                    (not_at_b_p4)

                    ; #19123: <==negation-removal== 41732 (pos)
                    (not (at_b_p4))

                    ; #21815: <==negation-removal== 32757 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #20710: origin
                    (at_b_p6)

                    ; #41732: origin
                    (not_at_b_p4)

                    ; #19123: <==negation-removal== 41732 (pos)
                    (not (at_b_p4))

                    ; #43565: <==negation-removal== 20710 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #41732: origin
                    (not_at_b_p4)

                    ; #78056: origin
                    (at_b_p7)

                    ; #19123: <==negation-removal== 41732 (pos)
                    (not (at_b_p4))

                    ; #23879: <==negation-removal== 78056 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #41732: origin
                    (not_at_b_p4)

                    ; #45620: origin
                    (at_b_p8)

                    ; #19123: <==negation-removal== 41732 (pos)
                    (not (at_b_p4))

                    ; #52896: <==negation-removal== 45620 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41732: origin
                    (not_at_b_p4)

                    ; #85947: origin
                    (at_b_p9)

                    ; #19123: <==negation-removal== 41732 (pos)
                    (not (at_b_p4))

                    ; #23246: <==negation-removal== 85947 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #21815: origin
                    (not_at_b_p5)

                    ; #36878: origin
                    (at_b_p1)

                    ; #32757: <==negation-removal== 21815 (pos)
                    (not (at_b_p5))

                    ; #55290: <==negation-removal== 36878 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #21815: origin
                    (not_at_b_p5)

                    ; #35605: origin
                    (at_b_p2)

                    ; #32757: <==negation-removal== 21815 (pos)
                    (not (at_b_p5))

                    ; #67236: <==negation-removal== 35605 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #21064: origin
                    (at_b_p3)

                    ; #21815: origin
                    (not_at_b_p5)

                    ; #32757: <==negation-removal== 21815 (pos)
                    (not (at_b_p5))

                    ; #87751: <==negation-removal== 21064 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19123: origin
                    (at_b_p4)

                    ; #21815: origin
                    (not_at_b_p5)

                    ; #32757: <==negation-removal== 21815 (pos)
                    (not (at_b_p5))

                    ; #41732: <==negation-removal== 19123 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #21815: origin
                    (not_at_b_p5)

                    ; #32757: origin
                    (at_b_p5)

                    ; #21815: <==negation-removal== 32757 (pos)
                    (not (not_at_b_p5))

                    ; #32757: <==negation-removal== 21815 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #20710: origin
                    (at_b_p6)

                    ; #21815: origin
                    (not_at_b_p5)

                    ; #32757: <==negation-removal== 21815 (pos)
                    (not (at_b_p5))

                    ; #43565: <==negation-removal== 20710 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21815: origin
                    (not_at_b_p5)

                    ; #78056: origin
                    (at_b_p7)

                    ; #23879: <==negation-removal== 78056 (pos)
                    (not (not_at_b_p7))

                    ; #32757: <==negation-removal== 21815 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #21815: origin
                    (not_at_b_p5)

                    ; #45620: origin
                    (at_b_p8)

                    ; #32757: <==negation-removal== 21815 (pos)
                    (not (at_b_p5))

                    ; #52896: <==negation-removal== 45620 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #21815: origin
                    (not_at_b_p5)

                    ; #85947: origin
                    (at_b_p9)

                    ; #23246: <==negation-removal== 85947 (pos)
                    (not (not_at_b_p9))

                    ; #32757: <==negation-removal== 21815 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #36878: origin
                    (at_b_p1)

                    ; #43565: origin
                    (not_at_b_p6)

                    ; #20710: <==negation-removal== 43565 (pos)
                    (not (at_b_p6))

                    ; #55290: <==negation-removal== 36878 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #35605: origin
                    (at_b_p2)

                    ; #43565: origin
                    (not_at_b_p6)

                    ; #20710: <==negation-removal== 43565 (pos)
                    (not (at_b_p6))

                    ; #67236: <==negation-removal== 35605 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #21064: origin
                    (at_b_p3)

                    ; #43565: origin
                    (not_at_b_p6)

                    ; #20710: <==negation-removal== 43565 (pos)
                    (not (at_b_p6))

                    ; #87751: <==negation-removal== 21064 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19123: origin
                    (at_b_p4)

                    ; #43565: origin
                    (not_at_b_p6)

                    ; #20710: <==negation-removal== 43565 (pos)
                    (not (at_b_p6))

                    ; #41732: <==negation-removal== 19123 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #32757: origin
                    (at_b_p5)

                    ; #43565: origin
                    (not_at_b_p6)

                    ; #20710: <==negation-removal== 43565 (pos)
                    (not (at_b_p6))

                    ; #21815: <==negation-removal== 32757 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #20710: origin
                    (at_b_p6)

                    ; #43565: origin
                    (not_at_b_p6)

                    ; #20710: <==negation-removal== 43565 (pos)
                    (not (at_b_p6))

                    ; #43565: <==negation-removal== 20710 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7)
                           (not (leader_b)))
        :effect (and
                    ; #43565: origin
                    (not_at_b_p6)

                    ; #78056: origin
                    (at_b_p7)

                    ; #20710: <==negation-removal== 43565 (pos)
                    (not (at_b_p6))

                    ; #23879: <==negation-removal== 78056 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #43565: origin
                    (not_at_b_p6)

                    ; #45620: origin
                    (at_b_p8)

                    ; #20710: <==negation-removal== 43565 (pos)
                    (not (at_b_p6))

                    ; #52896: <==negation-removal== 45620 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #43565: origin
                    (not_at_b_p6)

                    ; #85947: origin
                    (at_b_p9)

                    ; #20710: <==negation-removal== 43565 (pos)
                    (not (at_b_p6))

                    ; #23246: <==negation-removal== 85947 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1)
                           (not (leader_b)))
        :effect (and
                    ; #23879: origin
                    (not_at_b_p7)

                    ; #36878: origin
                    (at_b_p1)

                    ; #55290: <==negation-removal== 36878 (pos)
                    (not (not_at_b_p1))

                    ; #78056: <==negation-removal== 23879 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #23879: origin
                    (not_at_b_p7)

                    ; #35605: origin
                    (at_b_p2)

                    ; #67236: <==negation-removal== 35605 (pos)
                    (not (not_at_b_p2))

                    ; #78056: <==negation-removal== 23879 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21064: origin
                    (at_b_p3)

                    ; #23879: origin
                    (not_at_b_p7)

                    ; #78056: <==negation-removal== 23879 (pos)
                    (not (at_b_p7))

                    ; #87751: <==negation-removal== 21064 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19123: origin
                    (at_b_p4)

                    ; #23879: origin
                    (not_at_b_p7)

                    ; #41732: <==negation-removal== 19123 (pos)
                    (not (not_at_b_p4))

                    ; #78056: <==negation-removal== 23879 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #23879: origin
                    (not_at_b_p7)

                    ; #32757: origin
                    (at_b_p5)

                    ; #21815: <==negation-removal== 32757 (pos)
                    (not (not_at_b_p5))

                    ; #78056: <==negation-removal== 23879 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #20710: origin
                    (at_b_p6)

                    ; #23879: origin
                    (not_at_b_p7)

                    ; #43565: <==negation-removal== 20710 (pos)
                    (not (not_at_b_p6))

                    ; #78056: <==negation-removal== 23879 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #23879: origin
                    (not_at_b_p7)

                    ; #78056: origin
                    (at_b_p7)

                    ; #23879: <==negation-removal== 78056 (pos)
                    (not (not_at_b_p7))

                    ; #78056: <==negation-removal== 23879 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #23879: origin
                    (not_at_b_p7)

                    ; #45620: origin
                    (at_b_p8)

                    ; #52896: <==negation-removal== 45620 (pos)
                    (not (not_at_b_p8))

                    ; #78056: <==negation-removal== 23879 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9)
                           (not (leader_b)))
        :effect (and
                    ; #23879: origin
                    (not_at_b_p7)

                    ; #85947: origin
                    (at_b_p9)

                    ; #23246: <==negation-removal== 85947 (pos)
                    (not (not_at_b_p9))

                    ; #78056: <==negation-removal== 23879 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1)
                           (not (leader_b)))
        :effect (and
                    ; #36878: origin
                    (at_b_p1)

                    ; #52896: origin
                    (not_at_b_p8)

                    ; #45620: <==negation-removal== 52896 (pos)
                    (not (at_b_p8))

                    ; #55290: <==negation-removal== 36878 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2)
                           (not (leader_b)))
        :effect (and
                    ; #35605: origin
                    (at_b_p2)

                    ; #52896: origin
                    (not_at_b_p8)

                    ; #45620: <==negation-removal== 52896 (pos)
                    (not (at_b_p8))

                    ; #67236: <==negation-removal== 35605 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #21064: origin
                    (at_b_p3)

                    ; #52896: origin
                    (not_at_b_p8)

                    ; #45620: <==negation-removal== 52896 (pos)
                    (not (at_b_p8))

                    ; #87751: <==negation-removal== 21064 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19123: origin
                    (at_b_p4)

                    ; #52896: origin
                    (not_at_b_p8)

                    ; #41732: <==negation-removal== 19123 (pos)
                    (not (not_at_b_p4))

                    ; #45620: <==negation-removal== 52896 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #32757: origin
                    (at_b_p5)

                    ; #52896: origin
                    (not_at_b_p8)

                    ; #21815: <==negation-removal== 32757 (pos)
                    (not (not_at_b_p5))

                    ; #45620: <==negation-removal== 52896 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6)
                           (not (leader_b)))
        :effect (and
                    ; #20710: origin
                    (at_b_p6)

                    ; #52896: origin
                    (not_at_b_p8)

                    ; #43565: <==negation-removal== 20710 (pos)
                    (not (not_at_b_p6))

                    ; #45620: <==negation-removal== 52896 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #52896: origin
                    (not_at_b_p8)

                    ; #78056: origin
                    (at_b_p7)

                    ; #23879: <==negation-removal== 78056 (pos)
                    (not (not_at_b_p7))

                    ; #45620: <==negation-removal== 52896 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8)
                           (not (leader_b)))
        :effect (and
                    ; #45620: origin
                    (at_b_p8)

                    ; #52896: origin
                    (not_at_b_p8)

                    ; #45620: <==negation-removal== 52896 (pos)
                    (not (at_b_p8))

                    ; #52896: <==negation-removal== 45620 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9)
                           (not (leader_b)))
        :effect (and
                    ; #52896: origin
                    (not_at_b_p8)

                    ; #85947: origin
                    (at_b_p9)

                    ; #23246: <==negation-removal== 85947 (pos)
                    (not (not_at_b_p9))

                    ; #45620: <==negation-removal== 52896 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #23246: origin
                    (not_at_b_p9)

                    ; #36878: origin
                    (at_b_p1)

                    ; #55290: <==negation-removal== 36878 (pos)
                    (not (not_at_b_p1))

                    ; #85947: <==negation-removal== 23246 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #23246: origin
                    (not_at_b_p9)

                    ; #35605: origin
                    (at_b_p2)

                    ; #67236: <==negation-removal== 35605 (pos)
                    (not (not_at_b_p2))

                    ; #85947: <==negation-removal== 23246 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3)
                           (not (leader_b)))
        :effect (and
                    ; #21064: origin
                    (at_b_p3)

                    ; #23246: origin
                    (not_at_b_p9)

                    ; #85947: <==negation-removal== 23246 (pos)
                    (not (at_b_p9))

                    ; #87751: <==negation-removal== 21064 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #19123: origin
                    (at_b_p4)

                    ; #23246: origin
                    (not_at_b_p9)

                    ; #41732: <==negation-removal== 19123 (pos)
                    (not (not_at_b_p4))

                    ; #85947: <==negation-removal== 23246 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #23246: origin
                    (not_at_b_p9)

                    ; #32757: origin
                    (at_b_p5)

                    ; #21815: <==negation-removal== 32757 (pos)
                    (not (not_at_b_p5))

                    ; #85947: <==negation-removal== 23246 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6)
                           (not (leader_b)))
        :effect (and
                    ; #20710: origin
                    (at_b_p6)

                    ; #23246: origin
                    (not_at_b_p9)

                    ; #43565: <==negation-removal== 20710 (pos)
                    (not (not_at_b_p6))

                    ; #85947: <==negation-removal== 23246 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #23246: origin
                    (not_at_b_p9)

                    ; #78056: origin
                    (at_b_p7)

                    ; #23879: <==negation-removal== 78056 (pos)
                    (not (not_at_b_p7))

                    ; #85947: <==negation-removal== 23246 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #23246: origin
                    (not_at_b_p9)

                    ; #45620: origin
                    (at_b_p8)

                    ; #52896: <==negation-removal== 45620 (pos)
                    (not (not_at_b_p8))

                    ; #85947: <==negation-removal== 23246 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9)
                           (not (leader_b)))
        :effect (and
                    ; #23246: origin
                    (not_at_b_p9)

                    ; #85947: origin
                    (at_b_p9)

                    ; #23246: <==negation-removal== 85947 (pos)
                    (not (not_at_b_p9))

                    ; #85947: <==negation-removal== 23246 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #79355: origin
                    (not_at_c_p1)

                    ; #84845: origin
                    (at_c_p1)

                    ; #79355: <==negation-removal== 84845 (pos)
                    (not (not_at_c_p1))

                    ; #84845: <==negation-removal== 79355 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #36237: origin
                    (at_c_p2)

                    ; #79355: origin
                    (not_at_c_p1)

                    ; #74395: <==negation-removal== 36237 (pos)
                    (not (not_at_c_p2))

                    ; #84845: <==negation-removal== 79355 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #36116: origin
                    (at_c_p3)

                    ; #79355: origin
                    (not_at_c_p1)

                    ; #14186: <==negation-removal== 36116 (pos)
                    (not (not_at_c_p3))

                    ; #84845: <==negation-removal== 79355 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #76032: origin
                    (at_c_p4)

                    ; #79355: origin
                    (not_at_c_p1)

                    ; #64519: <==negation-removal== 76032 (pos)
                    (not (not_at_c_p4))

                    ; #84845: <==negation-removal== 79355 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #58394: origin
                    (at_c_p5)

                    ; #79355: origin
                    (not_at_c_p1)

                    ; #40362: <==negation-removal== 58394 (pos)
                    (not (not_at_c_p5))

                    ; #84845: <==negation-removal== 79355 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10614: origin
                    (at_c_p6)

                    ; #79355: origin
                    (not_at_c_p1)

                    ; #82351: <==negation-removal== 10614 (pos)
                    (not (not_at_c_p6))

                    ; #84845: <==negation-removal== 79355 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #79355: origin
                    (not_at_c_p1)

                    ; #85027: origin
                    (at_c_p7)

                    ; #32835: <==negation-removal== 85027 (pos)
                    (not (not_at_c_p7))

                    ; #84845: <==negation-removal== 79355 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #35321: origin
                    (at_c_p8)

                    ; #79355: origin
                    (not_at_c_p1)

                    ; #29522: <==negation-removal== 35321 (pos)
                    (not (not_at_c_p8))

                    ; #84845: <==negation-removal== 79355 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #79355: origin
                    (not_at_c_p1)

                    ; #84039: origin
                    (at_c_p9)

                    ; #50254: <==negation-removal== 84039 (pos)
                    (not (not_at_c_p9))

                    ; #84845: <==negation-removal== 79355 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #74395: origin
                    (not_at_c_p2)

                    ; #84845: origin
                    (at_c_p1)

                    ; #36237: <==negation-removal== 74395 (pos)
                    (not (at_c_p2))

                    ; #79355: <==negation-removal== 84845 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #36237: origin
                    (at_c_p2)

                    ; #74395: origin
                    (not_at_c_p2)

                    ; #36237: <==negation-removal== 74395 (pos)
                    (not (at_c_p2))

                    ; #74395: <==negation-removal== 36237 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #36116: origin
                    (at_c_p3)

                    ; #74395: origin
                    (not_at_c_p2)

                    ; #14186: <==negation-removal== 36116 (pos)
                    (not (not_at_c_p3))

                    ; #36237: <==negation-removal== 74395 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4)
                           (not (leader_c)))
        :effect (and
                    ; #74395: origin
                    (not_at_c_p2)

                    ; #76032: origin
                    (at_c_p4)

                    ; #36237: <==negation-removal== 74395 (pos)
                    (not (at_c_p2))

                    ; #64519: <==negation-removal== 76032 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #58394: origin
                    (at_c_p5)

                    ; #74395: origin
                    (not_at_c_p2)

                    ; #36237: <==negation-removal== 74395 (pos)
                    (not (at_c_p2))

                    ; #40362: <==negation-removal== 58394 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10614: origin
                    (at_c_p6)

                    ; #74395: origin
                    (not_at_c_p2)

                    ; #36237: <==negation-removal== 74395 (pos)
                    (not (at_c_p2))

                    ; #82351: <==negation-removal== 10614 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #74395: origin
                    (not_at_c_p2)

                    ; #85027: origin
                    (at_c_p7)

                    ; #32835: <==negation-removal== 85027 (pos)
                    (not (not_at_c_p7))

                    ; #36237: <==negation-removal== 74395 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35321: origin
                    (at_c_p8)

                    ; #74395: origin
                    (not_at_c_p2)

                    ; #29522: <==negation-removal== 35321 (pos)
                    (not (not_at_c_p8))

                    ; #36237: <==negation-removal== 74395 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #74395: origin
                    (not_at_c_p2)

                    ; #84039: origin
                    (at_c_p9)

                    ; #36237: <==negation-removal== 74395 (pos)
                    (not (at_c_p2))

                    ; #50254: <==negation-removal== 84039 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14186: origin
                    (not_at_c_p3)

                    ; #84845: origin
                    (at_c_p1)

                    ; #36116: <==negation-removal== 14186 (pos)
                    (not (at_c_p3))

                    ; #79355: <==negation-removal== 84845 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14186: origin
                    (not_at_c_p3)

                    ; #36237: origin
                    (at_c_p2)

                    ; #36116: <==negation-removal== 14186 (pos)
                    (not (at_c_p3))

                    ; #74395: <==negation-removal== 36237 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14186: origin
                    (not_at_c_p3)

                    ; #36116: origin
                    (at_c_p3)

                    ; #14186: <==negation-removal== 36116 (pos)
                    (not (not_at_c_p3))

                    ; #36116: <==negation-removal== 14186 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #14186: origin
                    (not_at_c_p3)

                    ; #76032: origin
                    (at_c_p4)

                    ; #36116: <==negation-removal== 14186 (pos)
                    (not (at_c_p3))

                    ; #64519: <==negation-removal== 76032 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14186: origin
                    (not_at_c_p3)

                    ; #58394: origin
                    (at_c_p5)

                    ; #36116: <==negation-removal== 14186 (pos)
                    (not (at_c_p3))

                    ; #40362: <==negation-removal== 58394 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10614: origin
                    (at_c_p6)

                    ; #14186: origin
                    (not_at_c_p3)

                    ; #36116: <==negation-removal== 14186 (pos)
                    (not (at_c_p3))

                    ; #82351: <==negation-removal== 10614 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14186: origin
                    (not_at_c_p3)

                    ; #85027: origin
                    (at_c_p7)

                    ; #32835: <==negation-removal== 85027 (pos)
                    (not (not_at_c_p7))

                    ; #36116: <==negation-removal== 14186 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14186: origin
                    (not_at_c_p3)

                    ; #35321: origin
                    (at_c_p8)

                    ; #29522: <==negation-removal== 35321 (pos)
                    (not (not_at_c_p8))

                    ; #36116: <==negation-removal== 14186 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14186: origin
                    (not_at_c_p3)

                    ; #84039: origin
                    (at_c_p9)

                    ; #36116: <==negation-removal== 14186 (pos)
                    (not (at_c_p3))

                    ; #50254: <==negation-removal== 84039 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #64519: origin
                    (not_at_c_p4)

                    ; #84845: origin
                    (at_c_p1)

                    ; #76032: <==negation-removal== 64519 (pos)
                    (not (at_c_p4))

                    ; #79355: <==negation-removal== 84845 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #36237: origin
                    (at_c_p2)

                    ; #64519: origin
                    (not_at_c_p4)

                    ; #74395: <==negation-removal== 36237 (pos)
                    (not (not_at_c_p2))

                    ; #76032: <==negation-removal== 64519 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #36116: origin
                    (at_c_p3)

                    ; #64519: origin
                    (not_at_c_p4)

                    ; #14186: <==negation-removal== 36116 (pos)
                    (not (not_at_c_p3))

                    ; #76032: <==negation-removal== 64519 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #64519: origin
                    (not_at_c_p4)

                    ; #76032: origin
                    (at_c_p4)

                    ; #64519: <==negation-removal== 76032 (pos)
                    (not (not_at_c_p4))

                    ; #76032: <==negation-removal== 64519 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #58394: origin
                    (at_c_p5)

                    ; #64519: origin
                    (not_at_c_p4)

                    ; #40362: <==negation-removal== 58394 (pos)
                    (not (not_at_c_p5))

                    ; #76032: <==negation-removal== 64519 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #10614: origin
                    (at_c_p6)

                    ; #64519: origin
                    (not_at_c_p4)

                    ; #76032: <==negation-removal== 64519 (pos)
                    (not (at_c_p4))

                    ; #82351: <==negation-removal== 10614 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #64519: origin
                    (not_at_c_p4)

                    ; #85027: origin
                    (at_c_p7)

                    ; #32835: <==negation-removal== 85027 (pos)
                    (not (not_at_c_p7))

                    ; #76032: <==negation-removal== 64519 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #35321: origin
                    (at_c_p8)

                    ; #64519: origin
                    (not_at_c_p4)

                    ; #29522: <==negation-removal== 35321 (pos)
                    (not (not_at_c_p8))

                    ; #76032: <==negation-removal== 64519 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #64519: origin
                    (not_at_c_p4)

                    ; #84039: origin
                    (at_c_p9)

                    ; #50254: <==negation-removal== 84039 (pos)
                    (not (not_at_c_p9))

                    ; #76032: <==negation-removal== 64519 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #40362: origin
                    (not_at_c_p5)

                    ; #84845: origin
                    (at_c_p1)

                    ; #58394: <==negation-removal== 40362 (pos)
                    (not (at_c_p5))

                    ; #79355: <==negation-removal== 84845 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #36237: origin
                    (at_c_p2)

                    ; #40362: origin
                    (not_at_c_p5)

                    ; #58394: <==negation-removal== 40362 (pos)
                    (not (at_c_p5))

                    ; #74395: <==negation-removal== 36237 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #36116: origin
                    (at_c_p3)

                    ; #40362: origin
                    (not_at_c_p5)

                    ; #14186: <==negation-removal== 36116 (pos)
                    (not (not_at_c_p3))

                    ; #58394: <==negation-removal== 40362 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #40362: origin
                    (not_at_c_p5)

                    ; #76032: origin
                    (at_c_p4)

                    ; #58394: <==negation-removal== 40362 (pos)
                    (not (at_c_p5))

                    ; #64519: <==negation-removal== 76032 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #40362: origin
                    (not_at_c_p5)

                    ; #58394: origin
                    (at_c_p5)

                    ; #40362: <==negation-removal== 58394 (pos)
                    (not (not_at_c_p5))

                    ; #58394: <==negation-removal== 40362 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10614: origin
                    (at_c_p6)

                    ; #40362: origin
                    (not_at_c_p5)

                    ; #58394: <==negation-removal== 40362 (pos)
                    (not (at_c_p5))

                    ; #82351: <==negation-removal== 10614 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #40362: origin
                    (not_at_c_p5)

                    ; #85027: origin
                    (at_c_p7)

                    ; #32835: <==negation-removal== 85027 (pos)
                    (not (not_at_c_p7))

                    ; #58394: <==negation-removal== 40362 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #35321: origin
                    (at_c_p8)

                    ; #40362: origin
                    (not_at_c_p5)

                    ; #29522: <==negation-removal== 35321 (pos)
                    (not (not_at_c_p8))

                    ; #58394: <==negation-removal== 40362 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #40362: origin
                    (not_at_c_p5)

                    ; #84039: origin
                    (at_c_p9)

                    ; #50254: <==negation-removal== 84039 (pos)
                    (not (not_at_c_p9))

                    ; #58394: <==negation-removal== 40362 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1)
                           (not (leader_c)))
        :effect (and
                    ; #82351: origin
                    (not_at_c_p6)

                    ; #84845: origin
                    (at_c_p1)

                    ; #10614: <==negation-removal== 82351 (pos)
                    (not (at_c_p6))

                    ; #79355: <==negation-removal== 84845 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #36237: origin
                    (at_c_p2)

                    ; #82351: origin
                    (not_at_c_p6)

                    ; #10614: <==negation-removal== 82351 (pos)
                    (not (at_c_p6))

                    ; #74395: <==negation-removal== 36237 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #36116: origin
                    (at_c_p3)

                    ; #82351: origin
                    (not_at_c_p6)

                    ; #10614: <==negation-removal== 82351 (pos)
                    (not (at_c_p6))

                    ; #14186: <==negation-removal== 36116 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #76032: origin
                    (at_c_p4)

                    ; #82351: origin
                    (not_at_c_p6)

                    ; #10614: <==negation-removal== 82351 (pos)
                    (not (at_c_p6))

                    ; #64519: <==negation-removal== 76032 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #58394: origin
                    (at_c_p5)

                    ; #82351: origin
                    (not_at_c_p6)

                    ; #10614: <==negation-removal== 82351 (pos)
                    (not (at_c_p6))

                    ; #40362: <==negation-removal== 58394 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10614: origin
                    (at_c_p6)

                    ; #82351: origin
                    (not_at_c_p6)

                    ; #10614: <==negation-removal== 82351 (pos)
                    (not (at_c_p6))

                    ; #82351: <==negation-removal== 10614 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #82351: origin
                    (not_at_c_p6)

                    ; #85027: origin
                    (at_c_p7)

                    ; #10614: <==negation-removal== 82351 (pos)
                    (not (at_c_p6))

                    ; #32835: <==negation-removal== 85027 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35321: origin
                    (at_c_p8)

                    ; #82351: origin
                    (not_at_c_p6)

                    ; #10614: <==negation-removal== 82351 (pos)
                    (not (at_c_p6))

                    ; #29522: <==negation-removal== 35321 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #82351: origin
                    (not_at_c_p6)

                    ; #84039: origin
                    (at_c_p9)

                    ; #10614: <==negation-removal== 82351 (pos)
                    (not (at_c_p6))

                    ; #50254: <==negation-removal== 84039 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1)
                           (not (leader_c)))
        :effect (and
                    ; #32835: origin
                    (not_at_c_p7)

                    ; #84845: origin
                    (at_c_p1)

                    ; #79355: <==negation-removal== 84845 (pos)
                    (not (not_at_c_p1))

                    ; #85027: <==negation-removal== 32835 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32835: origin
                    (not_at_c_p7)

                    ; #36237: origin
                    (at_c_p2)

                    ; #74395: <==negation-removal== 36237 (pos)
                    (not (not_at_c_p2))

                    ; #85027: <==negation-removal== 32835 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32835: origin
                    (not_at_c_p7)

                    ; #36116: origin
                    (at_c_p3)

                    ; #14186: <==negation-removal== 36116 (pos)
                    (not (not_at_c_p3))

                    ; #85027: <==negation-removal== 32835 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32835: origin
                    (not_at_c_p7)

                    ; #76032: origin
                    (at_c_p4)

                    ; #64519: <==negation-removal== 76032 (pos)
                    (not (not_at_c_p4))

                    ; #85027: <==negation-removal== 32835 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32835: origin
                    (not_at_c_p7)

                    ; #58394: origin
                    (at_c_p5)

                    ; #40362: <==negation-removal== 58394 (pos)
                    (not (not_at_c_p5))

                    ; #85027: <==negation-removal== 32835 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10614: origin
                    (at_c_p6)

                    ; #32835: origin
                    (not_at_c_p7)

                    ; #82351: <==negation-removal== 10614 (pos)
                    (not (not_at_c_p6))

                    ; #85027: <==negation-removal== 32835 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32835: origin
                    (not_at_c_p7)

                    ; #85027: origin
                    (at_c_p7)

                    ; #32835: <==negation-removal== 85027 (pos)
                    (not (not_at_c_p7))

                    ; #85027: <==negation-removal== 32835 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32835: origin
                    (not_at_c_p7)

                    ; #35321: origin
                    (at_c_p8)

                    ; #29522: <==negation-removal== 35321 (pos)
                    (not (not_at_c_p8))

                    ; #85027: <==negation-removal== 32835 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9)
                           (not (leader_c)))
        :effect (and
                    ; #32835: origin
                    (not_at_c_p7)

                    ; #84039: origin
                    (at_c_p9)

                    ; #50254: <==negation-removal== 84039 (pos)
                    (not (not_at_c_p9))

                    ; #85027: <==negation-removal== 32835 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29522: origin
                    (not_at_c_p8)

                    ; #84845: origin
                    (at_c_p1)

                    ; #35321: <==negation-removal== 29522 (pos)
                    (not (at_c_p8))

                    ; #79355: <==negation-removal== 84845 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29522: origin
                    (not_at_c_p8)

                    ; #36237: origin
                    (at_c_p2)

                    ; #35321: <==negation-removal== 29522 (pos)
                    (not (at_c_p8))

                    ; #74395: <==negation-removal== 36237 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29522: origin
                    (not_at_c_p8)

                    ; #36116: origin
                    (at_c_p3)

                    ; #14186: <==negation-removal== 36116 (pos)
                    (not (not_at_c_p3))

                    ; #35321: <==negation-removal== 29522 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29522: origin
                    (not_at_c_p8)

                    ; #76032: origin
                    (at_c_p4)

                    ; #35321: <==negation-removal== 29522 (pos)
                    (not (at_c_p8))

                    ; #64519: <==negation-removal== 76032 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29522: origin
                    (not_at_c_p8)

                    ; #58394: origin
                    (at_c_p5)

                    ; #35321: <==negation-removal== 29522 (pos)
                    (not (at_c_p8))

                    ; #40362: <==negation-removal== 58394 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10614: origin
                    (at_c_p6)

                    ; #29522: origin
                    (not_at_c_p8)

                    ; #35321: <==negation-removal== 29522 (pos)
                    (not (at_c_p8))

                    ; #82351: <==negation-removal== 10614 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29522: origin
                    (not_at_c_p8)

                    ; #85027: origin
                    (at_c_p7)

                    ; #32835: <==negation-removal== 85027 (pos)
                    (not (not_at_c_p7))

                    ; #35321: <==negation-removal== 29522 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29522: origin
                    (not_at_c_p8)

                    ; #35321: origin
                    (at_c_p8)

                    ; #29522: <==negation-removal== 35321 (pos)
                    (not (not_at_c_p8))

                    ; #35321: <==negation-removal== 29522 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29522: origin
                    (not_at_c_p8)

                    ; #84039: origin
                    (at_c_p9)

                    ; #35321: <==negation-removal== 29522 (pos)
                    (not (at_c_p8))

                    ; #50254: <==negation-removal== 84039 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #50254: origin
                    (not_at_c_p9)

                    ; #84845: origin
                    (at_c_p1)

                    ; #79355: <==negation-removal== 84845 (pos)
                    (not (not_at_c_p1))

                    ; #84039: <==negation-removal== 50254 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #36237: origin
                    (at_c_p2)

                    ; #50254: origin
                    (not_at_c_p9)

                    ; #74395: <==negation-removal== 36237 (pos)
                    (not (not_at_c_p2))

                    ; #84039: <==negation-removal== 50254 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #36116: origin
                    (at_c_p3)

                    ; #50254: origin
                    (not_at_c_p9)

                    ; #14186: <==negation-removal== 36116 (pos)
                    (not (not_at_c_p3))

                    ; #84039: <==negation-removal== 50254 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #50254: origin
                    (not_at_c_p9)

                    ; #76032: origin
                    (at_c_p4)

                    ; #64519: <==negation-removal== 76032 (pos)
                    (not (not_at_c_p4))

                    ; #84039: <==negation-removal== 50254 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50254: origin
                    (not_at_c_p9)

                    ; #58394: origin
                    (at_c_p5)

                    ; #40362: <==negation-removal== 58394 (pos)
                    (not (not_at_c_p5))

                    ; #84039: <==negation-removal== 50254 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10614: origin
                    (at_c_p6)

                    ; #50254: origin
                    (not_at_c_p9)

                    ; #82351: <==negation-removal== 10614 (pos)
                    (not (not_at_c_p6))

                    ; #84039: <==negation-removal== 50254 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50254: origin
                    (not_at_c_p9)

                    ; #85027: origin
                    (at_c_p7)

                    ; #32835: <==negation-removal== 85027 (pos)
                    (not (not_at_c_p7))

                    ; #84039: <==negation-removal== 50254 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35321: origin
                    (at_c_p8)

                    ; #50254: origin
                    (not_at_c_p9)

                    ; #29522: <==negation-removal== 35321 (pos)
                    (not (not_at_c_p8))

                    ; #84039: <==negation-removal== 50254 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #50254: origin
                    (not_at_c_p9)

                    ; #84039: origin
                    (at_c_p9)

                    ; #50254: <==negation-removal== 84039 (pos)
                    (not (not_at_c_p9))

                    ; #84039: <==negation-removal== 50254 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #13119: <==commonly_known== 16246 (pos)
                    (Ba_checked_p1)

                    ; #16246: origin
                    (checked_p1)

                    ; #26244: <==commonly_known== 21615 (neg)
                    (Pb_checked_p1)

                    ; #28391: <==closure== 34966 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #34966: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #38073: <==closure== 85839 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #43294: <==commonly_known== 21615 (neg)
                    (Pa_checked_p1)

                    ; #45595: <==commonly_known== 21615 (neg)
                    (Pc_checked_p1)

                    ; #50146: <==commonly_known== 16246 (pos)
                    (Bc_checked_p1)

                    ; #72518: <==commonly_known== 16246 (pos)
                    (Bb_checked_p1)

                    ; #85839: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #21615: <==negation-removal== 16246 (pos)
                    (not (not_checked_p1))

                    ; #24485: <==negation-removal== 38073 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #31364: <==uncertain_firing== 28391 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #37642: <==negation-removal== 72518 (pos)
                    (not (Pb_not_checked_p1))

                    ; #38739: <==negation-removal== 45595 (pos)
                    (not (Bc_not_checked_p1))

                    ; #41484: <==negation-removal== 85839 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #54005: <==negation-removal== 34966 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #62326: <==uncertain_firing== 38073 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65247: <==negation-removal== 43294 (pos)
                    (not (Ba_not_checked_p1))

                    ; #70115: <==negation-removal== 28391 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #73422: <==negation-removal== 50146 (pos)
                    (not (Pc_not_checked_p1))

                    ; #78251: <==negation-removal== 26244 (pos)
                    (not (Bb_not_checked_p1))

                    ; #82461: <==uncertain_firing== 34966 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #84922: <==negation-removal== 13119 (pos)
                    (not (Pa_not_checked_p1))

                    ; #85620: <==uncertain_firing== 85839 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #10650: <==commonly_known== 20354 (pos)
                    (Ba_checked_p2)

                    ; #20354: origin
                    (checked_p2)

                    ; #52030: <==commonly_known== 66113 (neg)
                    (Pa_checked_p2)

                    ; #53383: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #68310: <==commonly_known== 66113 (neg)
                    (Pc_checked_p2)

                    ; #69085: <==commonly_known== 20354 (pos)
                    (Bc_checked_p2)

                    ; #71366: <==commonly_known== 66113 (neg)
                    (Pb_checked_p2)

                    ; #75106: <==closure== 87744 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #80191: <==closure== 53383 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #87744: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #89176: <==commonly_known== 20354 (pos)
                    (Bb_checked_p2)

                    ; #10616: <==negation-removal== 53383 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #10781: <==negation-removal== 52030 (pos)
                    (not (Ba_not_checked_p2))

                    ; #19348: <==uncertain_firing== 53383 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #23910: <==negation-removal== 75106 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #26620: <==negation-removal== 80191 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #51077: <==uncertain_firing== 75106 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #63973: <==uncertain_firing== 80191 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #65170: <==negation-removal== 69085 (pos)
                    (not (Pc_not_checked_p2))

                    ; #66113: <==negation-removal== 20354 (pos)
                    (not (not_checked_p2))

                    ; #70645: <==negation-removal== 68310 (pos)
                    (not (Bc_not_checked_p2))

                    ; #70994: <==negation-removal== 87744 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #73101: <==negation-removal== 10650 (pos)
                    (not (Pa_not_checked_p2))

                    ; #77823: <==negation-removal== 71366 (pos)
                    (not (Bb_not_checked_p2))

                    ; #81836: <==negation-removal== 89176 (pos)
                    (not (Pb_not_checked_p2))

                    ; #83527: <==uncertain_firing== 87744 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #16115: <==commonly_known== 14537 (neg)
                    (Pb_checked_p3)

                    ; #17471: <==commonly_known== 31643 (pos)
                    (Ba_checked_p3)

                    ; #24193: <==closure== 81959 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #24432: <==commonly_known== 31643 (pos)
                    (Bc_checked_p3)

                    ; #31643: origin
                    (checked_p3)

                    ; #46137: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #51032: <==commonly_known== 14537 (neg)
                    (Pa_checked_p3)

                    ; #61380: <==commonly_known== 14537 (neg)
                    (Pc_checked_p3)

                    ; #74646: <==closure== 46137 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #79794: <==commonly_known== 31643 (pos)
                    (Bb_checked_p3)

                    ; #81959: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #10243: <==negation-removal== 24432 (pos)
                    (not (Pc_not_checked_p3))

                    ; #13432: <==negation-removal== 17471 (pos)
                    (not (Pa_not_checked_p3))

                    ; #14537: <==negation-removal== 31643 (pos)
                    (not (not_checked_p3))

                    ; #35918: <==negation-removal== 46137 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #38829: <==negation-removal== 61380 (pos)
                    (not (Bc_not_checked_p3))

                    ; #44890: <==negation-removal== 79794 (pos)
                    (not (Pb_not_checked_p3))

                    ; #47625: <==uncertain_firing== 24193 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #50731: <==negation-removal== 16115 (pos)
                    (not (Bb_not_checked_p3))

                    ; #59324: <==uncertain_firing== 81959 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #61952: <==uncertain_firing== 46137 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #62562: <==negation-removal== 24193 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #65209: <==negation-removal== 81959 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #66378: <==negation-removal== 74646 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #70794: <==negation-removal== 51032 (pos)
                    (not (Ba_not_checked_p3))

                    ; #74198: <==uncertain_firing== 74646 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10350: <==commonly_known== 61422 (neg)
                    (Pa_checked_p4)

                    ; #23316: <==commonly_known== 61422 (neg)
                    (Pc_checked_p4)

                    ; #29807: <==closure== 48233 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #43203: origin
                    (checked_p4)

                    ; #43998: <==closure== 44528 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #44528: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #48233: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #52485: <==commonly_known== 61422 (neg)
                    (Pb_checked_p4)

                    ; #80277: <==commonly_known== 43203 (pos)
                    (Bb_checked_p4)

                    ; #87034: <==commonly_known== 43203 (pos)
                    (Ba_checked_p4)

                    ; #93218: <==commonly_known== 43203 (pos)
                    (Bc_checked_p4)

                    ; #10238: <==negation-removal== 93218 (pos)
                    (not (Pc_not_checked_p4))

                    ; #15735: <==negation-removal== 43998 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #18090: <==uncertain_firing== 43998 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #20131: <==negation-removal== 29807 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #22378: <==negation-removal== 80277 (pos)
                    (not (Pb_not_checked_p4))

                    ; #23625: <==negation-removal== 48233 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #34128: <==negation-removal== 87034 (pos)
                    (not (Pa_not_checked_p4))

                    ; #38855: <==negation-removal== 52485 (pos)
                    (not (Bb_not_checked_p4))

                    ; #41598: <==uncertain_firing== 29807 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #48382: <==negation-removal== 44528 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #49468: <==uncertain_firing== 44528 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #53094: <==negation-removal== 23316 (pos)
                    (not (Bc_not_checked_p4))

                    ; #61422: <==negation-removal== 43203 (pos)
                    (not (not_checked_p4))

                    ; #77401: <==negation-removal== 10350 (pos)
                    (not (Ba_not_checked_p4))

                    ; #91806: <==uncertain_firing== 48233 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #20312: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #21165: origin
                    (checked_p5)

                    ; #22776: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #28871: <==commonly_known== 21165 (pos)
                    (Bc_checked_p5)

                    ; #31949: <==closure== 22776 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #32292: <==commonly_known== 21165 (pos)
                    (Ba_checked_p5)

                    ; #32873: <==commonly_known== 39131 (neg)
                    (Pc_checked_p5)

                    ; #33322: <==commonly_known== 39131 (neg)
                    (Pa_checked_p5)

                    ; #46243: <==commonly_known== 39131 (neg)
                    (Pb_checked_p5)

                    ; #53420: <==closure== 20312 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #78828: <==commonly_known== 21165 (pos)
                    (Bb_checked_p5)

                    ; #14794: <==negation-removal== 78828 (pos)
                    (not (Pb_not_checked_p5))

                    ; #21648: <==uncertain_firing== 20312 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #25508: <==uncertain_firing== 31949 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #28361: <==negation-removal== 28871 (pos)
                    (not (Pc_not_checked_p5))

                    ; #30817: <==uncertain_firing== 53420 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #39131: <==negation-removal== 21165 (pos)
                    (not (not_checked_p5))

                    ; #45913: <==negation-removal== 53420 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #52990: <==uncertain_firing== 22776 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #60475: <==negation-removal== 20312 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #61190: <==negation-removal== 33322 (pos)
                    (not (Ba_not_checked_p5))

                    ; #66377: <==negation-removal== 22776 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #67493: <==negation-removal== 31949 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #81996: <==negation-removal== 32292 (pos)
                    (not (Pa_not_checked_p5))

                    ; #85407: <==negation-removal== 46243 (pos)
                    (not (Bb_not_checked_p5))

                    ; #85983: <==negation-removal== 32873 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #10196: <==commonly_known== 68730 (neg)
                    (Pa_checked_p6)

                    ; #16008: <==closure== 40700 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #36233: <==commonly_known== 61656 (pos)
                    (Ba_checked_p6)

                    ; #40700: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #46267: <==commonly_known== 61656 (pos)
                    (Bb_checked_p6)

                    ; #54981: <==commonly_known== 61656 (pos)
                    (Bc_checked_p6)

                    ; #61656: origin
                    (checked_p6)

                    ; #74711: <==commonly_known== 68730 (neg)
                    (Pb_checked_p6)

                    ; #85505: <==closure== 88651 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #88651: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #95786: <==commonly_known== 68730 (neg)
                    (Pc_checked_p6)

                    ; #30818: <==negation-removal== 74711 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37806: <==negation-removal== 36233 (pos)
                    (not (Pa_not_checked_p6))

                    ; #39472: <==uncertain_firing== 40700 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #45279: <==negation-removal== 16008 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #50593: <==negation-removal== 46267 (pos)
                    (not (Pb_not_checked_p6))

                    ; #65259: <==negation-removal== 85505 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #65343: <==negation-removal== 54981 (pos)
                    (not (Pc_not_checked_p6))

                    ; #66219: <==negation-removal== 10196 (pos)
                    (not (Ba_not_checked_p6))

                    ; #66826: <==uncertain_firing== 85505 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #68730: <==negation-removal== 61656 (pos)
                    (not (not_checked_p6))

                    ; #69304: <==negation-removal== 40700 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #71473: <==uncertain_firing== 16008 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #80064: <==negation-removal== 95786 (pos)
                    (not (Bc_not_checked_p6))

                    ; #89967: <==negation-removal== 88651 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #92160: <==uncertain_firing== 88651 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #22908: origin
                    (checked_p7)

                    ; #26120: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #37972: <==commonly_known== 67034 (neg)
                    (Pa_checked_p7)

                    ; #39774: <==commonly_known== 22908 (pos)
                    (Ba_checked_p7)

                    ; #45540: <==commonly_known== 67034 (neg)
                    (Pb_checked_p7)

                    ; #46911: <==commonly_known== 22908 (pos)
                    (Bc_checked_p7)

                    ; #51115: <==closure== 26120 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #51565: <==closure== 79954 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #59761: <==commonly_known== 67034 (neg)
                    (Pc_checked_p7)

                    ; #79954: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #89886: <==commonly_known== 22908 (pos)
                    (Bb_checked_p7)

                    ; #10498: <==negation-removal== 46911 (pos)
                    (not (Pc_not_checked_p7))

                    ; #23046: <==negation-removal== 79954 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #27574: <==negation-removal== 26120 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #29611: <==negation-removal== 37972 (pos)
                    (not (Ba_not_checked_p7))

                    ; #40875: <==negation-removal== 89886 (pos)
                    (not (Pb_not_checked_p7))

                    ; #43693: <==negation-removal== 51565 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #47245: <==negation-removal== 51115 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #48567: <==negation-removal== 45540 (pos)
                    (not (Bb_not_checked_p7))

                    ; #62069: <==uncertain_firing== 79954 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #65033: <==uncertain_firing== 51115 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #67034: <==negation-removal== 22908 (pos)
                    (not (not_checked_p7))

                    ; #69956: <==uncertain_firing== 51565 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #70873: <==negation-removal== 59761 (pos)
                    (not (Bc_not_checked_p7))

                    ; #81942: <==uncertain_firing== 26120 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #82493: <==negation-removal== 39774 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #25393: <==closure== 54708 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #35247: <==commonly_known== 66681 (neg)
                    (Pc_checked_p8)

                    ; #38798: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #52162: <==commonly_known== 66681 (neg)
                    (Pa_checked_p8)

                    ; #54708: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #55258: <==commonly_known== 72774 (pos)
                    (Bc_checked_p8)

                    ; #57706: <==closure== 38798 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #64449: <==commonly_known== 66681 (neg)
                    (Pb_checked_p8)

                    ; #72774: origin
                    (checked_p8)

                    ; #80388: <==commonly_known== 72774 (pos)
                    (Bb_checked_p8)

                    ; #88503: <==commonly_known== 72774 (pos)
                    (Ba_checked_p8)

                    ; #15210: <==uncertain_firing== 38798 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #25289: <==negation-removal== 88503 (pos)
                    (not (Pa_not_checked_p8))

                    ; #27099: <==negation-removal== 38798 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #37733: <==uncertain_firing== 25393 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #39638: <==negation-removal== 25393 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #39914: <==negation-removal== 57706 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #43031: <==negation-removal== 55258 (pos)
                    (not (Pc_not_checked_p8))

                    ; #56455: <==negation-removal== 80388 (pos)
                    (not (Pb_not_checked_p8))

                    ; #57025: <==negation-removal== 35247 (pos)
                    (not (Bc_not_checked_p8))

                    ; #59147: <==uncertain_firing== 57706 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #66681: <==negation-removal== 72774 (pos)
                    (not (not_checked_p8))

                    ; #76068: <==negation-removal== 52162 (pos)
                    (not (Ba_not_checked_p8))

                    ; #79365: <==uncertain_firing== 54708 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #83131: <==negation-removal== 64449 (pos)
                    (not (Bb_not_checked_p8))

                    ; #85341: <==negation-removal== 54708 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12364: <==commonly_known== 37474 (neg)
                    (Pa_checked_p9)

                    ; #21714: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #33870: <==commonly_known== 40400 (pos)
                    (Bb_checked_p9)

                    ; #36926: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #40026: <==closure== 21714 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #40400: origin
                    (checked_p9)

                    ; #46475: <==commonly_known== 40400 (pos)
                    (Ba_checked_p9)

                    ; #70812: <==commonly_known== 40400 (pos)
                    (Bc_checked_p9)

                    ; #73817: <==closure== 36926 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #76693: <==commonly_known== 37474 (neg)
                    (Pc_checked_p9)

                    ; #84124: <==commonly_known== 37474 (neg)
                    (Pb_checked_p9)

                    ; #12149: <==uncertain_firing== 40026 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #15578: <==negation-removal== 40026 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #18219: <==negation-removal== 33870 (pos)
                    (not (Pb_not_checked_p9))

                    ; #24379: <==negation-removal== 46475 (pos)
                    (not (Pa_not_checked_p9))

                    ; #30484: <==uncertain_firing== 73817 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #37474: <==negation-removal== 40400 (pos)
                    (not (not_checked_p9))

                    ; #42668: <==negation-removal== 73817 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #43437: <==negation-removal== 12364 (pos)
                    (not (Ba_not_checked_p9))

                    ; #47470: <==negation-removal== 36926 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #65199: <==negation-removal== 76693 (pos)
                    (not (Bc_not_checked_p9))

                    ; #70319: <==negation-removal== 21714 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #70369: <==negation-removal== 70812 (pos)
                    (not (Pc_not_checked_p9))

                    ; #71627: <==uncertain_firing== 36926 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #75850: <==negation-removal== 84124 (pos)
                    (not (Bb_not_checked_p9))

                    ; #89208: <==uncertain_firing== 21714 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13119: <==commonly_known== 16246 (pos)
                    (Ba_checked_p1)

                    ; #16246: origin
                    (checked_p1)

                    ; #26244: <==commonly_known== 21615 (neg)
                    (Pb_checked_p1)

                    ; #38766: <==closure== 84452 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #43294: <==commonly_known== 21615 (neg)
                    (Pa_checked_p1)

                    ; #45595: <==commonly_known== 21615 (neg)
                    (Pc_checked_p1)

                    ; #50146: <==commonly_known== 16246 (pos)
                    (Bc_checked_p1)

                    ; #61059: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #72518: <==commonly_known== 16246 (pos)
                    (Bb_checked_p1)

                    ; #84452: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #84593: <==closure== 61059 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #21615: <==negation-removal== 16246 (pos)
                    (not (not_checked_p1))

                    ; #24438: <==uncertain_firing== 38766 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #31932: <==negation-removal== 38766 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #34985: <==uncertain_firing== 84452 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #37642: <==negation-removal== 72518 (pos)
                    (not (Pb_not_checked_p1))

                    ; #38739: <==negation-removal== 45595 (pos)
                    (not (Bc_not_checked_p1))

                    ; #43605: <==negation-removal== 61059 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #53939: <==uncertain_firing== 84593 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #58044: <==negation-removal== 84452 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #65247: <==negation-removal== 43294 (pos)
                    (not (Ba_not_checked_p1))

                    ; #73422: <==negation-removal== 50146 (pos)
                    (not (Pc_not_checked_p1))

                    ; #78251: <==negation-removal== 26244 (pos)
                    (not (Bb_not_checked_p1))

                    ; #79105: <==uncertain_firing== 61059 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #84465: <==negation-removal== 84593 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84922: <==negation-removal== 13119 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #10521: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #10650: <==commonly_known== 20354 (pos)
                    (Ba_checked_p2)

                    ; #20354: origin
                    (checked_p2)

                    ; #28798: <==closure== 54303 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #52030: <==commonly_known== 66113 (neg)
                    (Pa_checked_p2)

                    ; #54303: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #67002: <==closure== 10521 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #68310: <==commonly_known== 66113 (neg)
                    (Pc_checked_p2)

                    ; #69085: <==commonly_known== 20354 (pos)
                    (Bc_checked_p2)

                    ; #71366: <==commonly_known== 66113 (neg)
                    (Pb_checked_p2)

                    ; #89176: <==commonly_known== 20354 (pos)
                    (Bb_checked_p2)

                    ; #10781: <==negation-removal== 52030 (pos)
                    (not (Ba_not_checked_p2))

                    ; #12589: <==negation-removal== 67002 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #26268: <==negation-removal== 10521 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #38728: <==uncertain_firing== 10521 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #42937: <==negation-removal== 28798 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #48128: <==uncertain_firing== 54303 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #65170: <==negation-removal== 69085 (pos)
                    (not (Pc_not_checked_p2))

                    ; #66113: <==negation-removal== 20354 (pos)
                    (not (not_checked_p2))

                    ; #68882: <==negation-removal== 54303 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #70645: <==negation-removal== 68310 (pos)
                    (not (Bc_not_checked_p2))

                    ; #73101: <==negation-removal== 10650 (pos)
                    (not (Pa_not_checked_p2))

                    ; #77319: <==uncertain_firing== 67002 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #77823: <==negation-removal== 71366 (pos)
                    (not (Bb_not_checked_p2))

                    ; #78318: <==uncertain_firing== 28798 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #81836: <==negation-removal== 89176 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #16115: <==commonly_known== 14537 (neg)
                    (Pb_checked_p3)

                    ; #17471: <==commonly_known== 31643 (pos)
                    (Ba_checked_p3)

                    ; #18126: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #24432: <==commonly_known== 31643 (pos)
                    (Bc_checked_p3)

                    ; #31643: origin
                    (checked_p3)

                    ; #51032: <==commonly_known== 14537 (neg)
                    (Pa_checked_p3)

                    ; #61380: <==commonly_known== 14537 (neg)
                    (Pc_checked_p3)

                    ; #73292: <==closure== 18126 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #75478: <==closure== 85959 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #79794: <==commonly_known== 31643 (pos)
                    (Bb_checked_p3)

                    ; #85959: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #10243: <==negation-removal== 24432 (pos)
                    (not (Pc_not_checked_p3))

                    ; #13432: <==negation-removal== 17471 (pos)
                    (not (Pa_not_checked_p3))

                    ; #14537: <==negation-removal== 31643 (pos)
                    (not (not_checked_p3))

                    ; #15780: <==negation-removal== 85959 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #38829: <==negation-removal== 61380 (pos)
                    (not (Bc_not_checked_p3))

                    ; #44890: <==negation-removal== 79794 (pos)
                    (not (Pb_not_checked_p3))

                    ; #50731: <==negation-removal== 16115 (pos)
                    (not (Bb_not_checked_p3))

                    ; #53417: <==negation-removal== 73292 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #57491: <==uncertain_firing== 75478 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #64000: <==uncertain_firing== 73292 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #64128: <==negation-removal== 75478 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #70794: <==negation-removal== 51032 (pos)
                    (not (Ba_not_checked_p3))

                    ; #72207: <==uncertain_firing== 85959 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #77762: <==uncertain_firing== 18126 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #82384: <==negation-removal== 18126 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #10022: <==closure== 79927 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #10350: <==commonly_known== 61422 (neg)
                    (Pa_checked_p4)

                    ; #15051: <==closure== 80056 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #23316: <==commonly_known== 61422 (neg)
                    (Pc_checked_p4)

                    ; #43203: origin
                    (checked_p4)

                    ; #52485: <==commonly_known== 61422 (neg)
                    (Pb_checked_p4)

                    ; #79927: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #80056: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #80277: <==commonly_known== 43203 (pos)
                    (Bb_checked_p4)

                    ; #87034: <==commonly_known== 43203 (pos)
                    (Ba_checked_p4)

                    ; #93218: <==commonly_known== 43203 (pos)
                    (Bc_checked_p4)

                    ; #10238: <==negation-removal== 93218 (pos)
                    (not (Pc_not_checked_p4))

                    ; #16737: <==uncertain_firing== 80056 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #22378: <==negation-removal== 80277 (pos)
                    (not (Pb_not_checked_p4))

                    ; #32516: <==negation-removal== 80056 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #34128: <==negation-removal== 87034 (pos)
                    (not (Pa_not_checked_p4))

                    ; #35721: <==uncertain_firing== 10022 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #38855: <==negation-removal== 52485 (pos)
                    (not (Bb_not_checked_p4))

                    ; #50182: <==negation-removal== 10022 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #53094: <==negation-removal== 23316 (pos)
                    (not (Bc_not_checked_p4))

                    ; #53589: <==uncertain_firing== 15051 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #61422: <==negation-removal== 43203 (pos)
                    (not (not_checked_p4))

                    ; #62756: <==negation-removal== 79927 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #72019: <==uncertain_firing== 79927 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #76433: <==negation-removal== 15051 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #77401: <==negation-removal== 10350 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #11824: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #21165: origin
                    (checked_p5)

                    ; #28871: <==commonly_known== 21165 (pos)
                    (Bc_checked_p5)

                    ; #32292: <==commonly_known== 21165 (pos)
                    (Ba_checked_p5)

                    ; #32873: <==commonly_known== 39131 (neg)
                    (Pc_checked_p5)

                    ; #33322: <==commonly_known== 39131 (neg)
                    (Pa_checked_p5)

                    ; #46243: <==commonly_known== 39131 (neg)
                    (Pb_checked_p5)

                    ; #51201: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #61816: <==closure== 11824 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #78828: <==commonly_known== 21165 (pos)
                    (Bb_checked_p5)

                    ; #80984: <==closure== 51201 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #11584: <==negation-removal== 51201 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #14794: <==negation-removal== 78828 (pos)
                    (not (Pb_not_checked_p5))

                    ; #18720: <==negation-removal== 80984 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #25253: <==uncertain_firing== 51201 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #28361: <==negation-removal== 28871 (pos)
                    (not (Pc_not_checked_p5))

                    ; #39131: <==negation-removal== 21165 (pos)
                    (not (not_checked_p5))

                    ; #52917: <==negation-removal== 11824 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #58066: <==uncertain_firing== 11824 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #61190: <==negation-removal== 33322 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81996: <==negation-removal== 32292 (pos)
                    (not (Pa_not_checked_p5))

                    ; #84595: <==uncertain_firing== 80984 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #85407: <==negation-removal== 46243 (pos)
                    (not (Bb_not_checked_p5))

                    ; #85983: <==negation-removal== 32873 (pos)
                    (not (Bc_not_checked_p5))

                    ; #86978: <==uncertain_firing== 61816 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #87739: <==negation-removal== 61816 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #10196: <==commonly_known== 68730 (neg)
                    (Pa_checked_p6)

                    ; #15991: <==closure== 64814 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #25566: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #35128: <==closure== 25566 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #36233: <==commonly_known== 61656 (pos)
                    (Ba_checked_p6)

                    ; #46267: <==commonly_known== 61656 (pos)
                    (Bb_checked_p6)

                    ; #54981: <==commonly_known== 61656 (pos)
                    (Bc_checked_p6)

                    ; #61656: origin
                    (checked_p6)

                    ; #64814: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #74711: <==commonly_known== 68730 (neg)
                    (Pb_checked_p6)

                    ; #95786: <==commonly_known== 68730 (neg)
                    (Pc_checked_p6)

                    ; #15213: <==negation-removal== 64814 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #17339: <==uncertain_firing== 35128 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #18896: <==negation-removal== 35128 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #30818: <==negation-removal== 74711 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37806: <==negation-removal== 36233 (pos)
                    (not (Pa_not_checked_p6))

                    ; #47574: <==negation-removal== 25566 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #50593: <==negation-removal== 46267 (pos)
                    (not (Pb_not_checked_p6))

                    ; #53024: <==negation-removal== 15991 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #65343: <==negation-removal== 54981 (pos)
                    (not (Pc_not_checked_p6))

                    ; #66219: <==negation-removal== 10196 (pos)
                    (not (Ba_not_checked_p6))

                    ; #67999: <==uncertain_firing== 15991 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #68730: <==negation-removal== 61656 (pos)
                    (not (not_checked_p6))

                    ; #78818: <==uncertain_firing== 64814 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #79326: <==uncertain_firing== 25566 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #80064: <==negation-removal== 95786 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15120: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #15575: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #22908: origin
                    (checked_p7)

                    ; #37972: <==commonly_known== 67034 (neg)
                    (Pa_checked_p7)

                    ; #39774: <==commonly_known== 22908 (pos)
                    (Ba_checked_p7)

                    ; #45540: <==commonly_known== 67034 (neg)
                    (Pb_checked_p7)

                    ; #46911: <==commonly_known== 22908 (pos)
                    (Bc_checked_p7)

                    ; #55159: <==closure== 15575 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #59761: <==commonly_known== 67034 (neg)
                    (Pc_checked_p7)

                    ; #80663: <==closure== 15120 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #89886: <==commonly_known== 22908 (pos)
                    (Bb_checked_p7)

                    ; #10498: <==negation-removal== 46911 (pos)
                    (not (Pc_not_checked_p7))

                    ; #12456: <==uncertain_firing== 80663 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #29611: <==negation-removal== 37972 (pos)
                    (not (Ba_not_checked_p7))

                    ; #40875: <==negation-removal== 89886 (pos)
                    (not (Pb_not_checked_p7))

                    ; #46708: <==uncertain_firing== 15575 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #47353: <==negation-removal== 15120 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #48129: <==uncertain_firing== 55159 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #48567: <==negation-removal== 45540 (pos)
                    (not (Bb_not_checked_p7))

                    ; #60770: <==negation-removal== 15575 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #61595: <==negation-removal== 55159 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #67034: <==negation-removal== 22908 (pos)
                    (not (not_checked_p7))

                    ; #70873: <==negation-removal== 59761 (pos)
                    (not (Bc_not_checked_p7))

                    ; #74324: <==negation-removal== 80663 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #82493: <==negation-removal== 39774 (pos)
                    (not (Pa_not_checked_p7))

                    ; #99743: <==uncertain_firing== 15120 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #25045: <==closure== 47226 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #35247: <==commonly_known== 66681 (neg)
                    (Pc_checked_p8)

                    ; #35614: <==closure== 91912 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #47226: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #52162: <==commonly_known== 66681 (neg)
                    (Pa_checked_p8)

                    ; #55258: <==commonly_known== 72774 (pos)
                    (Bc_checked_p8)

                    ; #64449: <==commonly_known== 66681 (neg)
                    (Pb_checked_p8)

                    ; #72774: origin
                    (checked_p8)

                    ; #80388: <==commonly_known== 72774 (pos)
                    (Bb_checked_p8)

                    ; #88503: <==commonly_known== 72774 (pos)
                    (Ba_checked_p8)

                    ; #91912: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #13868: <==negation-removal== 47226 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #19931: <==negation-removal== 35614 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #25289: <==negation-removal== 88503 (pos)
                    (not (Pa_not_checked_p8))

                    ; #43031: <==negation-removal== 55258 (pos)
                    (not (Pc_not_checked_p8))

                    ; #51147: <==uncertain_firing== 35614 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #55465: <==uncertain_firing== 25045 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #55980: <==uncertain_firing== 91912 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #56455: <==negation-removal== 80388 (pos)
                    (not (Pb_not_checked_p8))

                    ; #57025: <==negation-removal== 35247 (pos)
                    (not (Bc_not_checked_p8))

                    ; #59504: <==negation-removal== 25045 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #62513: <==negation-removal== 91912 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #66681: <==negation-removal== 72774 (pos)
                    (not (not_checked_p8))

                    ; #76068: <==negation-removal== 52162 (pos)
                    (not (Ba_not_checked_p8))

                    ; #80592: <==uncertain_firing== 47226 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #83131: <==negation-removal== 64449 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12364: <==commonly_known== 37474 (neg)
                    (Pa_checked_p9)

                    ; #14675: <==closure== 40881 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #33870: <==commonly_known== 40400 (pos)
                    (Bb_checked_p9)

                    ; #40400: origin
                    (checked_p9)

                    ; #40881: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #41171: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #46475: <==commonly_known== 40400 (pos)
                    (Ba_checked_p9)

                    ; #70812: <==commonly_known== 40400 (pos)
                    (Bc_checked_p9)

                    ; #76693: <==commonly_known== 37474 (neg)
                    (Pc_checked_p9)

                    ; #78715: <==closure== 41171 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #84124: <==commonly_known== 37474 (neg)
                    (Pb_checked_p9)

                    ; #11011: <==uncertain_firing== 41171 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #18219: <==negation-removal== 33870 (pos)
                    (not (Pb_not_checked_p9))

                    ; #18297: <==uncertain_firing== 40881 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #24379: <==negation-removal== 46475 (pos)
                    (not (Pa_not_checked_p9))

                    ; #32936: <==negation-removal== 41171 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #37474: <==negation-removal== 40400 (pos)
                    (not (not_checked_p9))

                    ; #43228: <==negation-removal== 14675 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #43437: <==negation-removal== 12364 (pos)
                    (not (Ba_not_checked_p9))

                    ; #65199: <==negation-removal== 76693 (pos)
                    (not (Bc_not_checked_p9))

                    ; #70369: <==negation-removal== 70812 (pos)
                    (not (Pc_not_checked_p9))

                    ; #75850: <==negation-removal== 84124 (pos)
                    (not (Bb_not_checked_p9))

                    ; #77642: <==uncertain_firing== 14675 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #82426: <==negation-removal== 40881 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #86728: <==negation-removal== 78715 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #89668: <==uncertain_firing== 78715 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #13119: <==commonly_known== 16246 (pos)
                    (Ba_checked_p1)

                    ; #16246: origin
                    (checked_p1)

                    ; #26244: <==commonly_known== 21615 (neg)
                    (Pb_checked_p1)

                    ; #43294: <==commonly_known== 21615 (neg)
                    (Pa_checked_p1)

                    ; #45595: <==commonly_known== 21615 (neg)
                    (Pc_checked_p1)

                    ; #45991: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #50146: <==commonly_known== 16246 (pos)
                    (Bc_checked_p1)

                    ; #52552: <==closure== 45991 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #56998: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #64492: <==closure== 56998 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72518: <==commonly_known== 16246 (pos)
                    (Bb_checked_p1)

                    ; #10216: <==uncertain_firing== 56998 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #21615: <==negation-removal== 16246 (pos)
                    (not (not_checked_p1))

                    ; #31788: <==negation-removal== 56998 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #36385: <==negation-removal== 64492 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #37642: <==negation-removal== 72518 (pos)
                    (not (Pb_not_checked_p1))

                    ; #38739: <==negation-removal== 45595 (pos)
                    (not (Bc_not_checked_p1))

                    ; #50335: <==negation-removal== 52552 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #62105: <==uncertain_firing== 64492 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #65247: <==negation-removal== 43294 (pos)
                    (not (Ba_not_checked_p1))

                    ; #68553: <==uncertain_firing== 52552 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #70397: <==uncertain_firing== 45991 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #73422: <==negation-removal== 50146 (pos)
                    (not (Pc_not_checked_p1))

                    ; #78251: <==negation-removal== 26244 (pos)
                    (not (Bb_not_checked_p1))

                    ; #84922: <==negation-removal== 13119 (pos)
                    (not (Pa_not_checked_p1))

                    ; #92075: <==negation-removal== 45991 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10650: <==commonly_known== 20354 (pos)
                    (Ba_checked_p2)

                    ; #20354: origin
                    (checked_p2)

                    ; #22225: <==closure== 56383 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #31026: <==closure== 44034 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #44034: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #52030: <==commonly_known== 66113 (neg)
                    (Pa_checked_p2)

                    ; #56383: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #68310: <==commonly_known== 66113 (neg)
                    (Pc_checked_p2)

                    ; #69085: <==commonly_known== 20354 (pos)
                    (Bc_checked_p2)

                    ; #71366: <==commonly_known== 66113 (neg)
                    (Pb_checked_p2)

                    ; #89176: <==commonly_known== 20354 (pos)
                    (Bb_checked_p2)

                    ; #10781: <==negation-removal== 52030 (pos)
                    (not (Ba_not_checked_p2))

                    ; #41150: <==uncertain_firing== 22225 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #53975: <==uncertain_firing== 44034 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #62211: <==negation-removal== 44034 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #62443: <==uncertain_firing== 31026 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #65170: <==negation-removal== 69085 (pos)
                    (not (Pc_not_checked_p2))

                    ; #65461: <==negation-removal== 56383 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #66113: <==negation-removal== 20354 (pos)
                    (not (not_checked_p2))

                    ; #68111: <==negation-removal== 31026 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #70645: <==negation-removal== 68310 (pos)
                    (not (Bc_not_checked_p2))

                    ; #72781: <==negation-removal== 22225 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #73101: <==negation-removal== 10650 (pos)
                    (not (Pa_not_checked_p2))

                    ; #74612: <==uncertain_firing== 56383 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #77823: <==negation-removal== 71366 (pos)
                    (not (Bb_not_checked_p2))

                    ; #81836: <==negation-removal== 89176 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #16115: <==commonly_known== 14537 (neg)
                    (Pb_checked_p3)

                    ; #17471: <==commonly_known== 31643 (pos)
                    (Ba_checked_p3)

                    ; #24432: <==commonly_known== 31643 (pos)
                    (Bc_checked_p3)

                    ; #29424: <==closure== 38274 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #31643: origin
                    (checked_p3)

                    ; #38274: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #51032: <==commonly_known== 14537 (neg)
                    (Pa_checked_p3)

                    ; #61380: <==commonly_known== 14537 (neg)
                    (Pc_checked_p3)

                    ; #67018: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #74393: <==closure== 67018 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #79794: <==commonly_known== 31643 (pos)
                    (Bb_checked_p3)

                    ; #10243: <==negation-removal== 24432 (pos)
                    (not (Pc_not_checked_p3))

                    ; #13432: <==negation-removal== 17471 (pos)
                    (not (Pa_not_checked_p3))

                    ; #14537: <==negation-removal== 31643 (pos)
                    (not (not_checked_p3))

                    ; #31489: <==negation-removal== 67018 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38829: <==negation-removal== 61380 (pos)
                    (not (Bc_not_checked_p3))

                    ; #44890: <==negation-removal== 79794 (pos)
                    (not (Pb_not_checked_p3))

                    ; #45973: <==negation-removal== 74393 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #50731: <==negation-removal== 16115 (pos)
                    (not (Bb_not_checked_p3))

                    ; #67561: <==uncertain_firing== 74393 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #70794: <==negation-removal== 51032 (pos)
                    (not (Ba_not_checked_p3))

                    ; #79194: <==uncertain_firing== 38274 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #79930: <==uncertain_firing== 29424 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #85587: <==negation-removal== 38274 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #87510: <==uncertain_firing== 67018 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #89163: <==negation-removal== 29424 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #10350: <==commonly_known== 61422 (neg)
                    (Pa_checked_p4)

                    ; #23316: <==commonly_known== 61422 (neg)
                    (Pc_checked_p4)

                    ; #23819: <==closure== 89303 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #43203: origin
                    (checked_p4)

                    ; #52485: <==commonly_known== 61422 (neg)
                    (Pb_checked_p4)

                    ; #53183: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #80277: <==commonly_known== 43203 (pos)
                    (Bb_checked_p4)

                    ; #83738: <==closure== 53183 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #87034: <==commonly_known== 43203 (pos)
                    (Ba_checked_p4)

                    ; #89303: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #93218: <==commonly_known== 43203 (pos)
                    (Bc_checked_p4)

                    ; #10238: <==negation-removal== 93218 (pos)
                    (not (Pc_not_checked_p4))

                    ; #18494: <==negation-removal== 53183 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #21769: <==negation-removal== 89303 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #22378: <==negation-removal== 80277 (pos)
                    (not (Pb_not_checked_p4))

                    ; #25160: <==uncertain_firing== 89303 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #28045: <==negation-removal== 83738 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #29093: <==negation-removal== 23819 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #34128: <==negation-removal== 87034 (pos)
                    (not (Pa_not_checked_p4))

                    ; #36792: <==uncertain_firing== 83738 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #38855: <==negation-removal== 52485 (pos)
                    (not (Bb_not_checked_p4))

                    ; #53094: <==negation-removal== 23316 (pos)
                    (not (Bc_not_checked_p4))

                    ; #61422: <==negation-removal== 43203 (pos)
                    (not (not_checked_p4))

                    ; #61471: <==uncertain_firing== 23819 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #77401: <==negation-removal== 10350 (pos)
                    (not (Ba_not_checked_p4))

                    ; #87601: <==uncertain_firing== 53183 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #21165: origin
                    (checked_p5)

                    ; #28862: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #28871: <==commonly_known== 21165 (pos)
                    (Bc_checked_p5)

                    ; #32292: <==commonly_known== 21165 (pos)
                    (Ba_checked_p5)

                    ; #32873: <==commonly_known== 39131 (neg)
                    (Pc_checked_p5)

                    ; #33322: <==commonly_known== 39131 (neg)
                    (Pa_checked_p5)

                    ; #35440: <==closure== 35564 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #35564: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #41991: <==closure== 28862 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #46243: <==commonly_known== 39131 (neg)
                    (Pb_checked_p5)

                    ; #78828: <==commonly_known== 21165 (pos)
                    (Bb_checked_p5)

                    ; #14794: <==negation-removal== 78828 (pos)
                    (not (Pb_not_checked_p5))

                    ; #27218: <==negation-removal== 35440 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #28361: <==negation-removal== 28871 (pos)
                    (not (Pc_not_checked_p5))

                    ; #39131: <==negation-removal== 21165 (pos)
                    (not (not_checked_p5))

                    ; #44666: <==negation-removal== 35564 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #46449: <==uncertain_firing== 35440 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #49092: <==uncertain_firing== 41991 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61190: <==negation-removal== 33322 (pos)
                    (not (Ba_not_checked_p5))

                    ; #64451: <==negation-removal== 28862 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #67518: <==uncertain_firing== 35564 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #75298: <==negation-removal== 41991 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #81996: <==negation-removal== 32292 (pos)
                    (not (Pa_not_checked_p5))

                    ; #85407: <==negation-removal== 46243 (pos)
                    (not (Bb_not_checked_p5))

                    ; #85983: <==negation-removal== 32873 (pos)
                    (not (Bc_not_checked_p5))

                    ; #86345: <==uncertain_firing== 28862 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10196: <==commonly_known== 68730 (neg)
                    (Pa_checked_p6)

                    ; #21662: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #36233: <==commonly_known== 61656 (pos)
                    (Ba_checked_p6)

                    ; #46267: <==commonly_known== 61656 (pos)
                    (Bb_checked_p6)

                    ; #54981: <==commonly_known== 61656 (pos)
                    (Bc_checked_p6)

                    ; #60189: <==closure== 21662 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #61656: origin
                    (checked_p6)

                    ; #74711: <==commonly_known== 68730 (neg)
                    (Pb_checked_p6)

                    ; #84179: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #89942: <==closure== 84179 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #95786: <==commonly_known== 68730 (neg)
                    (Pc_checked_p6)

                    ; #12978: <==uncertain_firing== 21662 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #17768: <==uncertain_firing== 89942 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #19855: <==uncertain_firing== 84179 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #30818: <==negation-removal== 74711 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37806: <==negation-removal== 36233 (pos)
                    (not (Pa_not_checked_p6))

                    ; #48236: <==negation-removal== 60189 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #49902: <==uncertain_firing== 60189 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #50593: <==negation-removal== 46267 (pos)
                    (not (Pb_not_checked_p6))

                    ; #62140: <==negation-removal== 89942 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #64705: <==negation-removal== 21662 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #65343: <==negation-removal== 54981 (pos)
                    (not (Pc_not_checked_p6))

                    ; #66219: <==negation-removal== 10196 (pos)
                    (not (Ba_not_checked_p6))

                    ; #68730: <==negation-removal== 61656 (pos)
                    (not (not_checked_p6))

                    ; #80064: <==negation-removal== 95786 (pos)
                    (not (Bc_not_checked_p6))

                    ; #87722: <==negation-removal== 84179 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #22908: origin
                    (checked_p7)

                    ; #23960: <==closure== 47764 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #28068: <==closure== 35113 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #35113: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #37972: <==commonly_known== 67034 (neg)
                    (Pa_checked_p7)

                    ; #39774: <==commonly_known== 22908 (pos)
                    (Ba_checked_p7)

                    ; #45540: <==commonly_known== 67034 (neg)
                    (Pb_checked_p7)

                    ; #46911: <==commonly_known== 22908 (pos)
                    (Bc_checked_p7)

                    ; #47764: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #59761: <==commonly_known== 67034 (neg)
                    (Pc_checked_p7)

                    ; #89886: <==commonly_known== 22908 (pos)
                    (Bb_checked_p7)

                    ; #10498: <==negation-removal== 46911 (pos)
                    (not (Pc_not_checked_p7))

                    ; #13495: <==negation-removal== 47764 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #29611: <==negation-removal== 37972 (pos)
                    (not (Ba_not_checked_p7))

                    ; #40875: <==negation-removal== 89886 (pos)
                    (not (Pb_not_checked_p7))

                    ; #48567: <==negation-removal== 45540 (pos)
                    (not (Bb_not_checked_p7))

                    ; #59801: <==uncertain_firing== 47764 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #60931: <==negation-removal== 28068 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #61874: <==uncertain_firing== 23960 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #67034: <==negation-removal== 22908 (pos)
                    (not (not_checked_p7))

                    ; #69825: <==uncertain_firing== 28068 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #70873: <==negation-removal== 59761 (pos)
                    (not (Bc_not_checked_p7))

                    ; #77443: <==negation-removal== 23960 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #82493: <==negation-removal== 39774 (pos)
                    (not (Pa_not_checked_p7))

                    ; #84022: <==negation-removal== 35113 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #84405: <==uncertain_firing== 35113 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35247: <==commonly_known== 66681 (neg)
                    (Pc_checked_p8)

                    ; #35765: <==closure== 63516 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #52058: <==closure== 68739 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #52162: <==commonly_known== 66681 (neg)
                    (Pa_checked_p8)

                    ; #55258: <==commonly_known== 72774 (pos)
                    (Bc_checked_p8)

                    ; #63516: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #64449: <==commonly_known== 66681 (neg)
                    (Pb_checked_p8)

                    ; #68739: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #72774: origin
                    (checked_p8)

                    ; #80388: <==commonly_known== 72774 (pos)
                    (Bb_checked_p8)

                    ; #88503: <==commonly_known== 72774 (pos)
                    (Ba_checked_p8)

                    ; #25289: <==negation-removal== 88503 (pos)
                    (not (Pa_not_checked_p8))

                    ; #32605: <==uncertain_firing== 35765 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #43031: <==negation-removal== 55258 (pos)
                    (not (Pc_not_checked_p8))

                    ; #44338: <==uncertain_firing== 68739 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #45825: <==negation-removal== 52058 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #45925: <==uncertain_firing== 63516 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #52399: <==uncertain_firing== 52058 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #56455: <==negation-removal== 80388 (pos)
                    (not (Pb_not_checked_p8))

                    ; #57025: <==negation-removal== 35247 (pos)
                    (not (Bc_not_checked_p8))

                    ; #61134: <==negation-removal== 35765 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #66681: <==negation-removal== 72774 (pos)
                    (not (not_checked_p8))

                    ; #76068: <==negation-removal== 52162 (pos)
                    (not (Ba_not_checked_p8))

                    ; #83131: <==negation-removal== 64449 (pos)
                    (not (Bb_not_checked_p8))

                    ; #87885: <==negation-removal== 68739 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #88457: <==negation-removal== 63516 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12364: <==commonly_known== 37474 (neg)
                    (Pa_checked_p9)

                    ; #33870: <==commonly_known== 40400 (pos)
                    (Bb_checked_p9)

                    ; #36408: <==closure== 79752 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #40400: origin
                    (checked_p9)

                    ; #43734: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #46475: <==commonly_known== 40400 (pos)
                    (Ba_checked_p9)

                    ; #70812: <==commonly_known== 40400 (pos)
                    (Bc_checked_p9)

                    ; #76693: <==commonly_known== 37474 (neg)
                    (Pc_checked_p9)

                    ; #79752: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #84124: <==commonly_known== 37474 (neg)
                    (Pb_checked_p9)

                    ; #89282: <==closure== 43734 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #18219: <==negation-removal== 33870 (pos)
                    (not (Pb_not_checked_p9))

                    ; #24379: <==negation-removal== 46475 (pos)
                    (not (Pa_not_checked_p9))

                    ; #37474: <==negation-removal== 40400 (pos)
                    (not (not_checked_p9))

                    ; #43437: <==negation-removal== 12364 (pos)
                    (not (Ba_not_checked_p9))

                    ; #52166: <==uncertain_firing== 89282 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #56644: <==uncertain_firing== 43734 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #58072: <==negation-removal== 79752 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #64434: <==uncertain_firing== 79752 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #64873: <==negation-removal== 89282 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #65199: <==negation-removal== 76693 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68910: <==negation-removal== 43734 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #70369: <==negation-removal== 70812 (pos)
                    (not (Pc_not_checked_p9))

                    ; #75850: <==negation-removal== 84124 (pos)
                    (not (Bb_not_checked_p9))

                    ; #84844: <==negation-removal== 36408 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #91655: <==uncertain_firing== 36408 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))))

)