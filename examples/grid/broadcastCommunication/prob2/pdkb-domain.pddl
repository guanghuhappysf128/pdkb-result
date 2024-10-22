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

    (:action comm_p1_a_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_a)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #21033: origin
                    (Ba_survivorat_s_p1)

                    ; #40367: <==closure== 21033 (pos)
                    (Pa_survivorat_s_p1)

                    ; #11582: <==negation-removal== 21033 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #61115: <==negation-removal== 40367 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_b)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #33146: <==closure== 63671 (pos)
                    (Pb_survivorat_s_p1)

                    ; #63671: origin
                    (Bb_survivorat_s_p1)

                    ; #73243: <==negation-removal== 33146 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #80993: <==negation-removal== 63671 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_c))
        :effect (and
                    ; #24443: origin
                    (Bc_survivorat_s_p1)

                    ; #88828: <==closure== 24443 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34384: <==negation-removal== 24443 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #39353: <==negation-removal== 88828 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (leader_a)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #21033: origin
                    (Ba_survivorat_s_p1)

                    ; #40367: <==closure== 21033 (pos)
                    (Pa_survivorat_s_p1)

                    ; #11582: <==negation-removal== 21033 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #61115: <==negation-removal== 40367 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (leader_b)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #33146: <==closure== 63671 (pos)
                    (Pb_survivorat_s_p1)

                    ; #63671: origin
                    (Bb_survivorat_s_p1)

                    ; #73243: <==negation-removal== 33146 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #80993: <==negation-removal== 63671 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_c)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #24443: origin
                    (Bc_survivorat_s_p1)

                    ; #88828: <==closure== 24443 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34384: <==negation-removal== 24443 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #39353: <==negation-removal== 88828 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #21033: origin
                    (Ba_survivorat_s_p1)

                    ; #40367: <==closure== 21033 (pos)
                    (Pa_survivorat_s_p1)

                    ; #11582: <==negation-removal== 21033 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #61115: <==negation-removal== 40367 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #33146: <==closure== 63671 (pos)
                    (Pb_survivorat_s_p1)

                    ; #63671: origin
                    (Bb_survivorat_s_p1)

                    ; #73243: <==negation-removal== 33146 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #80993: <==negation-removal== 63671 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #24443: origin
                    (Bc_survivorat_s_p1)

                    ; #88828: <==closure== 24443 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34384: <==negation-removal== 24443 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #39353: <==negation-removal== 88828 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #53161: origin
                    (Ba_survivorat_s_p2)

                    ; #66732: <==closure== 53161 (pos)
                    (Pa_survivorat_s_p2)

                    ; #57847: <==negation-removal== 53161 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #61877: <==negation-removal== 66732 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #27616: <==closure== 89666 (pos)
                    (Pb_survivorat_s_p2)

                    ; #89666: origin
                    (Bb_survivorat_s_p2)

                    ; #67826: <==negation-removal== 89666 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #74199: <==negation-removal== 27616 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (leader_c)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #15053: origin
                    (Bc_survivorat_s_p2)

                    ; #30888: <==closure== 15053 (pos)
                    (Pc_survivorat_s_p2)

                    ; #43821: <==negation-removal== 15053 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #72835: <==negation-removal== 30888 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #53161: origin
                    (Ba_survivorat_s_p2)

                    ; #66732: <==closure== 53161 (pos)
                    (Pa_survivorat_s_p2)

                    ; #57847: <==negation-removal== 53161 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #61877: <==negation-removal== 66732 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #27616: <==closure== 89666 (pos)
                    (Pb_survivorat_s_p2)

                    ; #89666: origin
                    (Bb_survivorat_s_p2)

                    ; #67826: <==negation-removal== 89666 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #74199: <==negation-removal== 27616 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c))
        :effect (and
                    ; #15053: origin
                    (Bc_survivorat_s_p2)

                    ; #30888: <==closure== 15053 (pos)
                    (Pc_survivorat_s_p2)

                    ; #43821: <==negation-removal== 15053 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #72835: <==negation-removal== 30888 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #53161: origin
                    (Ba_survivorat_s_p2)

                    ; #66732: <==closure== 53161 (pos)
                    (Pa_survivorat_s_p2)

                    ; #57847: <==negation-removal== 53161 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #61877: <==negation-removal== 66732 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_b)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #27616: <==closure== 89666 (pos)
                    (Pb_survivorat_s_p2)

                    ; #89666: origin
                    (Bb_survivorat_s_p2)

                    ; #67826: <==negation-removal== 89666 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #74199: <==negation-removal== 27616 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_c)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #15053: origin
                    (Bc_survivorat_s_p2)

                    ; #30888: <==closure== 15053 (pos)
                    (Pc_survivorat_s_p2)

                    ; #43821: <==negation-removal== 15053 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #72835: <==negation-removal== 30888 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #18340: <==closure== 27428 (pos)
                    (Pa_survivorat_s_p3)

                    ; #27428: origin
                    (Ba_survivorat_s_p3)

                    ; #29249: <==negation-removal== 18340 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #37170: <==negation-removal== 27428 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #77238: origin
                    (Bb_survivorat_s_p3)

                    ; #78657: <==closure== 77238 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41707: <==negation-removal== 77238 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #87605: <==negation-removal== 78657 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #12944: <==closure== 28793 (pos)
                    (Pc_survivorat_s_p3)

                    ; #28793: origin
                    (Bc_survivorat_s_p3)

                    ; #11350: <==negation-removal== 28793 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #72283: <==negation-removal== 12944 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (Bb_survivorat_s_p3)
                           (leader_a)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #18340: <==closure== 27428 (pos)
                    (Pa_survivorat_s_p3)

                    ; #27428: origin
                    (Ba_survivorat_s_p3)

                    ; #29249: <==negation-removal== 18340 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #37170: <==negation-removal== 27428 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (leader_b)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #77238: origin
                    (Bb_survivorat_s_p3)

                    ; #78657: <==closure== 77238 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41707: <==negation-removal== 77238 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #87605: <==negation-removal== 78657 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_c)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #12944: <==closure== 28793 (pos)
                    (Pc_survivorat_s_p3)

                    ; #28793: origin
                    (Bc_survivorat_s_p3)

                    ; #11350: <==negation-removal== 28793 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #72283: <==negation-removal== 12944 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #18340: <==closure== 27428 (pos)
                    (Pa_survivorat_s_p3)

                    ; #27428: origin
                    (Ba_survivorat_s_p3)

                    ; #29249: <==negation-removal== 18340 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #37170: <==negation-removal== 27428 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #77238: origin
                    (Bb_survivorat_s_p3)

                    ; #78657: <==closure== 77238 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41707: <==negation-removal== 77238 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #87605: <==negation-removal== 78657 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #12944: <==closure== 28793 (pos)
                    (Pc_survivorat_s_p3)

                    ; #28793: origin
                    (Bc_survivorat_s_p3)

                    ; #11350: <==negation-removal== 28793 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #72283: <==negation-removal== 12944 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (leader_a)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #15617: <==closure== 59830 (pos)
                    (Pa_survivorat_s_p4)

                    ; #59830: origin
                    (Ba_survivorat_s_p4)

                    ; #47442: <==negation-removal== 59830 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #59355: <==negation-removal== 15617 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Pa_survivorat_s_p4)
                           (leader_b)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #13124: origin
                    (Bb_survivorat_s_p4)

                    ; #89875: <==closure== 13124 (pos)
                    (Pb_survivorat_s_p4)

                    ; #27571: <==negation-removal== 89875 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #44879: <==negation-removal== 13124 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_c)
                           (at_a_p4))
        :effect (and
                    ; #15451: origin
                    (Bc_survivorat_s_p4)

                    ; #66963: <==closure== 15451 (pos)
                    (Pc_survivorat_s_p4)

                    ; #14779: <==negation-removal== 15451 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #21949: <==negation-removal== 66963 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (leader_a)
                           (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #15617: <==closure== 59830 (pos)
                    (Pa_survivorat_s_p4)

                    ; #59830: origin
                    (Ba_survivorat_s_p4)

                    ; #47442: <==negation-removal== 59830 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #59355: <==negation-removal== 15617 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (leader_b)
                           (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #13124: origin
                    (Bb_survivorat_s_p4)

                    ; #89875: <==closure== 13124 (pos)
                    (Pb_survivorat_s_p4)

                    ; #27571: <==negation-removal== 89875 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #44879: <==negation-removal== 13124 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (at_b_p4)
                           (leader_c)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #15451: origin
                    (Bc_survivorat_s_p4)

                    ; #66963: <==closure== 15451 (pos)
                    (Pc_survivorat_s_p4)

                    ; #14779: <==negation-removal== 15451 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #21949: <==negation-removal== 66963 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_a)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #15617: <==closure== 59830 (pos)
                    (Pa_survivorat_s_p4)

                    ; #59830: origin
                    (Ba_survivorat_s_p4)

                    ; #47442: <==negation-removal== 59830 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #59355: <==negation-removal== 15617 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #13124: origin
                    (Bb_survivorat_s_p4)

                    ; #89875: <==closure== 13124 (pos)
                    (Pb_survivorat_s_p4)

                    ; #27571: <==negation-removal== 89875 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #44879: <==negation-removal== 13124 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #15451: origin
                    (Bc_survivorat_s_p4)

                    ; #66963: <==closure== 15451 (pos)
                    (Pc_survivorat_s_p4)

                    ; #14779: <==negation-removal== 15451 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #21949: <==negation-removal== 66963 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #51585: <==closure== 88159 (pos)
                    (Pa_survivorat_s_p5)

                    ; #88159: origin
                    (Ba_survivorat_s_p5)

                    ; #24012: <==negation-removal== 51585 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #55355: <==negation-removal== 88159 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Ba_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #42120: <==closure== 42369 (pos)
                    (Pb_survivorat_s_p5)

                    ; #42369: origin
                    (Bb_survivorat_s_p5)

                    ; #32159: <==negation-removal== 42120 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #59480: <==negation-removal== 42369 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #41844: <==closure== 72946 (pos)
                    (Pc_survivorat_s_p5)

                    ; #72946: origin
                    (Bc_survivorat_s_p5)

                    ; #84572: <==negation-removal== 72946 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #86825: <==negation-removal== 41844 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Bb_survivorat_s_p5)
                           (leader_a)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #51585: <==closure== 88159 (pos)
                    (Pa_survivorat_s_p5)

                    ; #88159: origin
                    (Ba_survivorat_s_p5)

                    ; #24012: <==negation-removal== 51585 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #55355: <==negation-removal== 88159 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (leader_b)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #42120: <==closure== 42369 (pos)
                    (Pb_survivorat_s_p5)

                    ; #42369: origin
                    (Bb_survivorat_s_p5)

                    ; #32159: <==negation-removal== 42120 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #59480: <==negation-removal== 42369 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Bb_survivorat_s_p5)
                           (leader_c)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #41844: <==closure== 72946 (pos)
                    (Pc_survivorat_s_p5)

                    ; #72946: origin
                    (Bc_survivorat_s_p5)

                    ; #84572: <==negation-removal== 72946 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #86825: <==negation-removal== 41844 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_a)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #51585: <==closure== 88159 (pos)
                    (Pa_survivorat_s_p5)

                    ; #88159: origin
                    (Ba_survivorat_s_p5)

                    ; #24012: <==negation-removal== 51585 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #55355: <==negation-removal== 88159 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #42120: <==closure== 42369 (pos)
                    (Pb_survivorat_s_p5)

                    ; #42369: origin
                    (Bb_survivorat_s_p5)

                    ; #32159: <==negation-removal== 42120 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #59480: <==negation-removal== 42369 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_c)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #41844: <==closure== 72946 (pos)
                    (Pc_survivorat_s_p5)

                    ; #72946: origin
                    (Bc_survivorat_s_p5)

                    ; #84572: <==negation-removal== 72946 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #86825: <==negation-removal== 41844 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_a)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #10819: <==closure== 52032 (pos)
                    (Pa_survivorat_s_p6)

                    ; #52032: origin
                    (Ba_survivorat_s_p6)

                    ; #30703: <==negation-removal== 10819 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #82748: <==negation-removal== 52032 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_b)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #40063: <==closure== 92164 (pos)
                    (Pb_survivorat_s_p6)

                    ; #92164: origin
                    (Bb_survivorat_s_p6)

                    ; #54058: <==negation-removal== 40063 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #66791: <==negation-removal== 92164 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_c)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #17492: origin
                    (Bc_survivorat_s_p6)

                    ; #33989: <==closure== 17492 (pos)
                    (Pc_survivorat_s_p6)

                    ; #52604: <==negation-removal== 17492 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #76792: <==negation-removal== 33989 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #10819: <==closure== 52032 (pos)
                    (Pa_survivorat_s_p6)

                    ; #52032: origin
                    (Ba_survivorat_s_p6)

                    ; #30703: <==negation-removal== 10819 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #82748: <==negation-removal== 52032 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_b)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #40063: <==closure== 92164 (pos)
                    (Pb_survivorat_s_p6)

                    ; #92164: origin
                    (Bb_survivorat_s_p6)

                    ; #54058: <==negation-removal== 40063 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #66791: <==negation-removal== 92164 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #17492: origin
                    (Bc_survivorat_s_p6)

                    ; #33989: <==closure== 17492 (pos)
                    (Pc_survivorat_s_p6)

                    ; #52604: <==negation-removal== 17492 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #76792: <==negation-removal== 33989 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #10819: <==closure== 52032 (pos)
                    (Pa_survivorat_s_p6)

                    ; #52032: origin
                    (Ba_survivorat_s_p6)

                    ; #30703: <==negation-removal== 10819 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #82748: <==negation-removal== 52032 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #40063: <==closure== 92164 (pos)
                    (Pb_survivorat_s_p6)

                    ; #92164: origin
                    (Bb_survivorat_s_p6)

                    ; #54058: <==negation-removal== 40063 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #66791: <==negation-removal== 92164 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_c)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #17492: origin
                    (Bc_survivorat_s_p6)

                    ; #33989: <==closure== 17492 (pos)
                    (Pc_survivorat_s_p6)

                    ; #52604: <==negation-removal== 17492 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #76792: <==negation-removal== 33989 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_a)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #47027: origin
                    (Ba_survivorat_s_p7)

                    ; #84335: <==closure== 47027 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10343: <==negation-removal== 47027 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #49075: <==negation-removal== 84335 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_b)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #21040: origin
                    (Bb_survivorat_s_p7)

                    ; #39317: <==closure== 21040 (pos)
                    (Pb_survivorat_s_p7)

                    ; #17068: <==negation-removal== 39317 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #86218: <==negation-removal== 21040 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_c)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #12371: origin
                    (Bc_survivorat_s_p7)

                    ; #17141: <==closure== 12371 (pos)
                    (Pc_survivorat_s_p7)

                    ; #47250: <==negation-removal== 12371 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #81178: <==negation-removal== 17141 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (leader_a)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #47027: origin
                    (Ba_survivorat_s_p7)

                    ; #84335: <==closure== 47027 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10343: <==negation-removal== 47027 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #49075: <==negation-removal== 84335 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (leader_b)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #21040: origin
                    (Bb_survivorat_s_p7)

                    ; #39317: <==closure== 21040 (pos)
                    (Pb_survivorat_s_p7)

                    ; #17068: <==negation-removal== 39317 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #86218: <==negation-removal== 21040 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (at_b_p7)
                           (leader_c)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #12371: origin
                    (Bc_survivorat_s_p7)

                    ; #17141: <==closure== 12371 (pos)
                    (Pc_survivorat_s_p7)

                    ; #47250: <==negation-removal== 12371 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #81178: <==negation-removal== 17141 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #47027: origin
                    (Ba_survivorat_s_p7)

                    ; #84335: <==closure== 47027 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10343: <==negation-removal== 47027 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #49075: <==negation-removal== 84335 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #21040: origin
                    (Bb_survivorat_s_p7)

                    ; #39317: <==closure== 21040 (pos)
                    (Pb_survivorat_s_p7)

                    ; #17068: <==negation-removal== 39317 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #86218: <==negation-removal== 21040 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #12371: origin
                    (Bc_survivorat_s_p7)

                    ; #17141: <==closure== 12371 (pos)
                    (Pc_survivorat_s_p7)

                    ; #47250: <==negation-removal== 12371 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #81178: <==negation-removal== 17141 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (at_a_p8)
                           (leader_a)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #76111: <==closure== 85768 (pos)
                    (Pa_survivorat_s_p8)

                    ; #85768: origin
                    (Ba_survivorat_s_p8)

                    ; #54281: <==negation-removal== 85768 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #88061: <==negation-removal== 76111 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (at_a_p8)
                           (leader_b)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #31107: <==closure== 80979 (pos)
                    (Pb_survivorat_s_p8)

                    ; #80979: origin
                    (Bb_survivorat_s_p8)

                    ; #25805: <==negation-removal== 31107 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #62297: <==negation-removal== 80979 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_c)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #54877: origin
                    (Bc_survivorat_s_p8)

                    ; #55297: <==closure== 54877 (pos)
                    (Pc_survivorat_s_p8)

                    ; #67575: <==negation-removal== 54877 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #75318: <==negation-removal== 55297 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #76111: <==closure== 85768 (pos)
                    (Pa_survivorat_s_p8)

                    ; #85768: origin
                    (Ba_survivorat_s_p8)

                    ; #54281: <==negation-removal== 85768 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #88061: <==negation-removal== 76111 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #31107: <==closure== 80979 (pos)
                    (Pb_survivorat_s_p8)

                    ; #80979: origin
                    (Bb_survivorat_s_p8)

                    ; #25805: <==negation-removal== 31107 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #62297: <==negation-removal== 80979 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (leader_c)
                           (at_b_p8))
        :effect (and
                    ; #54877: origin
                    (Bc_survivorat_s_p8)

                    ; #55297: <==closure== 54877 (pos)
                    (Pc_survivorat_s_p8)

                    ; #67575: <==negation-removal== 54877 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #75318: <==negation-removal== 55297 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_a)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #76111: <==closure== 85768 (pos)
                    (Pa_survivorat_s_p8)

                    ; #85768: origin
                    (Ba_survivorat_s_p8)

                    ; #54281: <==negation-removal== 85768 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #88061: <==negation-removal== 76111 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #31107: <==closure== 80979 (pos)
                    (Pb_survivorat_s_p8)

                    ; #80979: origin
                    (Bb_survivorat_s_p8)

                    ; #25805: <==negation-removal== 31107 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #62297: <==negation-removal== 80979 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_c)
                           (at_c_p8))
        :effect (and
                    ; #54877: origin
                    (Bc_survivorat_s_p8)

                    ; #55297: <==closure== 54877 (pos)
                    (Pc_survivorat_s_p8)

                    ; #67575: <==negation-removal== 54877 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #75318: <==negation-removal== 55297 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (leader_a)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #44183: origin
                    (Ba_survivorat_s_p9)

                    ; #61612: <==closure== 44183 (pos)
                    (Pa_survivorat_s_p9)

                    ; #69555: <==negation-removal== 44183 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #69903: <==negation-removal== 61612 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Ba_survivorat_s_p9)
                           (leader_b)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #38422: origin
                    (Bb_survivorat_s_p9)

                    ; #81717: <==closure== 38422 (pos)
                    (Pb_survivorat_s_p9)

                    ; #75087: <==negation-removal== 38422 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #86448: <==negation-removal== 81717 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #41129: <==closure== 87246 (pos)
                    (Pc_survivorat_s_p9)

                    ; #87246: origin
                    (Bc_survivorat_s_p9)

                    ; #11100: <==negation-removal== 41129 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #30922: <==negation-removal== 87246 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #44183: origin
                    (Ba_survivorat_s_p9)

                    ; #61612: <==closure== 44183 (pos)
                    (Pa_survivorat_s_p9)

                    ; #69555: <==negation-removal== 44183 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #69903: <==negation-removal== 61612 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_b)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #38422: origin
                    (Bb_survivorat_s_p9)

                    ; #81717: <==closure== 38422 (pos)
                    (Pb_survivorat_s_p9)

                    ; #75087: <==negation-removal== 38422 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #86448: <==negation-removal== 81717 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #41129: <==closure== 87246 (pos)
                    (Pc_survivorat_s_p9)

                    ; #87246: origin
                    (Bc_survivorat_s_p9)

                    ; #11100: <==negation-removal== 41129 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #30922: <==negation-removal== 87246 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Pc_survivorat_s_p9)
                           (leader_a)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #44183: origin
                    (Ba_survivorat_s_p9)

                    ; #61612: <==closure== 44183 (pos)
                    (Pa_survivorat_s_p9)

                    ; #69555: <==negation-removal== 44183 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #69903: <==negation-removal== 61612 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Pc_survivorat_s_p9)
                           (leader_b)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #38422: origin
                    (Bb_survivorat_s_p9)

                    ; #81717: <==closure== 38422 (pos)
                    (Pb_survivorat_s_p9)

                    ; #75087: <==negation-removal== 38422 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #86448: <==negation-removal== 81717 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_c))
        :effect (and
                    ; #41129: <==closure== 87246 (pos)
                    (Pc_survivorat_s_p9)

                    ; #87246: origin
                    (Bc_survivorat_s_p9)

                    ; #11100: <==negation-removal== 41129 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #30922: <==negation-removal== 87246 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12326: origin
                    (not_at_a_p1)

                    ; #28284: origin
                    (at_a_p1)

                    ; #12326: <==negation-removal== 28284 (pos)
                    (not (not_at_a_p1))

                    ; #28284: <==negation-removal== 12326 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12326: origin
                    (not_at_a_p1)

                    ; #51921: origin
                    (at_a_p2)

                    ; #28284: <==negation-removal== 12326 (pos)
                    (not (at_a_p1))

                    ; #36976: <==negation-removal== 51921 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12326: origin
                    (not_at_a_p1)

                    ; #42111: origin
                    (at_a_p3)

                    ; #28284: <==negation-removal== 12326 (pos)
                    (not (at_a_p1))

                    ; #69941: <==negation-removal== 42111 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12326: origin
                    (not_at_a_p1)

                    ; #68622: origin
                    (at_a_p4)

                    ; #28284: <==negation-removal== 12326 (pos)
                    (not (at_a_p1))

                    ; #45973: <==negation-removal== 68622 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12326: origin
                    (not_at_a_p1)

                    ; #83858: origin
                    (at_a_p5)

                    ; #11105: <==negation-removal== 83858 (pos)
                    (not (not_at_a_p5))

                    ; #28284: <==negation-removal== 12326 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #12326: origin
                    (not_at_a_p1)

                    ; #60778: origin
                    (at_a_p6)

                    ; #15655: <==negation-removal== 60778 (pos)
                    (not (not_at_a_p6))

                    ; #28284: <==negation-removal== 12326 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12326: origin
                    (not_at_a_p1)

                    ; #69169: origin
                    (at_a_p7)

                    ; #28284: <==negation-removal== 12326 (pos)
                    (not (at_a_p1))

                    ; #76006: <==negation-removal== 69169 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #12326: origin
                    (not_at_a_p1)

                    ; #88116: origin
                    (at_a_p8)

                    ; #28284: <==negation-removal== 12326 (pos)
                    (not (at_a_p1))

                    ; #33519: <==negation-removal== 88116 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12326: origin
                    (not_at_a_p1)

                    ; #23355: origin
                    (at_a_p9)

                    ; #28284: <==negation-removal== 12326 (pos)
                    (not (at_a_p1))

                    ; #63370: <==negation-removal== 23355 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #28284: origin
                    (at_a_p1)

                    ; #36976: origin
                    (not_at_a_p2)

                    ; #12326: <==negation-removal== 28284 (pos)
                    (not (not_at_a_p1))

                    ; #51921: <==negation-removal== 36976 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #36976: origin
                    (not_at_a_p2)

                    ; #51921: origin
                    (at_a_p2)

                    ; #36976: <==negation-removal== 51921 (pos)
                    (not (not_at_a_p2))

                    ; #51921: <==negation-removal== 36976 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #36976: origin
                    (not_at_a_p2)

                    ; #42111: origin
                    (at_a_p3)

                    ; #51921: <==negation-removal== 36976 (pos)
                    (not (at_a_p2))

                    ; #69941: <==negation-removal== 42111 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #36976: origin
                    (not_at_a_p2)

                    ; #68622: origin
                    (at_a_p4)

                    ; #45973: <==negation-removal== 68622 (pos)
                    (not (not_at_a_p4))

                    ; #51921: <==negation-removal== 36976 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #36976: origin
                    (not_at_a_p2)

                    ; #83858: origin
                    (at_a_p5)

                    ; #11105: <==negation-removal== 83858 (pos)
                    (not (not_at_a_p5))

                    ; #51921: <==negation-removal== 36976 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #36976: origin
                    (not_at_a_p2)

                    ; #60778: origin
                    (at_a_p6)

                    ; #15655: <==negation-removal== 60778 (pos)
                    (not (not_at_a_p6))

                    ; #51921: <==negation-removal== 36976 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #36976: origin
                    (not_at_a_p2)

                    ; #69169: origin
                    (at_a_p7)

                    ; #51921: <==negation-removal== 36976 (pos)
                    (not (at_a_p2))

                    ; #76006: <==negation-removal== 69169 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #36976: origin
                    (not_at_a_p2)

                    ; #88116: origin
                    (at_a_p8)

                    ; #33519: <==negation-removal== 88116 (pos)
                    (not (not_at_a_p8))

                    ; #51921: <==negation-removal== 36976 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #23355: origin
                    (at_a_p9)

                    ; #36976: origin
                    (not_at_a_p2)

                    ; #51921: <==negation-removal== 36976 (pos)
                    (not (at_a_p2))

                    ; #63370: <==negation-removal== 23355 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #28284: origin
                    (at_a_p1)

                    ; #69941: origin
                    (not_at_a_p3)

                    ; #12326: <==negation-removal== 28284 (pos)
                    (not (not_at_a_p1))

                    ; #42111: <==negation-removal== 69941 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #51921: origin
                    (at_a_p2)

                    ; #69941: origin
                    (not_at_a_p3)

                    ; #36976: <==negation-removal== 51921 (pos)
                    (not (not_at_a_p2))

                    ; #42111: <==negation-removal== 69941 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #42111: origin
                    (at_a_p3)

                    ; #69941: origin
                    (not_at_a_p3)

                    ; #42111: <==negation-removal== 69941 (pos)
                    (not (at_a_p3))

                    ; #69941: <==negation-removal== 42111 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #68622: origin
                    (at_a_p4)

                    ; #69941: origin
                    (not_at_a_p3)

                    ; #42111: <==negation-removal== 69941 (pos)
                    (not (at_a_p3))

                    ; #45973: <==negation-removal== 68622 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #69941: origin
                    (not_at_a_p3)

                    ; #83858: origin
                    (at_a_p5)

                    ; #11105: <==negation-removal== 83858 (pos)
                    (not (not_at_a_p5))

                    ; #42111: <==negation-removal== 69941 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #60778: origin
                    (at_a_p6)

                    ; #69941: origin
                    (not_at_a_p3)

                    ; #15655: <==negation-removal== 60778 (pos)
                    (not (not_at_a_p6))

                    ; #42111: <==negation-removal== 69941 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #69169: origin
                    (at_a_p7)

                    ; #69941: origin
                    (not_at_a_p3)

                    ; #42111: <==negation-removal== 69941 (pos)
                    (not (at_a_p3))

                    ; #76006: <==negation-removal== 69169 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #69941: origin
                    (not_at_a_p3)

                    ; #88116: origin
                    (at_a_p8)

                    ; #33519: <==negation-removal== 88116 (pos)
                    (not (not_at_a_p8))

                    ; #42111: <==negation-removal== 69941 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23355: origin
                    (at_a_p9)

                    ; #69941: origin
                    (not_at_a_p3)

                    ; #42111: <==negation-removal== 69941 (pos)
                    (not (at_a_p3))

                    ; #63370: <==negation-removal== 23355 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #28284: origin
                    (at_a_p1)

                    ; #45973: origin
                    (not_at_a_p4)

                    ; #12326: <==negation-removal== 28284 (pos)
                    (not (not_at_a_p1))

                    ; #68622: <==negation-removal== 45973 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #45973: origin
                    (not_at_a_p4)

                    ; #51921: origin
                    (at_a_p2)

                    ; #36976: <==negation-removal== 51921 (pos)
                    (not (not_at_a_p2))

                    ; #68622: <==negation-removal== 45973 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #42111: origin
                    (at_a_p3)

                    ; #45973: origin
                    (not_at_a_p4)

                    ; #68622: <==negation-removal== 45973 (pos)
                    (not (at_a_p4))

                    ; #69941: <==negation-removal== 42111 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #45973: origin
                    (not_at_a_p4)

                    ; #68622: origin
                    (at_a_p4)

                    ; #45973: <==negation-removal== 68622 (pos)
                    (not (not_at_a_p4))

                    ; #68622: <==negation-removal== 45973 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #45973: origin
                    (not_at_a_p4)

                    ; #83858: origin
                    (at_a_p5)

                    ; #11105: <==negation-removal== 83858 (pos)
                    (not (not_at_a_p5))

                    ; #68622: <==negation-removal== 45973 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #45973: origin
                    (not_at_a_p4)

                    ; #60778: origin
                    (at_a_p6)

                    ; #15655: <==negation-removal== 60778 (pos)
                    (not (not_at_a_p6))

                    ; #68622: <==negation-removal== 45973 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #45973: origin
                    (not_at_a_p4)

                    ; #69169: origin
                    (at_a_p7)

                    ; #68622: <==negation-removal== 45973 (pos)
                    (not (at_a_p4))

                    ; #76006: <==negation-removal== 69169 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #45973: origin
                    (not_at_a_p4)

                    ; #88116: origin
                    (at_a_p8)

                    ; #33519: <==negation-removal== 88116 (pos)
                    (not (not_at_a_p8))

                    ; #68622: <==negation-removal== 45973 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #23355: origin
                    (at_a_p9)

                    ; #45973: origin
                    (not_at_a_p4)

                    ; #63370: <==negation-removal== 23355 (pos)
                    (not (not_at_a_p9))

                    ; #68622: <==negation-removal== 45973 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11105: origin
                    (not_at_a_p5)

                    ; #28284: origin
                    (at_a_p1)

                    ; #12326: <==negation-removal== 28284 (pos)
                    (not (not_at_a_p1))

                    ; #83858: <==negation-removal== 11105 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #11105: origin
                    (not_at_a_p5)

                    ; #51921: origin
                    (at_a_p2)

                    ; #36976: <==negation-removal== 51921 (pos)
                    (not (not_at_a_p2))

                    ; #83858: <==negation-removal== 11105 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11105: origin
                    (not_at_a_p5)

                    ; #42111: origin
                    (at_a_p3)

                    ; #69941: <==negation-removal== 42111 (pos)
                    (not (not_at_a_p3))

                    ; #83858: <==negation-removal== 11105 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11105: origin
                    (not_at_a_p5)

                    ; #68622: origin
                    (at_a_p4)

                    ; #45973: <==negation-removal== 68622 (pos)
                    (not (not_at_a_p4))

                    ; #83858: <==negation-removal== 11105 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11105: origin
                    (not_at_a_p5)

                    ; #83858: origin
                    (at_a_p5)

                    ; #11105: <==negation-removal== 83858 (pos)
                    (not (not_at_a_p5))

                    ; #83858: <==negation-removal== 11105 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11105: origin
                    (not_at_a_p5)

                    ; #60778: origin
                    (at_a_p6)

                    ; #15655: <==negation-removal== 60778 (pos)
                    (not (not_at_a_p6))

                    ; #83858: <==negation-removal== 11105 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11105: origin
                    (not_at_a_p5)

                    ; #69169: origin
                    (at_a_p7)

                    ; #76006: <==negation-removal== 69169 (pos)
                    (not (not_at_a_p7))

                    ; #83858: <==negation-removal== 11105 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11105: origin
                    (not_at_a_p5)

                    ; #88116: origin
                    (at_a_p8)

                    ; #33519: <==negation-removal== 88116 (pos)
                    (not (not_at_a_p8))

                    ; #83858: <==negation-removal== 11105 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11105: origin
                    (not_at_a_p5)

                    ; #23355: origin
                    (at_a_p9)

                    ; #63370: <==negation-removal== 23355 (pos)
                    (not (not_at_a_p9))

                    ; #83858: <==negation-removal== 11105 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15655: origin
                    (not_at_a_p6)

                    ; #28284: origin
                    (at_a_p1)

                    ; #12326: <==negation-removal== 28284 (pos)
                    (not (not_at_a_p1))

                    ; #60778: <==negation-removal== 15655 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15655: origin
                    (not_at_a_p6)

                    ; #51921: origin
                    (at_a_p2)

                    ; #36976: <==negation-removal== 51921 (pos)
                    (not (not_at_a_p2))

                    ; #60778: <==negation-removal== 15655 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15655: origin
                    (not_at_a_p6)

                    ; #42111: origin
                    (at_a_p3)

                    ; #60778: <==negation-removal== 15655 (pos)
                    (not (at_a_p6))

                    ; #69941: <==negation-removal== 42111 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15655: origin
                    (not_at_a_p6)

                    ; #68622: origin
                    (at_a_p4)

                    ; #45973: <==negation-removal== 68622 (pos)
                    (not (not_at_a_p4))

                    ; #60778: <==negation-removal== 15655 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15655: origin
                    (not_at_a_p6)

                    ; #83858: origin
                    (at_a_p5)

                    ; #11105: <==negation-removal== 83858 (pos)
                    (not (not_at_a_p5))

                    ; #60778: <==negation-removal== 15655 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15655: origin
                    (not_at_a_p6)

                    ; #60778: origin
                    (at_a_p6)

                    ; #15655: <==negation-removal== 60778 (pos)
                    (not (not_at_a_p6))

                    ; #60778: <==negation-removal== 15655 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15655: origin
                    (not_at_a_p6)

                    ; #69169: origin
                    (at_a_p7)

                    ; #60778: <==negation-removal== 15655 (pos)
                    (not (at_a_p6))

                    ; #76006: <==negation-removal== 69169 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #15655: origin
                    (not_at_a_p6)

                    ; #88116: origin
                    (at_a_p8)

                    ; #33519: <==negation-removal== 88116 (pos)
                    (not (not_at_a_p8))

                    ; #60778: <==negation-removal== 15655 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15655: origin
                    (not_at_a_p6)

                    ; #23355: origin
                    (at_a_p9)

                    ; #60778: <==negation-removal== 15655 (pos)
                    (not (at_a_p6))

                    ; #63370: <==negation-removal== 23355 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #28284: origin
                    (at_a_p1)

                    ; #76006: origin
                    (not_at_a_p7)

                    ; #12326: <==negation-removal== 28284 (pos)
                    (not (not_at_a_p1))

                    ; #69169: <==negation-removal== 76006 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #51921: origin
                    (at_a_p2)

                    ; #76006: origin
                    (not_at_a_p7)

                    ; #36976: <==negation-removal== 51921 (pos)
                    (not (not_at_a_p2))

                    ; #69169: <==negation-removal== 76006 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #42111: origin
                    (at_a_p3)

                    ; #76006: origin
                    (not_at_a_p7)

                    ; #69169: <==negation-removal== 76006 (pos)
                    (not (at_a_p7))

                    ; #69941: <==negation-removal== 42111 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #68622: origin
                    (at_a_p4)

                    ; #76006: origin
                    (not_at_a_p7)

                    ; #45973: <==negation-removal== 68622 (pos)
                    (not (not_at_a_p4))

                    ; #69169: <==negation-removal== 76006 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5)
                           (not (leader_a)))
        :effect (and
                    ; #76006: origin
                    (not_at_a_p7)

                    ; #83858: origin
                    (at_a_p5)

                    ; #11105: <==negation-removal== 83858 (pos)
                    (not (not_at_a_p5))

                    ; #69169: <==negation-removal== 76006 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #60778: origin
                    (at_a_p6)

                    ; #76006: origin
                    (not_at_a_p7)

                    ; #15655: <==negation-removal== 60778 (pos)
                    (not (not_at_a_p6))

                    ; #69169: <==negation-removal== 76006 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #69169: origin
                    (at_a_p7)

                    ; #76006: origin
                    (not_at_a_p7)

                    ; #69169: <==negation-removal== 76006 (pos)
                    (not (at_a_p7))

                    ; #76006: <==negation-removal== 69169 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #76006: origin
                    (not_at_a_p7)

                    ; #88116: origin
                    (at_a_p8)

                    ; #33519: <==negation-removal== 88116 (pos)
                    (not (not_at_a_p8))

                    ; #69169: <==negation-removal== 76006 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #23355: origin
                    (at_a_p9)

                    ; #76006: origin
                    (not_at_a_p7)

                    ; #63370: <==negation-removal== 23355 (pos)
                    (not (not_at_a_p9))

                    ; #69169: <==negation-removal== 76006 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #28284: origin
                    (at_a_p1)

                    ; #33519: origin
                    (not_at_a_p8)

                    ; #12326: <==negation-removal== 28284 (pos)
                    (not (not_at_a_p1))

                    ; #88116: <==negation-removal== 33519 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #33519: origin
                    (not_at_a_p8)

                    ; #51921: origin
                    (at_a_p2)

                    ; #36976: <==negation-removal== 51921 (pos)
                    (not (not_at_a_p2))

                    ; #88116: <==negation-removal== 33519 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #33519: origin
                    (not_at_a_p8)

                    ; #42111: origin
                    (at_a_p3)

                    ; #69941: <==negation-removal== 42111 (pos)
                    (not (not_at_a_p3))

                    ; #88116: <==negation-removal== 33519 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #33519: origin
                    (not_at_a_p8)

                    ; #68622: origin
                    (at_a_p4)

                    ; #45973: <==negation-removal== 68622 (pos)
                    (not (not_at_a_p4))

                    ; #88116: <==negation-removal== 33519 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #33519: origin
                    (not_at_a_p8)

                    ; #83858: origin
                    (at_a_p5)

                    ; #11105: <==negation-removal== 83858 (pos)
                    (not (not_at_a_p5))

                    ; #88116: <==negation-removal== 33519 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #33519: origin
                    (not_at_a_p8)

                    ; #60778: origin
                    (at_a_p6)

                    ; #15655: <==negation-removal== 60778 (pos)
                    (not (not_at_a_p6))

                    ; #88116: <==negation-removal== 33519 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #33519: origin
                    (not_at_a_p8)

                    ; #69169: origin
                    (at_a_p7)

                    ; #76006: <==negation-removal== 69169 (pos)
                    (not (not_at_a_p7))

                    ; #88116: <==negation-removal== 33519 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33519: origin
                    (not_at_a_p8)

                    ; #88116: origin
                    (at_a_p8)

                    ; #33519: <==negation-removal== 88116 (pos)
                    (not (not_at_a_p8))

                    ; #88116: <==negation-removal== 33519 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9)
                           (not (leader_a)))
        :effect (and
                    ; #23355: origin
                    (at_a_p9)

                    ; #33519: origin
                    (not_at_a_p8)

                    ; #63370: <==negation-removal== 23355 (pos)
                    (not (not_at_a_p9))

                    ; #88116: <==negation-removal== 33519 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #28284: origin
                    (at_a_p1)

                    ; #63370: origin
                    (not_at_a_p9)

                    ; #12326: <==negation-removal== 28284 (pos)
                    (not (not_at_a_p1))

                    ; #23355: <==negation-removal== 63370 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51921: origin
                    (at_a_p2)

                    ; #63370: origin
                    (not_at_a_p9)

                    ; #23355: <==negation-removal== 63370 (pos)
                    (not (at_a_p9))

                    ; #36976: <==negation-removal== 51921 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #42111: origin
                    (at_a_p3)

                    ; #63370: origin
                    (not_at_a_p9)

                    ; #23355: <==negation-removal== 63370 (pos)
                    (not (at_a_p9))

                    ; #69941: <==negation-removal== 42111 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #63370: origin
                    (not_at_a_p9)

                    ; #68622: origin
                    (at_a_p4)

                    ; #23355: <==negation-removal== 63370 (pos)
                    (not (at_a_p9))

                    ; #45973: <==negation-removal== 68622 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #63370: origin
                    (not_at_a_p9)

                    ; #83858: origin
                    (at_a_p5)

                    ; #11105: <==negation-removal== 83858 (pos)
                    (not (not_at_a_p5))

                    ; #23355: <==negation-removal== 63370 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #60778: origin
                    (at_a_p6)

                    ; #63370: origin
                    (not_at_a_p9)

                    ; #15655: <==negation-removal== 60778 (pos)
                    (not (not_at_a_p6))

                    ; #23355: <==negation-removal== 63370 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #63370: origin
                    (not_at_a_p9)

                    ; #69169: origin
                    (at_a_p7)

                    ; #23355: <==negation-removal== 63370 (pos)
                    (not (at_a_p9))

                    ; #76006: <==negation-removal== 69169 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #63370: origin
                    (not_at_a_p9)

                    ; #88116: origin
                    (at_a_p8)

                    ; #23355: <==negation-removal== 63370 (pos)
                    (not (at_a_p9))

                    ; #33519: <==negation-removal== 88116 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #23355: origin
                    (at_a_p9)

                    ; #63370: origin
                    (not_at_a_p9)

                    ; #23355: <==negation-removal== 63370 (pos)
                    (not (at_a_p9))

                    ; #63370: <==negation-removal== 23355 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #10424: origin
                    (not_at_b_p1)

                    ; #76364: origin
                    (at_b_p1)

                    ; #10424: <==negation-removal== 76364 (pos)
                    (not (not_at_b_p1))

                    ; #76364: <==negation-removal== 10424 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #10424: origin
                    (not_at_b_p1)

                    ; #23439: origin
                    (at_b_p2)

                    ; #72397: <==negation-removal== 23439 (pos)
                    (not (not_at_b_p2))

                    ; #76364: <==negation-removal== 10424 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #10424: origin
                    (not_at_b_p1)

                    ; #36440: origin
                    (at_b_p3)

                    ; #50774: <==negation-removal== 36440 (pos)
                    (not (not_at_b_p3))

                    ; #76364: <==negation-removal== 10424 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #10424: origin
                    (not_at_b_p1)

                    ; #79463: origin
                    (at_b_p4)

                    ; #76364: <==negation-removal== 10424 (pos)
                    (not (at_b_p1))

                    ; #78807: <==negation-removal== 79463 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #10424: origin
                    (not_at_b_p1)

                    ; #15259: origin
                    (at_b_p5)

                    ; #52571: <==negation-removal== 15259 (pos)
                    (not (not_at_b_p5))

                    ; #76364: <==negation-removal== 10424 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #10424: origin
                    (not_at_b_p1)

                    ; #85719: origin
                    (at_b_p6)

                    ; #41748: <==negation-removal== 85719 (pos)
                    (not (not_at_b_p6))

                    ; #76364: <==negation-removal== 10424 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #10424: origin
                    (not_at_b_p1)

                    ; #59198: origin
                    (at_b_p7)

                    ; #62654: <==negation-removal== 59198 (pos)
                    (not (not_at_b_p7))

                    ; #76364: <==negation-removal== 10424 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #10424: origin
                    (not_at_b_p1)

                    ; #40637: origin
                    (at_b_p8)

                    ; #14387: <==negation-removal== 40637 (pos)
                    (not (not_at_b_p8))

                    ; #76364: <==negation-removal== 10424 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #10424: origin
                    (not_at_b_p1)

                    ; #87365: origin
                    (at_b_p9)

                    ; #47623: <==negation-removal== 87365 (pos)
                    (not (not_at_b_p9))

                    ; #76364: <==negation-removal== 10424 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #72397: origin
                    (not_at_b_p2)

                    ; #76364: origin
                    (at_b_p1)

                    ; #10424: <==negation-removal== 76364 (pos)
                    (not (not_at_b_p1))

                    ; #23439: <==negation-removal== 72397 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #23439: origin
                    (at_b_p2)

                    ; #72397: origin
                    (not_at_b_p2)

                    ; #23439: <==negation-removal== 72397 (pos)
                    (not (at_b_p2))

                    ; #72397: <==negation-removal== 23439 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #36440: origin
                    (at_b_p3)

                    ; #72397: origin
                    (not_at_b_p2)

                    ; #23439: <==negation-removal== 72397 (pos)
                    (not (at_b_p2))

                    ; #50774: <==negation-removal== 36440 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #72397: origin
                    (not_at_b_p2)

                    ; #79463: origin
                    (at_b_p4)

                    ; #23439: <==negation-removal== 72397 (pos)
                    (not (at_b_p2))

                    ; #78807: <==negation-removal== 79463 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #15259: origin
                    (at_b_p5)

                    ; #72397: origin
                    (not_at_b_p2)

                    ; #23439: <==negation-removal== 72397 (pos)
                    (not (at_b_p2))

                    ; #52571: <==negation-removal== 15259 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #72397: origin
                    (not_at_b_p2)

                    ; #85719: origin
                    (at_b_p6)

                    ; #23439: <==negation-removal== 72397 (pos)
                    (not (at_b_p2))

                    ; #41748: <==negation-removal== 85719 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #59198: origin
                    (at_b_p7)

                    ; #72397: origin
                    (not_at_b_p2)

                    ; #23439: <==negation-removal== 72397 (pos)
                    (not (at_b_p2))

                    ; #62654: <==negation-removal== 59198 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #40637: origin
                    (at_b_p8)

                    ; #72397: origin
                    (not_at_b_p2)

                    ; #14387: <==negation-removal== 40637 (pos)
                    (not (not_at_b_p8))

                    ; #23439: <==negation-removal== 72397 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #72397: origin
                    (not_at_b_p2)

                    ; #87365: origin
                    (at_b_p9)

                    ; #23439: <==negation-removal== 72397 (pos)
                    (not (at_b_p2))

                    ; #47623: <==negation-removal== 87365 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #50774: origin
                    (not_at_b_p3)

                    ; #76364: origin
                    (at_b_p1)

                    ; #10424: <==negation-removal== 76364 (pos)
                    (not (not_at_b_p1))

                    ; #36440: <==negation-removal== 50774 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #23439: origin
                    (at_b_p2)

                    ; #50774: origin
                    (not_at_b_p3)

                    ; #36440: <==negation-removal== 50774 (pos)
                    (not (at_b_p3))

                    ; #72397: <==negation-removal== 23439 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #36440: origin
                    (at_b_p3)

                    ; #50774: origin
                    (not_at_b_p3)

                    ; #36440: <==negation-removal== 50774 (pos)
                    (not (at_b_p3))

                    ; #50774: <==negation-removal== 36440 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #50774: origin
                    (not_at_b_p3)

                    ; #79463: origin
                    (at_b_p4)

                    ; #36440: <==negation-removal== 50774 (pos)
                    (not (at_b_p3))

                    ; #78807: <==negation-removal== 79463 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #15259: origin
                    (at_b_p5)

                    ; #50774: origin
                    (not_at_b_p3)

                    ; #36440: <==negation-removal== 50774 (pos)
                    (not (at_b_p3))

                    ; #52571: <==negation-removal== 15259 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #50774: origin
                    (not_at_b_p3)

                    ; #85719: origin
                    (at_b_p6)

                    ; #36440: <==negation-removal== 50774 (pos)
                    (not (at_b_p3))

                    ; #41748: <==negation-removal== 85719 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #50774: origin
                    (not_at_b_p3)

                    ; #59198: origin
                    (at_b_p7)

                    ; #36440: <==negation-removal== 50774 (pos)
                    (not (at_b_p3))

                    ; #62654: <==negation-removal== 59198 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #40637: origin
                    (at_b_p8)

                    ; #50774: origin
                    (not_at_b_p3)

                    ; #14387: <==negation-removal== 40637 (pos)
                    (not (not_at_b_p8))

                    ; #36440: <==negation-removal== 50774 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #50774: origin
                    (not_at_b_p3)

                    ; #87365: origin
                    (at_b_p9)

                    ; #36440: <==negation-removal== 50774 (pos)
                    (not (at_b_p3))

                    ; #47623: <==negation-removal== 87365 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #76364: origin
                    (at_b_p1)

                    ; #78807: origin
                    (not_at_b_p4)

                    ; #10424: <==negation-removal== 76364 (pos)
                    (not (not_at_b_p1))

                    ; #79463: <==negation-removal== 78807 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #23439: origin
                    (at_b_p2)

                    ; #78807: origin
                    (not_at_b_p4)

                    ; #72397: <==negation-removal== 23439 (pos)
                    (not (not_at_b_p2))

                    ; #79463: <==negation-removal== 78807 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #36440: origin
                    (at_b_p3)

                    ; #78807: origin
                    (not_at_b_p4)

                    ; #50774: <==negation-removal== 36440 (pos)
                    (not (not_at_b_p3))

                    ; #79463: <==negation-removal== 78807 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #78807: origin
                    (not_at_b_p4)

                    ; #79463: origin
                    (at_b_p4)

                    ; #78807: <==negation-removal== 79463 (pos)
                    (not (not_at_b_p4))

                    ; #79463: <==negation-removal== 78807 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15259: origin
                    (at_b_p5)

                    ; #78807: origin
                    (not_at_b_p4)

                    ; #52571: <==negation-removal== 15259 (pos)
                    (not (not_at_b_p5))

                    ; #79463: <==negation-removal== 78807 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6)
                           (not (leader_b)))
        :effect (and
                    ; #78807: origin
                    (not_at_b_p4)

                    ; #85719: origin
                    (at_b_p6)

                    ; #41748: <==negation-removal== 85719 (pos)
                    (not (not_at_b_p6))

                    ; #79463: <==negation-removal== 78807 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7)
                           (not (leader_b)))
        :effect (and
                    ; #59198: origin
                    (at_b_p7)

                    ; #78807: origin
                    (not_at_b_p4)

                    ; #62654: <==negation-removal== 59198 (pos)
                    (not (not_at_b_p7))

                    ; #79463: <==negation-removal== 78807 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #40637: origin
                    (at_b_p8)

                    ; #78807: origin
                    (not_at_b_p4)

                    ; #14387: <==negation-removal== 40637 (pos)
                    (not (not_at_b_p8))

                    ; #79463: <==negation-removal== 78807 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #78807: origin
                    (not_at_b_p4)

                    ; #87365: origin
                    (at_b_p9)

                    ; #47623: <==negation-removal== 87365 (pos)
                    (not (not_at_b_p9))

                    ; #79463: <==negation-removal== 78807 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52571: origin
                    (not_at_b_p5)

                    ; #76364: origin
                    (at_b_p1)

                    ; #10424: <==negation-removal== 76364 (pos)
                    (not (not_at_b_p1))

                    ; #15259: <==negation-removal== 52571 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #23439: origin
                    (at_b_p2)

                    ; #52571: origin
                    (not_at_b_p5)

                    ; #15259: <==negation-removal== 52571 (pos)
                    (not (at_b_p5))

                    ; #72397: <==negation-removal== 23439 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #36440: origin
                    (at_b_p3)

                    ; #52571: origin
                    (not_at_b_p5)

                    ; #15259: <==negation-removal== 52571 (pos)
                    (not (at_b_p5))

                    ; #50774: <==negation-removal== 36440 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52571: origin
                    (not_at_b_p5)

                    ; #79463: origin
                    (at_b_p4)

                    ; #15259: <==negation-removal== 52571 (pos)
                    (not (at_b_p5))

                    ; #78807: <==negation-removal== 79463 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #15259: origin
                    (at_b_p5)

                    ; #52571: origin
                    (not_at_b_p5)

                    ; #15259: <==negation-removal== 52571 (pos)
                    (not (at_b_p5))

                    ; #52571: <==negation-removal== 15259 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52571: origin
                    (not_at_b_p5)

                    ; #85719: origin
                    (at_b_p6)

                    ; #15259: <==negation-removal== 52571 (pos)
                    (not (at_b_p5))

                    ; #41748: <==negation-removal== 85719 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52571: origin
                    (not_at_b_p5)

                    ; #59198: origin
                    (at_b_p7)

                    ; #15259: <==negation-removal== 52571 (pos)
                    (not (at_b_p5))

                    ; #62654: <==negation-removal== 59198 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #40637: origin
                    (at_b_p8)

                    ; #52571: origin
                    (not_at_b_p5)

                    ; #14387: <==negation-removal== 40637 (pos)
                    (not (not_at_b_p8))

                    ; #15259: <==negation-removal== 52571 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52571: origin
                    (not_at_b_p5)

                    ; #87365: origin
                    (at_b_p9)

                    ; #15259: <==negation-removal== 52571 (pos)
                    (not (at_b_p5))

                    ; #47623: <==negation-removal== 87365 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1)
                           (not (leader_b)))
        :effect (and
                    ; #41748: origin
                    (not_at_b_p6)

                    ; #76364: origin
                    (at_b_p1)

                    ; #10424: <==negation-removal== 76364 (pos)
                    (not (not_at_b_p1))

                    ; #85719: <==negation-removal== 41748 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #23439: origin
                    (at_b_p2)

                    ; #41748: origin
                    (not_at_b_p6)

                    ; #72397: <==negation-removal== 23439 (pos)
                    (not (not_at_b_p2))

                    ; #85719: <==negation-removal== 41748 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #36440: origin
                    (at_b_p3)

                    ; #41748: origin
                    (not_at_b_p6)

                    ; #50774: <==negation-removal== 36440 (pos)
                    (not (not_at_b_p3))

                    ; #85719: <==negation-removal== 41748 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #41748: origin
                    (not_at_b_p6)

                    ; #79463: origin
                    (at_b_p4)

                    ; #78807: <==negation-removal== 79463 (pos)
                    (not (not_at_b_p4))

                    ; #85719: <==negation-removal== 41748 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #15259: origin
                    (at_b_p5)

                    ; #41748: origin
                    (not_at_b_p6)

                    ; #52571: <==negation-removal== 15259 (pos)
                    (not (not_at_b_p5))

                    ; #85719: <==negation-removal== 41748 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #41748: origin
                    (not_at_b_p6)

                    ; #85719: origin
                    (at_b_p6)

                    ; #41748: <==negation-removal== 85719 (pos)
                    (not (not_at_b_p6))

                    ; #85719: <==negation-removal== 41748 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #41748: origin
                    (not_at_b_p6)

                    ; #59198: origin
                    (at_b_p7)

                    ; #62654: <==negation-removal== 59198 (pos)
                    (not (not_at_b_p7))

                    ; #85719: <==negation-removal== 41748 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #40637: origin
                    (at_b_p8)

                    ; #41748: origin
                    (not_at_b_p6)

                    ; #14387: <==negation-removal== 40637 (pos)
                    (not (not_at_b_p8))

                    ; #85719: <==negation-removal== 41748 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #41748: origin
                    (not_at_b_p6)

                    ; #87365: origin
                    (at_b_p9)

                    ; #47623: <==negation-removal== 87365 (pos)
                    (not (not_at_b_p9))

                    ; #85719: <==negation-removal== 41748 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #62654: origin
                    (not_at_b_p7)

                    ; #76364: origin
                    (at_b_p1)

                    ; #10424: <==negation-removal== 76364 (pos)
                    (not (not_at_b_p1))

                    ; #59198: <==negation-removal== 62654 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2)
                           (not (leader_b)))
        :effect (and
                    ; #23439: origin
                    (at_b_p2)

                    ; #62654: origin
                    (not_at_b_p7)

                    ; #59198: <==negation-removal== 62654 (pos)
                    (not (at_b_p7))

                    ; #72397: <==negation-removal== 23439 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #36440: origin
                    (at_b_p3)

                    ; #62654: origin
                    (not_at_b_p7)

                    ; #50774: <==negation-removal== 36440 (pos)
                    (not (not_at_b_p3))

                    ; #59198: <==negation-removal== 62654 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4)
                           (not (leader_b)))
        :effect (and
                    ; #62654: origin
                    (not_at_b_p7)

                    ; #79463: origin
                    (at_b_p4)

                    ; #59198: <==negation-removal== 62654 (pos)
                    (not (at_b_p7))

                    ; #78807: <==negation-removal== 79463 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5)
                           (not (leader_b)))
        :effect (and
                    ; #15259: origin
                    (at_b_p5)

                    ; #62654: origin
                    (not_at_b_p7)

                    ; #52571: <==negation-removal== 15259 (pos)
                    (not (not_at_b_p5))

                    ; #59198: <==negation-removal== 62654 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6)
                           (not (leader_b)))
        :effect (and
                    ; #62654: origin
                    (not_at_b_p7)

                    ; #85719: origin
                    (at_b_p6)

                    ; #41748: <==negation-removal== 85719 (pos)
                    (not (not_at_b_p6))

                    ; #59198: <==negation-removal== 62654 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #59198: origin
                    (at_b_p7)

                    ; #62654: origin
                    (not_at_b_p7)

                    ; #59198: <==negation-removal== 62654 (pos)
                    (not (at_b_p7))

                    ; #62654: <==negation-removal== 59198 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #40637: origin
                    (at_b_p8)

                    ; #62654: origin
                    (not_at_b_p7)

                    ; #14387: <==negation-removal== 40637 (pos)
                    (not (not_at_b_p8))

                    ; #59198: <==negation-removal== 62654 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #62654: origin
                    (not_at_b_p7)

                    ; #87365: origin
                    (at_b_p9)

                    ; #47623: <==negation-removal== 87365 (pos)
                    (not (not_at_b_p9))

                    ; #59198: <==negation-removal== 62654 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14387: origin
                    (not_at_b_p8)

                    ; #76364: origin
                    (at_b_p1)

                    ; #10424: <==negation-removal== 76364 (pos)
                    (not (not_at_b_p1))

                    ; #40637: <==negation-removal== 14387 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14387: origin
                    (not_at_b_p8)

                    ; #23439: origin
                    (at_b_p2)

                    ; #40637: <==negation-removal== 14387 (pos)
                    (not (at_b_p8))

                    ; #72397: <==negation-removal== 23439 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14387: origin
                    (not_at_b_p8)

                    ; #36440: origin
                    (at_b_p3)

                    ; #40637: <==negation-removal== 14387 (pos)
                    (not (at_b_p8))

                    ; #50774: <==negation-removal== 36440 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14387: origin
                    (not_at_b_p8)

                    ; #79463: origin
                    (at_b_p4)

                    ; #40637: <==negation-removal== 14387 (pos)
                    (not (at_b_p8))

                    ; #78807: <==negation-removal== 79463 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14387: origin
                    (not_at_b_p8)

                    ; #15259: origin
                    (at_b_p5)

                    ; #40637: <==negation-removal== 14387 (pos)
                    (not (at_b_p8))

                    ; #52571: <==negation-removal== 15259 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14387: origin
                    (not_at_b_p8)

                    ; #85719: origin
                    (at_b_p6)

                    ; #40637: <==negation-removal== 14387 (pos)
                    (not (at_b_p8))

                    ; #41748: <==negation-removal== 85719 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14387: origin
                    (not_at_b_p8)

                    ; #59198: origin
                    (at_b_p7)

                    ; #40637: <==negation-removal== 14387 (pos)
                    (not (at_b_p8))

                    ; #62654: <==negation-removal== 59198 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14387: origin
                    (not_at_b_p8)

                    ; #40637: origin
                    (at_b_p8)

                    ; #14387: <==negation-removal== 40637 (pos)
                    (not (not_at_b_p8))

                    ; #40637: <==negation-removal== 14387 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14387: origin
                    (not_at_b_p8)

                    ; #87365: origin
                    (at_b_p9)

                    ; #40637: <==negation-removal== 14387 (pos)
                    (not (at_b_p8))

                    ; #47623: <==negation-removal== 87365 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #47623: origin
                    (not_at_b_p9)

                    ; #76364: origin
                    (at_b_p1)

                    ; #10424: <==negation-removal== 76364 (pos)
                    (not (not_at_b_p1))

                    ; #87365: <==negation-removal== 47623 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #23439: origin
                    (at_b_p2)

                    ; #47623: origin
                    (not_at_b_p9)

                    ; #72397: <==negation-removal== 23439 (pos)
                    (not (not_at_b_p2))

                    ; #87365: <==negation-removal== 47623 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36440: origin
                    (at_b_p3)

                    ; #47623: origin
                    (not_at_b_p9)

                    ; #50774: <==negation-removal== 36440 (pos)
                    (not (not_at_b_p3))

                    ; #87365: <==negation-removal== 47623 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4)
                           (not (leader_b)))
        :effect (and
                    ; #47623: origin
                    (not_at_b_p9)

                    ; #79463: origin
                    (at_b_p4)

                    ; #78807: <==negation-removal== 79463 (pos)
                    (not (not_at_b_p4))

                    ; #87365: <==negation-removal== 47623 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #15259: origin
                    (at_b_p5)

                    ; #47623: origin
                    (not_at_b_p9)

                    ; #52571: <==negation-removal== 15259 (pos)
                    (not (not_at_b_p5))

                    ; #87365: <==negation-removal== 47623 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #47623: origin
                    (not_at_b_p9)

                    ; #85719: origin
                    (at_b_p6)

                    ; #41748: <==negation-removal== 85719 (pos)
                    (not (not_at_b_p6))

                    ; #87365: <==negation-removal== 47623 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #47623: origin
                    (not_at_b_p9)

                    ; #59198: origin
                    (at_b_p7)

                    ; #62654: <==negation-removal== 59198 (pos)
                    (not (not_at_b_p7))

                    ; #87365: <==negation-removal== 47623 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #40637: origin
                    (at_b_p8)

                    ; #47623: origin
                    (not_at_b_p9)

                    ; #14387: <==negation-removal== 40637 (pos)
                    (not (not_at_b_p8))

                    ; #87365: <==negation-removal== 47623 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9)
                           (not (leader_b)))
        :effect (and
                    ; #47623: origin
                    (not_at_b_p9)

                    ; #87365: origin
                    (at_b_p9)

                    ; #47623: <==negation-removal== 87365 (pos)
                    (not (not_at_b_p9))

                    ; #87365: <==negation-removal== 47623 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #16458: origin
                    (not_at_c_p1)

                    ; #22639: origin
                    (at_c_p1)

                    ; #16458: <==negation-removal== 22639 (pos)
                    (not (not_at_c_p1))

                    ; #22639: <==negation-removal== 16458 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #16458: origin
                    (not_at_c_p1)

                    ; #48660: origin
                    (at_c_p2)

                    ; #22639: <==negation-removal== 16458 (pos)
                    (not (at_c_p1))

                    ; #81299: <==negation-removal== 48660 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #16458: origin
                    (not_at_c_p1)

                    ; #37449: origin
                    (at_c_p3)

                    ; #22639: <==negation-removal== 16458 (pos)
                    (not (at_c_p1))

                    ; #87916: <==negation-removal== 37449 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #16458: origin
                    (not_at_c_p1)

                    ; #50811: origin
                    (at_c_p4)

                    ; #22639: <==negation-removal== 16458 (pos)
                    (not (at_c_p1))

                    ; #89005: <==negation-removal== 50811 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #16458: origin
                    (not_at_c_p1)

                    ; #75980: origin
                    (at_c_p5)

                    ; #15164: <==negation-removal== 75980 (pos)
                    (not (not_at_c_p5))

                    ; #22639: <==negation-removal== 16458 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #16458: origin
                    (not_at_c_p1)

                    ; #84598: origin
                    (at_c_p6)

                    ; #22639: <==negation-removal== 16458 (pos)
                    (not (at_c_p1))

                    ; #29582: <==negation-removal== 84598 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #13026: origin
                    (at_c_p7)

                    ; #16458: origin
                    (not_at_c_p1)

                    ; #22639: <==negation-removal== 16458 (pos)
                    (not (at_c_p1))

                    ; #63958: <==negation-removal== 13026 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #16458: origin
                    (not_at_c_p1)

                    ; #71109: origin
                    (at_c_p8)

                    ; #22639: <==negation-removal== 16458 (pos)
                    (not (at_c_p1))

                    ; #56082: <==negation-removal== 71109 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #16458: origin
                    (not_at_c_p1)

                    ; #74964: origin
                    (at_c_p9)

                    ; #11527: <==negation-removal== 74964 (pos)
                    (not (not_at_c_p9))

                    ; #22639: <==negation-removal== 16458 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #22639: origin
                    (at_c_p1)

                    ; #81299: origin
                    (not_at_c_p2)

                    ; #16458: <==negation-removal== 22639 (pos)
                    (not (not_at_c_p1))

                    ; #48660: <==negation-removal== 81299 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #48660: origin
                    (at_c_p2)

                    ; #81299: origin
                    (not_at_c_p2)

                    ; #48660: <==negation-removal== 81299 (pos)
                    (not (at_c_p2))

                    ; #81299: <==negation-removal== 48660 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #37449: origin
                    (at_c_p3)

                    ; #81299: origin
                    (not_at_c_p2)

                    ; #48660: <==negation-removal== 81299 (pos)
                    (not (at_c_p2))

                    ; #87916: <==negation-removal== 37449 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #50811: origin
                    (at_c_p4)

                    ; #81299: origin
                    (not_at_c_p2)

                    ; #48660: <==negation-removal== 81299 (pos)
                    (not (at_c_p2))

                    ; #89005: <==negation-removal== 50811 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #75980: origin
                    (at_c_p5)

                    ; #81299: origin
                    (not_at_c_p2)

                    ; #15164: <==negation-removal== 75980 (pos)
                    (not (not_at_c_p5))

                    ; #48660: <==negation-removal== 81299 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #81299: origin
                    (not_at_c_p2)

                    ; #84598: origin
                    (at_c_p6)

                    ; #29582: <==negation-removal== 84598 (pos)
                    (not (not_at_c_p6))

                    ; #48660: <==negation-removal== 81299 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #13026: origin
                    (at_c_p7)

                    ; #81299: origin
                    (not_at_c_p2)

                    ; #48660: <==negation-removal== 81299 (pos)
                    (not (at_c_p2))

                    ; #63958: <==negation-removal== 13026 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #71109: origin
                    (at_c_p8)

                    ; #81299: origin
                    (not_at_c_p2)

                    ; #48660: <==negation-removal== 81299 (pos)
                    (not (at_c_p2))

                    ; #56082: <==negation-removal== 71109 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #74964: origin
                    (at_c_p9)

                    ; #81299: origin
                    (not_at_c_p2)

                    ; #11527: <==negation-removal== 74964 (pos)
                    (not (not_at_c_p9))

                    ; #48660: <==negation-removal== 81299 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #22639: origin
                    (at_c_p1)

                    ; #87916: origin
                    (not_at_c_p3)

                    ; #16458: <==negation-removal== 22639 (pos)
                    (not (not_at_c_p1))

                    ; #37449: <==negation-removal== 87916 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #48660: origin
                    (at_c_p2)

                    ; #87916: origin
                    (not_at_c_p3)

                    ; #37449: <==negation-removal== 87916 (pos)
                    (not (at_c_p3))

                    ; #81299: <==negation-removal== 48660 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #37449: origin
                    (at_c_p3)

                    ; #87916: origin
                    (not_at_c_p3)

                    ; #37449: <==negation-removal== 87916 (pos)
                    (not (at_c_p3))

                    ; #87916: <==negation-removal== 37449 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #50811: origin
                    (at_c_p4)

                    ; #87916: origin
                    (not_at_c_p3)

                    ; #37449: <==negation-removal== 87916 (pos)
                    (not (at_c_p3))

                    ; #89005: <==negation-removal== 50811 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #75980: origin
                    (at_c_p5)

                    ; #87916: origin
                    (not_at_c_p3)

                    ; #15164: <==negation-removal== 75980 (pos)
                    (not (not_at_c_p5))

                    ; #37449: <==negation-removal== 87916 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #84598: origin
                    (at_c_p6)

                    ; #87916: origin
                    (not_at_c_p3)

                    ; #29582: <==negation-removal== 84598 (pos)
                    (not (not_at_c_p6))

                    ; #37449: <==negation-removal== 87916 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #13026: origin
                    (at_c_p7)

                    ; #87916: origin
                    (not_at_c_p3)

                    ; #37449: <==negation-removal== 87916 (pos)
                    (not (at_c_p3))

                    ; #63958: <==negation-removal== 13026 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #71109: origin
                    (at_c_p8)

                    ; #87916: origin
                    (not_at_c_p3)

                    ; #37449: <==negation-removal== 87916 (pos)
                    (not (at_c_p3))

                    ; #56082: <==negation-removal== 71109 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #74964: origin
                    (at_c_p9)

                    ; #87916: origin
                    (not_at_c_p3)

                    ; #11527: <==negation-removal== 74964 (pos)
                    (not (not_at_c_p9))

                    ; #37449: <==negation-removal== 87916 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #22639: origin
                    (at_c_p1)

                    ; #89005: origin
                    (not_at_c_p4)

                    ; #16458: <==negation-removal== 22639 (pos)
                    (not (not_at_c_p1))

                    ; #50811: <==negation-removal== 89005 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #48660: origin
                    (at_c_p2)

                    ; #89005: origin
                    (not_at_c_p4)

                    ; #50811: <==negation-removal== 89005 (pos)
                    (not (at_c_p4))

                    ; #81299: <==negation-removal== 48660 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #37449: origin
                    (at_c_p3)

                    ; #89005: origin
                    (not_at_c_p4)

                    ; #50811: <==negation-removal== 89005 (pos)
                    (not (at_c_p4))

                    ; #87916: <==negation-removal== 37449 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #50811: origin
                    (at_c_p4)

                    ; #89005: origin
                    (not_at_c_p4)

                    ; #50811: <==negation-removal== 89005 (pos)
                    (not (at_c_p4))

                    ; #89005: <==negation-removal== 50811 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #75980: origin
                    (at_c_p5)

                    ; #89005: origin
                    (not_at_c_p4)

                    ; #15164: <==negation-removal== 75980 (pos)
                    (not (not_at_c_p5))

                    ; #50811: <==negation-removal== 89005 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #84598: origin
                    (at_c_p6)

                    ; #89005: origin
                    (not_at_c_p4)

                    ; #29582: <==negation-removal== 84598 (pos)
                    (not (not_at_c_p6))

                    ; #50811: <==negation-removal== 89005 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #13026: origin
                    (at_c_p7)

                    ; #89005: origin
                    (not_at_c_p4)

                    ; #50811: <==negation-removal== 89005 (pos)
                    (not (at_c_p4))

                    ; #63958: <==negation-removal== 13026 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #71109: origin
                    (at_c_p8)

                    ; #89005: origin
                    (not_at_c_p4)

                    ; #50811: <==negation-removal== 89005 (pos)
                    (not (at_c_p4))

                    ; #56082: <==negation-removal== 71109 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #74964: origin
                    (at_c_p9)

                    ; #89005: origin
                    (not_at_c_p4)

                    ; #11527: <==negation-removal== 74964 (pos)
                    (not (not_at_c_p9))

                    ; #50811: <==negation-removal== 89005 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #15164: origin
                    (not_at_c_p5)

                    ; #22639: origin
                    (at_c_p1)

                    ; #16458: <==negation-removal== 22639 (pos)
                    (not (not_at_c_p1))

                    ; #75980: <==negation-removal== 15164 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #15164: origin
                    (not_at_c_p5)

                    ; #48660: origin
                    (at_c_p2)

                    ; #75980: <==negation-removal== 15164 (pos)
                    (not (at_c_p5))

                    ; #81299: <==negation-removal== 48660 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #15164: origin
                    (not_at_c_p5)

                    ; #37449: origin
                    (at_c_p3)

                    ; #75980: <==negation-removal== 15164 (pos)
                    (not (at_c_p5))

                    ; #87916: <==negation-removal== 37449 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15164: origin
                    (not_at_c_p5)

                    ; #50811: origin
                    (at_c_p4)

                    ; #75980: <==negation-removal== 15164 (pos)
                    (not (at_c_p5))

                    ; #89005: <==negation-removal== 50811 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #15164: origin
                    (not_at_c_p5)

                    ; #75980: origin
                    (at_c_p5)

                    ; #15164: <==negation-removal== 75980 (pos)
                    (not (not_at_c_p5))

                    ; #75980: <==negation-removal== 15164 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #15164: origin
                    (not_at_c_p5)

                    ; #84598: origin
                    (at_c_p6)

                    ; #29582: <==negation-removal== 84598 (pos)
                    (not (not_at_c_p6))

                    ; #75980: <==negation-removal== 15164 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #13026: origin
                    (at_c_p7)

                    ; #15164: origin
                    (not_at_c_p5)

                    ; #63958: <==negation-removal== 13026 (pos)
                    (not (not_at_c_p7))

                    ; #75980: <==negation-removal== 15164 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #15164: origin
                    (not_at_c_p5)

                    ; #71109: origin
                    (at_c_p8)

                    ; #56082: <==negation-removal== 71109 (pos)
                    (not (not_at_c_p8))

                    ; #75980: <==negation-removal== 15164 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15164: origin
                    (not_at_c_p5)

                    ; #74964: origin
                    (at_c_p9)

                    ; #11527: <==negation-removal== 74964 (pos)
                    (not (not_at_c_p9))

                    ; #75980: <==negation-removal== 15164 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #22639: origin
                    (at_c_p1)

                    ; #29582: origin
                    (not_at_c_p6)

                    ; #16458: <==negation-removal== 22639 (pos)
                    (not (not_at_c_p1))

                    ; #84598: <==negation-removal== 29582 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #29582: origin
                    (not_at_c_p6)

                    ; #48660: origin
                    (at_c_p2)

                    ; #81299: <==negation-removal== 48660 (pos)
                    (not (not_at_c_p2))

                    ; #84598: <==negation-removal== 29582 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #29582: origin
                    (not_at_c_p6)

                    ; #37449: origin
                    (at_c_p3)

                    ; #84598: <==negation-removal== 29582 (pos)
                    (not (at_c_p6))

                    ; #87916: <==negation-removal== 37449 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #29582: origin
                    (not_at_c_p6)

                    ; #50811: origin
                    (at_c_p4)

                    ; #84598: <==negation-removal== 29582 (pos)
                    (not (at_c_p6))

                    ; #89005: <==negation-removal== 50811 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #29582: origin
                    (not_at_c_p6)

                    ; #75980: origin
                    (at_c_p5)

                    ; #15164: <==negation-removal== 75980 (pos)
                    (not (not_at_c_p5))

                    ; #84598: <==negation-removal== 29582 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #29582: origin
                    (not_at_c_p6)

                    ; #84598: origin
                    (at_c_p6)

                    ; #29582: <==negation-removal== 84598 (pos)
                    (not (not_at_c_p6))

                    ; #84598: <==negation-removal== 29582 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13026: origin
                    (at_c_p7)

                    ; #29582: origin
                    (not_at_c_p6)

                    ; #63958: <==negation-removal== 13026 (pos)
                    (not (not_at_c_p7))

                    ; #84598: <==negation-removal== 29582 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29582: origin
                    (not_at_c_p6)

                    ; #71109: origin
                    (at_c_p8)

                    ; #56082: <==negation-removal== 71109 (pos)
                    (not (not_at_c_p8))

                    ; #84598: <==negation-removal== 29582 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #29582: origin
                    (not_at_c_p6)

                    ; #74964: origin
                    (at_c_p9)

                    ; #11527: <==negation-removal== 74964 (pos)
                    (not (not_at_c_p9))

                    ; #84598: <==negation-removal== 29582 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #22639: origin
                    (at_c_p1)

                    ; #63958: origin
                    (not_at_c_p7)

                    ; #13026: <==negation-removal== 63958 (pos)
                    (not (at_c_p7))

                    ; #16458: <==negation-removal== 22639 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #48660: origin
                    (at_c_p2)

                    ; #63958: origin
                    (not_at_c_p7)

                    ; #13026: <==negation-removal== 63958 (pos)
                    (not (at_c_p7))

                    ; #81299: <==negation-removal== 48660 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #37449: origin
                    (at_c_p3)

                    ; #63958: origin
                    (not_at_c_p7)

                    ; #13026: <==negation-removal== 63958 (pos)
                    (not (at_c_p7))

                    ; #87916: <==negation-removal== 37449 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50811: origin
                    (at_c_p4)

                    ; #63958: origin
                    (not_at_c_p7)

                    ; #13026: <==negation-removal== 63958 (pos)
                    (not (at_c_p7))

                    ; #89005: <==negation-removal== 50811 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #63958: origin
                    (not_at_c_p7)

                    ; #75980: origin
                    (at_c_p5)

                    ; #13026: <==negation-removal== 63958 (pos)
                    (not (at_c_p7))

                    ; #15164: <==negation-removal== 75980 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #63958: origin
                    (not_at_c_p7)

                    ; #84598: origin
                    (at_c_p6)

                    ; #13026: <==negation-removal== 63958 (pos)
                    (not (at_c_p7))

                    ; #29582: <==negation-removal== 84598 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #13026: origin
                    (at_c_p7)

                    ; #63958: origin
                    (not_at_c_p7)

                    ; #13026: <==negation-removal== 63958 (pos)
                    (not (at_c_p7))

                    ; #63958: <==negation-removal== 13026 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #63958: origin
                    (not_at_c_p7)

                    ; #71109: origin
                    (at_c_p8)

                    ; #13026: <==negation-removal== 63958 (pos)
                    (not (at_c_p7))

                    ; #56082: <==negation-removal== 71109 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #63958: origin
                    (not_at_c_p7)

                    ; #74964: origin
                    (at_c_p9)

                    ; #11527: <==negation-removal== 74964 (pos)
                    (not (not_at_c_p9))

                    ; #13026: <==negation-removal== 63958 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22639: origin
                    (at_c_p1)

                    ; #56082: origin
                    (not_at_c_p8)

                    ; #16458: <==negation-removal== 22639 (pos)
                    (not (not_at_c_p1))

                    ; #71109: <==negation-removal== 56082 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #48660: origin
                    (at_c_p2)

                    ; #56082: origin
                    (not_at_c_p8)

                    ; #71109: <==negation-removal== 56082 (pos)
                    (not (at_c_p8))

                    ; #81299: <==negation-removal== 48660 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #37449: origin
                    (at_c_p3)

                    ; #56082: origin
                    (not_at_c_p8)

                    ; #71109: <==negation-removal== 56082 (pos)
                    (not (at_c_p8))

                    ; #87916: <==negation-removal== 37449 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #50811: origin
                    (at_c_p4)

                    ; #56082: origin
                    (not_at_c_p8)

                    ; #71109: <==negation-removal== 56082 (pos)
                    (not (at_c_p8))

                    ; #89005: <==negation-removal== 50811 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #56082: origin
                    (not_at_c_p8)

                    ; #75980: origin
                    (at_c_p5)

                    ; #15164: <==negation-removal== 75980 (pos)
                    (not (not_at_c_p5))

                    ; #71109: <==negation-removal== 56082 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #56082: origin
                    (not_at_c_p8)

                    ; #84598: origin
                    (at_c_p6)

                    ; #29582: <==negation-removal== 84598 (pos)
                    (not (not_at_c_p6))

                    ; #71109: <==negation-removal== 56082 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #13026: origin
                    (at_c_p7)

                    ; #56082: origin
                    (not_at_c_p8)

                    ; #63958: <==negation-removal== 13026 (pos)
                    (not (not_at_c_p7))

                    ; #71109: <==negation-removal== 56082 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #56082: origin
                    (not_at_c_p8)

                    ; #71109: origin
                    (at_c_p8)

                    ; #56082: <==negation-removal== 71109 (pos)
                    (not (not_at_c_p8))

                    ; #71109: <==negation-removal== 56082 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #56082: origin
                    (not_at_c_p8)

                    ; #74964: origin
                    (at_c_p9)

                    ; #11527: <==negation-removal== 74964 (pos)
                    (not (not_at_c_p9))

                    ; #71109: <==negation-removal== 56082 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11527: origin
                    (not_at_c_p9)

                    ; #22639: origin
                    (at_c_p1)

                    ; #16458: <==negation-removal== 22639 (pos)
                    (not (not_at_c_p1))

                    ; #74964: <==negation-removal== 11527 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11527: origin
                    (not_at_c_p9)

                    ; #48660: origin
                    (at_c_p2)

                    ; #74964: <==negation-removal== 11527 (pos)
                    (not (at_c_p9))

                    ; #81299: <==negation-removal== 48660 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11527: origin
                    (not_at_c_p9)

                    ; #37449: origin
                    (at_c_p3)

                    ; #74964: <==negation-removal== 11527 (pos)
                    (not (at_c_p9))

                    ; #87916: <==negation-removal== 37449 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11527: origin
                    (not_at_c_p9)

                    ; #50811: origin
                    (at_c_p4)

                    ; #74964: <==negation-removal== 11527 (pos)
                    (not (at_c_p9))

                    ; #89005: <==negation-removal== 50811 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11527: origin
                    (not_at_c_p9)

                    ; #75980: origin
                    (at_c_p5)

                    ; #15164: <==negation-removal== 75980 (pos)
                    (not (not_at_c_p5))

                    ; #74964: <==negation-removal== 11527 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11527: origin
                    (not_at_c_p9)

                    ; #84598: origin
                    (at_c_p6)

                    ; #29582: <==negation-removal== 84598 (pos)
                    (not (not_at_c_p6))

                    ; #74964: <==negation-removal== 11527 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11527: origin
                    (not_at_c_p9)

                    ; #13026: origin
                    (at_c_p7)

                    ; #63958: <==negation-removal== 13026 (pos)
                    (not (not_at_c_p7))

                    ; #74964: <==negation-removal== 11527 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11527: origin
                    (not_at_c_p9)

                    ; #71109: origin
                    (at_c_p8)

                    ; #56082: <==negation-removal== 71109 (pos)
                    (not (not_at_c_p8))

                    ; #74964: <==negation-removal== 11527 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11527: origin
                    (not_at_c_p9)

                    ; #74964: origin
                    (at_c_p9)

                    ; #11527: <==negation-removal== 74964 (pos)
                    (not (not_at_c_p9))

                    ; #74964: <==negation-removal== 11527 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12543: <==closure== 15362 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #15362: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #16067: origin
                    (checked_p1)

                    ; #16553: <==closure== 16840 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #16840: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #19175: <==commonly_known== 16067 (pos)
                    (Ba_checked_p1)

                    ; #20258: <==commonly_known== 50680 (neg)
                    (Pb_checked_p1)

                    ; #33281: <==commonly_known== 50680 (neg)
                    (Pc_checked_p1)

                    ; #48866: <==commonly_known== 16067 (pos)
                    (Bb_checked_p1)

                    ; #49259: <==commonly_known== 50680 (neg)
                    (Pa_checked_p1)

                    ; #91679: <==commonly_known== 16067 (pos)
                    (Bc_checked_p1)

                    ; #18490: <==negation-removal== 49259 (pos)
                    (not (Ba_not_checked_p1))

                    ; #23040: <==uncertain_firing== 16553 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #47097: <==negation-removal== 48866 (pos)
                    (not (Pb_not_checked_p1))

                    ; #47162: <==negation-removal== 91679 (pos)
                    (not (Pc_not_checked_p1))

                    ; #49644: <==negation-removal== 33281 (pos)
                    (not (Bc_not_checked_p1))

                    ; #50680: <==negation-removal== 16067 (pos)
                    (not (not_checked_p1))

                    ; #51023: <==negation-removal== 19175 (pos)
                    (not (Pa_not_checked_p1))

                    ; #52327: <==negation-removal== 12543 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #54226: <==uncertain_firing== 12543 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #60651: <==negation-removal== 15362 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #74092: <==negation-removal== 16553 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #78839: <==negation-removal== 20258 (pos)
                    (not (Bb_not_checked_p1))

                    ; #83514: <==negation-removal== 16840 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #86524: <==uncertain_firing== 16840 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #87156: <==uncertain_firing== 15362 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #15682: <==commonly_known== 89893 (pos)
                    (Ba_checked_p2)

                    ; #25472: <==closure== 51687 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #27660: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #41703: <==closure== 27660 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #51687: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #57636: <==commonly_known== 89893 (pos)
                    (Bb_checked_p2)

                    ; #58779: <==commonly_known== 43279 (neg)
                    (Pa_checked_p2)

                    ; #82584: <==commonly_known== 43279 (neg)
                    (Pb_checked_p2)

                    ; #83883: <==commonly_known== 43279 (neg)
                    (Pc_checked_p2)

                    ; #89893: origin
                    (checked_p2)

                    ; #91440: <==commonly_known== 89893 (pos)
                    (Bc_checked_p2)

                    ; #10465: <==negation-removal== 58779 (pos)
                    (not (Ba_not_checked_p2))

                    ; #14103: <==uncertain_firing== 27660 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #18660: <==negation-removal== 41703 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #21641: <==negation-removal== 51687 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #23055: <==negation-removal== 91440 (pos)
                    (not (Pc_not_checked_p2))

                    ; #24066: <==negation-removal== 25472 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27358: <==uncertain_firing== 51687 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #43279: <==negation-removal== 89893 (pos)
                    (not (not_checked_p2))

                    ; #43567: <==negation-removal== 27660 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #63236: <==negation-removal== 82584 (pos)
                    (not (Bb_not_checked_p2))

                    ; #71197: <==uncertain_firing== 41703 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #72421: <==negation-removal== 15682 (pos)
                    (not (Pa_not_checked_p2))

                    ; #73808: <==negation-removal== 57636 (pos)
                    (not (Pb_not_checked_p2))

                    ; #81770: <==uncertain_firing== 25472 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #85027: <==negation-removal== 83883 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #10915: origin
                    (checked_p3)

                    ; #21167: <==commonly_known== 10915 (pos)
                    (Bb_checked_p3)

                    ; #28397: <==commonly_known== 10915 (pos)
                    (Ba_checked_p3)

                    ; #49928: <==commonly_known== 16020 (neg)
                    (Pa_checked_p3)

                    ; #54868: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #58278: <==closure== 60799 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #59025: <==closure== 54868 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #60799: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #67775: <==commonly_known== 16020 (neg)
                    (Pc_checked_p3)

                    ; #76115: <==commonly_known== 16020 (neg)
                    (Pb_checked_p3)

                    ; #81612: <==commonly_known== 10915 (pos)
                    (Bc_checked_p3)

                    ; #11547: <==negation-removal== 81612 (pos)
                    (not (Pc_not_checked_p3))

                    ; #15242: <==negation-removal== 59025 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #16020: <==negation-removal== 10915 (pos)
                    (not (not_checked_p3))

                    ; #16421: <==uncertain_firing== 60799 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #26009: <==negation-removal== 58278 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #26275: <==negation-removal== 54868 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #38140: <==negation-removal== 67775 (pos)
                    (not (Bc_not_checked_p3))

                    ; #40591: <==negation-removal== 49928 (pos)
                    (not (Ba_not_checked_p3))

                    ; #41031: <==negation-removal== 21167 (pos)
                    (not (Pb_not_checked_p3))

                    ; #53116: <==uncertain_firing== 54868 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #69858: <==negation-removal== 28397 (pos)
                    (not (Pa_not_checked_p3))

                    ; #70124: <==negation-removal== 76115 (pos)
                    (not (Bb_not_checked_p3))

                    ; #71615: <==uncertain_firing== 58278 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #83018: <==negation-removal== 60799 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #93911: <==uncertain_firing== 59025 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #12596: <==commonly_known== 66500 (pos)
                    (Bc_checked_p4)

                    ; #14308: <==closure== 92106 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #25935: <==closure== 65817 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #41718: <==commonly_known== 81931 (neg)
                    (Pa_checked_p4)

                    ; #65817: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #66500: origin
                    (checked_p4)

                    ; #68886: <==commonly_known== 81931 (neg)
                    (Pb_checked_p4)

                    ; #72267: <==commonly_known== 81931 (neg)
                    (Pc_checked_p4)

                    ; #75782: <==commonly_known== 66500 (pos)
                    (Bb_checked_p4)

                    ; #83332: <==commonly_known== 66500 (pos)
                    (Ba_checked_p4)

                    ; #92106: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #12698: <==uncertain_firing== 65817 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #15067: <==uncertain_firing== 92106 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #35462: <==negation-removal== 41718 (pos)
                    (not (Ba_not_checked_p4))

                    ; #36951: <==negation-removal== 72267 (pos)
                    (not (Bc_not_checked_p4))

                    ; #37810: <==negation-removal== 68886 (pos)
                    (not (Bb_not_checked_p4))

                    ; #43306: <==negation-removal== 14308 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #58587: <==negation-removal== 75782 (pos)
                    (not (Pb_not_checked_p4))

                    ; #63224: <==negation-removal== 12596 (pos)
                    (not (Pc_not_checked_p4))

                    ; #64471: <==negation-removal== 65817 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #67414: <==uncertain_firing== 25935 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #76907: <==uncertain_firing== 14308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #81931: <==negation-removal== 66500 (pos)
                    (not (not_checked_p4))

                    ; #82849: <==negation-removal== 83332 (pos)
                    (not (Pa_not_checked_p4))

                    ; #86957: <==negation-removal== 92106 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #89129: <==negation-removal== 25935 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11140: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #11991: <==commonly_known== 59430 (pos)
                    (Bb_checked_p5)

                    ; #20638: <==commonly_known== 59430 (pos)
                    (Bc_checked_p5)

                    ; #23948: <==commonly_known== 33005 (neg)
                    (Pc_checked_p5)

                    ; #38490: <==closure== 11140 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #39403: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #41553: <==commonly_known== 33005 (neg)
                    (Pa_checked_p5)

                    ; #59430: origin
                    (checked_p5)

                    ; #66597: <==closure== 39403 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #81488: <==commonly_known== 33005 (neg)
                    (Pb_checked_p5)

                    ; #87788: <==commonly_known== 59430 (pos)
                    (Ba_checked_p5)

                    ; #10751: <==uncertain_firing== 39403 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #15446: <==uncertain_firing== 38490 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18522: <==negation-removal== 38490 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #20709: <==negation-removal== 87788 (pos)
                    (not (Pa_not_checked_p5))

                    ; #23352: <==negation-removal== 11140 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #29393: <==uncertain_firing== 66597 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #33005: <==negation-removal== 59430 (pos)
                    (not (not_checked_p5))

                    ; #35622: <==negation-removal== 81488 (pos)
                    (not (Bb_not_checked_p5))

                    ; #38523: <==negation-removal== 66597 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #45904: <==negation-removal== 11991 (pos)
                    (not (Pb_not_checked_p5))

                    ; #50420: <==negation-removal== 20638 (pos)
                    (not (Pc_not_checked_p5))

                    ; #51583: <==uncertain_firing== 11140 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #70379: <==negation-removal== 23948 (pos)
                    (not (Bc_not_checked_p5))

                    ; #78698: <==negation-removal== 41553 (pos)
                    (not (Ba_not_checked_p5))

                    ; #79181: <==negation-removal== 39403 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #19464: <==commonly_known== 13191 (neg)
                    (Pb_checked_p6)

                    ; #25646: <==commonly_known== 88414 (pos)
                    (Bc_checked_p6)

                    ; #29681: <==commonly_known== 88414 (pos)
                    (Ba_checked_p6)

                    ; #30562: <==commonly_known== 13191 (neg)
                    (Pc_checked_p6)

                    ; #44333: <==closure== 71968 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #50396: <==commonly_known== 13191 (neg)
                    (Pa_checked_p6)

                    ; #55071: <==commonly_known== 88414 (pos)
                    (Bb_checked_p6)

                    ; #71968: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #80901: <==closure== 85686 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #85686: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #88414: origin
                    (checked_p6)

                    ; #10906: <==negation-removal== 19464 (pos)
                    (not (Bb_not_checked_p6))

                    ; #13191: <==negation-removal== 88414 (pos)
                    (not (not_checked_p6))

                    ; #24150: <==negation-removal== 55071 (pos)
                    (not (Pb_not_checked_p6))

                    ; #26146: <==negation-removal== 85686 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #34313: <==uncertain_firing== 71968 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #37675: <==uncertain_firing== 80901 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #37833: <==negation-removal== 44333 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #43119: <==negation-removal== 30562 (pos)
                    (not (Bc_not_checked_p6))

                    ; #44807: <==negation-removal== 71968 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #55899: <==negation-removal== 80901 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #75831: <==negation-removal== 50396 (pos)
                    (not (Ba_not_checked_p6))

                    ; #79687: <==negation-removal== 29681 (pos)
                    (not (Pa_not_checked_p6))

                    ; #80948: <==uncertain_firing== 85686 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #81928: <==uncertain_firing== 44333 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #88130: <==negation-removal== 25646 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #27813: <==commonly_known== 36123 (pos)
                    (Ba_checked_p7)

                    ; #36123: origin
                    (checked_p7)

                    ; #50198: <==commonly_known== 36123 (pos)
                    (Bc_checked_p7)

                    ; #55352: <==commonly_known== 43154 (neg)
                    (Pb_checked_p7)

                    ; #55801: <==commonly_known== 43154 (neg)
                    (Pc_checked_p7)

                    ; #60899: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #62564: <==closure== 60899 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #64266: <==commonly_known== 43154 (neg)
                    (Pa_checked_p7)

                    ; #78365: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #83972: <==commonly_known== 36123 (pos)
                    (Bb_checked_p7)

                    ; #89766: <==closure== 78365 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #14386: <==negation-removal== 83972 (pos)
                    (not (Pb_not_checked_p7))

                    ; #21148: <==negation-removal== 62564 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #31061: <==negation-removal== 78365 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #43154: <==negation-removal== 36123 (pos)
                    (not (not_checked_p7))

                    ; #44087: <==negation-removal== 55352 (pos)
                    (not (Bb_not_checked_p7))

                    ; #44730: <==uncertain_firing== 60899 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #55684: <==negation-removal== 55801 (pos)
                    (not (Bc_not_checked_p7))

                    ; #58001: <==uncertain_firing== 78365 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #59598: <==negation-removal== 60899 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #60855: <==negation-removal== 50198 (pos)
                    (not (Pc_not_checked_p7))

                    ; #63211: <==uncertain_firing== 89766 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #68408: <==negation-removal== 89766 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #79654: <==uncertain_firing== 62564 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #82221: <==negation-removal== 64266 (pos)
                    (not (Ba_not_checked_p7))

                    ; #83592: <==negation-removal== 27813 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #12748: origin
                    (checked_p8)

                    ; #20877: <==commonly_known== 12748 (pos)
                    (Bc_checked_p8)

                    ; #32900: <==commonly_known== 12748 (pos)
                    (Bb_checked_p8)

                    ; #34421: <==commonly_known== 25532 (neg)
                    (Pa_checked_p8)

                    ; #41583: <==commonly_known== 12748 (pos)
                    (Ba_checked_p8)

                    ; #45198: <==commonly_known== 25532 (neg)
                    (Pc_checked_p8)

                    ; #67831: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #74860: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #76484: <==closure== 67831 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #81918: <==closure== 74860 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #82380: <==commonly_known== 25532 (neg)
                    (Pb_checked_p8)

                    ; #25532: <==negation-removal== 12748 (pos)
                    (not (not_checked_p8))

                    ; #28043: <==uncertain_firing== 74860 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #36701: <==negation-removal== 41583 (pos)
                    (not (Pa_not_checked_p8))

                    ; #40196: <==negation-removal== 34421 (pos)
                    (not (Ba_not_checked_p8))

                    ; #44493: <==negation-removal== 32900 (pos)
                    (not (Pb_not_checked_p8))

                    ; #52738: <==negation-removal== 67831 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #54661: <==negation-removal== 81918 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #55250: <==uncertain_firing== 81918 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #70785: <==negation-removal== 82380 (pos)
                    (not (Bb_not_checked_p8))

                    ; #71435: <==negation-removal== 74860 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #76322: <==negation-removal== 45198 (pos)
                    (not (Bc_not_checked_p8))

                    ; #78232: <==negation-removal== 76484 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #85931: <==uncertain_firing== 76484 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #86228: <==uncertain_firing== 67831 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #91964: <==negation-removal== 20877 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #10963: <==commonly_known== 78292 (neg)
                    (Pb_checked_p9)

                    ; #11766: origin
                    (checked_p9)

                    ; #24630: <==commonly_known== 11766 (pos)
                    (Ba_checked_p9)

                    ; #39345: <==closure== 44718 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #44284: <==commonly_known== 78292 (neg)
                    (Pc_checked_p9)

                    ; #44718: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #48038: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #63520: <==closure== 48038 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #64187: <==commonly_known== 11766 (pos)
                    (Bc_checked_p9)

                    ; #84646: <==commonly_known== 11766 (pos)
                    (Bb_checked_p9)

                    ; #91029: <==commonly_known== 78292 (neg)
                    (Pa_checked_p9)

                    ; #10420: <==negation-removal== 39345 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #14193: <==negation-removal== 24630 (pos)
                    (not (Pa_not_checked_p9))

                    ; #23361: <==negation-removal== 64187 (pos)
                    (not (Pc_not_checked_p9))

                    ; #24968: <==negation-removal== 44718 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #25655: <==uncertain_firing== 44718 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #43574: <==uncertain_firing== 39345 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #48815: <==negation-removal== 91029 (pos)
                    (not (Ba_not_checked_p9))

                    ; #54999: <==negation-removal== 10963 (pos)
                    (not (Bb_not_checked_p9))

                    ; #55655: <==uncertain_firing== 48038 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #72572: <==negation-removal== 44284 (pos)
                    (not (Bc_not_checked_p9))

                    ; #78292: <==negation-removal== 11766 (pos)
                    (not (not_checked_p9))

                    ; #82995: <==negation-removal== 63520 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #89079: <==uncertain_firing== 63520 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #91643: <==negation-removal== 48038 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #97494: <==negation-removal== 84646 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #16067: origin
                    (checked_p1)

                    ; #19175: <==commonly_known== 16067 (pos)
                    (Ba_checked_p1)

                    ; #20258: <==commonly_known== 50680 (neg)
                    (Pb_checked_p1)

                    ; #33281: <==commonly_known== 50680 (neg)
                    (Pc_checked_p1)

                    ; #46521: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #48866: <==commonly_known== 16067 (pos)
                    (Bb_checked_p1)

                    ; #49259: <==commonly_known== 50680 (neg)
                    (Pa_checked_p1)

                    ; #72886: <==closure== 46521 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #85234: <==closure== 92227 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #91679: <==commonly_known== 16067 (pos)
                    (Bc_checked_p1)

                    ; #92227: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #18490: <==negation-removal== 49259 (pos)
                    (not (Ba_not_checked_p1))

                    ; #21649: <==uncertain_firing== 85234 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #22592: <==uncertain_firing== 46521 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #28598: <==negation-removal== 46521 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #41509: <==negation-removal== 72886 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #47097: <==negation-removal== 48866 (pos)
                    (not (Pb_not_checked_p1))

                    ; #47162: <==negation-removal== 91679 (pos)
                    (not (Pc_not_checked_p1))

                    ; #49644: <==negation-removal== 33281 (pos)
                    (not (Bc_not_checked_p1))

                    ; #50680: <==negation-removal== 16067 (pos)
                    (not (not_checked_p1))

                    ; #51023: <==negation-removal== 19175 (pos)
                    (not (Pa_not_checked_p1))

                    ; #57856: <==uncertain_firing== 72886 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #78839: <==negation-removal== 20258 (pos)
                    (not (Bb_not_checked_p1))

                    ; #82208: <==uncertain_firing== 92227 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #90656: <==negation-removal== 85234 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #90657: <==negation-removal== 92227 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #15682: <==commonly_known== 89893 (pos)
                    (Ba_checked_p2)

                    ; #18979: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #38666: <==closure== 18979 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #47232: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #57636: <==commonly_known== 89893 (pos)
                    (Bb_checked_p2)

                    ; #58779: <==commonly_known== 43279 (neg)
                    (Pa_checked_p2)

                    ; #68181: <==closure== 47232 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #82584: <==commonly_known== 43279 (neg)
                    (Pb_checked_p2)

                    ; #83883: <==commonly_known== 43279 (neg)
                    (Pc_checked_p2)

                    ; #89893: origin
                    (checked_p2)

                    ; #91440: <==commonly_known== 89893 (pos)
                    (Bc_checked_p2)

                    ; #10465: <==negation-removal== 58779 (pos)
                    (not (Ba_not_checked_p2))

                    ; #23055: <==negation-removal== 91440 (pos)
                    (not (Pc_not_checked_p2))

                    ; #23383: <==uncertain_firing== 18979 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #24348: <==uncertain_firing== 38666 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #28722: <==uncertain_firing== 47232 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #43279: <==negation-removal== 89893 (pos)
                    (not (not_checked_p2))

                    ; #63236: <==negation-removal== 82584 (pos)
                    (not (Bb_not_checked_p2))

                    ; #65090: <==negation-removal== 38666 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #69550: <==negation-removal== 47232 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #72421: <==negation-removal== 15682 (pos)
                    (not (Pa_not_checked_p2))

                    ; #73808: <==negation-removal== 57636 (pos)
                    (not (Pb_not_checked_p2))

                    ; #80162: <==negation-removal== 18979 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #84835: <==negation-removal== 68181 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #85027: <==negation-removal== 83883 (pos)
                    (not (Bc_not_checked_p2))

                    ; #90000: <==uncertain_firing== 68181 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #10915: origin
                    (checked_p3)

                    ; #21167: <==commonly_known== 10915 (pos)
                    (Bb_checked_p3)

                    ; #28397: <==commonly_known== 10915 (pos)
                    (Ba_checked_p3)

                    ; #35977: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #49928: <==commonly_known== 16020 (neg)
                    (Pa_checked_p3)

                    ; #52853: <==closure== 35977 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #67775: <==commonly_known== 16020 (neg)
                    (Pc_checked_p3)

                    ; #74102: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #76115: <==commonly_known== 16020 (neg)
                    (Pb_checked_p3)

                    ; #81612: <==commonly_known== 10915 (pos)
                    (Bc_checked_p3)

                    ; #84475: <==closure== 74102 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #11547: <==negation-removal== 81612 (pos)
                    (not (Pc_not_checked_p3))

                    ; #16020: <==negation-removal== 10915 (pos)
                    (not (not_checked_p3))

                    ; #16974: <==negation-removal== 74102 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #29340: <==uncertain_firing== 84475 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #34124: <==negation-removal== 35977 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #36004: <==negation-removal== 52853 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #38140: <==negation-removal== 67775 (pos)
                    (not (Bc_not_checked_p3))

                    ; #40591: <==negation-removal== 49928 (pos)
                    (not (Ba_not_checked_p3))

                    ; #40717: <==uncertain_firing== 35977 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #41031: <==negation-removal== 21167 (pos)
                    (not (Pb_not_checked_p3))

                    ; #46925: <==negation-removal== 84475 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #53747: <==uncertain_firing== 74102 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #69858: <==negation-removal== 28397 (pos)
                    (not (Pa_not_checked_p3))

                    ; #70124: <==negation-removal== 76115 (pos)
                    (not (Bb_not_checked_p3))

                    ; #81376: <==uncertain_firing== 52853 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12596: <==commonly_known== 66500 (pos)
                    (Bc_checked_p4)

                    ; #23630: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #25590: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #41718: <==commonly_known== 81931 (neg)
                    (Pa_checked_p4)

                    ; #43484: <==closure== 23630 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #66500: origin
                    (checked_p4)

                    ; #68886: <==commonly_known== 81931 (neg)
                    (Pb_checked_p4)

                    ; #72267: <==commonly_known== 81931 (neg)
                    (Pc_checked_p4)

                    ; #75782: <==commonly_known== 66500 (pos)
                    (Bb_checked_p4)

                    ; #77051: <==closure== 25590 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #83332: <==commonly_known== 66500 (pos)
                    (Ba_checked_p4)

                    ; #29331: <==negation-removal== 25590 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #35117: <==uncertain_firing== 77051 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #35462: <==negation-removal== 41718 (pos)
                    (not (Ba_not_checked_p4))

                    ; #36951: <==negation-removal== 72267 (pos)
                    (not (Bc_not_checked_p4))

                    ; #37810: <==negation-removal== 68886 (pos)
                    (not (Bb_not_checked_p4))

                    ; #50736: <==negation-removal== 43484 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #52352: <==uncertain_firing== 43484 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #55511: <==negation-removal== 77051 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #58587: <==negation-removal== 75782 (pos)
                    (not (Pb_not_checked_p4))

                    ; #63224: <==negation-removal== 12596 (pos)
                    (not (Pc_not_checked_p4))

                    ; #81931: <==negation-removal== 66500 (pos)
                    (not (not_checked_p4))

                    ; #82849: <==negation-removal== 83332 (pos)
                    (not (Pa_not_checked_p4))

                    ; #83601: <==uncertain_firing== 25590 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #86583: <==uncertain_firing== 23630 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #95199: <==negation-removal== 23630 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #11991: <==commonly_known== 59430 (pos)
                    (Bb_checked_p5)

                    ; #20638: <==commonly_known== 59430 (pos)
                    (Bc_checked_p5)

                    ; #23948: <==commonly_known== 33005 (neg)
                    (Pc_checked_p5)

                    ; #27109: <==closure== 49782 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #41553: <==commonly_known== 33005 (neg)
                    (Pa_checked_p5)

                    ; #49782: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #59430: origin
                    (checked_p5)

                    ; #78530: <==closure== 86079 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #81488: <==commonly_known== 33005 (neg)
                    (Pb_checked_p5)

                    ; #86079: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #87788: <==commonly_known== 59430 (pos)
                    (Ba_checked_p5)

                    ; #20709: <==negation-removal== 87788 (pos)
                    (not (Pa_not_checked_p5))

                    ; #33005: <==negation-removal== 59430 (pos)
                    (not (not_checked_p5))

                    ; #35622: <==negation-removal== 81488 (pos)
                    (not (Bb_not_checked_p5))

                    ; #45904: <==negation-removal== 11991 (pos)
                    (not (Pb_not_checked_p5))

                    ; #50420: <==negation-removal== 20638 (pos)
                    (not (Pc_not_checked_p5))

                    ; #53251: <==negation-removal== 49782 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #59499: <==uncertain_firing== 27109 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62863: <==negation-removal== 86079 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #66442: <==uncertain_firing== 86079 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #68696: <==negation-removal== 78530 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #70379: <==negation-removal== 23948 (pos)
                    (not (Bc_not_checked_p5))

                    ; #78698: <==negation-removal== 41553 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81018: <==uncertain_firing== 49782 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #87920: <==uncertain_firing== 78530 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #90993: <==negation-removal== 27109 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19366: <==closure== 71525 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #19464: <==commonly_known== 13191 (neg)
                    (Pb_checked_p6)

                    ; #22823: <==closure== 23990 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #23990: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #25646: <==commonly_known== 88414 (pos)
                    (Bc_checked_p6)

                    ; #29681: <==commonly_known== 88414 (pos)
                    (Ba_checked_p6)

                    ; #30562: <==commonly_known== 13191 (neg)
                    (Pc_checked_p6)

                    ; #50396: <==commonly_known== 13191 (neg)
                    (Pa_checked_p6)

                    ; #55071: <==commonly_known== 88414 (pos)
                    (Bb_checked_p6)

                    ; #71525: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #88414: origin
                    (checked_p6)

                    ; #10906: <==negation-removal== 19464 (pos)
                    (not (Bb_not_checked_p6))

                    ; #13191: <==negation-removal== 88414 (pos)
                    (not (not_checked_p6))

                    ; #19746: <==uncertain_firing== 71525 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #24150: <==negation-removal== 55071 (pos)
                    (not (Pb_not_checked_p6))

                    ; #29254: <==negation-removal== 23990 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #43119: <==negation-removal== 30562 (pos)
                    (not (Bc_not_checked_p6))

                    ; #46123: <==uncertain_firing== 23990 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #48719: <==negation-removal== 71525 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #66559: <==negation-removal== 22823 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #75831: <==negation-removal== 50396 (pos)
                    (not (Ba_not_checked_p6))

                    ; #79334: <==uncertain_firing== 19366 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #79687: <==negation-removal== 29681 (pos)
                    (not (Pa_not_checked_p6))

                    ; #82400: <==uncertain_firing== 22823 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #82689: <==negation-removal== 19366 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #88130: <==negation-removal== 25646 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #27813: <==commonly_known== 36123 (pos)
                    (Ba_checked_p7)

                    ; #33550: <==closure== 84525 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #36123: origin
                    (checked_p7)

                    ; #50198: <==commonly_known== 36123 (pos)
                    (Bc_checked_p7)

                    ; #52229: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #55352: <==commonly_known== 43154 (neg)
                    (Pb_checked_p7)

                    ; #55801: <==commonly_known== 43154 (neg)
                    (Pc_checked_p7)

                    ; #64266: <==commonly_known== 43154 (neg)
                    (Pa_checked_p7)

                    ; #83205: <==closure== 52229 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #83972: <==commonly_known== 36123 (pos)
                    (Bb_checked_p7)

                    ; #84525: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #14386: <==negation-removal== 83972 (pos)
                    (not (Pb_not_checked_p7))

                    ; #15889: <==negation-removal== 33550 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #19203: <==negation-removal== 83205 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #28515: <==negation-removal== 52229 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #43154: <==negation-removal== 36123 (pos)
                    (not (not_checked_p7))

                    ; #44087: <==negation-removal== 55352 (pos)
                    (not (Bb_not_checked_p7))

                    ; #44713: <==uncertain_firing== 84525 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #53541: <==uncertain_firing== 83205 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #55684: <==negation-removal== 55801 (pos)
                    (not (Bc_not_checked_p7))

                    ; #60855: <==negation-removal== 50198 (pos)
                    (not (Pc_not_checked_p7))

                    ; #63605: <==uncertain_firing== 52229 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #82221: <==negation-removal== 64266 (pos)
                    (not (Ba_not_checked_p7))

                    ; #83373: <==negation-removal== 84525 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #83592: <==negation-removal== 27813 (pos)
                    (not (Pa_not_checked_p7))

                    ; #90887: <==uncertain_firing== 33550 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #12748: origin
                    (checked_p8)

                    ; #20877: <==commonly_known== 12748 (pos)
                    (Bc_checked_p8)

                    ; #32900: <==commonly_known== 12748 (pos)
                    (Bb_checked_p8)

                    ; #34421: <==commonly_known== 25532 (neg)
                    (Pa_checked_p8)

                    ; #40445: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #41583: <==commonly_known== 12748 (pos)
                    (Ba_checked_p8)

                    ; #45198: <==commonly_known== 25532 (neg)
                    (Pc_checked_p8)

                    ; #49383: <==closure== 40445 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #58954: <==closure== 78460 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #78460: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #82380: <==commonly_known== 25532 (neg)
                    (Pb_checked_p8)

                    ; #16116: <==negation-removal== 40445 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #22673: <==uncertain_firing== 58954 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #25532: <==negation-removal== 12748 (pos)
                    (not (not_checked_p8))

                    ; #36701: <==negation-removal== 41583 (pos)
                    (not (Pa_not_checked_p8))

                    ; #40196: <==negation-removal== 34421 (pos)
                    (not (Ba_not_checked_p8))

                    ; #41408: <==uncertain_firing== 78460 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #44493: <==negation-removal== 32900 (pos)
                    (not (Pb_not_checked_p8))

                    ; #54840: <==uncertain_firing== 40445 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #59104: <==negation-removal== 49383 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #70785: <==negation-removal== 82380 (pos)
                    (not (Bb_not_checked_p8))

                    ; #74924: <==negation-removal== 78460 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #76322: <==negation-removal== 45198 (pos)
                    (not (Bc_not_checked_p8))

                    ; #80628: <==negation-removal== 58954 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83223: <==uncertain_firing== 49383 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #91964: <==negation-removal== 20877 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #10963: <==commonly_known== 78292 (neg)
                    (Pb_checked_p9)

                    ; #11766: origin
                    (checked_p9)

                    ; #20751: <==closure== 30766 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #21989: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #24630: <==commonly_known== 11766 (pos)
                    (Ba_checked_p9)

                    ; #30766: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #44284: <==commonly_known== 78292 (neg)
                    (Pc_checked_p9)

                    ; #64187: <==commonly_known== 11766 (pos)
                    (Bc_checked_p9)

                    ; #84646: <==commonly_known== 11766 (pos)
                    (Bb_checked_p9)

                    ; #91029: <==commonly_known== 78292 (neg)
                    (Pa_checked_p9)

                    ; #91397: <==closure== 21989 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #12030: <==negation-removal== 91397 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #13116: <==negation-removal== 30766 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #14193: <==negation-removal== 24630 (pos)
                    (not (Pa_not_checked_p9))

                    ; #22976: <==uncertain_firing== 21989 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #23361: <==negation-removal== 64187 (pos)
                    (not (Pc_not_checked_p9))

                    ; #26290: <==uncertain_firing== 30766 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #46517: <==negation-removal== 21989 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #48815: <==negation-removal== 91029 (pos)
                    (not (Ba_not_checked_p9))

                    ; #54999: <==negation-removal== 10963 (pos)
                    (not (Bb_not_checked_p9))

                    ; #72572: <==negation-removal== 44284 (pos)
                    (not (Bc_not_checked_p9))

                    ; #78292: <==negation-removal== 11766 (pos)
                    (not (not_checked_p9))

                    ; #89929: <==negation-removal== 20751 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #91726: <==uncertain_firing== 20751 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #91974: <==uncertain_firing== 91397 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #97494: <==negation-removal== 84646 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #16067: origin
                    (checked_p1)

                    ; #19175: <==commonly_known== 16067 (pos)
                    (Ba_checked_p1)

                    ; #20258: <==commonly_known== 50680 (neg)
                    (Pb_checked_p1)

                    ; #20778: <==closure== 70226 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #33281: <==commonly_known== 50680 (neg)
                    (Pc_checked_p1)

                    ; #45405: <==closure== 73525 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #48866: <==commonly_known== 16067 (pos)
                    (Bb_checked_p1)

                    ; #49259: <==commonly_known== 50680 (neg)
                    (Pa_checked_p1)

                    ; #70226: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #73525: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #91679: <==commonly_known== 16067 (pos)
                    (Bc_checked_p1)

                    ; #12150: <==negation-removal== 70226 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #18490: <==negation-removal== 49259 (pos)
                    (not (Ba_not_checked_p1))

                    ; #19142: <==uncertain_firing== 70226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #46534: <==negation-removal== 20778 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #47097: <==negation-removal== 48866 (pos)
                    (not (Pb_not_checked_p1))

                    ; #47162: <==negation-removal== 91679 (pos)
                    (not (Pc_not_checked_p1))

                    ; #49644: <==negation-removal== 33281 (pos)
                    (not (Bc_not_checked_p1))

                    ; #50680: <==negation-removal== 16067 (pos)
                    (not (not_checked_p1))

                    ; #51023: <==negation-removal== 19175 (pos)
                    (not (Pa_not_checked_p1))

                    ; #64644: <==negation-removal== 73525 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #68785: <==uncertain_firing== 45405 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #70969: <==uncertain_firing== 73525 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #78839: <==negation-removal== 20258 (pos)
                    (not (Bb_not_checked_p1))

                    ; #85614: <==uncertain_firing== 20778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #89405: <==negation-removal== 45405 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #15682: <==commonly_known== 89893 (pos)
                    (Ba_checked_p2)

                    ; #26402: <==closure== 70858 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #57636: <==commonly_known== 89893 (pos)
                    (Bb_checked_p2)

                    ; #58779: <==commonly_known== 43279 (neg)
                    (Pa_checked_p2)

                    ; #62339: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #70858: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #82155: <==closure== 62339 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #82584: <==commonly_known== 43279 (neg)
                    (Pb_checked_p2)

                    ; #83883: <==commonly_known== 43279 (neg)
                    (Pc_checked_p2)

                    ; #89893: origin
                    (checked_p2)

                    ; #91440: <==commonly_known== 89893 (pos)
                    (Bc_checked_p2)

                    ; #10465: <==negation-removal== 58779 (pos)
                    (not (Ba_not_checked_p2))

                    ; #10995: <==uncertain_firing== 26402 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #23055: <==negation-removal== 91440 (pos)
                    (not (Pc_not_checked_p2))

                    ; #24443: <==uncertain_firing== 62339 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #32888: <==negation-removal== 26402 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #40603: <==uncertain_firing== 82155 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #41963: <==negation-removal== 62339 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #43279: <==negation-removal== 89893 (pos)
                    (not (not_checked_p2))

                    ; #45692: <==negation-removal== 70858 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #62274: <==uncertain_firing== 70858 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #63236: <==negation-removal== 82584 (pos)
                    (not (Bb_not_checked_p2))

                    ; #66976: <==negation-removal== 82155 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #72421: <==negation-removal== 15682 (pos)
                    (not (Pa_not_checked_p2))

                    ; #73808: <==negation-removal== 57636 (pos)
                    (not (Pb_not_checked_p2))

                    ; #85027: <==negation-removal== 83883 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10915: origin
                    (checked_p3)

                    ; #21167: <==commonly_known== 10915 (pos)
                    (Bb_checked_p3)

                    ; #28397: <==commonly_known== 10915 (pos)
                    (Ba_checked_p3)

                    ; #40008: <==closure== 71877 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #49928: <==commonly_known== 16020 (neg)
                    (Pa_checked_p3)

                    ; #67775: <==commonly_known== 16020 (neg)
                    (Pc_checked_p3)

                    ; #71877: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #72579: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #76115: <==commonly_known== 16020 (neg)
                    (Pb_checked_p3)

                    ; #81612: <==commonly_known== 10915 (pos)
                    (Bc_checked_p3)

                    ; #86123: <==closure== 72579 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #11547: <==negation-removal== 81612 (pos)
                    (not (Pc_not_checked_p3))

                    ; #16020: <==negation-removal== 10915 (pos)
                    (not (not_checked_p3))

                    ; #19533: <==uncertain_firing== 40008 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #38140: <==negation-removal== 67775 (pos)
                    (not (Bc_not_checked_p3))

                    ; #40591: <==negation-removal== 49928 (pos)
                    (not (Ba_not_checked_p3))

                    ; #41031: <==negation-removal== 21167 (pos)
                    (not (Pb_not_checked_p3))

                    ; #45828: <==negation-removal== 86123 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #53431: <==uncertain_firing== 71877 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #55349: <==negation-removal== 72579 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #55938: <==negation-removal== 40008 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #69858: <==negation-removal== 28397 (pos)
                    (not (Pa_not_checked_p3))

                    ; #70124: <==negation-removal== 76115 (pos)
                    (not (Bb_not_checked_p3))

                    ; #75094: <==uncertain_firing== 72579 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #80199: <==negation-removal== 71877 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #82804: <==uncertain_firing== 86123 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #10500: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #12596: <==commonly_known== 66500 (pos)
                    (Bc_checked_p4)

                    ; #41718: <==commonly_known== 81931 (neg)
                    (Pa_checked_p4)

                    ; #66500: origin
                    (checked_p4)

                    ; #68886: <==commonly_known== 81931 (neg)
                    (Pb_checked_p4)

                    ; #72267: <==commonly_known== 81931 (neg)
                    (Pc_checked_p4)

                    ; #74260: <==closure== 91027 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #75782: <==commonly_known== 66500 (pos)
                    (Bb_checked_p4)

                    ; #80565: <==closure== 10500 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #83332: <==commonly_known== 66500 (pos)
                    (Ba_checked_p4)

                    ; #91027: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #10499: <==uncertain_firing== 80565 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #14931: <==negation-removal== 91027 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #35462: <==negation-removal== 41718 (pos)
                    (not (Ba_not_checked_p4))

                    ; #36951: <==negation-removal== 72267 (pos)
                    (not (Bc_not_checked_p4))

                    ; #37810: <==negation-removal== 68886 (pos)
                    (not (Bb_not_checked_p4))

                    ; #47736: <==uncertain_firing== 10500 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #58587: <==negation-removal== 75782 (pos)
                    (not (Pb_not_checked_p4))

                    ; #63224: <==negation-removal== 12596 (pos)
                    (not (Pc_not_checked_p4))

                    ; #64489: <==negation-removal== 80565 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #70801: <==negation-removal== 10500 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #71140: <==uncertain_firing== 91027 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #75259: <==uncertain_firing== 74260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #81931: <==negation-removal== 66500 (pos)
                    (not (not_checked_p4))

                    ; #82849: <==negation-removal== 83332 (pos)
                    (not (Pa_not_checked_p4))

                    ; #85015: <==negation-removal== 74260 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #11991: <==commonly_known== 59430 (pos)
                    (Bb_checked_p5)

                    ; #20638: <==commonly_known== 59430 (pos)
                    (Bc_checked_p5)

                    ; #23948: <==commonly_known== 33005 (neg)
                    (Pc_checked_p5)

                    ; #33430: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #34797: <==closure== 33430 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #41553: <==commonly_known== 33005 (neg)
                    (Pa_checked_p5)

                    ; #51560: <==closure== 74288 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #59430: origin
                    (checked_p5)

                    ; #74288: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #81488: <==commonly_known== 33005 (neg)
                    (Pb_checked_p5)

                    ; #87788: <==commonly_known== 59430 (pos)
                    (Ba_checked_p5)

                    ; #19896: <==uncertain_firing== 74288 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #20043: <==negation-removal== 34797 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #20709: <==negation-removal== 87788 (pos)
                    (not (Pa_not_checked_p5))

                    ; #25158: <==uncertain_firing== 33430 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #25462: <==uncertain_firing== 34797 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #33005: <==negation-removal== 59430 (pos)
                    (not (not_checked_p5))

                    ; #35622: <==negation-removal== 81488 (pos)
                    (not (Bb_not_checked_p5))

                    ; #45322: <==negation-removal== 33430 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #45904: <==negation-removal== 11991 (pos)
                    (not (Pb_not_checked_p5))

                    ; #50420: <==negation-removal== 20638 (pos)
                    (not (Pc_not_checked_p5))

                    ; #70379: <==negation-removal== 23948 (pos)
                    (not (Bc_not_checked_p5))

                    ; #71141: <==negation-removal== 74288 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #78698: <==negation-removal== 41553 (pos)
                    (not (Ba_not_checked_p5))

                    ; #79707: <==negation-removal== 51560 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #89488: <==uncertain_firing== 51560 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #15786: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #19464: <==commonly_known== 13191 (neg)
                    (Pb_checked_p6)

                    ; #22557: <==closure== 15786 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #25646: <==commonly_known== 88414 (pos)
                    (Bc_checked_p6)

                    ; #29681: <==commonly_known== 88414 (pos)
                    (Ba_checked_p6)

                    ; #30562: <==commonly_known== 13191 (neg)
                    (Pc_checked_p6)

                    ; #50396: <==commonly_known== 13191 (neg)
                    (Pa_checked_p6)

                    ; #51736: <==closure== 93575 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #55071: <==commonly_known== 88414 (pos)
                    (Bb_checked_p6)

                    ; #88414: origin
                    (checked_p6)

                    ; #93575: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #10906: <==negation-removal== 19464 (pos)
                    (not (Bb_not_checked_p6))

                    ; #13191: <==negation-removal== 88414 (pos)
                    (not (not_checked_p6))

                    ; #14722: <==negation-removal== 22557 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #18945: <==uncertain_firing== 93575 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #24150: <==negation-removal== 55071 (pos)
                    (not (Pb_not_checked_p6))

                    ; #25761: <==negation-removal== 51736 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #38446: <==uncertain_firing== 15786 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #43119: <==negation-removal== 30562 (pos)
                    (not (Bc_not_checked_p6))

                    ; #70645: <==uncertain_firing== 22557 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #70736: <==negation-removal== 93575 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #75831: <==negation-removal== 50396 (pos)
                    (not (Ba_not_checked_p6))

                    ; #79687: <==negation-removal== 29681 (pos)
                    (not (Pa_not_checked_p6))

                    ; #82093: <==negation-removal== 15786 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #88130: <==negation-removal== 25646 (pos)
                    (not (Pc_not_checked_p6))

                    ; #93614: <==uncertain_firing== 51736 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25938: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #26751: <==closure== 25938 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #27813: <==commonly_known== 36123 (pos)
                    (Ba_checked_p7)

                    ; #36123: origin
                    (checked_p7)

                    ; #49341: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #50198: <==commonly_known== 36123 (pos)
                    (Bc_checked_p7)

                    ; #55352: <==commonly_known== 43154 (neg)
                    (Pb_checked_p7)

                    ; #55801: <==commonly_known== 43154 (neg)
                    (Pc_checked_p7)

                    ; #59261: <==closure== 49341 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #64266: <==commonly_known== 43154 (neg)
                    (Pa_checked_p7)

                    ; #83972: <==commonly_known== 36123 (pos)
                    (Bb_checked_p7)

                    ; #14386: <==negation-removal== 83972 (pos)
                    (not (Pb_not_checked_p7))

                    ; #18632: <==uncertain_firing== 26751 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #23486: <==negation-removal== 25938 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #43154: <==negation-removal== 36123 (pos)
                    (not (not_checked_p7))

                    ; #44087: <==negation-removal== 55352 (pos)
                    (not (Bb_not_checked_p7))

                    ; #44521: <==negation-removal== 26751 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #52400: <==negation-removal== 49341 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #54755: <==uncertain_firing== 25938 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #55684: <==negation-removal== 55801 (pos)
                    (not (Bc_not_checked_p7))

                    ; #55705: <==uncertain_firing== 59261 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #60855: <==negation-removal== 50198 (pos)
                    (not (Pc_not_checked_p7))

                    ; #80884: <==uncertain_firing== 49341 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #82221: <==negation-removal== 64266 (pos)
                    (not (Ba_not_checked_p7))

                    ; #83592: <==negation-removal== 27813 (pos)
                    (not (Pa_not_checked_p7))

                    ; #88441: <==negation-removal== 59261 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #12748: origin
                    (checked_p8)

                    ; #20877: <==commonly_known== 12748 (pos)
                    (Bc_checked_p8)

                    ; #28536: <==closure== 30172 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #30172: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #32900: <==commonly_known== 12748 (pos)
                    (Bb_checked_p8)

                    ; #34421: <==commonly_known== 25532 (neg)
                    (Pa_checked_p8)

                    ; #41583: <==commonly_known== 12748 (pos)
                    (Ba_checked_p8)

                    ; #43345: <==closure== 65414 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #45198: <==commonly_known== 25532 (neg)
                    (Pc_checked_p8)

                    ; #65414: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #82380: <==commonly_known== 25532 (neg)
                    (Pb_checked_p8)

                    ; #25532: <==negation-removal== 12748 (pos)
                    (not (not_checked_p8))

                    ; #27608: <==negation-removal== 65414 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #30022: <==negation-removal== 28536 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #31786: <==uncertain_firing== 43345 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #36701: <==negation-removal== 41583 (pos)
                    (not (Pa_not_checked_p8))

                    ; #36956: <==uncertain_firing== 30172 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #40196: <==negation-removal== 34421 (pos)
                    (not (Ba_not_checked_p8))

                    ; #43717: <==negation-removal== 30172 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #44493: <==negation-removal== 32900 (pos)
                    (not (Pb_not_checked_p8))

                    ; #66084: <==negation-removal== 43345 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #70785: <==negation-removal== 82380 (pos)
                    (not (Bb_not_checked_p8))

                    ; #76322: <==negation-removal== 45198 (pos)
                    (not (Bc_not_checked_p8))

                    ; #79093: <==uncertain_firing== 28536 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #89924: <==uncertain_firing== 65414 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #91964: <==negation-removal== 20877 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #10963: <==commonly_known== 78292 (neg)
                    (Pb_checked_p9)

                    ; #11766: origin
                    (checked_p9)

                    ; #24630: <==commonly_known== 11766 (pos)
                    (Ba_checked_p9)

                    ; #42583: <==closure== 56583 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #44284: <==commonly_known== 78292 (neg)
                    (Pc_checked_p9)

                    ; #56406: <==closure== 76216 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #56583: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #64187: <==commonly_known== 11766 (pos)
                    (Bc_checked_p9)

                    ; #76216: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #84646: <==commonly_known== 11766 (pos)
                    (Bb_checked_p9)

                    ; #91029: <==commonly_known== 78292 (neg)
                    (Pa_checked_p9)

                    ; #10621: <==uncertain_firing== 42583 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #14193: <==negation-removal== 24630 (pos)
                    (not (Pa_not_checked_p9))

                    ; #19926: <==negation-removal== 42583 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #23361: <==negation-removal== 64187 (pos)
                    (not (Pc_not_checked_p9))

                    ; #42105: <==uncertain_firing== 76216 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #47384: <==uncertain_firing== 56583 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #48815: <==negation-removal== 91029 (pos)
                    (not (Ba_not_checked_p9))

                    ; #53057: <==negation-removal== 56406 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #54999: <==negation-removal== 10963 (pos)
                    (not (Bb_not_checked_p9))

                    ; #72231: <==negation-removal== 76216 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #72572: <==negation-removal== 44284 (pos)
                    (not (Bc_not_checked_p9))

                    ; #78292: <==negation-removal== 11766 (pos)
                    (not (not_checked_p9))

                    ; #81777: <==negation-removal== 56583 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #94340: <==uncertain_firing== 56406 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #97494: <==negation-removal== 84646 (pos)
                    (not (Pb_not_checked_p9))))

)