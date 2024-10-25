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
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #32683: origin
                    (Ba_not_survivorat_s_p1)

                    ; #36249: <==closure== 32683 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #24835: <==negation-removal== 36249 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #39649: <==negation-removal== 32683 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (leader_b)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #43903: origin
                    (Bb_not_survivorat_s_p1)

                    ; #53978: <==closure== 43903 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #32961: <==negation-removal== 43903 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #55489: <==negation-removal== 53978 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #10330: <==closure== 71128 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #71128: origin
                    (Bc_not_survivorat_s_p1)

                    ; #46343: <==negation-removal== 10330 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #91922: <==negation-removal== 71128 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #32683: origin
                    (Ba_not_survivorat_s_p1)

                    ; #36249: <==closure== 32683 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #24835: <==negation-removal== 36249 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #39649: <==negation-removal== 32683 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #43903: origin
                    (Bb_not_survivorat_s_p1)

                    ; #53978: <==closure== 43903 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #32961: <==negation-removal== 43903 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #55489: <==negation-removal== 53978 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #10330: <==closure== 71128 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #71128: origin
                    (Bc_not_survivorat_s_p1)

                    ; #46343: <==negation-removal== 10330 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #91922: <==negation-removal== 71128 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_a))
        :effect (and
                    ; #32683: origin
                    (Ba_not_survivorat_s_p1)

                    ; #36249: <==closure== 32683 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #24835: <==negation-removal== 36249 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #39649: <==negation-removal== 32683 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b))
        :effect (and
                    ; #43903: origin
                    (Bb_not_survivorat_s_p1)

                    ; #53978: <==closure== 43903 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #32961: <==negation-removal== 43903 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #55489: <==negation-removal== 53978 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_c))
        :effect (and
                    ; #10330: <==closure== 71128 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #71128: origin
                    (Bc_not_survivorat_s_p1)

                    ; #46343: <==negation-removal== 10330 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #91922: <==negation-removal== 71128 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a)
                           (at_a_p2))
        :effect (and
                    ; #49469: origin
                    (Ba_not_survivorat_s_p2)

                    ; #62700: <==closure== 49469 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #60665: <==negation-removal== 49469 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #89537: <==negation-removal== 62700 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b)
                           (at_a_p2))
        :effect (and
                    ; #12719: origin
                    (Bb_not_survivorat_s_p2)

                    ; #79181: <==closure== 12719 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #79480: <==negation-removal== 79181 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #91079: <==negation-removal== 12719 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #12144: <==closure== 15403 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #15403: origin
                    (Bc_not_survivorat_s_p2)

                    ; #40161: <==negation-removal== 12144 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #67294: <==negation-removal== 15403 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_a)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #49469: origin
                    (Ba_not_survivorat_s_p2)

                    ; #62700: <==closure== 49469 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #60665: <==negation-removal== 49469 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #89537: <==negation-removal== 62700 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_b)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #12719: origin
                    (Bb_not_survivorat_s_p2)

                    ; #79181: <==closure== 12719 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #79480: <==negation-removal== 79181 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #91079: <==negation-removal== 12719 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (at_b_p2)
                           (leader_c)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #12144: <==closure== 15403 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #15403: origin
                    (Bc_not_survivorat_s_p2)

                    ; #40161: <==negation-removal== 12144 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #67294: <==negation-removal== 15403 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #49469: origin
                    (Ba_not_survivorat_s_p2)

                    ; #62700: <==closure== 49469 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #60665: <==negation-removal== 49469 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #89537: <==negation-removal== 62700 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #12719: origin
                    (Bb_not_survivorat_s_p2)

                    ; #79181: <==closure== 12719 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #79480: <==negation-removal== 79181 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #91079: <==negation-removal== 12719 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (leader_c)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #12144: <==closure== 15403 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #15403: origin
                    (Bc_not_survivorat_s_p2)

                    ; #40161: <==negation-removal== 12144 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #67294: <==negation-removal== 15403 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_a)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #47234: origin
                    (Ba_not_survivorat_s_p3)

                    ; #76649: <==closure== 47234 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #66355: <==negation-removal== 47234 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #79712: <==negation-removal== 76649 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_b)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #65372: <==closure== 72287 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #72287: origin
                    (Bb_not_survivorat_s_p3)

                    ; #11262: <==negation-removal== 65372 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #52340: <==negation-removal== 72287 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c))
        :effect (and
                    ; #71785: origin
                    (Bc_not_survivorat_s_p3)

                    ; #72758: <==closure== 71785 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #69511: <==negation-removal== 71785 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #70426: <==negation-removal== 72758 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #47234: origin
                    (Ba_not_survivorat_s_p3)

                    ; #76649: <==closure== 47234 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #66355: <==negation-removal== 47234 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #79712: <==negation-removal== 76649 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #65372: <==closure== 72287 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #72287: origin
                    (Bb_not_survivorat_s_p3)

                    ; #11262: <==negation-removal== 65372 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #52340: <==negation-removal== 72287 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #71785: origin
                    (Bc_not_survivorat_s_p3)

                    ; #72758: <==closure== 71785 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #69511: <==negation-removal== 71785 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #70426: <==negation-removal== 72758 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_a)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #47234: origin
                    (Ba_not_survivorat_s_p3)

                    ; #76649: <==closure== 47234 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #66355: <==negation-removal== 47234 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #79712: <==negation-removal== 76649 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #65372: <==closure== 72287 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #72287: origin
                    (Bb_not_survivorat_s_p3)

                    ; #11262: <==negation-removal== 65372 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #52340: <==negation-removal== 72287 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #71785: origin
                    (Bc_not_survivorat_s_p3)

                    ; #72758: <==closure== 71785 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #69511: <==negation-removal== 71785 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #70426: <==negation-removal== 72758 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #17634: <==closure== 33509 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #33509: origin
                    (Ba_not_survivorat_s_p4)

                    ; #44443: <==negation-removal== 33509 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #62767: <==negation-removal== 17634 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #62404: <==closure== 69182 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #69182: origin
                    (Bb_not_survivorat_s_p4)

                    ; #45897: <==negation-removal== 62404 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #60186: <==negation-removal== 69182 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #15391: <==closure== 63036 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #63036: origin
                    (Bc_not_survivorat_s_p4)

                    ; #40210: <==negation-removal== 15391 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #42759: <==negation-removal== 63036 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #17634: <==closure== 33509 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #33509: origin
                    (Ba_not_survivorat_s_p4)

                    ; #44443: <==negation-removal== 33509 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #62767: <==negation-removal== 17634 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #62404: <==closure== 69182 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #69182: origin
                    (Bb_not_survivorat_s_p4)

                    ; #45897: <==negation-removal== 62404 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #60186: <==negation-removal== 69182 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #15391: <==closure== 63036 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #63036: origin
                    (Bc_not_survivorat_s_p4)

                    ; #40210: <==negation-removal== 15391 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #42759: <==negation-removal== 63036 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_a)
                           (at_c_p4))
        :effect (and
                    ; #17634: <==closure== 33509 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #33509: origin
                    (Ba_not_survivorat_s_p4)

                    ; #44443: <==negation-removal== 33509 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #62767: <==negation-removal== 17634 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4))
        :effect (and
                    ; #62404: <==closure== 69182 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #69182: origin
                    (Bb_not_survivorat_s_p4)

                    ; #45897: <==negation-removal== 62404 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #60186: <==negation-removal== 69182 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #15391: <==closure== 63036 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #63036: origin
                    (Bc_not_survivorat_s_p4)

                    ; #40210: <==negation-removal== 15391 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #42759: <==negation-removal== 63036 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_a)
                           (at_a_p5))
        :effect (and
                    ; #11930: origin
                    (Ba_not_survivorat_s_p5)

                    ; #59375: <==closure== 11930 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #52124: <==negation-removal== 11930 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #81977: <==negation-removal== 59375 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (Ba_survivorat_s_p5)
                           (leader_b)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #35014: origin
                    (Bb_not_survivorat_s_p5)

                    ; #67374: <==closure== 35014 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #16507: <==negation-removal== 35014 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #54600: <==negation-removal== 67374 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #16445: <==closure== 80157 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #80157: origin
                    (Bc_not_survivorat_s_p5)

                    ; #89262: <==negation-removal== 16445 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #90961: <==negation-removal== 80157 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #11930: origin
                    (Ba_not_survivorat_s_p5)

                    ; #59375: <==closure== 11930 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #52124: <==negation-removal== 11930 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #81977: <==negation-removal== 59375 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (leader_b)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #35014: origin
                    (Bb_not_survivorat_s_p5)

                    ; #67374: <==closure== 35014 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #16507: <==negation-removal== 35014 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #54600: <==negation-removal== 67374 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (leader_c)
                           (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #16445: <==closure== 80157 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #80157: origin
                    (Bc_not_survivorat_s_p5)

                    ; #89262: <==negation-removal== 16445 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #90961: <==negation-removal== 80157 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_a)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #11930: origin
                    (Ba_not_survivorat_s_p5)

                    ; #59375: <==closure== 11930 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #52124: <==negation-removal== 11930 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #81977: <==negation-removal== 59375 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (leader_b)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #35014: origin
                    (Bb_not_survivorat_s_p5)

                    ; #67374: <==closure== 35014 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #16507: <==negation-removal== 35014 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #54600: <==negation-removal== 67374 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (leader_c)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #16445: <==closure== 80157 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #80157: origin
                    (Bc_not_survivorat_s_p5)

                    ; #89262: <==negation-removal== 16445 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #90961: <==negation-removal== 80157 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (leader_a)
                           (at_a_p6))
        :effect (and
                    ; #62807: origin
                    (Ba_not_survivorat_s_p6)

                    ; #77749: <==closure== 62807 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #20111: <==negation-removal== 77749 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #87439: <==negation-removal== 62807 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_b)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #32206: <==closure== 86165 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #86165: origin
                    (Bb_not_survivorat_s_p6)

                    ; #22790: <==negation-removal== 86165 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #72644: <==negation-removal== 32206 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_c)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #62179: <==closure== 77451 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #77451: origin
                    (Bc_not_survivorat_s_p6)

                    ; #46775: <==negation-removal== 62179 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #72016: <==negation-removal== 77451 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #62807: origin
                    (Ba_not_survivorat_s_p6)

                    ; #77749: <==closure== 62807 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #20111: <==negation-removal== 77749 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #87439: <==negation-removal== 62807 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #32206: <==closure== 86165 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #86165: origin
                    (Bb_not_survivorat_s_p6)

                    ; #22790: <==negation-removal== 86165 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #72644: <==negation-removal== 32206 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #62179: <==closure== 77451 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #77451: origin
                    (Bc_not_survivorat_s_p6)

                    ; #46775: <==negation-removal== 62179 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #72016: <==negation-removal== 77451 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #62807: origin
                    (Ba_not_survivorat_s_p6)

                    ; #77749: <==closure== 62807 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #20111: <==negation-removal== 77749 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #87439: <==negation-removal== 62807 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #32206: <==closure== 86165 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #86165: origin
                    (Bb_not_survivorat_s_p6)

                    ; #22790: <==negation-removal== 86165 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #72644: <==negation-removal== 32206 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #62179: <==closure== 77451 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #77451: origin
                    (Bc_not_survivorat_s_p6)

                    ; #46775: <==negation-removal== 62179 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #72016: <==negation-removal== 77451 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #12194: origin
                    (Ba_not_survivorat_s_p7)

                    ; #38796: <==closure== 12194 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #29363: <==negation-removal== 38796 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #80595: <==negation-removal== 12194 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #55402: <==closure== 66321 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #66321: origin
                    (Bb_not_survivorat_s_p7)

                    ; #14280: <==negation-removal== 66321 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #34866: <==negation-removal== 55402 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #34699: <==closure== 72068 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #72068: origin
                    (Bc_not_survivorat_s_p7)

                    ; #63695: <==negation-removal== 34699 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #72047: <==negation-removal== 72068 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_a)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #12194: origin
                    (Ba_not_survivorat_s_p7)

                    ; #38796: <==closure== 12194 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #29363: <==negation-removal== 38796 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #80595: <==negation-removal== 12194 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_b)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #55402: <==closure== 66321 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #66321: origin
                    (Bb_not_survivorat_s_p7)

                    ; #14280: <==negation-removal== 66321 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #34866: <==negation-removal== 55402 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #34699: <==closure== 72068 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #72068: origin
                    (Bc_not_survivorat_s_p7)

                    ; #63695: <==negation-removal== 34699 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #72047: <==negation-removal== 72068 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (leader_a)
                           (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #12194: origin
                    (Ba_not_survivorat_s_p7)

                    ; #38796: <==closure== 12194 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #29363: <==negation-removal== 38796 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #80595: <==negation-removal== 12194 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (at_c_p7)
                           (leader_b)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #55402: <==closure== 66321 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #66321: origin
                    (Bb_not_survivorat_s_p7)

                    ; #14280: <==negation-removal== 66321 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #34866: <==negation-removal== 55402 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (leader_c)
                           (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #34699: <==closure== 72068 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #72068: origin
                    (Bc_not_survivorat_s_p7)

                    ; #63695: <==negation-removal== 34699 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #72047: <==negation-removal== 72068 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_a)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #58374: origin
                    (Ba_not_survivorat_s_p8)

                    ; #64183: <==closure== 58374 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #10892: <==negation-removal== 58374 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #15981: <==negation-removal== 64183 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_b)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #18953: <==closure== 66720 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #66720: origin
                    (Bb_not_survivorat_s_p8)

                    ; #32989: <==negation-removal== 18953 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #63094: <==negation-removal== 66720 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #28850: <==closure== 64702 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #64702: origin
                    (Bc_not_survivorat_s_p8)

                    ; #41002: <==negation-removal== 28850 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #58561: <==negation-removal== 64702 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #58374: origin
                    (Ba_not_survivorat_s_p8)

                    ; #64183: <==closure== 58374 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #10892: <==negation-removal== 58374 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #15981: <==negation-removal== 64183 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #18953: <==closure== 66720 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #66720: origin
                    (Bb_not_survivorat_s_p8)

                    ; #32989: <==negation-removal== 18953 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #63094: <==negation-removal== 66720 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #28850: <==closure== 64702 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #64702: origin
                    (Bc_not_survivorat_s_p8)

                    ; #41002: <==negation-removal== 28850 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #58561: <==negation-removal== 64702 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (leader_a)
                           (at_c_p8))
        :effect (and
                    ; #58374: origin
                    (Ba_not_survivorat_s_p8)

                    ; #64183: <==closure== 58374 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #10892: <==negation-removal== 58374 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #15981: <==negation-removal== 64183 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #18953: <==closure== 66720 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #66720: origin
                    (Bb_not_survivorat_s_p8)

                    ; #32989: <==negation-removal== 18953 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #63094: <==negation-removal== 66720 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #28850: <==closure== 64702 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #64702: origin
                    (Bc_not_survivorat_s_p8)

                    ; #41002: <==negation-removal== 28850 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #58561: <==negation-removal== 64702 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_a)
                           (at_a_p9))
        :effect (and
                    ; #14281: <==closure== 80610 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #80610: origin
                    (Ba_not_survivorat_s_p9)

                    ; #41402: <==negation-removal== 14281 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #88191: <==negation-removal== 80610 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_b)
                           (at_a_p9))
        :effect (and
                    ; #38012: origin
                    (Bb_not_survivorat_s_p9)

                    ; #63023: <==closure== 38012 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #70016: <==negation-removal== 63023 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #83785: <==negation-removal== 38012 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #43141: origin
                    (Bc_not_survivorat_s_p9)

                    ; #80560: <==closure== 43141 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #34569: <==negation-removal== 43141 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #61389: <==negation-removal== 80560 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (at_b_p9)
                           (leader_a)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #14281: <==closure== 80610 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #80610: origin
                    (Ba_not_survivorat_s_p9)

                    ; #41402: <==negation-removal== 14281 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #88191: <==negation-removal== 80610 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (leader_b)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #38012: origin
                    (Bb_not_survivorat_s_p9)

                    ; #63023: <==closure== 38012 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #70016: <==negation-removal== 63023 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #83785: <==negation-removal== 38012 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (leader_c)
                           (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #43141: origin
                    (Bc_not_survivorat_s_p9)

                    ; #80560: <==closure== 43141 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #34569: <==negation-removal== 43141 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #61389: <==negation-removal== 80560 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_a)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #14281: <==closure== 80610 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #80610: origin
                    (Ba_not_survivorat_s_p9)

                    ; #41402: <==negation-removal== 14281 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #88191: <==negation-removal== 80610 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (Pc_survivorat_s_p9)
                           (leader_b)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #38012: origin
                    (Bb_not_survivorat_s_p9)

                    ; #63023: <==closure== 38012 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #70016: <==negation-removal== 63023 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #83785: <==negation-removal== 38012 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #43141: origin
                    (Bc_not_survivorat_s_p9)

                    ; #80560: <==closure== 43141 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #34569: <==negation-removal== 43141 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #61389: <==negation-removal== 80560 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action comm_p1_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #24835: origin
                    (Ba_survivorat_s_p1)

                    ; #39649: <==closure== 24835 (pos)
                    (Pa_survivorat_s_p1)

                    ; #32683: <==negation-removal== 39649 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #36249: <==negation-removal== 24835 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (leader_b)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #32961: <==closure== 55489 (pos)
                    (Pb_survivorat_s_p1)

                    ; #55489: origin
                    (Bb_survivorat_s_p1)

                    ; #43903: <==negation-removal== 32961 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #53978: <==negation-removal== 55489 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #46343: origin
                    (Bc_survivorat_s_p1)

                    ; #91922: <==closure== 46343 (pos)
                    (Pc_survivorat_s_p1)

                    ; #10330: <==negation-removal== 46343 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #71128: <==negation-removal== 91922 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #24835: origin
                    (Ba_survivorat_s_p1)

                    ; #39649: <==closure== 24835 (pos)
                    (Pa_survivorat_s_p1)

                    ; #32683: <==negation-removal== 39649 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #36249: <==negation-removal== 24835 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #32961: <==closure== 55489 (pos)
                    (Pb_survivorat_s_p1)

                    ; #55489: origin
                    (Bb_survivorat_s_p1)

                    ; #43903: <==negation-removal== 32961 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #53978: <==negation-removal== 55489 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #46343: origin
                    (Bc_survivorat_s_p1)

                    ; #91922: <==closure== 46343 (pos)
                    (Pc_survivorat_s_p1)

                    ; #10330: <==negation-removal== 46343 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #71128: <==negation-removal== 91922 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_a))
        :effect (and
                    ; #24835: origin
                    (Ba_survivorat_s_p1)

                    ; #39649: <==closure== 24835 (pos)
                    (Pa_survivorat_s_p1)

                    ; #32683: <==negation-removal== 39649 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #36249: <==negation-removal== 24835 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b))
        :effect (and
                    ; #32961: <==closure== 55489 (pos)
                    (Pb_survivorat_s_p1)

                    ; #55489: origin
                    (Bb_survivorat_s_p1)

                    ; #43903: <==negation-removal== 32961 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #53978: <==negation-removal== 55489 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_c))
        :effect (and
                    ; #46343: origin
                    (Bc_survivorat_s_p1)

                    ; #91922: <==closure== 46343 (pos)
                    (Pc_survivorat_s_p1)

                    ; #10330: <==negation-removal== 46343 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #71128: <==negation-removal== 91922 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a)
                           (at_a_p2))
        :effect (and
                    ; #60665: <==closure== 89537 (pos)
                    (Pa_survivorat_s_p2)

                    ; #89537: origin
                    (Ba_survivorat_s_p2)

                    ; #49469: <==negation-removal== 60665 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #62700: <==negation-removal== 89537 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b)
                           (at_a_p2))
        :effect (and
                    ; #79480: origin
                    (Bb_survivorat_s_p2)

                    ; #91079: <==closure== 79480 (pos)
                    (Pb_survivorat_s_p2)

                    ; #12719: <==negation-removal== 91079 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #79181: <==negation-removal== 79480 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #40161: origin
                    (Bc_survivorat_s_p2)

                    ; #67294: <==closure== 40161 (pos)
                    (Pc_survivorat_s_p2)

                    ; #12144: <==negation-removal== 40161 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #15403: <==negation-removal== 67294 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_a)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #60665: <==closure== 89537 (pos)
                    (Pa_survivorat_s_p2)

                    ; #89537: origin
                    (Ba_survivorat_s_p2)

                    ; #49469: <==negation-removal== 60665 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #62700: <==negation-removal== 89537 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_b)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #79480: origin
                    (Bb_survivorat_s_p2)

                    ; #91079: <==closure== 79480 (pos)
                    (Pb_survivorat_s_p2)

                    ; #12719: <==negation-removal== 91079 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #79181: <==negation-removal== 79480 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (at_b_p2)
                           (leader_c)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #40161: origin
                    (Bc_survivorat_s_p2)

                    ; #67294: <==closure== 40161 (pos)
                    (Pc_survivorat_s_p2)

                    ; #12144: <==negation-removal== 40161 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #15403: <==negation-removal== 67294 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #60665: <==closure== 89537 (pos)
                    (Pa_survivorat_s_p2)

                    ; #89537: origin
                    (Ba_survivorat_s_p2)

                    ; #49469: <==negation-removal== 60665 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #62700: <==negation-removal== 89537 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #79480: origin
                    (Bb_survivorat_s_p2)

                    ; #91079: <==closure== 79480 (pos)
                    (Pb_survivorat_s_p2)

                    ; #12719: <==negation-removal== 91079 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #79181: <==negation-removal== 79480 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (leader_c)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #40161: origin
                    (Bc_survivorat_s_p2)

                    ; #67294: <==closure== 40161 (pos)
                    (Pc_survivorat_s_p2)

                    ; #12144: <==negation-removal== 40161 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #15403: <==negation-removal== 67294 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_a)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #66355: <==closure== 79712 (pos)
                    (Pa_survivorat_s_p3)

                    ; #79712: origin
                    (Ba_survivorat_s_p3)

                    ; #47234: <==negation-removal== 66355 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76649: <==negation-removal== 79712 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_b)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #11262: origin
                    (Bb_survivorat_s_p3)

                    ; #52340: <==closure== 11262 (pos)
                    (Pb_survivorat_s_p3)

                    ; #65372: <==negation-removal== 11262 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #72287: <==negation-removal== 52340 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c))
        :effect (and
                    ; #69511: <==closure== 70426 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70426: origin
                    (Bc_survivorat_s_p3)

                    ; #71785: <==negation-removal== 69511 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #72758: <==negation-removal== 70426 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #66355: <==closure== 79712 (pos)
                    (Pa_survivorat_s_p3)

                    ; #79712: origin
                    (Ba_survivorat_s_p3)

                    ; #47234: <==negation-removal== 66355 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76649: <==negation-removal== 79712 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #11262: origin
                    (Bb_survivorat_s_p3)

                    ; #52340: <==closure== 11262 (pos)
                    (Pb_survivorat_s_p3)

                    ; #65372: <==negation-removal== 11262 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #72287: <==negation-removal== 52340 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #69511: <==closure== 70426 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70426: origin
                    (Bc_survivorat_s_p3)

                    ; #71785: <==negation-removal== 69511 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #72758: <==negation-removal== 70426 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_a)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #66355: <==closure== 79712 (pos)
                    (Pa_survivorat_s_p3)

                    ; #79712: origin
                    (Ba_survivorat_s_p3)

                    ; #47234: <==negation-removal== 66355 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76649: <==negation-removal== 79712 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #11262: origin
                    (Bb_survivorat_s_p3)

                    ; #52340: <==closure== 11262 (pos)
                    (Pb_survivorat_s_p3)

                    ; #65372: <==negation-removal== 11262 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #72287: <==negation-removal== 52340 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #69511: <==closure== 70426 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70426: origin
                    (Bc_survivorat_s_p3)

                    ; #71785: <==negation-removal== 69511 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #72758: <==negation-removal== 70426 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #44443: <==closure== 62767 (pos)
                    (Pa_survivorat_s_p4)

                    ; #62767: origin
                    (Ba_survivorat_s_p4)

                    ; #17634: <==negation-removal== 62767 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #33509: <==negation-removal== 44443 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #45897: origin
                    (Bb_survivorat_s_p4)

                    ; #60186: <==closure== 45897 (pos)
                    (Pb_survivorat_s_p4)

                    ; #62404: <==negation-removal== 45897 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #69182: <==negation-removal== 60186 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #40210: origin
                    (Bc_survivorat_s_p4)

                    ; #42759: <==closure== 40210 (pos)
                    (Pc_survivorat_s_p4)

                    ; #15391: <==negation-removal== 40210 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #63036: <==negation-removal== 42759 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #44443: <==closure== 62767 (pos)
                    (Pa_survivorat_s_p4)

                    ; #62767: origin
                    (Ba_survivorat_s_p4)

                    ; #17634: <==negation-removal== 62767 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #33509: <==negation-removal== 44443 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #45897: origin
                    (Bb_survivorat_s_p4)

                    ; #60186: <==closure== 45897 (pos)
                    (Pb_survivorat_s_p4)

                    ; #62404: <==negation-removal== 45897 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #69182: <==negation-removal== 60186 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #40210: origin
                    (Bc_survivorat_s_p4)

                    ; #42759: <==closure== 40210 (pos)
                    (Pc_survivorat_s_p4)

                    ; #15391: <==negation-removal== 40210 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #63036: <==negation-removal== 42759 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_a)
                           (at_c_p4))
        :effect (and
                    ; #44443: <==closure== 62767 (pos)
                    (Pa_survivorat_s_p4)

                    ; #62767: origin
                    (Ba_survivorat_s_p4)

                    ; #17634: <==negation-removal== 62767 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #33509: <==negation-removal== 44443 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4))
        :effect (and
                    ; #45897: origin
                    (Bb_survivorat_s_p4)

                    ; #60186: <==closure== 45897 (pos)
                    (Pb_survivorat_s_p4)

                    ; #62404: <==negation-removal== 45897 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #69182: <==negation-removal== 60186 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #40210: origin
                    (Bc_survivorat_s_p4)

                    ; #42759: <==closure== 40210 (pos)
                    (Pc_survivorat_s_p4)

                    ; #15391: <==negation-removal== 40210 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #63036: <==negation-removal== 42759 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_a)
                           (at_a_p5))
        :effect (and
                    ; #52124: <==closure== 81977 (pos)
                    (Pa_survivorat_s_p5)

                    ; #81977: origin
                    (Ba_survivorat_s_p5)

                    ; #11930: <==negation-removal== 52124 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #59375: <==negation-removal== 81977 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Ba_survivorat_s_p5)
                           (leader_b)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #16507: <==closure== 54600 (pos)
                    (Pb_survivorat_s_p5)

                    ; #54600: origin
                    (Bb_survivorat_s_p5)

                    ; #35014: <==negation-removal== 16507 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #67374: <==negation-removal== 54600 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #89262: origin
                    (Bc_survivorat_s_p5)

                    ; #90961: <==closure== 89262 (pos)
                    (Pc_survivorat_s_p5)

                    ; #16445: <==negation-removal== 89262 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #80157: <==negation-removal== 90961 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #52124: <==closure== 81977 (pos)
                    (Pa_survivorat_s_p5)

                    ; #81977: origin
                    (Ba_survivorat_s_p5)

                    ; #11930: <==negation-removal== 52124 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #59375: <==negation-removal== 81977 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (leader_b)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #16507: <==closure== 54600 (pos)
                    (Pb_survivorat_s_p5)

                    ; #54600: origin
                    (Bb_survivorat_s_p5)

                    ; #35014: <==negation-removal== 16507 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #67374: <==negation-removal== 54600 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (leader_c)
                           (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #89262: origin
                    (Bc_survivorat_s_p5)

                    ; #90961: <==closure== 89262 (pos)
                    (Pc_survivorat_s_p5)

                    ; #16445: <==negation-removal== 89262 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #80157: <==negation-removal== 90961 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_a)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #52124: <==closure== 81977 (pos)
                    (Pa_survivorat_s_p5)

                    ; #81977: origin
                    (Ba_survivorat_s_p5)

                    ; #11930: <==negation-removal== 52124 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #59375: <==negation-removal== 81977 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (leader_b)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #16507: <==closure== 54600 (pos)
                    (Pb_survivorat_s_p5)

                    ; #54600: origin
                    (Bb_survivorat_s_p5)

                    ; #35014: <==negation-removal== 16507 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #67374: <==negation-removal== 54600 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (leader_c)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #89262: origin
                    (Bc_survivorat_s_p5)

                    ; #90961: <==closure== 89262 (pos)
                    (Pc_survivorat_s_p5)

                    ; #16445: <==negation-removal== 89262 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #80157: <==negation-removal== 90961 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (leader_a)
                           (at_a_p6))
        :effect (and
                    ; #20111: origin
                    (Ba_survivorat_s_p6)

                    ; #87439: <==closure== 20111 (pos)
                    (Pa_survivorat_s_p6)

                    ; #62807: <==negation-removal== 87439 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #77749: <==negation-removal== 20111 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_b)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #22790: <==closure== 72644 (pos)
                    (Pb_survivorat_s_p6)

                    ; #72644: origin
                    (Bb_survivorat_s_p6)

                    ; #32206: <==negation-removal== 72644 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #86165: <==negation-removal== 22790 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_c)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #46775: origin
                    (Bc_survivorat_s_p6)

                    ; #72016: <==closure== 46775 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62179: <==negation-removal== 46775 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #77451: <==negation-removal== 72016 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #20111: origin
                    (Ba_survivorat_s_p6)

                    ; #87439: <==closure== 20111 (pos)
                    (Pa_survivorat_s_p6)

                    ; #62807: <==negation-removal== 87439 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #77749: <==negation-removal== 20111 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #22790: <==closure== 72644 (pos)
                    (Pb_survivorat_s_p6)

                    ; #72644: origin
                    (Bb_survivorat_s_p6)

                    ; #32206: <==negation-removal== 72644 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #86165: <==negation-removal== 22790 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #46775: origin
                    (Bc_survivorat_s_p6)

                    ; #72016: <==closure== 46775 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62179: <==negation-removal== 46775 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #77451: <==negation-removal== 72016 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #20111: origin
                    (Ba_survivorat_s_p6)

                    ; #87439: <==closure== 20111 (pos)
                    (Pa_survivorat_s_p6)

                    ; #62807: <==negation-removal== 87439 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #77749: <==negation-removal== 20111 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #22790: <==closure== 72644 (pos)
                    (Pb_survivorat_s_p6)

                    ; #72644: origin
                    (Bb_survivorat_s_p6)

                    ; #32206: <==negation-removal== 72644 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #86165: <==negation-removal== 22790 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #46775: origin
                    (Bc_survivorat_s_p6)

                    ; #72016: <==closure== 46775 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62179: <==negation-removal== 46775 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #77451: <==negation-removal== 72016 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #29363: origin
                    (Ba_survivorat_s_p7)

                    ; #80595: <==closure== 29363 (pos)
                    (Pa_survivorat_s_p7)

                    ; #12194: <==negation-removal== 80595 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #38796: <==negation-removal== 29363 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #14280: <==closure== 34866 (pos)
                    (Pb_survivorat_s_p7)

                    ; #34866: origin
                    (Bb_survivorat_s_p7)

                    ; #55402: <==negation-removal== 34866 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #66321: <==negation-removal== 14280 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #63695: origin
                    (Bc_survivorat_s_p7)

                    ; #72047: <==closure== 63695 (pos)
                    (Pc_survivorat_s_p7)

                    ; #34699: <==negation-removal== 63695 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #72068: <==negation-removal== 72047 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_a)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #29363: origin
                    (Ba_survivorat_s_p7)

                    ; #80595: <==closure== 29363 (pos)
                    (Pa_survivorat_s_p7)

                    ; #12194: <==negation-removal== 80595 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #38796: <==negation-removal== 29363 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_b)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #14280: <==closure== 34866 (pos)
                    (Pb_survivorat_s_p7)

                    ; #34866: origin
                    (Bb_survivorat_s_p7)

                    ; #55402: <==negation-removal== 34866 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #66321: <==negation-removal== 14280 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #63695: origin
                    (Bc_survivorat_s_p7)

                    ; #72047: <==closure== 63695 (pos)
                    (Pc_survivorat_s_p7)

                    ; #34699: <==negation-removal== 63695 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #72068: <==negation-removal== 72047 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #29363: origin
                    (Ba_survivorat_s_p7)

                    ; #80595: <==closure== 29363 (pos)
                    (Pa_survivorat_s_p7)

                    ; #12194: <==negation-removal== 80595 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #38796: <==negation-removal== 29363 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (at_c_p7)
                           (leader_b)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #14280: <==closure== 34866 (pos)
                    (Pb_survivorat_s_p7)

                    ; #34866: origin
                    (Bb_survivorat_s_p7)

                    ; #55402: <==negation-removal== 34866 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #66321: <==negation-removal== 14280 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (leader_c)
                           (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #63695: origin
                    (Bc_survivorat_s_p7)

                    ; #72047: <==closure== 63695 (pos)
                    (Pc_survivorat_s_p7)

                    ; #34699: <==negation-removal== 63695 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #72068: <==negation-removal== 72047 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_a)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #10892: <==closure== 15981 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15981: origin
                    (Ba_survivorat_s_p8)

                    ; #58374: <==negation-removal== 10892 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #64183: <==negation-removal== 15981 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_b)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #32989: origin
                    (Bb_survivorat_s_p8)

                    ; #63094: <==closure== 32989 (pos)
                    (Pb_survivorat_s_p8)

                    ; #18953: <==negation-removal== 32989 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #66720: <==negation-removal== 63094 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #41002: origin
                    (Bc_survivorat_s_p8)

                    ; #58561: <==closure== 41002 (pos)
                    (Pc_survivorat_s_p8)

                    ; #28850: <==negation-removal== 41002 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64702: <==negation-removal== 58561 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #10892: <==closure== 15981 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15981: origin
                    (Ba_survivorat_s_p8)

                    ; #58374: <==negation-removal== 10892 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #64183: <==negation-removal== 15981 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #32989: origin
                    (Bb_survivorat_s_p8)

                    ; #63094: <==closure== 32989 (pos)
                    (Pb_survivorat_s_p8)

                    ; #18953: <==negation-removal== 32989 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #66720: <==negation-removal== 63094 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #41002: origin
                    (Bc_survivorat_s_p8)

                    ; #58561: <==closure== 41002 (pos)
                    (Pc_survivorat_s_p8)

                    ; #28850: <==negation-removal== 41002 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64702: <==negation-removal== 58561 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (leader_a)
                           (at_c_p8))
        :effect (and
                    ; #10892: <==closure== 15981 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15981: origin
                    (Ba_survivorat_s_p8)

                    ; #58374: <==negation-removal== 10892 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #64183: <==negation-removal== 15981 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #32989: origin
                    (Bb_survivorat_s_p8)

                    ; #63094: <==closure== 32989 (pos)
                    (Pb_survivorat_s_p8)

                    ; #18953: <==negation-removal== 32989 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #66720: <==negation-removal== 63094 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #41002: origin
                    (Bc_survivorat_s_p8)

                    ; #58561: <==closure== 41002 (pos)
                    (Pc_survivorat_s_p8)

                    ; #28850: <==negation-removal== 41002 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64702: <==negation-removal== 58561 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_a)
                           (at_a_p9))
        :effect (and
                    ; #41402: origin
                    (Ba_survivorat_s_p9)

                    ; #88191: <==closure== 41402 (pos)
                    (Pa_survivorat_s_p9)

                    ; #14281: <==negation-removal== 41402 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #80610: <==negation-removal== 88191 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_b)
                           (at_a_p9))
        :effect (and
                    ; #70016: origin
                    (Bb_survivorat_s_p9)

                    ; #83785: <==closure== 70016 (pos)
                    (Pb_survivorat_s_p9)

                    ; #38012: <==negation-removal== 83785 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #63023: <==negation-removal== 70016 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #34569: <==closure== 61389 (pos)
                    (Pc_survivorat_s_p9)

                    ; #61389: origin
                    (Bc_survivorat_s_p9)

                    ; #43141: <==negation-removal== 34569 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #80560: <==negation-removal== 61389 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (at_b_p9)
                           (leader_a)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #41402: origin
                    (Ba_survivorat_s_p9)

                    ; #88191: <==closure== 41402 (pos)
                    (Pa_survivorat_s_p9)

                    ; #14281: <==negation-removal== 41402 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #80610: <==negation-removal== 88191 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (leader_b)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #70016: origin
                    (Bb_survivorat_s_p9)

                    ; #83785: <==closure== 70016 (pos)
                    (Pb_survivorat_s_p9)

                    ; #38012: <==negation-removal== 83785 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #63023: <==negation-removal== 70016 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (leader_c)
                           (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #34569: <==closure== 61389 (pos)
                    (Pc_survivorat_s_p9)

                    ; #61389: origin
                    (Bc_survivorat_s_p9)

                    ; #43141: <==negation-removal== 34569 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #80560: <==negation-removal== 61389 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_a)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #41402: origin
                    (Ba_survivorat_s_p9)

                    ; #88191: <==closure== 41402 (pos)
                    (Pa_survivorat_s_p9)

                    ; #14281: <==negation-removal== 41402 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #80610: <==negation-removal== 88191 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Pc_survivorat_s_p9)
                           (leader_b)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #70016: origin
                    (Bb_survivorat_s_p9)

                    ; #83785: <==closure== 70016 (pos)
                    (Pb_survivorat_s_p9)

                    ; #38012: <==negation-removal== 83785 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #63023: <==negation-removal== 70016 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #34569: <==closure== 61389 (pos)
                    (Pc_survivorat_s_p9)

                    ; #61389: origin
                    (Bc_survivorat_s_p9)

                    ; #43141: <==negation-removal== 34569 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #80560: <==negation-removal== 61389 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #18491: origin
                    (at_a_p1)

                    ; #66066: origin
                    (not_at_a_p1)

                    ; #18491: <==negation-removal== 66066 (pos)
                    (not (at_a_p1))

                    ; #66066: <==negation-removal== 18491 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #66066: origin
                    (not_at_a_p1)

                    ; #67983: origin
                    (at_a_p2)

                    ; #18491: <==negation-removal== 66066 (pos)
                    (not (at_a_p1))

                    ; #24991: <==negation-removal== 67983 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #66066: origin
                    (not_at_a_p1)

                    ; #69778: origin
                    (at_a_p3)

                    ; #18491: <==negation-removal== 66066 (pos)
                    (not (at_a_p1))

                    ; #83926: <==negation-removal== 69778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #66066: origin
                    (not_at_a_p1)

                    ; #82541: origin
                    (at_a_p4)

                    ; #18491: <==negation-removal== 66066 (pos)
                    (not (at_a_p1))

                    ; #82845: <==negation-removal== 82541 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #66066: origin
                    (not_at_a_p1)

                    ; #77910: origin
                    (at_a_p5)

                    ; #18491: <==negation-removal== 66066 (pos)
                    (not (at_a_p1))

                    ; #72955: <==negation-removal== 77910 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #27830: origin
                    (at_a_p6)

                    ; #66066: origin
                    (not_at_a_p1)

                    ; #18491: <==negation-removal== 66066 (pos)
                    (not (at_a_p1))

                    ; #28077: <==negation-removal== 27830 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12695: origin
                    (at_a_p7)

                    ; #66066: origin
                    (not_at_a_p1)

                    ; #18491: <==negation-removal== 66066 (pos)
                    (not (at_a_p1))

                    ; #73286: <==negation-removal== 12695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #66066: origin
                    (not_at_a_p1)

                    ; #89813: origin
                    (at_a_p8)

                    ; #18491: <==negation-removal== 66066 (pos)
                    (not (at_a_p1))

                    ; #84600: <==negation-removal== 89813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #62696: origin
                    (at_a_p9)

                    ; #66066: origin
                    (not_at_a_p1)

                    ; #18491: <==negation-removal== 66066 (pos)
                    (not (at_a_p1))

                    ; #36402: <==negation-removal== 62696 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18491: origin
                    (at_a_p1)

                    ; #24991: origin
                    (not_at_a_p2)

                    ; #66066: <==negation-removal== 18491 (pos)
                    (not (not_at_a_p1))

                    ; #67983: <==negation-removal== 24991 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #24991: origin
                    (not_at_a_p2)

                    ; #67983: origin
                    (at_a_p2)

                    ; #24991: <==negation-removal== 67983 (pos)
                    (not (not_at_a_p2))

                    ; #67983: <==negation-removal== 24991 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #24991: origin
                    (not_at_a_p2)

                    ; #69778: origin
                    (at_a_p3)

                    ; #67983: <==negation-removal== 24991 (pos)
                    (not (at_a_p2))

                    ; #83926: <==negation-removal== 69778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #24991: origin
                    (not_at_a_p2)

                    ; #82541: origin
                    (at_a_p4)

                    ; #67983: <==negation-removal== 24991 (pos)
                    (not (at_a_p2))

                    ; #82845: <==negation-removal== 82541 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #24991: origin
                    (not_at_a_p2)

                    ; #77910: origin
                    (at_a_p5)

                    ; #67983: <==negation-removal== 24991 (pos)
                    (not (at_a_p2))

                    ; #72955: <==negation-removal== 77910 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #24991: origin
                    (not_at_a_p2)

                    ; #27830: origin
                    (at_a_p6)

                    ; #28077: <==negation-removal== 27830 (pos)
                    (not (not_at_a_p6))

                    ; #67983: <==negation-removal== 24991 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12695: origin
                    (at_a_p7)

                    ; #24991: origin
                    (not_at_a_p2)

                    ; #67983: <==negation-removal== 24991 (pos)
                    (not (at_a_p2))

                    ; #73286: <==negation-removal== 12695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #24991: origin
                    (not_at_a_p2)

                    ; #89813: origin
                    (at_a_p8)

                    ; #67983: <==negation-removal== 24991 (pos)
                    (not (at_a_p2))

                    ; #84600: <==negation-removal== 89813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #24991: origin
                    (not_at_a_p2)

                    ; #62696: origin
                    (at_a_p9)

                    ; #36402: <==negation-removal== 62696 (pos)
                    (not (not_at_a_p9))

                    ; #67983: <==negation-removal== 24991 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #18491: origin
                    (at_a_p1)

                    ; #83926: origin
                    (not_at_a_p3)

                    ; #66066: <==negation-removal== 18491 (pos)
                    (not (not_at_a_p1))

                    ; #69778: <==negation-removal== 83926 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #67983: origin
                    (at_a_p2)

                    ; #83926: origin
                    (not_at_a_p3)

                    ; #24991: <==negation-removal== 67983 (pos)
                    (not (not_at_a_p2))

                    ; #69778: <==negation-removal== 83926 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #69778: origin
                    (at_a_p3)

                    ; #83926: origin
                    (not_at_a_p3)

                    ; #69778: <==negation-removal== 83926 (pos)
                    (not (at_a_p3))

                    ; #83926: <==negation-removal== 69778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #82541: origin
                    (at_a_p4)

                    ; #83926: origin
                    (not_at_a_p3)

                    ; #69778: <==negation-removal== 83926 (pos)
                    (not (at_a_p3))

                    ; #82845: <==negation-removal== 82541 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #77910: origin
                    (at_a_p5)

                    ; #83926: origin
                    (not_at_a_p3)

                    ; #69778: <==negation-removal== 83926 (pos)
                    (not (at_a_p3))

                    ; #72955: <==negation-removal== 77910 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27830: origin
                    (at_a_p6)

                    ; #83926: origin
                    (not_at_a_p3)

                    ; #28077: <==negation-removal== 27830 (pos)
                    (not (not_at_a_p6))

                    ; #69778: <==negation-removal== 83926 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #12695: origin
                    (at_a_p7)

                    ; #83926: origin
                    (not_at_a_p3)

                    ; #69778: <==negation-removal== 83926 (pos)
                    (not (at_a_p3))

                    ; #73286: <==negation-removal== 12695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8)
                           (not (leader_a)))
        :effect (and
                    ; #83926: origin
                    (not_at_a_p3)

                    ; #89813: origin
                    (at_a_p8)

                    ; #69778: <==negation-removal== 83926 (pos)
                    (not (at_a_p3))

                    ; #84600: <==negation-removal== 89813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #62696: origin
                    (at_a_p9)

                    ; #83926: origin
                    (not_at_a_p3)

                    ; #36402: <==negation-removal== 62696 (pos)
                    (not (not_at_a_p9))

                    ; #69778: <==negation-removal== 83926 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #18491: origin
                    (at_a_p1)

                    ; #82845: origin
                    (not_at_a_p4)

                    ; #66066: <==negation-removal== 18491 (pos)
                    (not (not_at_a_p1))

                    ; #82541: <==negation-removal== 82845 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #67983: origin
                    (at_a_p2)

                    ; #82845: origin
                    (not_at_a_p4)

                    ; #24991: <==negation-removal== 67983 (pos)
                    (not (not_at_a_p2))

                    ; #82541: <==negation-removal== 82845 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #69778: origin
                    (at_a_p3)

                    ; #82845: origin
                    (not_at_a_p4)

                    ; #82541: <==negation-removal== 82845 (pos)
                    (not (at_a_p4))

                    ; #83926: <==negation-removal== 69778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4)
                           (not (leader_a)))
        :effect (and
                    ; #82541: origin
                    (at_a_p4)

                    ; #82845: origin
                    (not_at_a_p4)

                    ; #82541: <==negation-removal== 82845 (pos)
                    (not (at_a_p4))

                    ; #82845: <==negation-removal== 82541 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #77910: origin
                    (at_a_p5)

                    ; #82845: origin
                    (not_at_a_p4)

                    ; #72955: <==negation-removal== 77910 (pos)
                    (not (not_at_a_p5))

                    ; #82541: <==negation-removal== 82845 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27830: origin
                    (at_a_p6)

                    ; #82845: origin
                    (not_at_a_p4)

                    ; #28077: <==negation-removal== 27830 (pos)
                    (not (not_at_a_p6))

                    ; #82541: <==negation-removal== 82845 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12695: origin
                    (at_a_p7)

                    ; #82845: origin
                    (not_at_a_p4)

                    ; #73286: <==negation-removal== 12695 (pos)
                    (not (not_at_a_p7))

                    ; #82541: <==negation-removal== 82845 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #82845: origin
                    (not_at_a_p4)

                    ; #89813: origin
                    (at_a_p8)

                    ; #82541: <==negation-removal== 82845 (pos)
                    (not (at_a_p4))

                    ; #84600: <==negation-removal== 89813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #62696: origin
                    (at_a_p9)

                    ; #82845: origin
                    (not_at_a_p4)

                    ; #36402: <==negation-removal== 62696 (pos)
                    (not (not_at_a_p9))

                    ; #82541: <==negation-removal== 82845 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #18491: origin
                    (at_a_p1)

                    ; #72955: origin
                    (not_at_a_p5)

                    ; #66066: <==negation-removal== 18491 (pos)
                    (not (not_at_a_p1))

                    ; #77910: <==negation-removal== 72955 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #67983: origin
                    (at_a_p2)

                    ; #72955: origin
                    (not_at_a_p5)

                    ; #24991: <==negation-removal== 67983 (pos)
                    (not (not_at_a_p2))

                    ; #77910: <==negation-removal== 72955 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #69778: origin
                    (at_a_p3)

                    ; #72955: origin
                    (not_at_a_p5)

                    ; #77910: <==negation-removal== 72955 (pos)
                    (not (at_a_p5))

                    ; #83926: <==negation-removal== 69778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #72955: origin
                    (not_at_a_p5)

                    ; #82541: origin
                    (at_a_p4)

                    ; #77910: <==negation-removal== 72955 (pos)
                    (not (at_a_p5))

                    ; #82845: <==negation-removal== 82541 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #72955: origin
                    (not_at_a_p5)

                    ; #77910: origin
                    (at_a_p5)

                    ; #72955: <==negation-removal== 77910 (pos)
                    (not (not_at_a_p5))

                    ; #77910: <==negation-removal== 72955 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #27830: origin
                    (at_a_p6)

                    ; #72955: origin
                    (not_at_a_p5)

                    ; #28077: <==negation-removal== 27830 (pos)
                    (not (not_at_a_p6))

                    ; #77910: <==negation-removal== 72955 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12695: origin
                    (at_a_p7)

                    ; #72955: origin
                    (not_at_a_p5)

                    ; #73286: <==negation-removal== 12695 (pos)
                    (not (not_at_a_p7))

                    ; #77910: <==negation-removal== 72955 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #72955: origin
                    (not_at_a_p5)

                    ; #89813: origin
                    (at_a_p8)

                    ; #77910: <==negation-removal== 72955 (pos)
                    (not (at_a_p5))

                    ; #84600: <==negation-removal== 89813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #62696: origin
                    (at_a_p9)

                    ; #72955: origin
                    (not_at_a_p5)

                    ; #36402: <==negation-removal== 62696 (pos)
                    (not (not_at_a_p9))

                    ; #77910: <==negation-removal== 72955 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #18491: origin
                    (at_a_p1)

                    ; #28077: origin
                    (not_at_a_p6)

                    ; #27830: <==negation-removal== 28077 (pos)
                    (not (at_a_p6))

                    ; #66066: <==negation-removal== 18491 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #28077: origin
                    (not_at_a_p6)

                    ; #67983: origin
                    (at_a_p2)

                    ; #24991: <==negation-removal== 67983 (pos)
                    (not (not_at_a_p2))

                    ; #27830: <==negation-removal== 28077 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #28077: origin
                    (not_at_a_p6)

                    ; #69778: origin
                    (at_a_p3)

                    ; #27830: <==negation-removal== 28077 (pos)
                    (not (at_a_p6))

                    ; #83926: <==negation-removal== 69778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #28077: origin
                    (not_at_a_p6)

                    ; #82541: origin
                    (at_a_p4)

                    ; #27830: <==negation-removal== 28077 (pos)
                    (not (at_a_p6))

                    ; #82845: <==negation-removal== 82541 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #28077: origin
                    (not_at_a_p6)

                    ; #77910: origin
                    (at_a_p5)

                    ; #27830: <==negation-removal== 28077 (pos)
                    (not (at_a_p6))

                    ; #72955: <==negation-removal== 77910 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27830: origin
                    (at_a_p6)

                    ; #28077: origin
                    (not_at_a_p6)

                    ; #27830: <==negation-removal== 28077 (pos)
                    (not (at_a_p6))

                    ; #28077: <==negation-removal== 27830 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #12695: origin
                    (at_a_p7)

                    ; #28077: origin
                    (not_at_a_p6)

                    ; #27830: <==negation-removal== 28077 (pos)
                    (not (at_a_p6))

                    ; #73286: <==negation-removal== 12695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #28077: origin
                    (not_at_a_p6)

                    ; #89813: origin
                    (at_a_p8)

                    ; #27830: <==negation-removal== 28077 (pos)
                    (not (at_a_p6))

                    ; #84600: <==negation-removal== 89813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #28077: origin
                    (not_at_a_p6)

                    ; #62696: origin
                    (at_a_p9)

                    ; #27830: <==negation-removal== 28077 (pos)
                    (not (at_a_p6))

                    ; #36402: <==negation-removal== 62696 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #18491: origin
                    (at_a_p1)

                    ; #73286: origin
                    (not_at_a_p7)

                    ; #12695: <==negation-removal== 73286 (pos)
                    (not (at_a_p7))

                    ; #66066: <==negation-removal== 18491 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #67983: origin
                    (at_a_p2)

                    ; #73286: origin
                    (not_at_a_p7)

                    ; #12695: <==negation-removal== 73286 (pos)
                    (not (at_a_p7))

                    ; #24991: <==negation-removal== 67983 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #69778: origin
                    (at_a_p3)

                    ; #73286: origin
                    (not_at_a_p7)

                    ; #12695: <==negation-removal== 73286 (pos)
                    (not (at_a_p7))

                    ; #83926: <==negation-removal== 69778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #73286: origin
                    (not_at_a_p7)

                    ; #82541: origin
                    (at_a_p4)

                    ; #12695: <==negation-removal== 73286 (pos)
                    (not (at_a_p7))

                    ; #82845: <==negation-removal== 82541 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5)
                           (not (leader_a)))
        :effect (and
                    ; #73286: origin
                    (not_at_a_p7)

                    ; #77910: origin
                    (at_a_p5)

                    ; #12695: <==negation-removal== 73286 (pos)
                    (not (at_a_p7))

                    ; #72955: <==negation-removal== 77910 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27830: origin
                    (at_a_p6)

                    ; #73286: origin
                    (not_at_a_p7)

                    ; #12695: <==negation-removal== 73286 (pos)
                    (not (at_a_p7))

                    ; #28077: <==negation-removal== 27830 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12695: origin
                    (at_a_p7)

                    ; #73286: origin
                    (not_at_a_p7)

                    ; #12695: <==negation-removal== 73286 (pos)
                    (not (at_a_p7))

                    ; #73286: <==negation-removal== 12695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #73286: origin
                    (not_at_a_p7)

                    ; #89813: origin
                    (at_a_p8)

                    ; #12695: <==negation-removal== 73286 (pos)
                    (not (at_a_p7))

                    ; #84600: <==negation-removal== 89813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #62696: origin
                    (at_a_p9)

                    ; #73286: origin
                    (not_at_a_p7)

                    ; #12695: <==negation-removal== 73286 (pos)
                    (not (at_a_p7))

                    ; #36402: <==negation-removal== 62696 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18491: origin
                    (at_a_p1)

                    ; #84600: origin
                    (not_at_a_p8)

                    ; #66066: <==negation-removal== 18491 (pos)
                    (not (not_at_a_p1))

                    ; #89813: <==negation-removal== 84600 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #67983: origin
                    (at_a_p2)

                    ; #84600: origin
                    (not_at_a_p8)

                    ; #24991: <==negation-removal== 67983 (pos)
                    (not (not_at_a_p2))

                    ; #89813: <==negation-removal== 84600 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #69778: origin
                    (at_a_p3)

                    ; #84600: origin
                    (not_at_a_p8)

                    ; #83926: <==negation-removal== 69778 (pos)
                    (not (not_at_a_p3))

                    ; #89813: <==negation-removal== 84600 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #82541: origin
                    (at_a_p4)

                    ; #84600: origin
                    (not_at_a_p8)

                    ; #82845: <==negation-removal== 82541 (pos)
                    (not (not_at_a_p4))

                    ; #89813: <==negation-removal== 84600 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #77910: origin
                    (at_a_p5)

                    ; #84600: origin
                    (not_at_a_p8)

                    ; #72955: <==negation-removal== 77910 (pos)
                    (not (not_at_a_p5))

                    ; #89813: <==negation-removal== 84600 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #27830: origin
                    (at_a_p6)

                    ; #84600: origin
                    (not_at_a_p8)

                    ; #28077: <==negation-removal== 27830 (pos)
                    (not (not_at_a_p6))

                    ; #89813: <==negation-removal== 84600 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #12695: origin
                    (at_a_p7)

                    ; #84600: origin
                    (not_at_a_p8)

                    ; #73286: <==negation-removal== 12695 (pos)
                    (not (not_at_a_p7))

                    ; #89813: <==negation-removal== 84600 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #84600: origin
                    (not_at_a_p8)

                    ; #89813: origin
                    (at_a_p8)

                    ; #84600: <==negation-removal== 89813 (pos)
                    (not (not_at_a_p8))

                    ; #89813: <==negation-removal== 84600 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9)
                           (not (leader_a)))
        :effect (and
                    ; #62696: origin
                    (at_a_p9)

                    ; #84600: origin
                    (not_at_a_p8)

                    ; #36402: <==negation-removal== 62696 (pos)
                    (not (not_at_a_p9))

                    ; #89813: <==negation-removal== 84600 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #18491: origin
                    (at_a_p1)

                    ; #36402: origin
                    (not_at_a_p9)

                    ; #62696: <==negation-removal== 36402 (pos)
                    (not (at_a_p9))

                    ; #66066: <==negation-removal== 18491 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36402: origin
                    (not_at_a_p9)

                    ; #67983: origin
                    (at_a_p2)

                    ; #24991: <==negation-removal== 67983 (pos)
                    (not (not_at_a_p2))

                    ; #62696: <==negation-removal== 36402 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36402: origin
                    (not_at_a_p9)

                    ; #69778: origin
                    (at_a_p3)

                    ; #62696: <==negation-removal== 36402 (pos)
                    (not (at_a_p9))

                    ; #83926: <==negation-removal== 69778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36402: origin
                    (not_at_a_p9)

                    ; #82541: origin
                    (at_a_p4)

                    ; #62696: <==negation-removal== 36402 (pos)
                    (not (at_a_p9))

                    ; #82845: <==negation-removal== 82541 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36402: origin
                    (not_at_a_p9)

                    ; #77910: origin
                    (at_a_p5)

                    ; #62696: <==negation-removal== 36402 (pos)
                    (not (at_a_p9))

                    ; #72955: <==negation-removal== 77910 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #27830: origin
                    (at_a_p6)

                    ; #36402: origin
                    (not_at_a_p9)

                    ; #28077: <==negation-removal== 27830 (pos)
                    (not (not_at_a_p6))

                    ; #62696: <==negation-removal== 36402 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12695: origin
                    (at_a_p7)

                    ; #36402: origin
                    (not_at_a_p9)

                    ; #62696: <==negation-removal== 36402 (pos)
                    (not (at_a_p9))

                    ; #73286: <==negation-removal== 12695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36402: origin
                    (not_at_a_p9)

                    ; #89813: origin
                    (at_a_p8)

                    ; #62696: <==negation-removal== 36402 (pos)
                    (not (at_a_p9))

                    ; #84600: <==negation-removal== 89813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36402: origin
                    (not_at_a_p9)

                    ; #62696: origin
                    (at_a_p9)

                    ; #36402: <==negation-removal== 62696 (pos)
                    (not (not_at_a_p9))

                    ; #62696: <==negation-removal== 36402 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #27139: origin
                    (not_at_b_p1)

                    ; #61538: origin
                    (at_b_p1)

                    ; #27139: <==negation-removal== 61538 (pos)
                    (not (not_at_b_p1))

                    ; #61538: <==negation-removal== 27139 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #27139: origin
                    (not_at_b_p1)

                    ; #81397: origin
                    (at_b_p2)

                    ; #61538: <==negation-removal== 27139 (pos)
                    (not (at_b_p1))

                    ; #68439: <==negation-removal== 81397 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19243: origin
                    (at_b_p3)

                    ; #27139: origin
                    (not_at_b_p1)

                    ; #27512: <==negation-removal== 19243 (pos)
                    (not (not_at_b_p3))

                    ; #61538: <==negation-removal== 27139 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4)
                           (not (leader_b)))
        :effect (and
                    ; #27139: origin
                    (not_at_b_p1)

                    ; #78106: origin
                    (at_b_p4)

                    ; #28729: <==negation-removal== 78106 (pos)
                    (not (not_at_b_p4))

                    ; #61538: <==negation-removal== 27139 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #27139: origin
                    (not_at_b_p1)

                    ; #59837: origin
                    (at_b_p5)

                    ; #38769: <==negation-removal== 59837 (pos)
                    (not (not_at_b_p5))

                    ; #61538: <==negation-removal== 27139 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #27139: origin
                    (not_at_b_p1)

                    ; #70811: origin
                    (at_b_p6)

                    ; #61538: <==negation-removal== 27139 (pos)
                    (not (at_b_p1))

                    ; #90933: <==negation-removal== 70811 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #27139: origin
                    (not_at_b_p1)

                    ; #69489: origin
                    (at_b_p7)

                    ; #61538: <==negation-removal== 27139 (pos)
                    (not (at_b_p1))

                    ; #75085: <==negation-removal== 69489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #27139: origin
                    (not_at_b_p1)

                    ; #40873: origin
                    (at_b_p8)

                    ; #61538: <==negation-removal== 27139 (pos)
                    (not (at_b_p1))

                    ; #79967: <==negation-removal== 40873 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #27139: origin
                    (not_at_b_p1)

                    ; #31909: origin
                    (at_b_p9)

                    ; #49601: <==negation-removal== 31909 (pos)
                    (not (not_at_b_p9))

                    ; #61538: <==negation-removal== 27139 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #61538: origin
                    (at_b_p1)

                    ; #68439: origin
                    (not_at_b_p2)

                    ; #27139: <==negation-removal== 61538 (pos)
                    (not (not_at_b_p1))

                    ; #81397: <==negation-removal== 68439 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #68439: origin
                    (not_at_b_p2)

                    ; #81397: origin
                    (at_b_p2)

                    ; #68439: <==negation-removal== 81397 (pos)
                    (not (not_at_b_p2))

                    ; #81397: <==negation-removal== 68439 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19243: origin
                    (at_b_p3)

                    ; #68439: origin
                    (not_at_b_p2)

                    ; #27512: <==negation-removal== 19243 (pos)
                    (not (not_at_b_p3))

                    ; #81397: <==negation-removal== 68439 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #68439: origin
                    (not_at_b_p2)

                    ; #78106: origin
                    (at_b_p4)

                    ; #28729: <==negation-removal== 78106 (pos)
                    (not (not_at_b_p4))

                    ; #81397: <==negation-removal== 68439 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #59837: origin
                    (at_b_p5)

                    ; #68439: origin
                    (not_at_b_p2)

                    ; #38769: <==negation-removal== 59837 (pos)
                    (not (not_at_b_p5))

                    ; #81397: <==negation-removal== 68439 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6)
                           (not (leader_b)))
        :effect (and
                    ; #68439: origin
                    (not_at_b_p2)

                    ; #70811: origin
                    (at_b_p6)

                    ; #81397: <==negation-removal== 68439 (pos)
                    (not (at_b_p2))

                    ; #90933: <==negation-removal== 70811 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #68439: origin
                    (not_at_b_p2)

                    ; #69489: origin
                    (at_b_p7)

                    ; #75085: <==negation-removal== 69489 (pos)
                    (not (not_at_b_p7))

                    ; #81397: <==negation-removal== 68439 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #40873: origin
                    (at_b_p8)

                    ; #68439: origin
                    (not_at_b_p2)

                    ; #79967: <==negation-removal== 40873 (pos)
                    (not (not_at_b_p8))

                    ; #81397: <==negation-removal== 68439 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #31909: origin
                    (at_b_p9)

                    ; #68439: origin
                    (not_at_b_p2)

                    ; #49601: <==negation-removal== 31909 (pos)
                    (not (not_at_b_p9))

                    ; #81397: <==negation-removal== 68439 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #27512: origin
                    (not_at_b_p3)

                    ; #61538: origin
                    (at_b_p1)

                    ; #19243: <==negation-removal== 27512 (pos)
                    (not (at_b_p3))

                    ; #27139: <==negation-removal== 61538 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #27512: origin
                    (not_at_b_p3)

                    ; #81397: origin
                    (at_b_p2)

                    ; #19243: <==negation-removal== 27512 (pos)
                    (not (at_b_p3))

                    ; #68439: <==negation-removal== 81397 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19243: origin
                    (at_b_p3)

                    ; #27512: origin
                    (not_at_b_p3)

                    ; #19243: <==negation-removal== 27512 (pos)
                    (not (at_b_p3))

                    ; #27512: <==negation-removal== 19243 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #27512: origin
                    (not_at_b_p3)

                    ; #78106: origin
                    (at_b_p4)

                    ; #19243: <==negation-removal== 27512 (pos)
                    (not (at_b_p3))

                    ; #28729: <==negation-removal== 78106 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #27512: origin
                    (not_at_b_p3)

                    ; #59837: origin
                    (at_b_p5)

                    ; #19243: <==negation-removal== 27512 (pos)
                    (not (at_b_p3))

                    ; #38769: <==negation-removal== 59837 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #27512: origin
                    (not_at_b_p3)

                    ; #70811: origin
                    (at_b_p6)

                    ; #19243: <==negation-removal== 27512 (pos)
                    (not (at_b_p3))

                    ; #90933: <==negation-removal== 70811 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #27512: origin
                    (not_at_b_p3)

                    ; #69489: origin
                    (at_b_p7)

                    ; #19243: <==negation-removal== 27512 (pos)
                    (not (at_b_p3))

                    ; #75085: <==negation-removal== 69489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #27512: origin
                    (not_at_b_p3)

                    ; #40873: origin
                    (at_b_p8)

                    ; #19243: <==negation-removal== 27512 (pos)
                    (not (at_b_p3))

                    ; #79967: <==negation-removal== 40873 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #27512: origin
                    (not_at_b_p3)

                    ; #31909: origin
                    (at_b_p9)

                    ; #19243: <==negation-removal== 27512 (pos)
                    (not (at_b_p3))

                    ; #49601: <==negation-removal== 31909 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #28729: origin
                    (not_at_b_p4)

                    ; #61538: origin
                    (at_b_p1)

                    ; #27139: <==negation-removal== 61538 (pos)
                    (not (not_at_b_p1))

                    ; #78106: <==negation-removal== 28729 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #28729: origin
                    (not_at_b_p4)

                    ; #81397: origin
                    (at_b_p2)

                    ; #68439: <==negation-removal== 81397 (pos)
                    (not (not_at_b_p2))

                    ; #78106: <==negation-removal== 28729 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19243: origin
                    (at_b_p3)

                    ; #28729: origin
                    (not_at_b_p4)

                    ; #27512: <==negation-removal== 19243 (pos)
                    (not (not_at_b_p3))

                    ; #78106: <==negation-removal== 28729 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #28729: origin
                    (not_at_b_p4)

                    ; #78106: origin
                    (at_b_p4)

                    ; #28729: <==negation-removal== 78106 (pos)
                    (not (not_at_b_p4))

                    ; #78106: <==negation-removal== 28729 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #28729: origin
                    (not_at_b_p4)

                    ; #59837: origin
                    (at_b_p5)

                    ; #38769: <==negation-removal== 59837 (pos)
                    (not (not_at_b_p5))

                    ; #78106: <==negation-removal== 28729 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #28729: origin
                    (not_at_b_p4)

                    ; #70811: origin
                    (at_b_p6)

                    ; #78106: <==negation-removal== 28729 (pos)
                    (not (at_b_p4))

                    ; #90933: <==negation-removal== 70811 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #28729: origin
                    (not_at_b_p4)

                    ; #69489: origin
                    (at_b_p7)

                    ; #75085: <==negation-removal== 69489 (pos)
                    (not (not_at_b_p7))

                    ; #78106: <==negation-removal== 28729 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #28729: origin
                    (not_at_b_p4)

                    ; #40873: origin
                    (at_b_p8)

                    ; #78106: <==negation-removal== 28729 (pos)
                    (not (at_b_p4))

                    ; #79967: <==negation-removal== 40873 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #28729: origin
                    (not_at_b_p4)

                    ; #31909: origin
                    (at_b_p9)

                    ; #49601: <==negation-removal== 31909 (pos)
                    (not (not_at_b_p9))

                    ; #78106: <==negation-removal== 28729 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #38769: origin
                    (not_at_b_p5)

                    ; #61538: origin
                    (at_b_p1)

                    ; #27139: <==negation-removal== 61538 (pos)
                    (not (not_at_b_p1))

                    ; #59837: <==negation-removal== 38769 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38769: origin
                    (not_at_b_p5)

                    ; #81397: origin
                    (at_b_p2)

                    ; #59837: <==negation-removal== 38769 (pos)
                    (not (at_b_p5))

                    ; #68439: <==negation-removal== 81397 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19243: origin
                    (at_b_p3)

                    ; #38769: origin
                    (not_at_b_p5)

                    ; #27512: <==negation-removal== 19243 (pos)
                    (not (not_at_b_p3))

                    ; #59837: <==negation-removal== 38769 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #38769: origin
                    (not_at_b_p5)

                    ; #78106: origin
                    (at_b_p4)

                    ; #28729: <==negation-removal== 78106 (pos)
                    (not (not_at_b_p4))

                    ; #59837: <==negation-removal== 38769 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #38769: origin
                    (not_at_b_p5)

                    ; #59837: origin
                    (at_b_p5)

                    ; #38769: <==negation-removal== 59837 (pos)
                    (not (not_at_b_p5))

                    ; #59837: <==negation-removal== 38769 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #38769: origin
                    (not_at_b_p5)

                    ; #70811: origin
                    (at_b_p6)

                    ; #59837: <==negation-removal== 38769 (pos)
                    (not (at_b_p5))

                    ; #90933: <==negation-removal== 70811 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38769: origin
                    (not_at_b_p5)

                    ; #69489: origin
                    (at_b_p7)

                    ; #59837: <==negation-removal== 38769 (pos)
                    (not (at_b_p5))

                    ; #75085: <==negation-removal== 69489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #38769: origin
                    (not_at_b_p5)

                    ; #40873: origin
                    (at_b_p8)

                    ; #59837: <==negation-removal== 38769 (pos)
                    (not (at_b_p5))

                    ; #79967: <==negation-removal== 40873 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #31909: origin
                    (at_b_p9)

                    ; #38769: origin
                    (not_at_b_p5)

                    ; #49601: <==negation-removal== 31909 (pos)
                    (not (not_at_b_p9))

                    ; #59837: <==negation-removal== 38769 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #61538: origin
                    (at_b_p1)

                    ; #90933: origin
                    (not_at_b_p6)

                    ; #27139: <==negation-removal== 61538 (pos)
                    (not (not_at_b_p1))

                    ; #70811: <==negation-removal== 90933 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #81397: origin
                    (at_b_p2)

                    ; #90933: origin
                    (not_at_b_p6)

                    ; #68439: <==negation-removal== 81397 (pos)
                    (not (not_at_b_p2))

                    ; #70811: <==negation-removal== 90933 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19243: origin
                    (at_b_p3)

                    ; #90933: origin
                    (not_at_b_p6)

                    ; #27512: <==negation-removal== 19243 (pos)
                    (not (not_at_b_p3))

                    ; #70811: <==negation-removal== 90933 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #78106: origin
                    (at_b_p4)

                    ; #90933: origin
                    (not_at_b_p6)

                    ; #28729: <==negation-removal== 78106 (pos)
                    (not (not_at_b_p4))

                    ; #70811: <==negation-removal== 90933 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #59837: origin
                    (at_b_p5)

                    ; #90933: origin
                    (not_at_b_p6)

                    ; #38769: <==negation-removal== 59837 (pos)
                    (not (not_at_b_p5))

                    ; #70811: <==negation-removal== 90933 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #70811: origin
                    (at_b_p6)

                    ; #90933: origin
                    (not_at_b_p6)

                    ; #70811: <==negation-removal== 90933 (pos)
                    (not (at_b_p6))

                    ; #90933: <==negation-removal== 70811 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #69489: origin
                    (at_b_p7)

                    ; #90933: origin
                    (not_at_b_p6)

                    ; #70811: <==negation-removal== 90933 (pos)
                    (not (at_b_p6))

                    ; #75085: <==negation-removal== 69489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #40873: origin
                    (at_b_p8)

                    ; #90933: origin
                    (not_at_b_p6)

                    ; #70811: <==negation-removal== 90933 (pos)
                    (not (at_b_p6))

                    ; #79967: <==negation-removal== 40873 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #31909: origin
                    (at_b_p9)

                    ; #90933: origin
                    (not_at_b_p6)

                    ; #49601: <==negation-removal== 31909 (pos)
                    (not (not_at_b_p9))

                    ; #70811: <==negation-removal== 90933 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #61538: origin
                    (at_b_p1)

                    ; #75085: origin
                    (not_at_b_p7)

                    ; #27139: <==negation-removal== 61538 (pos)
                    (not (not_at_b_p1))

                    ; #69489: <==negation-removal== 75085 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2)
                           (not (leader_b)))
        :effect (and
                    ; #75085: origin
                    (not_at_b_p7)

                    ; #81397: origin
                    (at_b_p2)

                    ; #68439: <==negation-removal== 81397 (pos)
                    (not (not_at_b_p2))

                    ; #69489: <==negation-removal== 75085 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19243: origin
                    (at_b_p3)

                    ; #75085: origin
                    (not_at_b_p7)

                    ; #27512: <==negation-removal== 19243 (pos)
                    (not (not_at_b_p3))

                    ; #69489: <==negation-removal== 75085 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #75085: origin
                    (not_at_b_p7)

                    ; #78106: origin
                    (at_b_p4)

                    ; #28729: <==negation-removal== 78106 (pos)
                    (not (not_at_b_p4))

                    ; #69489: <==negation-removal== 75085 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5)
                           (not (leader_b)))
        :effect (and
                    ; #59837: origin
                    (at_b_p5)

                    ; #75085: origin
                    (not_at_b_p7)

                    ; #38769: <==negation-removal== 59837 (pos)
                    (not (not_at_b_p5))

                    ; #69489: <==negation-removal== 75085 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6)
                           (not (leader_b)))
        :effect (and
                    ; #70811: origin
                    (at_b_p6)

                    ; #75085: origin
                    (not_at_b_p7)

                    ; #69489: <==negation-removal== 75085 (pos)
                    (not (at_b_p7))

                    ; #90933: <==negation-removal== 70811 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7)
                           (not (leader_b)))
        :effect (and
                    ; #69489: origin
                    (at_b_p7)

                    ; #75085: origin
                    (not_at_b_p7)

                    ; #69489: <==negation-removal== 75085 (pos)
                    (not (at_b_p7))

                    ; #75085: <==negation-removal== 69489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #40873: origin
                    (at_b_p8)

                    ; #75085: origin
                    (not_at_b_p7)

                    ; #69489: <==negation-removal== 75085 (pos)
                    (not (at_b_p7))

                    ; #79967: <==negation-removal== 40873 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9)
                           (not (leader_b)))
        :effect (and
                    ; #31909: origin
                    (at_b_p9)

                    ; #75085: origin
                    (not_at_b_p7)

                    ; #49601: <==negation-removal== 31909 (pos)
                    (not (not_at_b_p9))

                    ; #69489: <==negation-removal== 75085 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #61538: origin
                    (at_b_p1)

                    ; #79967: origin
                    (not_at_b_p8)

                    ; #27139: <==negation-removal== 61538 (pos)
                    (not (not_at_b_p1))

                    ; #40873: <==negation-removal== 79967 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2)
                           (not (leader_b)))
        :effect (and
                    ; #79967: origin
                    (not_at_b_p8)

                    ; #81397: origin
                    (at_b_p2)

                    ; #40873: <==negation-removal== 79967 (pos)
                    (not (at_b_p8))

                    ; #68439: <==negation-removal== 81397 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19243: origin
                    (at_b_p3)

                    ; #79967: origin
                    (not_at_b_p8)

                    ; #27512: <==negation-removal== 19243 (pos)
                    (not (not_at_b_p3))

                    ; #40873: <==negation-removal== 79967 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4)
                           (not (leader_b)))
        :effect (and
                    ; #78106: origin
                    (at_b_p4)

                    ; #79967: origin
                    (not_at_b_p8)

                    ; #28729: <==negation-removal== 78106 (pos)
                    (not (not_at_b_p4))

                    ; #40873: <==negation-removal== 79967 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #59837: origin
                    (at_b_p5)

                    ; #79967: origin
                    (not_at_b_p8)

                    ; #38769: <==negation-removal== 59837 (pos)
                    (not (not_at_b_p5))

                    ; #40873: <==negation-removal== 79967 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6)
                           (not (leader_b)))
        :effect (and
                    ; #70811: origin
                    (at_b_p6)

                    ; #79967: origin
                    (not_at_b_p8)

                    ; #40873: <==negation-removal== 79967 (pos)
                    (not (at_b_p8))

                    ; #90933: <==negation-removal== 70811 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #69489: origin
                    (at_b_p7)

                    ; #79967: origin
                    (not_at_b_p8)

                    ; #40873: <==negation-removal== 79967 (pos)
                    (not (at_b_p8))

                    ; #75085: <==negation-removal== 69489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #40873: origin
                    (at_b_p8)

                    ; #79967: origin
                    (not_at_b_p8)

                    ; #40873: <==negation-removal== 79967 (pos)
                    (not (at_b_p8))

                    ; #79967: <==negation-removal== 40873 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9)
                           (not (leader_b)))
        :effect (and
                    ; #31909: origin
                    (at_b_p9)

                    ; #79967: origin
                    (not_at_b_p8)

                    ; #40873: <==negation-removal== 79967 (pos)
                    (not (at_b_p8))

                    ; #49601: <==negation-removal== 31909 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #49601: origin
                    (not_at_b_p9)

                    ; #61538: origin
                    (at_b_p1)

                    ; #27139: <==negation-removal== 61538 (pos)
                    (not (not_at_b_p1))

                    ; #31909: <==negation-removal== 49601 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49601: origin
                    (not_at_b_p9)

                    ; #81397: origin
                    (at_b_p2)

                    ; #31909: <==negation-removal== 49601 (pos)
                    (not (at_b_p9))

                    ; #68439: <==negation-removal== 81397 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19243: origin
                    (at_b_p3)

                    ; #49601: origin
                    (not_at_b_p9)

                    ; #27512: <==negation-removal== 19243 (pos)
                    (not (not_at_b_p3))

                    ; #31909: <==negation-removal== 49601 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4)
                           (not (leader_b)))
        :effect (and
                    ; #49601: origin
                    (not_at_b_p9)

                    ; #78106: origin
                    (at_b_p4)

                    ; #28729: <==negation-removal== 78106 (pos)
                    (not (not_at_b_p4))

                    ; #31909: <==negation-removal== 49601 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #49601: origin
                    (not_at_b_p9)

                    ; #59837: origin
                    (at_b_p5)

                    ; #31909: <==negation-removal== 49601 (pos)
                    (not (at_b_p9))

                    ; #38769: <==negation-removal== 59837 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #49601: origin
                    (not_at_b_p9)

                    ; #70811: origin
                    (at_b_p6)

                    ; #31909: <==negation-removal== 49601 (pos)
                    (not (at_b_p9))

                    ; #90933: <==negation-removal== 70811 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #49601: origin
                    (not_at_b_p9)

                    ; #69489: origin
                    (at_b_p7)

                    ; #31909: <==negation-removal== 49601 (pos)
                    (not (at_b_p9))

                    ; #75085: <==negation-removal== 69489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #40873: origin
                    (at_b_p8)

                    ; #49601: origin
                    (not_at_b_p9)

                    ; #31909: <==negation-removal== 49601 (pos)
                    (not (at_b_p9))

                    ; #79967: <==negation-removal== 40873 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #31909: origin
                    (at_b_p9)

                    ; #49601: origin
                    (not_at_b_p9)

                    ; #31909: <==negation-removal== 49601 (pos)
                    (not (at_b_p9))

                    ; #49601: <==negation-removal== 31909 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #37903: origin
                    (at_c_p1)

                    ; #62145: origin
                    (not_at_c_p1)

                    ; #37903: <==negation-removal== 62145 (pos)
                    (not (at_c_p1))

                    ; #62145: <==negation-removal== 37903 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #62145: origin
                    (not_at_c_p1)

                    ; #65043: origin
                    (at_c_p2)

                    ; #37903: <==negation-removal== 62145 (pos)
                    (not (at_c_p1))

                    ; #68848: <==negation-removal== 65043 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #23794: origin
                    (at_c_p3)

                    ; #62145: origin
                    (not_at_c_p1)

                    ; #23517: <==negation-removal== 23794 (pos)
                    (not (not_at_c_p3))

                    ; #37903: <==negation-removal== 62145 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #39385: origin
                    (at_c_p4)

                    ; #62145: origin
                    (not_at_c_p1)

                    ; #32306: <==negation-removal== 39385 (pos)
                    (not (not_at_c_p4))

                    ; #37903: <==negation-removal== 62145 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #48589: origin
                    (at_c_p5)

                    ; #62145: origin
                    (not_at_c_p1)

                    ; #37903: <==negation-removal== 62145 (pos)
                    (not (at_c_p1))

                    ; #83361: <==negation-removal== 48589 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #62145: origin
                    (not_at_c_p1)

                    ; #68459: origin
                    (at_c_p6)

                    ; #21766: <==negation-removal== 68459 (pos)
                    (not (not_at_c_p6))

                    ; #37903: <==negation-removal== 62145 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #35970: origin
                    (at_c_p7)

                    ; #62145: origin
                    (not_at_c_p1)

                    ; #37903: <==negation-removal== 62145 (pos)
                    (not (at_c_p1))

                    ; #59310: <==negation-removal== 35970 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11363: origin
                    (at_c_p8)

                    ; #62145: origin
                    (not_at_c_p1)

                    ; #27124: <==negation-removal== 11363 (pos)
                    (not (not_at_c_p8))

                    ; #37903: <==negation-removal== 62145 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #62145: origin
                    (not_at_c_p1)

                    ; #67134: origin
                    (at_c_p9)

                    ; #13832: <==negation-removal== 67134 (pos)
                    (not (not_at_c_p9))

                    ; #37903: <==negation-removal== 62145 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #37903: origin
                    (at_c_p1)

                    ; #68848: origin
                    (not_at_c_p2)

                    ; #62145: <==negation-removal== 37903 (pos)
                    (not (not_at_c_p1))

                    ; #65043: <==negation-removal== 68848 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #65043: origin
                    (at_c_p2)

                    ; #68848: origin
                    (not_at_c_p2)

                    ; #65043: <==negation-removal== 68848 (pos)
                    (not (at_c_p2))

                    ; #68848: <==negation-removal== 65043 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #23794: origin
                    (at_c_p3)

                    ; #68848: origin
                    (not_at_c_p2)

                    ; #23517: <==negation-removal== 23794 (pos)
                    (not (not_at_c_p3))

                    ; #65043: <==negation-removal== 68848 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #39385: origin
                    (at_c_p4)

                    ; #68848: origin
                    (not_at_c_p2)

                    ; #32306: <==negation-removal== 39385 (pos)
                    (not (not_at_c_p4))

                    ; #65043: <==negation-removal== 68848 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #48589: origin
                    (at_c_p5)

                    ; #68848: origin
                    (not_at_c_p2)

                    ; #65043: <==negation-removal== 68848 (pos)
                    (not (at_c_p2))

                    ; #83361: <==negation-removal== 48589 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6)
                           (not (leader_c)))
        :effect (and
                    ; #68459: origin
                    (at_c_p6)

                    ; #68848: origin
                    (not_at_c_p2)

                    ; #21766: <==negation-removal== 68459 (pos)
                    (not (not_at_c_p6))

                    ; #65043: <==negation-removal== 68848 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #35970: origin
                    (at_c_p7)

                    ; #68848: origin
                    (not_at_c_p2)

                    ; #59310: <==negation-removal== 35970 (pos)
                    (not (not_at_c_p7))

                    ; #65043: <==negation-removal== 68848 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11363: origin
                    (at_c_p8)

                    ; #68848: origin
                    (not_at_c_p2)

                    ; #27124: <==negation-removal== 11363 (pos)
                    (not (not_at_c_p8))

                    ; #65043: <==negation-removal== 68848 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #67134: origin
                    (at_c_p9)

                    ; #68848: origin
                    (not_at_c_p2)

                    ; #13832: <==negation-removal== 67134 (pos)
                    (not (not_at_c_p9))

                    ; #65043: <==negation-removal== 68848 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #23517: origin
                    (not_at_c_p3)

                    ; #37903: origin
                    (at_c_p1)

                    ; #23794: <==negation-removal== 23517 (pos)
                    (not (at_c_p3))

                    ; #62145: <==negation-removal== 37903 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #23517: origin
                    (not_at_c_p3)

                    ; #65043: origin
                    (at_c_p2)

                    ; #23794: <==negation-removal== 23517 (pos)
                    (not (at_c_p3))

                    ; #68848: <==negation-removal== 65043 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #23517: origin
                    (not_at_c_p3)

                    ; #23794: origin
                    (at_c_p3)

                    ; #23517: <==negation-removal== 23794 (pos)
                    (not (not_at_c_p3))

                    ; #23794: <==negation-removal== 23517 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23517: origin
                    (not_at_c_p3)

                    ; #39385: origin
                    (at_c_p4)

                    ; #23794: <==negation-removal== 23517 (pos)
                    (not (at_c_p3))

                    ; #32306: <==negation-removal== 39385 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5)
                           (not (leader_c)))
        :effect (and
                    ; #23517: origin
                    (not_at_c_p3)

                    ; #48589: origin
                    (at_c_p5)

                    ; #23794: <==negation-removal== 23517 (pos)
                    (not (at_c_p3))

                    ; #83361: <==negation-removal== 48589 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #23517: origin
                    (not_at_c_p3)

                    ; #68459: origin
                    (at_c_p6)

                    ; #21766: <==negation-removal== 68459 (pos)
                    (not (not_at_c_p6))

                    ; #23794: <==negation-removal== 23517 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7)
                           (not (leader_c)))
        :effect (and
                    ; #23517: origin
                    (not_at_c_p3)

                    ; #35970: origin
                    (at_c_p7)

                    ; #23794: <==negation-removal== 23517 (pos)
                    (not (at_c_p3))

                    ; #59310: <==negation-removal== 35970 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11363: origin
                    (at_c_p8)

                    ; #23517: origin
                    (not_at_c_p3)

                    ; #23794: <==negation-removal== 23517 (pos)
                    (not (at_c_p3))

                    ; #27124: <==negation-removal== 11363 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #23517: origin
                    (not_at_c_p3)

                    ; #67134: origin
                    (at_c_p9)

                    ; #13832: <==negation-removal== 67134 (pos)
                    (not (not_at_c_p9))

                    ; #23794: <==negation-removal== 23517 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32306: origin
                    (not_at_c_p4)

                    ; #37903: origin
                    (at_c_p1)

                    ; #39385: <==negation-removal== 32306 (pos)
                    (not (at_c_p4))

                    ; #62145: <==negation-removal== 37903 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32306: origin
                    (not_at_c_p4)

                    ; #65043: origin
                    (at_c_p2)

                    ; #39385: <==negation-removal== 32306 (pos)
                    (not (at_c_p4))

                    ; #68848: <==negation-removal== 65043 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23794: origin
                    (at_c_p3)

                    ; #32306: origin
                    (not_at_c_p4)

                    ; #23517: <==negation-removal== 23794 (pos)
                    (not (not_at_c_p3))

                    ; #39385: <==negation-removal== 32306 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32306: origin
                    (not_at_c_p4)

                    ; #39385: origin
                    (at_c_p4)

                    ; #32306: <==negation-removal== 39385 (pos)
                    (not (not_at_c_p4))

                    ; #39385: <==negation-removal== 32306 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32306: origin
                    (not_at_c_p4)

                    ; #48589: origin
                    (at_c_p5)

                    ; #39385: <==negation-removal== 32306 (pos)
                    (not (at_c_p4))

                    ; #83361: <==negation-removal== 48589 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32306: origin
                    (not_at_c_p4)

                    ; #68459: origin
                    (at_c_p6)

                    ; #21766: <==negation-removal== 68459 (pos)
                    (not (not_at_c_p6))

                    ; #39385: <==negation-removal== 32306 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32306: origin
                    (not_at_c_p4)

                    ; #35970: origin
                    (at_c_p7)

                    ; #39385: <==negation-removal== 32306 (pos)
                    (not (at_c_p4))

                    ; #59310: <==negation-removal== 35970 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #11363: origin
                    (at_c_p8)

                    ; #32306: origin
                    (not_at_c_p4)

                    ; #27124: <==negation-removal== 11363 (pos)
                    (not (not_at_c_p8))

                    ; #39385: <==negation-removal== 32306 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32306: origin
                    (not_at_c_p4)

                    ; #67134: origin
                    (at_c_p9)

                    ; #13832: <==negation-removal== 67134 (pos)
                    (not (not_at_c_p9))

                    ; #39385: <==negation-removal== 32306 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #37903: origin
                    (at_c_p1)

                    ; #83361: origin
                    (not_at_c_p5)

                    ; #48589: <==negation-removal== 83361 (pos)
                    (not (at_c_p5))

                    ; #62145: <==negation-removal== 37903 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #65043: origin
                    (at_c_p2)

                    ; #83361: origin
                    (not_at_c_p5)

                    ; #48589: <==negation-removal== 83361 (pos)
                    (not (at_c_p5))

                    ; #68848: <==negation-removal== 65043 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #23794: origin
                    (at_c_p3)

                    ; #83361: origin
                    (not_at_c_p5)

                    ; #23517: <==negation-removal== 23794 (pos)
                    (not (not_at_c_p3))

                    ; #48589: <==negation-removal== 83361 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #39385: origin
                    (at_c_p4)

                    ; #83361: origin
                    (not_at_c_p5)

                    ; #32306: <==negation-removal== 39385 (pos)
                    (not (not_at_c_p4))

                    ; #48589: <==negation-removal== 83361 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #48589: origin
                    (at_c_p5)

                    ; #83361: origin
                    (not_at_c_p5)

                    ; #48589: <==negation-removal== 83361 (pos)
                    (not (at_c_p5))

                    ; #83361: <==negation-removal== 48589 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #68459: origin
                    (at_c_p6)

                    ; #83361: origin
                    (not_at_c_p5)

                    ; #21766: <==negation-removal== 68459 (pos)
                    (not (not_at_c_p6))

                    ; #48589: <==negation-removal== 83361 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #35970: origin
                    (at_c_p7)

                    ; #83361: origin
                    (not_at_c_p5)

                    ; #48589: <==negation-removal== 83361 (pos)
                    (not (at_c_p5))

                    ; #59310: <==negation-removal== 35970 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11363: origin
                    (at_c_p8)

                    ; #83361: origin
                    (not_at_c_p5)

                    ; #27124: <==negation-removal== 11363 (pos)
                    (not (not_at_c_p8))

                    ; #48589: <==negation-removal== 83361 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #67134: origin
                    (at_c_p9)

                    ; #83361: origin
                    (not_at_c_p5)

                    ; #13832: <==negation-removal== 67134 (pos)
                    (not (not_at_c_p9))

                    ; #48589: <==negation-removal== 83361 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1)
                           (not (leader_c)))
        :effect (and
                    ; #21766: origin
                    (not_at_c_p6)

                    ; #37903: origin
                    (at_c_p1)

                    ; #62145: <==negation-removal== 37903 (pos)
                    (not (not_at_c_p1))

                    ; #68459: <==negation-removal== 21766 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21766: origin
                    (not_at_c_p6)

                    ; #65043: origin
                    (at_c_p2)

                    ; #68459: <==negation-removal== 21766 (pos)
                    (not (at_c_p6))

                    ; #68848: <==negation-removal== 65043 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #21766: origin
                    (not_at_c_p6)

                    ; #23794: origin
                    (at_c_p3)

                    ; #23517: <==negation-removal== 23794 (pos)
                    (not (not_at_c_p3))

                    ; #68459: <==negation-removal== 21766 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #21766: origin
                    (not_at_c_p6)

                    ; #39385: origin
                    (at_c_p4)

                    ; #32306: <==negation-removal== 39385 (pos)
                    (not (not_at_c_p4))

                    ; #68459: <==negation-removal== 21766 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #21766: origin
                    (not_at_c_p6)

                    ; #48589: origin
                    (at_c_p5)

                    ; #68459: <==negation-removal== 21766 (pos)
                    (not (at_c_p6))

                    ; #83361: <==negation-removal== 48589 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21766: origin
                    (not_at_c_p6)

                    ; #68459: origin
                    (at_c_p6)

                    ; #21766: <==negation-removal== 68459 (pos)
                    (not (not_at_c_p6))

                    ; #68459: <==negation-removal== 21766 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #21766: origin
                    (not_at_c_p6)

                    ; #35970: origin
                    (at_c_p7)

                    ; #59310: <==negation-removal== 35970 (pos)
                    (not (not_at_c_p7))

                    ; #68459: <==negation-removal== 21766 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11363: origin
                    (at_c_p8)

                    ; #21766: origin
                    (not_at_c_p6)

                    ; #27124: <==negation-removal== 11363 (pos)
                    (not (not_at_c_p8))

                    ; #68459: <==negation-removal== 21766 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21766: origin
                    (not_at_c_p6)

                    ; #67134: origin
                    (at_c_p9)

                    ; #13832: <==negation-removal== 67134 (pos)
                    (not (not_at_c_p9))

                    ; #68459: <==negation-removal== 21766 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #37903: origin
                    (at_c_p1)

                    ; #59310: origin
                    (not_at_c_p7)

                    ; #35970: <==negation-removal== 59310 (pos)
                    (not (at_c_p7))

                    ; #62145: <==negation-removal== 37903 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #59310: origin
                    (not_at_c_p7)

                    ; #65043: origin
                    (at_c_p2)

                    ; #35970: <==negation-removal== 59310 (pos)
                    (not (at_c_p7))

                    ; #68848: <==negation-removal== 65043 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #23794: origin
                    (at_c_p3)

                    ; #59310: origin
                    (not_at_c_p7)

                    ; #23517: <==negation-removal== 23794 (pos)
                    (not (not_at_c_p3))

                    ; #35970: <==negation-removal== 59310 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #39385: origin
                    (at_c_p4)

                    ; #59310: origin
                    (not_at_c_p7)

                    ; #32306: <==negation-removal== 39385 (pos)
                    (not (not_at_c_p4))

                    ; #35970: <==negation-removal== 59310 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5)
                           (not (leader_c)))
        :effect (and
                    ; #48589: origin
                    (at_c_p5)

                    ; #59310: origin
                    (not_at_c_p7)

                    ; #35970: <==negation-removal== 59310 (pos)
                    (not (at_c_p7))

                    ; #83361: <==negation-removal== 48589 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6)
                           (not (leader_c)))
        :effect (and
                    ; #59310: origin
                    (not_at_c_p7)

                    ; #68459: origin
                    (at_c_p6)

                    ; #21766: <==negation-removal== 68459 (pos)
                    (not (not_at_c_p6))

                    ; #35970: <==negation-removal== 59310 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7)
                           (not (leader_c)))
        :effect (and
                    ; #35970: origin
                    (at_c_p7)

                    ; #59310: origin
                    (not_at_c_p7)

                    ; #35970: <==negation-removal== 59310 (pos)
                    (not (at_c_p7))

                    ; #59310: <==negation-removal== 35970 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11363: origin
                    (at_c_p8)

                    ; #59310: origin
                    (not_at_c_p7)

                    ; #27124: <==negation-removal== 11363 (pos)
                    (not (not_at_c_p8))

                    ; #35970: <==negation-removal== 59310 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9)
                           (not (leader_c)))
        :effect (and
                    ; #59310: origin
                    (not_at_c_p7)

                    ; #67134: origin
                    (at_c_p9)

                    ; #13832: <==negation-removal== 67134 (pos)
                    (not (not_at_c_p9))

                    ; #35970: <==negation-removal== 59310 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27124: origin
                    (not_at_c_p8)

                    ; #37903: origin
                    (at_c_p1)

                    ; #11363: <==negation-removal== 27124 (pos)
                    (not (at_c_p8))

                    ; #62145: <==negation-removal== 37903 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27124: origin
                    (not_at_c_p8)

                    ; #65043: origin
                    (at_c_p2)

                    ; #11363: <==negation-removal== 27124 (pos)
                    (not (at_c_p8))

                    ; #68848: <==negation-removal== 65043 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23794: origin
                    (at_c_p3)

                    ; #27124: origin
                    (not_at_c_p8)

                    ; #11363: <==negation-removal== 27124 (pos)
                    (not (at_c_p8))

                    ; #23517: <==negation-removal== 23794 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27124: origin
                    (not_at_c_p8)

                    ; #39385: origin
                    (at_c_p4)

                    ; #11363: <==negation-removal== 27124 (pos)
                    (not (at_c_p8))

                    ; #32306: <==negation-removal== 39385 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27124: origin
                    (not_at_c_p8)

                    ; #48589: origin
                    (at_c_p5)

                    ; #11363: <==negation-removal== 27124 (pos)
                    (not (at_c_p8))

                    ; #83361: <==negation-removal== 48589 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27124: origin
                    (not_at_c_p8)

                    ; #68459: origin
                    (at_c_p6)

                    ; #11363: <==negation-removal== 27124 (pos)
                    (not (at_c_p8))

                    ; #21766: <==negation-removal== 68459 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27124: origin
                    (not_at_c_p8)

                    ; #35970: origin
                    (at_c_p7)

                    ; #11363: <==negation-removal== 27124 (pos)
                    (not (at_c_p8))

                    ; #59310: <==negation-removal== 35970 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11363: origin
                    (at_c_p8)

                    ; #27124: origin
                    (not_at_c_p8)

                    ; #11363: <==negation-removal== 27124 (pos)
                    (not (at_c_p8))

                    ; #27124: <==negation-removal== 11363 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27124: origin
                    (not_at_c_p8)

                    ; #67134: origin
                    (at_c_p9)

                    ; #11363: <==negation-removal== 27124 (pos)
                    (not (at_c_p8))

                    ; #13832: <==negation-removal== 67134 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #13832: origin
                    (not_at_c_p9)

                    ; #37903: origin
                    (at_c_p1)

                    ; #62145: <==negation-removal== 37903 (pos)
                    (not (not_at_c_p1))

                    ; #67134: <==negation-removal== 13832 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13832: origin
                    (not_at_c_p9)

                    ; #65043: origin
                    (at_c_p2)

                    ; #67134: <==negation-removal== 13832 (pos)
                    (not (at_c_p9))

                    ; #68848: <==negation-removal== 65043 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #13832: origin
                    (not_at_c_p9)

                    ; #23794: origin
                    (at_c_p3)

                    ; #23517: <==negation-removal== 23794 (pos)
                    (not (not_at_c_p3))

                    ; #67134: <==negation-removal== 13832 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #13832: origin
                    (not_at_c_p9)

                    ; #39385: origin
                    (at_c_p4)

                    ; #32306: <==negation-removal== 39385 (pos)
                    (not (not_at_c_p4))

                    ; #67134: <==negation-removal== 13832 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13832: origin
                    (not_at_c_p9)

                    ; #48589: origin
                    (at_c_p5)

                    ; #67134: <==negation-removal== 13832 (pos)
                    (not (at_c_p9))

                    ; #83361: <==negation-removal== 48589 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13832: origin
                    (not_at_c_p9)

                    ; #68459: origin
                    (at_c_p6)

                    ; #21766: <==negation-removal== 68459 (pos)
                    (not (not_at_c_p6))

                    ; #67134: <==negation-removal== 13832 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13832: origin
                    (not_at_c_p9)

                    ; #35970: origin
                    (at_c_p7)

                    ; #59310: <==negation-removal== 35970 (pos)
                    (not (not_at_c_p7))

                    ; #67134: <==negation-removal== 13832 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11363: origin
                    (at_c_p8)

                    ; #13832: origin
                    (not_at_c_p9)

                    ; #27124: <==negation-removal== 11363 (pos)
                    (not (not_at_c_p8))

                    ; #67134: <==negation-removal== 13832 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13832: origin
                    (not_at_c_p9)

                    ; #67134: origin
                    (at_c_p9)

                    ; #13832: <==negation-removal== 67134 (pos)
                    (not (not_at_c_p9))

                    ; #67134: <==negation-removal== 13832 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17531: <==commonly_known== 79793 (neg)
                    (Pb_checked_p1)

                    ; #25477: <==closure== 77675 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #29701: <==commonly_known== 59522 (pos)
                    (Ba_checked_p1)

                    ; #36739: <==commonly_known== 79793 (neg)
                    (Pc_checked_p1)

                    ; #44439: <==closure== 55491 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #55491: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #59522: origin
                    (checked_p1)

                    ; #66435: <==commonly_known== 59522 (pos)
                    (Bb_checked_p1)

                    ; #67994: <==commonly_known== 59522 (pos)
                    (Bc_checked_p1)

                    ; #77675: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #91909: <==commonly_known== 79793 (neg)
                    (Pa_checked_p1)

                    ; #10180: <==negation-removal== 29701 (pos)
                    (not (Pa_not_checked_p1))

                    ; #12112: <==negation-removal== 25477 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #17722: <==negation-removal== 66435 (pos)
                    (not (Pb_not_checked_p1))

                    ; #17874: <==negation-removal== 67994 (pos)
                    (not (Pc_not_checked_p1))

                    ; #21129: <==negation-removal== 55491 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #25349: <==uncertain_firing== 44439 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #39661: <==negation-removal== 77675 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #49155: <==negation-removal== 44439 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #49908: <==negation-removal== 91909 (pos)
                    (not (Ba_not_checked_p1))

                    ; #52030: <==negation-removal== 36739 (pos)
                    (not (Bc_not_checked_p1))

                    ; #72641: <==uncertain_firing== 55491 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #79793: <==negation-removal== 59522 (pos)
                    (not (not_checked_p1))

                    ; #86115: <==negation-removal== 17531 (pos)
                    (not (Bb_not_checked_p1))

                    ; #86157: <==uncertain_firing== 25477 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #91840: <==uncertain_firing== 77675 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12288: <==commonly_known== 22924 (neg)
                    (Pb_checked_p2)

                    ; #14938: <==closure== 54892 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #30783: origin
                    (checked_p2)

                    ; #37022: <==commonly_known== 30783 (pos)
                    (Bc_checked_p2)

                    ; #41658: <==commonly_known== 22924 (neg)
                    (Pc_checked_p2)

                    ; #43050: <==closure== 49334 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #47856: <==commonly_known== 30783 (pos)
                    (Bb_checked_p2)

                    ; #49334: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #54892: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #69785: <==commonly_known== 30783 (pos)
                    (Ba_checked_p2)

                    ; #77312: <==commonly_known== 22924 (neg)
                    (Pa_checked_p2)

                    ; #15498: <==negation-removal== 47856 (pos)
                    (not (Pb_not_checked_p2))

                    ; #16042: <==negation-removal== 41658 (pos)
                    (not (Bc_not_checked_p2))

                    ; #22924: <==negation-removal== 30783 (pos)
                    (not (not_checked_p2))

                    ; #37792: <==negation-removal== 43050 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #40528: <==negation-removal== 14938 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #42333: <==negation-removal== 77312 (pos)
                    (not (Ba_not_checked_p2))

                    ; #45279: <==negation-removal== 49334 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #50453: <==uncertain_firing== 14938 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #50524: <==uncertain_firing== 54892 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #58629: <==negation-removal== 54892 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #58743: <==uncertain_firing== 43050 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #58839: <==negation-removal== 12288 (pos)
                    (not (Bb_not_checked_p2))

                    ; #81089: <==negation-removal== 69785 (pos)
                    (not (Pa_not_checked_p2))

                    ; #90488: <==negation-removal== 37022 (pos)
                    (not (Pc_not_checked_p2))

                    ; #97046: <==uncertain_firing== 49334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #18763: <==commonly_known== 68122 (neg)
                    (Pa_checked_p3)

                    ; #40858: <==commonly_known== 68122 (neg)
                    (Pb_checked_p3)

                    ; #47167: <==commonly_known== 86560 (pos)
                    (Ba_checked_p3)

                    ; #52673: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #55668: <==commonly_known== 86560 (pos)
                    (Bc_checked_p3)

                    ; #75384: <==commonly_known== 86560 (pos)
                    (Bb_checked_p3)

                    ; #81417: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #83668: <==closure== 52673 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #86560: origin
                    (checked_p3)

                    ; #87528: <==commonly_known== 68122 (neg)
                    (Pc_checked_p3)

                    ; #87671: <==closure== 81417 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #26445: <==negation-removal== 18763 (pos)
                    (not (Ba_not_checked_p3))

                    ; #30654: <==negation-removal== 47167 (pos)
                    (not (Pa_not_checked_p3))

                    ; #32762: <==negation-removal== 75384 (pos)
                    (not (Pb_not_checked_p3))

                    ; #35759: <==negation-removal== 55668 (pos)
                    (not (Pc_not_checked_p3))

                    ; #44994: <==uncertain_firing== 81417 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #48060: <==uncertain_firing== 83668 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #55577: <==negation-removal== 52673 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #68122: <==negation-removal== 86560 (pos)
                    (not (not_checked_p3))

                    ; #68812: <==negation-removal== 83668 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #73658: <==uncertain_firing== 52673 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #75816: <==negation-removal== 40858 (pos)
                    (not (Bb_not_checked_p3))

                    ; #85298: <==negation-removal== 87671 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #86606: <==uncertain_firing== 87671 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #86979: <==negation-removal== 87528 (pos)
                    (not (Bc_not_checked_p3))

                    ; #99378: <==negation-removal== 81417 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #12420: <==commonly_known== 39181 (pos)
                    (Bc_checked_p4)

                    ; #19494: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #39181: origin
                    (checked_p4)

                    ; #47140: <==commonly_known== 39181 (pos)
                    (Bb_checked_p4)

                    ; #47890: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #55412: <==commonly_known== 34361 (neg)
                    (Pb_checked_p4)

                    ; #56531: <==closure== 47890 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #66083: <==closure== 19494 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #69769: <==commonly_known== 34361 (neg)
                    (Pa_checked_p4)

                    ; #84716: <==commonly_known== 39181 (pos)
                    (Ba_checked_p4)

                    ; #90338: <==commonly_known== 34361 (neg)
                    (Pc_checked_p4)

                    ; #19883: <==negation-removal== 55412 (pos)
                    (not (Bb_not_checked_p4))

                    ; #24793: <==negation-removal== 56531 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #25826: <==negation-removal== 47890 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #26338: <==negation-removal== 47140 (pos)
                    (not (Pb_not_checked_p4))

                    ; #29274: <==uncertain_firing== 56531 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #30122: <==uncertain_firing== 47890 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #34361: <==negation-removal== 39181 (pos)
                    (not (not_checked_p4))

                    ; #48274: <==negation-removal== 84716 (pos)
                    (not (Pa_not_checked_p4))

                    ; #55659: <==negation-removal== 66083 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #56682: <==negation-removal== 19494 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #59764: <==negation-removal== 69769 (pos)
                    (not (Ba_not_checked_p4))

                    ; #66994: <==negation-removal== 90338 (pos)
                    (not (Bc_not_checked_p4))

                    ; #67403: <==negation-removal== 12420 (pos)
                    (not (Pc_not_checked_p4))

                    ; #81417: <==uncertain_firing== 19494 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #90772: <==uncertain_firing== 66083 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12390: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #17798: <==commonly_known== 87884 (neg)
                    (Pb_checked_p5)

                    ; #21101: <==commonly_known== 40051 (pos)
                    (Bc_checked_p5)

                    ; #36654: <==commonly_known== 87884 (neg)
                    (Pa_checked_p5)

                    ; #40051: origin
                    (checked_p5)

                    ; #41456: <==commonly_known== 87884 (neg)
                    (Pc_checked_p5)

                    ; #50710: <==closure== 12390 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #57106: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #64560: <==commonly_known== 40051 (pos)
                    (Ba_checked_p5)

                    ; #79130: <==commonly_known== 40051 (pos)
                    (Bb_checked_p5)

                    ; #84025: <==closure== 57106 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #24155: <==negation-removal== 79130 (pos)
                    (not (Pb_not_checked_p5))

                    ; #38000: <==negation-removal== 84025 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #38814: <==negation-removal== 21101 (pos)
                    (not (Pc_not_checked_p5))

                    ; #46524: <==uncertain_firing== 57106 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #46530: <==uncertain_firing== 12390 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #60595: <==uncertain_firing== 84025 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #61181: <==negation-removal== 17798 (pos)
                    (not (Bb_not_checked_p5))

                    ; #64347: <==negation-removal== 64560 (pos)
                    (not (Pa_not_checked_p5))

                    ; #67322: <==negation-removal== 57106 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #78071: <==uncertain_firing== 50710 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #86799: <==negation-removal== 41456 (pos)
                    (not (Bc_not_checked_p5))

                    ; #87443: <==negation-removal== 36654 (pos)
                    (not (Ba_not_checked_p5))

                    ; #87884: <==negation-removal== 40051 (pos)
                    (not (not_checked_p5))

                    ; #88194: <==negation-removal== 50710 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #90832: <==negation-removal== 12390 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #17478: <==commonly_known== 80573 (pos)
                    (Bb_checked_p6)

                    ; #21351: <==commonly_known== 18363 (neg)
                    (Pc_checked_p6)

                    ; #24788: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #38764: <==commonly_known== 80573 (pos)
                    (Bc_checked_p6)

                    ; #42675: <==closure== 66808 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #63462: <==commonly_known== 80573 (pos)
                    (Ba_checked_p6)

                    ; #66808: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #69096: <==commonly_known== 18363 (neg)
                    (Pa_checked_p6)

                    ; #70128: <==commonly_known== 18363 (neg)
                    (Pb_checked_p6)

                    ; #80573: origin
                    (checked_p6)

                    ; #92297: <==closure== 24788 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #12176: <==uncertain_firing== 92297 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #18363: <==negation-removal== 80573 (pos)
                    (not (not_checked_p6))

                    ; #20395: <==uncertain_firing== 24788 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #32556: <==negation-removal== 69096 (pos)
                    (not (Ba_not_checked_p6))

                    ; #58701: <==negation-removal== 70128 (pos)
                    (not (Bb_not_checked_p6))

                    ; #60141: <==negation-removal== 38764 (pos)
                    (not (Pc_not_checked_p6))

                    ; #66878: <==negation-removal== 63462 (pos)
                    (not (Pa_not_checked_p6))

                    ; #67940: <==negation-removal== 21351 (pos)
                    (not (Bc_not_checked_p6))

                    ; #70539: <==negation-removal== 17478 (pos)
                    (not (Pb_not_checked_p6))

                    ; #78540: <==uncertain_firing== 66808 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #84533: <==uncertain_firing== 42675 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85478: <==negation-removal== 42675 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #88594: <==negation-removal== 24788 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #89751: <==negation-removal== 66808 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #92892: <==negation-removal== 92297 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15978: <==commonly_known== 11766 (neg)
                    (Pb_checked_p7)

                    ; #32402: <==commonly_known== 47852 (pos)
                    (Bc_checked_p7)

                    ; #33926: <==commonly_known== 47852 (pos)
                    (Ba_checked_p7)

                    ; #34841: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #35673: <==commonly_known== 47852 (pos)
                    (Bb_checked_p7)

                    ; #43521: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #47852: origin
                    (checked_p7)

                    ; #52690: <==closure== 43521 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #58096: <==commonly_known== 11766 (neg)
                    (Pa_checked_p7)

                    ; #60453: <==closure== 34841 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #64415: <==commonly_known== 11766 (neg)
                    (Pc_checked_p7)

                    ; #11766: <==negation-removal== 47852 (pos)
                    (not (not_checked_p7))

                    ; #15886: <==uncertain_firing== 60453 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #16533: <==uncertain_firing== 52690 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #20779: <==uncertain_firing== 43521 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #23429: <==negation-removal== 43521 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #25681: <==negation-removal== 34841 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25882: <==negation-removal== 60453 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #31373: <==uncertain_firing== 34841 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #35686: <==negation-removal== 52690 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #44420: <==negation-removal== 33926 (pos)
                    (not (Pa_not_checked_p7))

                    ; #48523: <==negation-removal== 15978 (pos)
                    (not (Bb_not_checked_p7))

                    ; #50067: <==negation-removal== 35673 (pos)
                    (not (Pb_not_checked_p7))

                    ; #55524: <==negation-removal== 58096 (pos)
                    (not (Ba_not_checked_p7))

                    ; #57141: <==negation-removal== 64415 (pos)
                    (not (Bc_not_checked_p7))

                    ; #66288: <==negation-removal== 32402 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #28248: origin
                    (checked_p8)

                    ; #30661: <==closure== 85998 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #35013: <==commonly_known== 31629 (neg)
                    (Pa_checked_p8)

                    ; #36308: <==commonly_known== 31629 (neg)
                    (Pb_checked_p8)

                    ; #36589: <==commonly_known== 28248 (pos)
                    (Bc_checked_p8)

                    ; #38776: <==commonly_known== 28248 (pos)
                    (Bb_checked_p8)

                    ; #42575: <==commonly_known== 31629 (neg)
                    (Pc_checked_p8)

                    ; #42721: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #69610: <==closure== 42721 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #85998: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #89640: <==commonly_known== 28248 (pos)
                    (Ba_checked_p8)

                    ; #12614: <==uncertain_firing== 85998 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #14039: <==negation-removal== 42575 (pos)
                    (not (Bc_not_checked_p8))

                    ; #14816: <==negation-removal== 89640 (pos)
                    (not (Pa_not_checked_p8))

                    ; #17846: <==negation-removal== 35013 (pos)
                    (not (Ba_not_checked_p8))

                    ; #20308: <==negation-removal== 85998 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #30535: <==negation-removal== 36308 (pos)
                    (not (Bb_not_checked_p8))

                    ; #31629: <==negation-removal== 28248 (pos)
                    (not (not_checked_p8))

                    ; #34732: <==negation-removal== 38776 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41721: <==negation-removal== 69610 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #41886: <==negation-removal== 42721 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #43676: <==negation-removal== 30661 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #46409: <==uncertain_firing== 30661 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #46521: <==negation-removal== 36589 (pos)
                    (not (Pc_not_checked_p8))

                    ; #64719: <==uncertain_firing== 69610 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #81311: <==uncertain_firing== 42721 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #30746: origin
                    (checked_p9)

                    ; #44246: <==commonly_known== 71649 (neg)
                    (Pb_checked_p9)

                    ; #49082: <==commonly_known== 30746 (pos)
                    (Bc_checked_p9)

                    ; #53753: <==commonly_known== 30746 (pos)
                    (Ba_checked_p9)

                    ; #63289: <==closure== 86042 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #63916: <==commonly_known== 71649 (neg)
                    (Pa_checked_p9)

                    ; #66617: <==closure== 68188 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #68188: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #69721: <==commonly_known== 71649 (neg)
                    (Pc_checked_p9)

                    ; #86042: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #86892: <==commonly_known== 30746 (pos)
                    (Bb_checked_p9)

                    ; #14189: <==negation-removal== 63916 (pos)
                    (not (Ba_not_checked_p9))

                    ; #15002: <==negation-removal== 86042 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #20043: <==uncertain_firing== 68188 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #23971: <==negation-removal== 86892 (pos)
                    (not (Pb_not_checked_p9))

                    ; #27440: <==negation-removal== 49082 (pos)
                    (not (Pc_not_checked_p9))

                    ; #42751: <==negation-removal== 66617 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #57484: <==negation-removal== 69721 (pos)
                    (not (Bc_not_checked_p9))

                    ; #60201: <==uncertain_firing== 66617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #60690: <==negation-removal== 63289 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #61290: <==negation-removal== 68188 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #65888: <==uncertain_firing== 63289 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #71649: <==negation-removal== 30746 (pos)
                    (not (not_checked_p9))

                    ; #71803: <==negation-removal== 44246 (pos)
                    (not (Bb_not_checked_p9))

                    ; #83100: <==uncertain_firing== 86042 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #84237: <==negation-removal== 53753 (pos)
                    (not (Pa_not_checked_p9))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #15986: <==closure== 69721 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #17531: <==commonly_known== 79793 (neg)
                    (Pb_checked_p1)

                    ; #28603: <==closure== 53544 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #29701: <==commonly_known== 59522 (pos)
                    (Ba_checked_p1)

                    ; #36739: <==commonly_known== 79793 (neg)
                    (Pc_checked_p1)

                    ; #53544: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #59522: origin
                    (checked_p1)

                    ; #66435: <==commonly_known== 59522 (pos)
                    (Bb_checked_p1)

                    ; #67994: <==commonly_known== 59522 (pos)
                    (Bc_checked_p1)

                    ; #69721: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #91909: <==commonly_known== 79793 (neg)
                    (Pa_checked_p1)

                    ; #10180: <==negation-removal== 29701 (pos)
                    (not (Pa_not_checked_p1))

                    ; #13674: <==uncertain_firing== 28603 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #14452: <==negation-removal== 53544 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #15551: <==negation-removal== 69721 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #17722: <==negation-removal== 66435 (pos)
                    (not (Pb_not_checked_p1))

                    ; #17874: <==negation-removal== 67994 (pos)
                    (not (Pc_not_checked_p1))

                    ; #20192: <==uncertain_firing== 15986 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #24907: <==negation-removal== 28603 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #35294: <==uncertain_firing== 69721 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #35813: <==uncertain_firing== 53544 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #42203: <==negation-removal== 15986 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #49908: <==negation-removal== 91909 (pos)
                    (not (Ba_not_checked_p1))

                    ; #52030: <==negation-removal== 36739 (pos)
                    (not (Bc_not_checked_p1))

                    ; #79793: <==negation-removal== 59522 (pos)
                    (not (not_checked_p1))

                    ; #86115: <==negation-removal== 17531 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #12288: <==commonly_known== 22924 (neg)
                    (Pb_checked_p2)

                    ; #15871: <==closure== 83286 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #25767: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #30783: origin
                    (checked_p2)

                    ; #37022: <==commonly_known== 30783 (pos)
                    (Bc_checked_p2)

                    ; #41658: <==commonly_known== 22924 (neg)
                    (Pc_checked_p2)

                    ; #47856: <==commonly_known== 30783 (pos)
                    (Bb_checked_p2)

                    ; #69785: <==commonly_known== 30783 (pos)
                    (Ba_checked_p2)

                    ; #77312: <==commonly_known== 22924 (neg)
                    (Pa_checked_p2)

                    ; #83286: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #89602: <==closure== 25767 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #10595: <==uncertain_firing== 89602 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #15498: <==negation-removal== 47856 (pos)
                    (not (Pb_not_checked_p2))

                    ; #16042: <==negation-removal== 41658 (pos)
                    (not (Bc_not_checked_p2))

                    ; #16311: <==negation-removal== 15871 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #16352: <==negation-removal== 83286 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #18675: <==uncertain_firing== 25767 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #19684: <==negation-removal== 89602 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #22924: <==negation-removal== 30783 (pos)
                    (not (not_checked_p2))

                    ; #32989: <==uncertain_firing== 83286 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #41114: <==negation-removal== 25767 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #42333: <==negation-removal== 77312 (pos)
                    (not (Ba_not_checked_p2))

                    ; #58839: <==negation-removal== 12288 (pos)
                    (not (Bb_not_checked_p2))

                    ; #81089: <==negation-removal== 69785 (pos)
                    (not (Pa_not_checked_p2))

                    ; #90488: <==negation-removal== 37022 (pos)
                    (not (Pc_not_checked_p2))

                    ; #92053: <==uncertain_firing== 15871 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #18763: <==commonly_known== 68122 (neg)
                    (Pa_checked_p3)

                    ; #40447: <==closure== 66931 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #40858: <==commonly_known== 68122 (neg)
                    (Pb_checked_p3)

                    ; #43624: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #47167: <==commonly_known== 86560 (pos)
                    (Ba_checked_p3)

                    ; #52789: <==closure== 43624 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #55668: <==commonly_known== 86560 (pos)
                    (Bc_checked_p3)

                    ; #66931: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #75384: <==commonly_known== 86560 (pos)
                    (Bb_checked_p3)

                    ; #86560: origin
                    (checked_p3)

                    ; #87528: <==commonly_known== 68122 (neg)
                    (Pc_checked_p3)

                    ; #19134: <==negation-removal== 43624 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #19692: <==uncertain_firing== 43624 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #26445: <==negation-removal== 18763 (pos)
                    (not (Ba_not_checked_p3))

                    ; #29740: <==negation-removal== 66931 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #30654: <==negation-removal== 47167 (pos)
                    (not (Pa_not_checked_p3))

                    ; #32762: <==negation-removal== 75384 (pos)
                    (not (Pb_not_checked_p3))

                    ; #35759: <==negation-removal== 55668 (pos)
                    (not (Pc_not_checked_p3))

                    ; #35761: <==uncertain_firing== 52789 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #41442: <==negation-removal== 40447 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #45057: <==uncertain_firing== 40447 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #65685: <==uncertain_firing== 66931 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #68122: <==negation-removal== 86560 (pos)
                    (not (not_checked_p3))

                    ; #70591: <==negation-removal== 52789 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #75816: <==negation-removal== 40858 (pos)
                    (not (Bb_not_checked_p3))

                    ; #86979: <==negation-removal== 87528 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12420: <==commonly_known== 39181 (pos)
                    (Bc_checked_p4)

                    ; #28786: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #31613: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #39181: origin
                    (checked_p4)

                    ; #41298: <==closure== 28786 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #47140: <==commonly_known== 39181 (pos)
                    (Bb_checked_p4)

                    ; #55412: <==commonly_known== 34361 (neg)
                    (Pb_checked_p4)

                    ; #69769: <==commonly_known== 34361 (neg)
                    (Pa_checked_p4)

                    ; #71860: <==closure== 31613 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #84716: <==commonly_known== 39181 (pos)
                    (Ba_checked_p4)

                    ; #90338: <==commonly_known== 34361 (neg)
                    (Pc_checked_p4)

                    ; #11098: <==negation-removal== 71860 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #13287: <==uncertain_firing== 71860 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #19883: <==negation-removal== 55412 (pos)
                    (not (Bb_not_checked_p4))

                    ; #26338: <==negation-removal== 47140 (pos)
                    (not (Pb_not_checked_p4))

                    ; #34361: <==negation-removal== 39181 (pos)
                    (not (not_checked_p4))

                    ; #48274: <==negation-removal== 84716 (pos)
                    (not (Pa_not_checked_p4))

                    ; #48332: <==negation-removal== 41298 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #58034: <==negation-removal== 28786 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #58123: <==negation-removal== 31613 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #59764: <==negation-removal== 69769 (pos)
                    (not (Ba_not_checked_p4))

                    ; #62654: <==uncertain_firing== 28786 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #66994: <==negation-removal== 90338 (pos)
                    (not (Bc_not_checked_p4))

                    ; #67403: <==negation-removal== 12420 (pos)
                    (not (Pc_not_checked_p4))

                    ; #88108: <==uncertain_firing== 31613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #90771: <==uncertain_firing== 41298 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #17798: <==commonly_known== 87884 (neg)
                    (Pb_checked_p5)

                    ; #21101: <==commonly_known== 40051 (pos)
                    (Bc_checked_p5)

                    ; #36654: <==commonly_known== 87884 (neg)
                    (Pa_checked_p5)

                    ; #40051: origin
                    (checked_p5)

                    ; #41456: <==commonly_known== 87884 (neg)
                    (Pc_checked_p5)

                    ; #63987: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #64560: <==commonly_known== 40051 (pos)
                    (Ba_checked_p5)

                    ; #65502: <==closure== 67970 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #67970: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #79130: <==commonly_known== 40051 (pos)
                    (Bb_checked_p5)

                    ; #97769: <==closure== 63987 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #23957: <==negation-removal== 65502 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #24155: <==negation-removal== 79130 (pos)
                    (not (Pb_not_checked_p5))

                    ; #36077: <==uncertain_firing== 65502 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #38814: <==negation-removal== 21101 (pos)
                    (not (Pc_not_checked_p5))

                    ; #40953: <==uncertain_firing== 67970 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #55972: <==negation-removal== 63987 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #56647: <==uncertain_firing== 97769 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #57578: <==negation-removal== 97769 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #61181: <==negation-removal== 17798 (pos)
                    (not (Bb_not_checked_p5))

                    ; #61718: <==negation-removal== 67970 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #64347: <==negation-removal== 64560 (pos)
                    (not (Pa_not_checked_p5))

                    ; #70323: <==uncertain_firing== 63987 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #86799: <==negation-removal== 41456 (pos)
                    (not (Bc_not_checked_p5))

                    ; #87443: <==negation-removal== 36654 (pos)
                    (not (Ba_not_checked_p5))

                    ; #87884: <==negation-removal== 40051 (pos)
                    (not (not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #17478: <==commonly_known== 80573 (pos)
                    (Bb_checked_p6)

                    ; #21351: <==commonly_known== 18363 (neg)
                    (Pc_checked_p6)

                    ; #38764: <==commonly_known== 80573 (pos)
                    (Bc_checked_p6)

                    ; #39948: <==closure== 84581 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #61459: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #63462: <==commonly_known== 80573 (pos)
                    (Ba_checked_p6)

                    ; #69096: <==commonly_known== 18363 (neg)
                    (Pa_checked_p6)

                    ; #70128: <==commonly_known== 18363 (neg)
                    (Pb_checked_p6)

                    ; #80573: origin
                    (checked_p6)

                    ; #84581: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #90100: <==closure== 61459 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #11355: <==uncertain_firing== 90100 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #15184: <==uncertain_firing== 39948 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #18363: <==negation-removal== 80573 (pos)
                    (not (not_checked_p6))

                    ; #32556: <==negation-removal== 69096 (pos)
                    (not (Ba_not_checked_p6))

                    ; #34146: <==negation-removal== 61459 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #46847: <==uncertain_firing== 61459 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #51646: <==negation-removal== 39948 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #58701: <==negation-removal== 70128 (pos)
                    (not (Bb_not_checked_p6))

                    ; #60141: <==negation-removal== 38764 (pos)
                    (not (Pc_not_checked_p6))

                    ; #61646: <==negation-removal== 90100 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #66878: <==negation-removal== 63462 (pos)
                    (not (Pa_not_checked_p6))

                    ; #67940: <==negation-removal== 21351 (pos)
                    (not (Bc_not_checked_p6))

                    ; #70539: <==negation-removal== 17478 (pos)
                    (not (Pb_not_checked_p6))

                    ; #80362: <==negation-removal== 84581 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #84838: <==uncertain_firing== 84581 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15978: <==commonly_known== 11766 (neg)
                    (Pb_checked_p7)

                    ; #32402: <==commonly_known== 47852 (pos)
                    (Bc_checked_p7)

                    ; #33926: <==commonly_known== 47852 (pos)
                    (Ba_checked_p7)

                    ; #35673: <==commonly_known== 47852 (pos)
                    (Bb_checked_p7)

                    ; #38916: <==closure== 62747 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #47852: origin
                    (checked_p7)

                    ; #58034: <==closure== 73611 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #58096: <==commonly_known== 11766 (neg)
                    (Pa_checked_p7)

                    ; #62747: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #64415: <==commonly_known== 11766 (neg)
                    (Pc_checked_p7)

                    ; #73611: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #11766: <==negation-removal== 47852 (pos)
                    (not (not_checked_p7))

                    ; #21287: <==negation-removal== 58034 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #23630: <==negation-removal== 73611 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #25011: <==negation-removal== 62747 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #44420: <==negation-removal== 33926 (pos)
                    (not (Pa_not_checked_p7))

                    ; #48523: <==negation-removal== 15978 (pos)
                    (not (Bb_not_checked_p7))

                    ; #50067: <==negation-removal== 35673 (pos)
                    (not (Pb_not_checked_p7))

                    ; #55524: <==negation-removal== 58096 (pos)
                    (not (Ba_not_checked_p7))

                    ; #57141: <==negation-removal== 64415 (pos)
                    (not (Bc_not_checked_p7))

                    ; #66288: <==negation-removal== 32402 (pos)
                    (not (Pc_not_checked_p7))

                    ; #74436: <==uncertain_firing== 38916 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #79194: <==negation-removal== 38916 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #79368: <==uncertain_firing== 62747 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #79566: <==uncertain_firing== 73611 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #83051: <==uncertain_firing== 58034 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #19743: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #28248: origin
                    (checked_p8)

                    ; #33894: <==closure== 52581 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #35013: <==commonly_known== 31629 (neg)
                    (Pa_checked_p8)

                    ; #36308: <==commonly_known== 31629 (neg)
                    (Pb_checked_p8)

                    ; #36589: <==commonly_known== 28248 (pos)
                    (Bc_checked_p8)

                    ; #38776: <==commonly_known== 28248 (pos)
                    (Bb_checked_p8)

                    ; #42575: <==commonly_known== 31629 (neg)
                    (Pc_checked_p8)

                    ; #48562: <==closure== 19743 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #52581: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #89640: <==commonly_known== 28248 (pos)
                    (Ba_checked_p8)

                    ; #14039: <==negation-removal== 42575 (pos)
                    (not (Bc_not_checked_p8))

                    ; #14411: <==uncertain_firing== 52581 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #14816: <==negation-removal== 89640 (pos)
                    (not (Pa_not_checked_p8))

                    ; #17846: <==negation-removal== 35013 (pos)
                    (not (Ba_not_checked_p8))

                    ; #26951: <==negation-removal== 52581 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #30535: <==negation-removal== 36308 (pos)
                    (not (Bb_not_checked_p8))

                    ; #30848: <==negation-removal== 19743 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #31629: <==negation-removal== 28248 (pos)
                    (not (not_checked_p8))

                    ; #34732: <==negation-removal== 38776 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44165: <==uncertain_firing== 19743 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #46521: <==negation-removal== 36589 (pos)
                    (not (Pc_not_checked_p8))

                    ; #52513: <==uncertain_firing== 48562 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #71587: <==negation-removal== 48562 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83488: <==uncertain_firing== 33894 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #99588: <==negation-removal== 33894 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #19700: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #30746: origin
                    (checked_p9)

                    ; #44246: <==commonly_known== 71649 (neg)
                    (Pb_checked_p9)

                    ; #49082: <==commonly_known== 30746 (pos)
                    (Bc_checked_p9)

                    ; #53753: <==commonly_known== 30746 (pos)
                    (Ba_checked_p9)

                    ; #63916: <==commonly_known== 71649 (neg)
                    (Pa_checked_p9)

                    ; #68110: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #69721: <==commonly_known== 71649 (neg)
                    (Pc_checked_p9)

                    ; #70048: <==closure== 68110 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #82691: <==closure== 19700 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #86892: <==commonly_known== 30746 (pos)
                    (Bb_checked_p9)

                    ; #14189: <==negation-removal== 63916 (pos)
                    (not (Ba_not_checked_p9))

                    ; #23971: <==negation-removal== 86892 (pos)
                    (not (Pb_not_checked_p9))

                    ; #27440: <==negation-removal== 49082 (pos)
                    (not (Pc_not_checked_p9))

                    ; #27592: <==negation-removal== 19700 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #30973: <==uncertain_firing== 82691 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #48387: <==uncertain_firing== 70048 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #55049: <==negation-removal== 82691 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #57175: <==negation-removal== 70048 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #57484: <==negation-removal== 69721 (pos)
                    (not (Bc_not_checked_p9))

                    ; #64143: <==uncertain_firing== 19700 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #71649: <==negation-removal== 30746 (pos)
                    (not (not_checked_p9))

                    ; #71803: <==negation-removal== 44246 (pos)
                    (not (Bb_not_checked_p9))

                    ; #74832: <==uncertain_firing== 68110 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #79807: <==negation-removal== 68110 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #84237: <==negation-removal== 53753 (pos)
                    (not (Pa_not_checked_p9))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17531: <==commonly_known== 79793 (neg)
                    (Pb_checked_p1)

                    ; #27657: <==closure== 30100 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #29701: <==commonly_known== 59522 (pos)
                    (Ba_checked_p1)

                    ; #30100: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #36739: <==commonly_known== 79793 (neg)
                    (Pc_checked_p1)

                    ; #53993: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #59522: origin
                    (checked_p1)

                    ; #66435: <==commonly_known== 59522 (pos)
                    (Bb_checked_p1)

                    ; #67994: <==commonly_known== 59522 (pos)
                    (Bc_checked_p1)

                    ; #91909: <==commonly_known== 79793 (neg)
                    (Pa_checked_p1)

                    ; #94174: <==closure== 53993 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10180: <==negation-removal== 29701 (pos)
                    (not (Pa_not_checked_p1))

                    ; #12679: <==negation-removal== 27657 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #17722: <==negation-removal== 66435 (pos)
                    (not (Pb_not_checked_p1))

                    ; #17874: <==negation-removal== 67994 (pos)
                    (not (Pc_not_checked_p1))

                    ; #49908: <==negation-removal== 91909 (pos)
                    (not (Ba_not_checked_p1))

                    ; #52030: <==negation-removal== 36739 (pos)
                    (not (Bc_not_checked_p1))

                    ; #63653: <==uncertain_firing== 94174 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #66891: <==negation-removal== 94174 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #67645: <==uncertain_firing== 30100 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #73087: <==negation-removal== 53993 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #79288: <==negation-removal== 30100 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #79793: <==negation-removal== 59522 (pos)
                    (not (not_checked_p1))

                    ; #85311: <==uncertain_firing== 53993 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #85498: <==uncertain_firing== 27657 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #86115: <==negation-removal== 17531 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #12288: <==commonly_known== 22924 (neg)
                    (Pb_checked_p2)

                    ; #18475: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #30783: origin
                    (checked_p2)

                    ; #37022: <==commonly_known== 30783 (pos)
                    (Bc_checked_p2)

                    ; #41658: <==commonly_known== 22924 (neg)
                    (Pc_checked_p2)

                    ; #47856: <==commonly_known== 30783 (pos)
                    (Bb_checked_p2)

                    ; #68344: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #69785: <==commonly_known== 30783 (pos)
                    (Ba_checked_p2)

                    ; #77312: <==commonly_known== 22924 (neg)
                    (Pa_checked_p2)

                    ; #78256: <==closure== 68344 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #81974: <==closure== 18475 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #15498: <==negation-removal== 47856 (pos)
                    (not (Pb_not_checked_p2))

                    ; #16042: <==negation-removal== 41658 (pos)
                    (not (Bc_not_checked_p2))

                    ; #22924: <==negation-removal== 30783 (pos)
                    (not (not_checked_p2))

                    ; #28421: <==uncertain_firing== 68344 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42333: <==negation-removal== 77312 (pos)
                    (not (Ba_not_checked_p2))

                    ; #43481: <==uncertain_firing== 78256 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #44003: <==negation-removal== 78256 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #52688: <==negation-removal== 18475 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #55035: <==negation-removal== 81974 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #58839: <==negation-removal== 12288 (pos)
                    (not (Bb_not_checked_p2))

                    ; #61880: <==negation-removal== 68344 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #74334: <==uncertain_firing== 18475 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #81089: <==negation-removal== 69785 (pos)
                    (not (Pa_not_checked_p2))

                    ; #86691: <==uncertain_firing== 81974 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #90488: <==negation-removal== 37022 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #13134: <==closure== 34174 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #15533: <==closure== 33017 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #18763: <==commonly_known== 68122 (neg)
                    (Pa_checked_p3)

                    ; #33017: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #34174: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #40858: <==commonly_known== 68122 (neg)
                    (Pb_checked_p3)

                    ; #47167: <==commonly_known== 86560 (pos)
                    (Ba_checked_p3)

                    ; #55668: <==commonly_known== 86560 (pos)
                    (Bc_checked_p3)

                    ; #75384: <==commonly_known== 86560 (pos)
                    (Bb_checked_p3)

                    ; #86560: origin
                    (checked_p3)

                    ; #87528: <==commonly_known== 68122 (neg)
                    (Pc_checked_p3)

                    ; #12500: <==negation-removal== 15533 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #14005: <==negation-removal== 34174 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #17088: <==negation-removal== 13134 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #26445: <==negation-removal== 18763 (pos)
                    (not (Ba_not_checked_p3))

                    ; #30654: <==negation-removal== 47167 (pos)
                    (not (Pa_not_checked_p3))

                    ; #32762: <==negation-removal== 75384 (pos)
                    (not (Pb_not_checked_p3))

                    ; #35759: <==negation-removal== 55668 (pos)
                    (not (Pc_not_checked_p3))

                    ; #43020: <==uncertain_firing== 13134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #44593: <==uncertain_firing== 34174 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49807: <==negation-removal== 33017 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #62073: <==uncertain_firing== 15533 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #68122: <==negation-removal== 86560 (pos)
                    (not (not_checked_p3))

                    ; #74430: <==uncertain_firing== 33017 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #75816: <==negation-removal== 40858 (pos)
                    (not (Bb_not_checked_p3))

                    ; #86979: <==negation-removal== 87528 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12420: <==commonly_known== 39181 (pos)
                    (Bc_checked_p4)

                    ; #31094: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #35543: <==closure== 64842 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #39181: origin
                    (checked_p4)

                    ; #47140: <==commonly_known== 39181 (pos)
                    (Bb_checked_p4)

                    ; #55412: <==commonly_known== 34361 (neg)
                    (Pb_checked_p4)

                    ; #64842: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #69769: <==commonly_known== 34361 (neg)
                    (Pa_checked_p4)

                    ; #71175: <==closure== 31094 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #84716: <==commonly_known== 39181 (pos)
                    (Ba_checked_p4)

                    ; #90338: <==commonly_known== 34361 (neg)
                    (Pc_checked_p4)

                    ; #15784: <==negation-removal== 64842 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #17393: <==negation-removal== 71175 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #19883: <==negation-removal== 55412 (pos)
                    (not (Bb_not_checked_p4))

                    ; #26338: <==negation-removal== 47140 (pos)
                    (not (Pb_not_checked_p4))

                    ; #34361: <==negation-removal== 39181 (pos)
                    (not (not_checked_p4))

                    ; #37220: <==uncertain_firing== 64842 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39901: <==negation-removal== 31094 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #48274: <==negation-removal== 84716 (pos)
                    (not (Pa_not_checked_p4))

                    ; #53190: <==negation-removal== 35543 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #59409: <==uncertain_firing== 71175 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #59764: <==negation-removal== 69769 (pos)
                    (not (Ba_not_checked_p4))

                    ; #66994: <==negation-removal== 90338 (pos)
                    (not (Bc_not_checked_p4))

                    ; #67403: <==negation-removal== 12420 (pos)
                    (not (Pc_not_checked_p4))

                    ; #83626: <==uncertain_firing== 35543 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #86963: <==uncertain_firing== 31094 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10280: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #17798: <==commonly_known== 87884 (neg)
                    (Pb_checked_p5)

                    ; #21101: <==commonly_known== 40051 (pos)
                    (Bc_checked_p5)

                    ; #22114: <==closure== 10280 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #36654: <==commonly_known== 87884 (neg)
                    (Pa_checked_p5)

                    ; #40051: origin
                    (checked_p5)

                    ; #41456: <==commonly_known== 87884 (neg)
                    (Pc_checked_p5)

                    ; #42060: <==closure== 87939 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #64560: <==commonly_known== 40051 (pos)
                    (Ba_checked_p5)

                    ; #79130: <==commonly_known== 40051 (pos)
                    (Bb_checked_p5)

                    ; #87939: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #10052: <==negation-removal== 42060 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #18365: <==uncertain_firing== 87939 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #24155: <==negation-removal== 79130 (pos)
                    (not (Pb_not_checked_p5))

                    ; #38814: <==negation-removal== 21101 (pos)
                    (not (Pc_not_checked_p5))

                    ; #43459: <==negation-removal== 10280 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #49127: <==uncertain_firing== 42060 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61181: <==negation-removal== 17798 (pos)
                    (not (Bb_not_checked_p5))

                    ; #64347: <==negation-removal== 64560 (pos)
                    (not (Pa_not_checked_p5))

                    ; #65808: <==negation-removal== 87939 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #67995: <==uncertain_firing== 10280 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #69921: <==uncertain_firing== 22114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #71164: <==negation-removal== 22114 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #86799: <==negation-removal== 41456 (pos)
                    (not (Bc_not_checked_p5))

                    ; #87443: <==negation-removal== 36654 (pos)
                    (not (Ba_not_checked_p5))

                    ; #87884: <==negation-removal== 40051 (pos)
                    (not (not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13421: <==closure== 14191 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #14191: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #17478: <==commonly_known== 80573 (pos)
                    (Bb_checked_p6)

                    ; #21351: <==commonly_known== 18363 (neg)
                    (Pc_checked_p6)

                    ; #38764: <==commonly_known== 80573 (pos)
                    (Bc_checked_p6)

                    ; #63462: <==commonly_known== 80573 (pos)
                    (Ba_checked_p6)

                    ; #69096: <==commonly_known== 18363 (neg)
                    (Pa_checked_p6)

                    ; #70128: <==commonly_known== 18363 (neg)
                    (Pb_checked_p6)

                    ; #80573: origin
                    (checked_p6)

                    ; #81476: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #85614: <==closure== 81476 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #10307: <==negation-removal== 85614 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #18363: <==negation-removal== 80573 (pos)
                    (not (not_checked_p6))

                    ; #18688: <==uncertain_firing== 13421 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #32556: <==negation-removal== 69096 (pos)
                    (not (Ba_not_checked_p6))

                    ; #34358: <==uncertain_firing== 14191 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #40440: <==negation-removal== 13421 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #58701: <==negation-removal== 70128 (pos)
                    (not (Bb_not_checked_p6))

                    ; #60141: <==negation-removal== 38764 (pos)
                    (not (Pc_not_checked_p6))

                    ; #66878: <==negation-removal== 63462 (pos)
                    (not (Pa_not_checked_p6))

                    ; #67940: <==negation-removal== 21351 (pos)
                    (not (Bc_not_checked_p6))

                    ; #69485: <==negation-removal== 81476 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #70539: <==negation-removal== 17478 (pos)
                    (not (Pb_not_checked_p6))

                    ; #75539: <==uncertain_firing== 85614 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #78487: <==uncertain_firing== 81476 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #79976: <==negation-removal== 14191 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #15978: <==commonly_known== 11766 (neg)
                    (Pb_checked_p7)

                    ; #32402: <==commonly_known== 47852 (pos)
                    (Bc_checked_p7)

                    ; #32986: <==closure== 55199 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #33926: <==commonly_known== 47852 (pos)
                    (Ba_checked_p7)

                    ; #34278: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #35673: <==commonly_known== 47852 (pos)
                    (Bb_checked_p7)

                    ; #47852: origin
                    (checked_p7)

                    ; #55199: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #58096: <==commonly_known== 11766 (neg)
                    (Pa_checked_p7)

                    ; #64415: <==commonly_known== 11766 (neg)
                    (Pc_checked_p7)

                    ; #73464: <==closure== 34278 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #10449: <==negation-removal== 55199 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #11766: <==negation-removal== 47852 (pos)
                    (not (not_checked_p7))

                    ; #12829: <==uncertain_firing== 55199 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #30388: <==uncertain_firing== 34278 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #36063: <==negation-removal== 32986 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #44420: <==negation-removal== 33926 (pos)
                    (not (Pa_not_checked_p7))

                    ; #48523: <==negation-removal== 15978 (pos)
                    (not (Bb_not_checked_p7))

                    ; #50067: <==negation-removal== 35673 (pos)
                    (not (Pb_not_checked_p7))

                    ; #51563: <==negation-removal== 73464 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #53075: <==uncertain_firing== 32986 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #54954: <==uncertain_firing== 73464 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #55524: <==negation-removal== 58096 (pos)
                    (not (Ba_not_checked_p7))

                    ; #57141: <==negation-removal== 64415 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65233: <==negation-removal== 34278 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #66288: <==negation-removal== 32402 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #25613: <==closure== 34666 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #28248: origin
                    (checked_p8)

                    ; #34666: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #35013: <==commonly_known== 31629 (neg)
                    (Pa_checked_p8)

                    ; #36308: <==commonly_known== 31629 (neg)
                    (Pb_checked_p8)

                    ; #36589: <==commonly_known== 28248 (pos)
                    (Bc_checked_p8)

                    ; #38776: <==commonly_known== 28248 (pos)
                    (Bb_checked_p8)

                    ; #42575: <==commonly_known== 31629 (neg)
                    (Pc_checked_p8)

                    ; #61591: <==closure== 77261 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #77261: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #89640: <==commonly_known== 28248 (pos)
                    (Ba_checked_p8)

                    ; #14039: <==negation-removal== 42575 (pos)
                    (not (Bc_not_checked_p8))

                    ; #14816: <==negation-removal== 89640 (pos)
                    (not (Pa_not_checked_p8))

                    ; #17846: <==negation-removal== 35013 (pos)
                    (not (Ba_not_checked_p8))

                    ; #23799: <==negation-removal== 25613 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #30535: <==negation-removal== 36308 (pos)
                    (not (Bb_not_checked_p8))

                    ; #31629: <==negation-removal== 28248 (pos)
                    (not (not_checked_p8))

                    ; #34732: <==negation-removal== 38776 (pos)
                    (not (Pb_not_checked_p8))

                    ; #35932: <==negation-removal== 61591 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #43376: <==negation-removal== 34666 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #45213: <==uncertain_firing== 34666 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #46521: <==negation-removal== 36589 (pos)
                    (not (Pc_not_checked_p8))

                    ; #59362: <==negation-removal== 77261 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #61136: <==uncertain_firing== 61591 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #61824: <==uncertain_firing== 77261 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #86312: <==uncertain_firing== 25613 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11917: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #30746: origin
                    (checked_p9)

                    ; #44246: <==commonly_known== 71649 (neg)
                    (Pb_checked_p9)

                    ; #49082: <==commonly_known== 30746 (pos)
                    (Bc_checked_p9)

                    ; #53753: <==commonly_known== 30746 (pos)
                    (Ba_checked_p9)

                    ; #59568: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #63916: <==commonly_known== 71649 (neg)
                    (Pa_checked_p9)

                    ; #67463: <==closure== 59568 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #69721: <==commonly_known== 71649 (neg)
                    (Pc_checked_p9)

                    ; #83667: <==closure== 11917 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #86892: <==commonly_known== 30746 (pos)
                    (Bb_checked_p9)

                    ; #14189: <==negation-removal== 63916 (pos)
                    (not (Ba_not_checked_p9))

                    ; #22250: <==negation-removal== 59568 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #22986: <==negation-removal== 83667 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #23971: <==negation-removal== 86892 (pos)
                    (not (Pb_not_checked_p9))

                    ; #26221: <==negation-removal== 67463 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #27440: <==negation-removal== 49082 (pos)
                    (not (Pc_not_checked_p9))

                    ; #27988: <==uncertain_firing== 11917 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #44064: <==negation-removal== 11917 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #54873: <==uncertain_firing== 83667 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #56420: <==uncertain_firing== 59568 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #57484: <==negation-removal== 69721 (pos)
                    (not (Bc_not_checked_p9))

                    ; #71649: <==negation-removal== 30746 (pos)
                    (not (not_checked_p9))

                    ; #71803: <==negation-removal== 44246 (pos)
                    (not (Bb_not_checked_p9))

                    ; #78919: <==uncertain_firing== 67463 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #84237: <==negation-removal== 53753 (pos)
                    (not (Pa_not_checked_p9))))

)