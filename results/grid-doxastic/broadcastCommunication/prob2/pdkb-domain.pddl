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
                           (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #37863: <==closure== 78593 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #78593: origin
                    (Ba_not_survivorat_s_p1)

                    ; #15069: <==negation-removal== 78593 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #58728: <==negation-removal== 37863 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #11148: <==closure== 13120 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #13120: origin
                    (Bb_not_survivorat_s_p1)

                    ; #14684: <==negation-removal== 11148 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #60621: <==negation-removal== 13120 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (leader_c)
                           (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #56109: origin
                    (Bc_not_survivorat_s_p1)

                    ; #81463: <==closure== 56109 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #19130: <==negation-removal== 81463 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #63714: <==negation-removal== 56109 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #37863: <==closure== 78593 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #78593: origin
                    (Ba_not_survivorat_s_p1)

                    ; #15069: <==negation-removal== 78593 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #58728: <==negation-removal== 37863 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #11148: <==closure== 13120 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #13120: origin
                    (Bb_not_survivorat_s_p1)

                    ; #14684: <==negation-removal== 11148 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #60621: <==negation-removal== 13120 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #56109: origin
                    (Bc_not_survivorat_s_p1)

                    ; #81463: <==closure== 56109 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #19130: <==negation-removal== 81463 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #63714: <==negation-removal== 56109 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (leader_a)
                           (at_c_p1))
        :effect (and
                    ; #37863: <==closure== 78593 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #78593: origin
                    (Ba_not_survivorat_s_p1)

                    ; #15069: <==negation-removal== 78593 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #58728: <==negation-removal== 37863 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b))
        :effect (and
                    ; #11148: <==closure== 13120 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #13120: origin
                    (Bb_not_survivorat_s_p1)

                    ; #14684: <==negation-removal== 11148 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #60621: <==negation-removal== 13120 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (leader_c)
                           (at_c_p1))
        :effect (and
                    ; #56109: origin
                    (Bc_not_survivorat_s_p1)

                    ; #81463: <==closure== 56109 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #19130: <==negation-removal== 81463 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #63714: <==negation-removal== 56109 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (at_a_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #59082: <==closure== 86297 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #86297: origin
                    (Ba_not_survivorat_s_p2)

                    ; #56366: <==negation-removal== 59082 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #89322: <==negation-removal== 86297 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #24331: <==closure== 44109 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #44109: origin
                    (Bb_not_survivorat_s_p2)

                    ; #19372: <==negation-removal== 44109 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #86845: <==negation-removal== 24331 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #10585: origin
                    (Bc_not_survivorat_s_p2)

                    ; #85140: <==closure== 10585 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #22868: <==negation-removal== 10585 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #24426: <==negation-removal== 85140 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #59082: <==closure== 86297 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #86297: origin
                    (Ba_not_survivorat_s_p2)

                    ; #56366: <==negation-removal== 59082 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #89322: <==negation-removal== 86297 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #24331: <==closure== 44109 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #44109: origin
                    (Bb_not_survivorat_s_p2)

                    ; #19372: <==negation-removal== 44109 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #86845: <==negation-removal== 24331 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #10585: origin
                    (Bc_not_survivorat_s_p2)

                    ; #85140: <==closure== 10585 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #22868: <==negation-removal== 10585 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #24426: <==negation-removal== 85140 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_a)
                           (at_c_p2))
        :effect (and
                    ; #59082: <==closure== 86297 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #86297: origin
                    (Ba_not_survivorat_s_p2)

                    ; #56366: <==negation-removal== 59082 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #89322: <==negation-removal== 86297 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_b)
                           (at_c_p2))
        :effect (and
                    ; #24331: <==closure== 44109 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #44109: origin
                    (Bb_not_survivorat_s_p2)

                    ; #19372: <==negation-removal== 44109 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #86845: <==negation-removal== 24331 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #10585: origin
                    (Bc_not_survivorat_s_p2)

                    ; #85140: <==closure== 10585 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #22868: <==negation-removal== 10585 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #24426: <==negation-removal== 85140 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #22443: <==closure== 71148 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #71148: origin
                    (Ba_not_survivorat_s_p3)

                    ; #10689: <==negation-removal== 71148 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #16707: <==negation-removal== 22443 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #77928: <==closure== 99761 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #99761: origin
                    (Bb_not_survivorat_s_p3)

                    ; #15936: <==negation-removal== 99761 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #53444: <==negation-removal== 77928 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #13401: <==closure== 55320 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #55320: origin
                    (Bc_not_survivorat_s_p3)

                    ; #20243: <==negation-removal== 13401 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #80838: <==negation-removal== 55320 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #22443: <==closure== 71148 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #71148: origin
                    (Ba_not_survivorat_s_p3)

                    ; #10689: <==negation-removal== 71148 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #16707: <==negation-removal== 22443 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #77928: <==closure== 99761 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #99761: origin
                    (Bb_not_survivorat_s_p3)

                    ; #15936: <==negation-removal== 99761 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #53444: <==negation-removal== 77928 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (leader_c)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #13401: <==closure== 55320 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #55320: origin
                    (Bc_not_survivorat_s_p3)

                    ; #20243: <==negation-removal== 13401 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #80838: <==negation-removal== 55320 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_a)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #22443: <==closure== 71148 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #71148: origin
                    (Ba_not_survivorat_s_p3)

                    ; #10689: <==negation-removal== 71148 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #16707: <==negation-removal== 22443 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #77928: <==closure== 99761 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #99761: origin
                    (Bb_not_survivorat_s_p3)

                    ; #15936: <==negation-removal== 99761 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #53444: <==negation-removal== 77928 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #13401: <==closure== 55320 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #55320: origin
                    (Bc_not_survivorat_s_p3)

                    ; #20243: <==negation-removal== 13401 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #80838: <==negation-removal== 55320 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (at_a_p4)
                           (leader_a)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #64512: <==closure== 64539 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #64539: origin
                    (Ba_not_survivorat_s_p4)

                    ; #43200: <==negation-removal== 64539 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #53714: <==negation-removal== 64512 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #18972: <==closure== 38083 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #38083: origin
                    (Bb_not_survivorat_s_p4)

                    ; #13525: <==negation-removal== 38083 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #65877: <==negation-removal== 18972 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (leader_c)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #55412: origin
                    (Bc_not_survivorat_s_p4)

                    ; #60176: <==closure== 55412 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #55665: <==negation-removal== 60176 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #55885: <==negation-removal== 55412 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #64512: <==closure== 64539 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #64539: origin
                    (Ba_not_survivorat_s_p4)

                    ; #43200: <==negation-removal== 64539 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #53714: <==negation-removal== 64512 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b))
        :effect (and
                    ; #18972: <==closure== 38083 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #38083: origin
                    (Bb_not_survivorat_s_p4)

                    ; #13525: <==negation-removal== 38083 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #65877: <==negation-removal== 18972 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #55412: origin
                    (Bc_not_survivorat_s_p4)

                    ; #60176: <==closure== 55412 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #55665: <==negation-removal== 60176 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #55885: <==negation-removal== 55412 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (leader_a)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #64512: <==closure== 64539 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #64539: origin
                    (Ba_not_survivorat_s_p4)

                    ; #43200: <==negation-removal== 64539 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #53714: <==negation-removal== 64512 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_b)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #18972: <==closure== 38083 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #38083: origin
                    (Bb_not_survivorat_s_p4)

                    ; #13525: <==negation-removal== 38083 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #65877: <==negation-removal== 18972 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (leader_c)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #55412: origin
                    (Bc_not_survivorat_s_p4)

                    ; #60176: <==closure== 55412 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #55665: <==negation-removal== 60176 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #55885: <==negation-removal== 55412 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #72418: <==closure== 76635 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #76635: origin
                    (Ba_not_survivorat_s_p5)

                    ; #50253: <==negation-removal== 72418 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #76159: <==negation-removal== 76635 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #35201: origin
                    (Bb_not_survivorat_s_p5)

                    ; #79267: <==closure== 35201 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #26494: <==negation-removal== 79267 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #86115: <==negation-removal== 35201 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #18439: origin
                    (Bc_not_survivorat_s_p5)

                    ; #37894: <==closure== 18439 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #80460: <==negation-removal== 18439 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #86886: <==negation-removal== 37894 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #72418: <==closure== 76635 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #76635: origin
                    (Ba_not_survivorat_s_p5)

                    ; #50253: <==negation-removal== 72418 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #76159: <==negation-removal== 76635 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #35201: origin
                    (Bb_not_survivorat_s_p5)

                    ; #79267: <==closure== 35201 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #26494: <==negation-removal== 79267 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #86115: <==negation-removal== 35201 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #18439: origin
                    (Bc_not_survivorat_s_p5)

                    ; #37894: <==closure== 18439 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #80460: <==negation-removal== 18439 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #86886: <==negation-removal== 37894 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_a)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #72418: <==closure== 76635 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #76635: origin
                    (Ba_not_survivorat_s_p5)

                    ; #50253: <==negation-removal== 72418 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #76159: <==negation-removal== 76635 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #35201: origin
                    (Bb_not_survivorat_s_p5)

                    ; #79267: <==closure== 35201 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #26494: <==negation-removal== 79267 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #86115: <==negation-removal== 35201 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_c)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #18439: origin
                    (Bc_not_survivorat_s_p5)

                    ; #37894: <==closure== 18439 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #80460: <==negation-removal== 18439 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #86886: <==negation-removal== 37894 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #24904: <==closure== 80487 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #80487: origin
                    (Ba_not_survivorat_s_p6)

                    ; #17814: <==negation-removal== 80487 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #87386: <==negation-removal== 24904 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_b)
                           (at_a_p6))
        :effect (and
                    ; #62687: <==closure== 82230 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #82230: origin
                    (Bb_not_survivorat_s_p6)

                    ; #68969: <==negation-removal== 62687 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #84494: <==negation-removal== 82230 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #46023: origin
                    (Bc_not_survivorat_s_p6)

                    ; #74188: <==closure== 46023 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #53689: <==negation-removal== 46023 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #57802: <==negation-removal== 74188 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (at_b_p6)
                           (leader_a)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #24904: <==closure== 80487 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #80487: origin
                    (Ba_not_survivorat_s_p6)

                    ; #17814: <==negation-removal== 80487 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #87386: <==negation-removal== 24904 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #62687: <==closure== 82230 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #82230: origin
                    (Bb_not_survivorat_s_p6)

                    ; #68969: <==negation-removal== 62687 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #84494: <==negation-removal== 82230 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #46023: origin
                    (Bc_not_survivorat_s_p6)

                    ; #74188: <==closure== 46023 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #53689: <==negation-removal== 46023 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #57802: <==negation-removal== 74188 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (leader_a)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #24904: <==closure== 80487 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #80487: origin
                    (Ba_not_survivorat_s_p6)

                    ; #17814: <==negation-removal== 80487 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #87386: <==negation-removal== 24904 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_b)
                           (at_c_p6))
        :effect (and
                    ; #62687: <==closure== 82230 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #82230: origin
                    (Bb_not_survivorat_s_p6)

                    ; #68969: <==negation-removal== 62687 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #84494: <==negation-removal== 82230 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_c)
                           (at_c_p6))
        :effect (and
                    ; #46023: origin
                    (Bc_not_survivorat_s_p6)

                    ; #74188: <==closure== 46023 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #53689: <==negation-removal== 46023 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #57802: <==negation-removal== 74188 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_a)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #16046: origin
                    (Ba_not_survivorat_s_p7)

                    ; #89541: <==closure== 16046 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #21229: <==negation-removal== 16046 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #27586: <==negation-removal== 89541 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #24842: <==closure== 65645 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #65645: origin
                    (Bb_not_survivorat_s_p7)

                    ; #37127: <==negation-removal== 24842 (pos)
                    (not (Bb_survivorat_s_p7))

                    ; #77179: <==negation-removal== 65645 (pos)
                    (not (Pb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #43682: <==closure== 73606 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #73606: origin
                    (Bc_not_survivorat_s_p7)

                    ; #10883: <==negation-removal== 73606 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #54027: <==negation-removal== 43682 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (at_b_p7)
                           (leader_a)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #16046: origin
                    (Ba_not_survivorat_s_p7)

                    ; #89541: <==closure== 16046 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #21229: <==negation-removal== 16046 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #27586: <==negation-removal== 89541 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #24842: <==closure== 65645 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #65645: origin
                    (Bb_not_survivorat_s_p7)

                    ; #37127: <==negation-removal== 24842 (pos)
                    (not (Bb_survivorat_s_p7))

                    ; #77179: <==negation-removal== 65645 (pos)
                    (not (Pb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (at_b_p7)
                           (leader_c)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #43682: <==closure== 73606 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #73606: origin
                    (Bc_not_survivorat_s_p7)

                    ; #10883: <==negation-removal== 73606 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #54027: <==negation-removal== 43682 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_a)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #16046: origin
                    (Ba_not_survivorat_s_p7)

                    ; #89541: <==closure== 16046 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #21229: <==negation-removal== 16046 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #27586: <==negation-removal== 89541 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_b)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #24842: <==closure== 65645 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #65645: origin
                    (Bb_not_survivorat_s_p7)

                    ; #37127: <==negation-removal== 24842 (pos)
                    (not (Bb_survivorat_s_p7))

                    ; #77179: <==negation-removal== 65645 (pos)
                    (not (Pb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_c)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #43682: <==closure== 73606 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #73606: origin
                    (Bc_not_survivorat_s_p7)

                    ; #10883: <==negation-removal== 73606 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #54027: <==negation-removal== 43682 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (leader_a)
                           (at_a_p8))
        :effect (and
                    ; #26908: origin
                    (Ba_not_survivorat_s_p8)

                    ; #83319: <==closure== 26908 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #42703: <==negation-removal== 83319 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #91792: <==negation-removal== 26908 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (leader_b)
                           (at_a_p8))
        :effect (and
                    ; #33734: origin
                    (Bb_not_survivorat_s_p8)

                    ; #75983: <==closure== 33734 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #33667: <==negation-removal== 75983 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #84698: <==negation-removal== 33734 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #26791: origin
                    (Bc_not_survivorat_s_p8)

                    ; #75380: <==closure== 26791 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #52362: <==negation-removal== 75380 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #56913: <==negation-removal== 26791 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #26908: origin
                    (Ba_not_survivorat_s_p8)

                    ; #83319: <==closure== 26908 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #42703: <==negation-removal== 83319 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #91792: <==negation-removal== 26908 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #33734: origin
                    (Bb_not_survivorat_s_p8)

                    ; #75983: <==closure== 33734 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #33667: <==negation-removal== 75983 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #84698: <==negation-removal== 33734 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #26791: origin
                    (Bc_not_survivorat_s_p8)

                    ; #75380: <==closure== 26791 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #52362: <==negation-removal== 75380 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #56913: <==negation-removal== 26791 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_a)
                           (at_c_p8))
        :effect (and
                    ; #26908: origin
                    (Ba_not_survivorat_s_p8)

                    ; #83319: <==closure== 26908 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #42703: <==negation-removal== 83319 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #91792: <==negation-removal== 26908 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_b)
                           (at_c_p8))
        :effect (and
                    ; #33734: origin
                    (Bb_not_survivorat_s_p8)

                    ; #75983: <==closure== 33734 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #33667: <==negation-removal== 75983 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #84698: <==negation-removal== 33734 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_c)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #26791: origin
                    (Bc_not_survivorat_s_p8)

                    ; #75380: <==closure== 26791 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #52362: <==negation-removal== 75380 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #56913: <==negation-removal== 26791 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (leader_a)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #33795: origin
                    (Ba_not_survivorat_s_p9)

                    ; #50584: <==closure== 33795 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #23943: <==negation-removal== 50584 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #89143: <==negation-removal== 33795 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #58538: <==closure== 78895 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #78895: origin
                    (Bb_not_survivorat_s_p9)

                    ; #51239: <==negation-removal== 78895 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #88856: <==negation-removal== 58538 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #53017: <==closure== 80730 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #80730: origin
                    (Bc_not_survivorat_s_p9)

                    ; #59653: <==negation-removal== 80730 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #80511: <==negation-removal== 53017 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #33795: origin
                    (Ba_not_survivorat_s_p9)

                    ; #50584: <==closure== 33795 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #23943: <==negation-removal== 50584 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #89143: <==negation-removal== 33795 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #58538: <==closure== 78895 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #78895: origin
                    (Bb_not_survivorat_s_p9)

                    ; #51239: <==negation-removal== 78895 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #88856: <==negation-removal== 58538 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (at_b_p9)
                           (leader_c)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #53017: <==closure== 80730 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #80730: origin
                    (Bc_not_survivorat_s_p9)

                    ; #59653: <==negation-removal== 80730 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #80511: <==negation-removal== 53017 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_a)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #33795: origin
                    (Ba_not_survivorat_s_p9)

                    ; #50584: <==closure== 33795 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #23943: <==negation-removal== 50584 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #89143: <==negation-removal== 33795 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_b)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #58538: <==closure== 78895 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #78895: origin
                    (Bb_not_survivorat_s_p9)

                    ; #51239: <==negation-removal== 78895 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #88856: <==negation-removal== 58538 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_c)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #53017: <==closure== 80730 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #80730: origin
                    (Bc_not_survivorat_s_p9)

                    ; #59653: <==negation-removal== 80730 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #80511: <==negation-removal== 53017 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action comm_p1_a_a_s
        :precondition (and (leader_a)
                           (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #15069: <==closure== 58728 (pos)
                    (Pa_survivorat_s_p1)

                    ; #58728: origin
                    (Ba_survivorat_s_p1)

                    ; #37863: <==negation-removal== 58728 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #78593: <==negation-removal== 15069 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #14684: origin
                    (Bb_survivorat_s_p1)

                    ; #60621: <==closure== 14684 (pos)
                    (Pb_survivorat_s_p1)

                    ; #11148: <==negation-removal== 14684 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #13120: <==negation-removal== 60621 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (leader_c)
                           (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #19130: origin
                    (Bc_survivorat_s_p1)

                    ; #63714: <==closure== 19130 (pos)
                    (Pc_survivorat_s_p1)

                    ; #56109: <==negation-removal== 63714 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #81463: <==negation-removal== 19130 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #15069: <==closure== 58728 (pos)
                    (Pa_survivorat_s_p1)

                    ; #58728: origin
                    (Ba_survivorat_s_p1)

                    ; #37863: <==negation-removal== 58728 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #78593: <==negation-removal== 15069 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #14684: origin
                    (Bb_survivorat_s_p1)

                    ; #60621: <==closure== 14684 (pos)
                    (Pb_survivorat_s_p1)

                    ; #11148: <==negation-removal== 14684 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #13120: <==negation-removal== 60621 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #19130: origin
                    (Bc_survivorat_s_p1)

                    ; #63714: <==closure== 19130 (pos)
                    (Pc_survivorat_s_p1)

                    ; #56109: <==negation-removal== 63714 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #81463: <==negation-removal== 19130 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (leader_a)
                           (at_c_p1))
        :effect (and
                    ; #15069: <==closure== 58728 (pos)
                    (Pa_survivorat_s_p1)

                    ; #58728: origin
                    (Ba_survivorat_s_p1)

                    ; #37863: <==negation-removal== 58728 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #78593: <==negation-removal== 15069 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b))
        :effect (and
                    ; #14684: origin
                    (Bb_survivorat_s_p1)

                    ; #60621: <==closure== 14684 (pos)
                    (Pb_survivorat_s_p1)

                    ; #11148: <==negation-removal== 14684 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #13120: <==negation-removal== 60621 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (leader_c)
                           (at_c_p1))
        :effect (and
                    ; #19130: origin
                    (Bc_survivorat_s_p1)

                    ; #63714: <==closure== 19130 (pos)
                    (Pc_survivorat_s_p1)

                    ; #56109: <==negation-removal== 63714 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #81463: <==negation-removal== 19130 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (at_a_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #56366: origin
                    (Ba_survivorat_s_p2)

                    ; #89322: <==closure== 56366 (pos)
                    (Pa_survivorat_s_p2)

                    ; #59082: <==negation-removal== 56366 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #86297: <==negation-removal== 89322 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #19372: <==closure== 86845 (pos)
                    (Pb_survivorat_s_p2)

                    ; #86845: origin
                    (Bb_survivorat_s_p2)

                    ; #24331: <==negation-removal== 86845 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #44109: <==negation-removal== 19372 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #22868: <==closure== 24426 (pos)
                    (Pc_survivorat_s_p2)

                    ; #24426: origin
                    (Bc_survivorat_s_p2)

                    ; #10585: <==negation-removal== 22868 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #85140: <==negation-removal== 24426 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #56366: origin
                    (Ba_survivorat_s_p2)

                    ; #89322: <==closure== 56366 (pos)
                    (Pa_survivorat_s_p2)

                    ; #59082: <==negation-removal== 56366 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #86297: <==negation-removal== 89322 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #19372: <==closure== 86845 (pos)
                    (Pb_survivorat_s_p2)

                    ; #86845: origin
                    (Bb_survivorat_s_p2)

                    ; #24331: <==negation-removal== 86845 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #44109: <==negation-removal== 19372 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #22868: <==closure== 24426 (pos)
                    (Pc_survivorat_s_p2)

                    ; #24426: origin
                    (Bc_survivorat_s_p2)

                    ; #10585: <==negation-removal== 22868 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #85140: <==negation-removal== 24426 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_a)
                           (at_c_p2))
        :effect (and
                    ; #56366: origin
                    (Ba_survivorat_s_p2)

                    ; #89322: <==closure== 56366 (pos)
                    (Pa_survivorat_s_p2)

                    ; #59082: <==negation-removal== 56366 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #86297: <==negation-removal== 89322 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_b)
                           (at_c_p2))
        :effect (and
                    ; #19372: <==closure== 86845 (pos)
                    (Pb_survivorat_s_p2)

                    ; #86845: origin
                    (Bb_survivorat_s_p2)

                    ; #24331: <==negation-removal== 86845 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #44109: <==negation-removal== 19372 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #22868: <==closure== 24426 (pos)
                    (Pc_survivorat_s_p2)

                    ; #24426: origin
                    (Bc_survivorat_s_p2)

                    ; #10585: <==negation-removal== 22868 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #85140: <==negation-removal== 24426 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #10689: <==closure== 16707 (pos)
                    (Pa_survivorat_s_p3)

                    ; #16707: origin
                    (Ba_survivorat_s_p3)

                    ; #22443: <==negation-removal== 16707 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #71148: <==negation-removal== 10689 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #15936: <==closure== 53444 (pos)
                    (Pb_survivorat_s_p3)

                    ; #53444: origin
                    (Bb_survivorat_s_p3)

                    ; #77928: <==negation-removal== 53444 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #99761: <==negation-removal== 15936 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #20243: origin
                    (Bc_survivorat_s_p3)

                    ; #80838: <==closure== 20243 (pos)
                    (Pc_survivorat_s_p3)

                    ; #13401: <==negation-removal== 20243 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #55320: <==negation-removal== 80838 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #10689: <==closure== 16707 (pos)
                    (Pa_survivorat_s_p3)

                    ; #16707: origin
                    (Ba_survivorat_s_p3)

                    ; #22443: <==negation-removal== 16707 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #71148: <==negation-removal== 10689 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #15936: <==closure== 53444 (pos)
                    (Pb_survivorat_s_p3)

                    ; #53444: origin
                    (Bb_survivorat_s_p3)

                    ; #77928: <==negation-removal== 53444 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #99761: <==negation-removal== 15936 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (leader_c)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #20243: origin
                    (Bc_survivorat_s_p3)

                    ; #80838: <==closure== 20243 (pos)
                    (Pc_survivorat_s_p3)

                    ; #13401: <==negation-removal== 20243 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #55320: <==negation-removal== 80838 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_a)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #10689: <==closure== 16707 (pos)
                    (Pa_survivorat_s_p3)

                    ; #16707: origin
                    (Ba_survivorat_s_p3)

                    ; #22443: <==negation-removal== 16707 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #71148: <==negation-removal== 10689 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #15936: <==closure== 53444 (pos)
                    (Pb_survivorat_s_p3)

                    ; #53444: origin
                    (Bb_survivorat_s_p3)

                    ; #77928: <==negation-removal== 53444 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #99761: <==negation-removal== 15936 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #20243: origin
                    (Bc_survivorat_s_p3)

                    ; #80838: <==closure== 20243 (pos)
                    (Pc_survivorat_s_p3)

                    ; #13401: <==negation-removal== 20243 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #55320: <==negation-removal== 80838 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (at_a_p4)
                           (leader_a)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #43200: <==closure== 53714 (pos)
                    (Pa_survivorat_s_p4)

                    ; #53714: origin
                    (Ba_survivorat_s_p4)

                    ; #64512: <==negation-removal== 53714 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #64539: <==negation-removal== 43200 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #13525: <==closure== 65877 (pos)
                    (Pb_survivorat_s_p4)

                    ; #65877: origin
                    (Bb_survivorat_s_p4)

                    ; #18972: <==negation-removal== 65877 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #38083: <==negation-removal== 13525 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (leader_c)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #55665: origin
                    (Bc_survivorat_s_p4)

                    ; #55885: <==closure== 55665 (pos)
                    (Pc_survivorat_s_p4)

                    ; #55412: <==negation-removal== 55885 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #60176: <==negation-removal== 55665 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #43200: <==closure== 53714 (pos)
                    (Pa_survivorat_s_p4)

                    ; #53714: origin
                    (Ba_survivorat_s_p4)

                    ; #64512: <==negation-removal== 53714 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #64539: <==negation-removal== 43200 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b))
        :effect (and
                    ; #13525: <==closure== 65877 (pos)
                    (Pb_survivorat_s_p4)

                    ; #65877: origin
                    (Bb_survivorat_s_p4)

                    ; #18972: <==negation-removal== 65877 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #38083: <==negation-removal== 13525 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #55665: origin
                    (Bc_survivorat_s_p4)

                    ; #55885: <==closure== 55665 (pos)
                    (Pc_survivorat_s_p4)

                    ; #55412: <==negation-removal== 55885 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #60176: <==negation-removal== 55665 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (leader_a)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #43200: <==closure== 53714 (pos)
                    (Pa_survivorat_s_p4)

                    ; #53714: origin
                    (Ba_survivorat_s_p4)

                    ; #64512: <==negation-removal== 53714 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #64539: <==negation-removal== 43200 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_b)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #13525: <==closure== 65877 (pos)
                    (Pb_survivorat_s_p4)

                    ; #65877: origin
                    (Bb_survivorat_s_p4)

                    ; #18972: <==negation-removal== 65877 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #38083: <==negation-removal== 13525 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (leader_c)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #55665: origin
                    (Bc_survivorat_s_p4)

                    ; #55885: <==closure== 55665 (pos)
                    (Pc_survivorat_s_p4)

                    ; #55412: <==negation-removal== 55885 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #60176: <==negation-removal== 55665 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #50253: origin
                    (Ba_survivorat_s_p5)

                    ; #76159: <==closure== 50253 (pos)
                    (Pa_survivorat_s_p5)

                    ; #72418: <==negation-removal== 50253 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #76635: <==negation-removal== 76159 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #26494: origin
                    (Bb_survivorat_s_p5)

                    ; #86115: <==closure== 26494 (pos)
                    (Pb_survivorat_s_p5)

                    ; #35201: <==negation-removal== 86115 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #79267: <==negation-removal== 26494 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #80460: <==closure== 86886 (pos)
                    (Pc_survivorat_s_p5)

                    ; #86886: origin
                    (Bc_survivorat_s_p5)

                    ; #18439: <==negation-removal== 80460 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #37894: <==negation-removal== 86886 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #50253: origin
                    (Ba_survivorat_s_p5)

                    ; #76159: <==closure== 50253 (pos)
                    (Pa_survivorat_s_p5)

                    ; #72418: <==negation-removal== 50253 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #76635: <==negation-removal== 76159 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #26494: origin
                    (Bb_survivorat_s_p5)

                    ; #86115: <==closure== 26494 (pos)
                    (Pb_survivorat_s_p5)

                    ; #35201: <==negation-removal== 86115 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #79267: <==negation-removal== 26494 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #80460: <==closure== 86886 (pos)
                    (Pc_survivorat_s_p5)

                    ; #86886: origin
                    (Bc_survivorat_s_p5)

                    ; #18439: <==negation-removal== 80460 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #37894: <==negation-removal== 86886 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_a)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #50253: origin
                    (Ba_survivorat_s_p5)

                    ; #76159: <==closure== 50253 (pos)
                    (Pa_survivorat_s_p5)

                    ; #72418: <==negation-removal== 50253 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #76635: <==negation-removal== 76159 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #26494: origin
                    (Bb_survivorat_s_p5)

                    ; #86115: <==closure== 26494 (pos)
                    (Pb_survivorat_s_p5)

                    ; #35201: <==negation-removal== 86115 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #79267: <==negation-removal== 26494 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_c)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #80460: <==closure== 86886 (pos)
                    (Pc_survivorat_s_p5)

                    ; #86886: origin
                    (Bc_survivorat_s_p5)

                    ; #18439: <==negation-removal== 80460 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #37894: <==negation-removal== 86886 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #17814: <==closure== 87386 (pos)
                    (Pa_survivorat_s_p6)

                    ; #87386: origin
                    (Ba_survivorat_s_p6)

                    ; #24904: <==negation-removal== 87386 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #80487: <==negation-removal== 17814 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_b)
                           (at_a_p6))
        :effect (and
                    ; #68969: origin
                    (Bb_survivorat_s_p6)

                    ; #84494: <==closure== 68969 (pos)
                    (Pb_survivorat_s_p6)

                    ; #62687: <==negation-removal== 68969 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #82230: <==negation-removal== 84494 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #53689: <==closure== 57802 (pos)
                    (Pc_survivorat_s_p6)

                    ; #57802: origin
                    (Bc_survivorat_s_p6)

                    ; #46023: <==negation-removal== 53689 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74188: <==negation-removal== 57802 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (at_b_p6)
                           (leader_a)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #17814: <==closure== 87386 (pos)
                    (Pa_survivorat_s_p6)

                    ; #87386: origin
                    (Ba_survivorat_s_p6)

                    ; #24904: <==negation-removal== 87386 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #80487: <==negation-removal== 17814 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #68969: origin
                    (Bb_survivorat_s_p6)

                    ; #84494: <==closure== 68969 (pos)
                    (Pb_survivorat_s_p6)

                    ; #62687: <==negation-removal== 68969 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #82230: <==negation-removal== 84494 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #53689: <==closure== 57802 (pos)
                    (Pc_survivorat_s_p6)

                    ; #57802: origin
                    (Bc_survivorat_s_p6)

                    ; #46023: <==negation-removal== 53689 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74188: <==negation-removal== 57802 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (leader_a)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #17814: <==closure== 87386 (pos)
                    (Pa_survivorat_s_p6)

                    ; #87386: origin
                    (Ba_survivorat_s_p6)

                    ; #24904: <==negation-removal== 87386 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #80487: <==negation-removal== 17814 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_b)
                           (at_c_p6))
        :effect (and
                    ; #68969: origin
                    (Bb_survivorat_s_p6)

                    ; #84494: <==closure== 68969 (pos)
                    (Pb_survivorat_s_p6)

                    ; #62687: <==negation-removal== 68969 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #82230: <==negation-removal== 84494 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_c)
                           (at_c_p6))
        :effect (and
                    ; #53689: <==closure== 57802 (pos)
                    (Pc_survivorat_s_p6)

                    ; #57802: origin
                    (Bc_survivorat_s_p6)

                    ; #46023: <==negation-removal== 53689 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74188: <==negation-removal== 57802 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_a)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #21229: <==closure== 27586 (pos)
                    (Pa_survivorat_s_p7)

                    ; #27586: origin
                    (Ba_survivorat_s_p7)

                    ; #16046: <==negation-removal== 21229 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #89541: <==negation-removal== 27586 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #37127: origin
                    (Bb_survivorat_s_p7)

                    ; #77179: <==closure== 37127 (pos)
                    (Pb_survivorat_s_p7)

                    ; #24842: <==negation-removal== 37127 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #65645: <==negation-removal== 77179 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #10883: <==closure== 54027 (pos)
                    (Pc_survivorat_s_p7)

                    ; #54027: origin
                    (Bc_survivorat_s_p7)

                    ; #43682: <==negation-removal== 54027 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #73606: <==negation-removal== 10883 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (at_b_p7)
                           (leader_a)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #21229: <==closure== 27586 (pos)
                    (Pa_survivorat_s_p7)

                    ; #27586: origin
                    (Ba_survivorat_s_p7)

                    ; #16046: <==negation-removal== 21229 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #89541: <==negation-removal== 27586 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #37127: origin
                    (Bb_survivorat_s_p7)

                    ; #77179: <==closure== 37127 (pos)
                    (Pb_survivorat_s_p7)

                    ; #24842: <==negation-removal== 37127 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #65645: <==negation-removal== 77179 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (at_b_p7)
                           (leader_c)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #10883: <==closure== 54027 (pos)
                    (Pc_survivorat_s_p7)

                    ; #54027: origin
                    (Bc_survivorat_s_p7)

                    ; #43682: <==negation-removal== 54027 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #73606: <==negation-removal== 10883 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_a)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #21229: <==closure== 27586 (pos)
                    (Pa_survivorat_s_p7)

                    ; #27586: origin
                    (Ba_survivorat_s_p7)

                    ; #16046: <==negation-removal== 21229 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #89541: <==negation-removal== 27586 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_b)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #37127: origin
                    (Bb_survivorat_s_p7)

                    ; #77179: <==closure== 37127 (pos)
                    (Pb_survivorat_s_p7)

                    ; #24842: <==negation-removal== 37127 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #65645: <==negation-removal== 77179 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_c)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #10883: <==closure== 54027 (pos)
                    (Pc_survivorat_s_p7)

                    ; #54027: origin
                    (Bc_survivorat_s_p7)

                    ; #43682: <==negation-removal== 54027 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #73606: <==negation-removal== 10883 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (leader_a)
                           (at_a_p8))
        :effect (and
                    ; #42703: origin
                    (Ba_survivorat_s_p8)

                    ; #91792: <==closure== 42703 (pos)
                    (Pa_survivorat_s_p8)

                    ; #26908: <==negation-removal== 91792 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #83319: <==negation-removal== 42703 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (leader_b)
                           (at_a_p8))
        :effect (and
                    ; #33667: origin
                    (Bb_survivorat_s_p8)

                    ; #84698: <==closure== 33667 (pos)
                    (Pb_survivorat_s_p8)

                    ; #33734: <==negation-removal== 84698 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #75983: <==negation-removal== 33667 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #52362: origin
                    (Bc_survivorat_s_p8)

                    ; #56913: <==closure== 52362 (pos)
                    (Pc_survivorat_s_p8)

                    ; #26791: <==negation-removal== 56913 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #75380: <==negation-removal== 52362 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #42703: origin
                    (Ba_survivorat_s_p8)

                    ; #91792: <==closure== 42703 (pos)
                    (Pa_survivorat_s_p8)

                    ; #26908: <==negation-removal== 91792 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #83319: <==negation-removal== 42703 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #33667: origin
                    (Bb_survivorat_s_p8)

                    ; #84698: <==closure== 33667 (pos)
                    (Pb_survivorat_s_p8)

                    ; #33734: <==negation-removal== 84698 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #75983: <==negation-removal== 33667 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #52362: origin
                    (Bc_survivorat_s_p8)

                    ; #56913: <==closure== 52362 (pos)
                    (Pc_survivorat_s_p8)

                    ; #26791: <==negation-removal== 56913 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #75380: <==negation-removal== 52362 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_a)
                           (at_c_p8))
        :effect (and
                    ; #42703: origin
                    (Ba_survivorat_s_p8)

                    ; #91792: <==closure== 42703 (pos)
                    (Pa_survivorat_s_p8)

                    ; #26908: <==negation-removal== 91792 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #83319: <==negation-removal== 42703 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_b)
                           (at_c_p8))
        :effect (and
                    ; #33667: origin
                    (Bb_survivorat_s_p8)

                    ; #84698: <==closure== 33667 (pos)
                    (Pb_survivorat_s_p8)

                    ; #33734: <==negation-removal== 84698 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #75983: <==negation-removal== 33667 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_c)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #52362: origin
                    (Bc_survivorat_s_p8)

                    ; #56913: <==closure== 52362 (pos)
                    (Pc_survivorat_s_p8)

                    ; #26791: <==negation-removal== 56913 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #75380: <==negation-removal== 52362 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (leader_a)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #23943: origin
                    (Ba_survivorat_s_p9)

                    ; #89143: <==closure== 23943 (pos)
                    (Pa_survivorat_s_p9)

                    ; #33795: <==negation-removal== 89143 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #50584: <==negation-removal== 23943 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #51239: <==closure== 88856 (pos)
                    (Pb_survivorat_s_p9)

                    ; #88856: origin
                    (Bb_survivorat_s_p9)

                    ; #58538: <==negation-removal== 88856 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #78895: <==negation-removal== 51239 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #59653: <==closure== 80511 (pos)
                    (Pc_survivorat_s_p9)

                    ; #80511: origin
                    (Bc_survivorat_s_p9)

                    ; #53017: <==negation-removal== 80511 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80730: <==negation-removal== 59653 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #23943: origin
                    (Ba_survivorat_s_p9)

                    ; #89143: <==closure== 23943 (pos)
                    (Pa_survivorat_s_p9)

                    ; #33795: <==negation-removal== 89143 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #50584: <==negation-removal== 23943 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #51239: <==closure== 88856 (pos)
                    (Pb_survivorat_s_p9)

                    ; #88856: origin
                    (Bb_survivorat_s_p9)

                    ; #58538: <==negation-removal== 88856 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #78895: <==negation-removal== 51239 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (at_b_p9)
                           (leader_c)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #59653: <==closure== 80511 (pos)
                    (Pc_survivorat_s_p9)

                    ; #80511: origin
                    (Bc_survivorat_s_p9)

                    ; #53017: <==negation-removal== 80511 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80730: <==negation-removal== 59653 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_a)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #23943: origin
                    (Ba_survivorat_s_p9)

                    ; #89143: <==closure== 23943 (pos)
                    (Pa_survivorat_s_p9)

                    ; #33795: <==negation-removal== 89143 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #50584: <==negation-removal== 23943 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_b)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #51239: <==closure== 88856 (pos)
                    (Pb_survivorat_s_p9)

                    ; #88856: origin
                    (Bb_survivorat_s_p9)

                    ; #58538: <==negation-removal== 88856 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #78895: <==negation-removal== 51239 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_c)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #59653: <==closure== 80511 (pos)
                    (Pc_survivorat_s_p9)

                    ; #80511: origin
                    (Bc_survivorat_s_p9)

                    ; #53017: <==negation-removal== 80511 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80730: <==negation-removal== 59653 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #11945: origin
                    (not_at_a_p1)

                    ; #26068: origin
                    (at_a_p1)

                    ; #11945: <==negation-removal== 26068 (pos)
                    (not (not_at_a_p1))

                    ; #26068: <==negation-removal== 11945 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #11945: origin
                    (not_at_a_p1)

                    ; #19375: origin
                    (at_a_p2)

                    ; #26068: <==negation-removal== 11945 (pos)
                    (not (at_a_p1))

                    ; #76529: <==negation-removal== 19375 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #11945: origin
                    (not_at_a_p1)

                    ; #48341: origin
                    (at_a_p3)

                    ; #26068: <==negation-removal== 11945 (pos)
                    (not (at_a_p1))

                    ; #69284: <==negation-removal== 48341 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #11945: origin
                    (not_at_a_p1)

                    ; #82706: origin
                    (at_a_p4)

                    ; #26068: <==negation-removal== 11945 (pos)
                    (not (at_a_p1))

                    ; #26591: <==negation-removal== 82706 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #11945: origin
                    (not_at_a_p1)

                    ; #87621: origin
                    (at_a_p5)

                    ; #26068: <==negation-removal== 11945 (pos)
                    (not (at_a_p1))

                    ; #76526: <==negation-removal== 87621 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11945: origin
                    (not_at_a_p1)

                    ; #63170: origin
                    (at_a_p6)

                    ; #26068: <==negation-removal== 11945 (pos)
                    (not (at_a_p1))

                    ; #59951: <==negation-removal== 63170 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #11945: origin
                    (not_at_a_p1)

                    ; #42679: origin
                    (at_a_p7)

                    ; #11099: <==negation-removal== 42679 (pos)
                    (not (not_at_a_p7))

                    ; #26068: <==negation-removal== 11945 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11945: origin
                    (not_at_a_p1)

                    ; #19850: origin
                    (at_a_p8)

                    ; #26068: <==negation-removal== 11945 (pos)
                    (not (at_a_p1))

                    ; #84005: <==negation-removal== 19850 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11945: origin
                    (not_at_a_p1)

                    ; #75848: origin
                    (at_a_p9)

                    ; #26068: <==negation-removal== 11945 (pos)
                    (not (at_a_p1))

                    ; #68163: <==negation-removal== 75848 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #26068: origin
                    (at_a_p1)

                    ; #76529: origin
                    (not_at_a_p2)

                    ; #11945: <==negation-removal== 26068 (pos)
                    (not (not_at_a_p1))

                    ; #19375: <==negation-removal== 76529 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #19375: origin
                    (at_a_p2)

                    ; #76529: origin
                    (not_at_a_p2)

                    ; #19375: <==negation-removal== 76529 (pos)
                    (not (at_a_p2))

                    ; #76529: <==negation-removal== 19375 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #48341: origin
                    (at_a_p3)

                    ; #76529: origin
                    (not_at_a_p2)

                    ; #19375: <==negation-removal== 76529 (pos)
                    (not (at_a_p2))

                    ; #69284: <==negation-removal== 48341 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #76529: origin
                    (not_at_a_p2)

                    ; #82706: origin
                    (at_a_p4)

                    ; #19375: <==negation-removal== 76529 (pos)
                    (not (at_a_p2))

                    ; #26591: <==negation-removal== 82706 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #76529: origin
                    (not_at_a_p2)

                    ; #87621: origin
                    (at_a_p5)

                    ; #19375: <==negation-removal== 76529 (pos)
                    (not (at_a_p2))

                    ; #76526: <==negation-removal== 87621 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6)
                           (not (leader_a)))
        :effect (and
                    ; #63170: origin
                    (at_a_p6)

                    ; #76529: origin
                    (not_at_a_p2)

                    ; #19375: <==negation-removal== 76529 (pos)
                    (not (at_a_p2))

                    ; #59951: <==negation-removal== 63170 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #42679: origin
                    (at_a_p7)

                    ; #76529: origin
                    (not_at_a_p2)

                    ; #11099: <==negation-removal== 42679 (pos)
                    (not (not_at_a_p7))

                    ; #19375: <==negation-removal== 76529 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #19850: origin
                    (at_a_p8)

                    ; #76529: origin
                    (not_at_a_p2)

                    ; #19375: <==negation-removal== 76529 (pos)
                    (not (at_a_p2))

                    ; #84005: <==negation-removal== 19850 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #75848: origin
                    (at_a_p9)

                    ; #76529: origin
                    (not_at_a_p2)

                    ; #19375: <==negation-removal== 76529 (pos)
                    (not (at_a_p2))

                    ; #68163: <==negation-removal== 75848 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #26068: origin
                    (at_a_p1)

                    ; #69284: origin
                    (not_at_a_p3)

                    ; #11945: <==negation-removal== 26068 (pos)
                    (not (not_at_a_p1))

                    ; #48341: <==negation-removal== 69284 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #19375: origin
                    (at_a_p2)

                    ; #69284: origin
                    (not_at_a_p3)

                    ; #48341: <==negation-removal== 69284 (pos)
                    (not (at_a_p3))

                    ; #76529: <==negation-removal== 19375 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #48341: origin
                    (at_a_p3)

                    ; #69284: origin
                    (not_at_a_p3)

                    ; #48341: <==negation-removal== 69284 (pos)
                    (not (at_a_p3))

                    ; #69284: <==negation-removal== 48341 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #69284: origin
                    (not_at_a_p3)

                    ; #82706: origin
                    (at_a_p4)

                    ; #26591: <==negation-removal== 82706 (pos)
                    (not (not_at_a_p4))

                    ; #48341: <==negation-removal== 69284 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5)
                           (not (leader_a)))
        :effect (and
                    ; #69284: origin
                    (not_at_a_p3)

                    ; #87621: origin
                    (at_a_p5)

                    ; #48341: <==negation-removal== 69284 (pos)
                    (not (at_a_p3))

                    ; #76526: <==negation-removal== 87621 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #63170: origin
                    (at_a_p6)

                    ; #69284: origin
                    (not_at_a_p3)

                    ; #48341: <==negation-removal== 69284 (pos)
                    (not (at_a_p3))

                    ; #59951: <==negation-removal== 63170 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #42679: origin
                    (at_a_p7)

                    ; #69284: origin
                    (not_at_a_p3)

                    ; #11099: <==negation-removal== 42679 (pos)
                    (not (not_at_a_p7))

                    ; #48341: <==negation-removal== 69284 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8)
                           (not (leader_a)))
        :effect (and
                    ; #19850: origin
                    (at_a_p8)

                    ; #69284: origin
                    (not_at_a_p3)

                    ; #48341: <==negation-removal== 69284 (pos)
                    (not (at_a_p3))

                    ; #84005: <==negation-removal== 19850 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #69284: origin
                    (not_at_a_p3)

                    ; #75848: origin
                    (at_a_p9)

                    ; #48341: <==negation-removal== 69284 (pos)
                    (not (at_a_p3))

                    ; #68163: <==negation-removal== 75848 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #26068: origin
                    (at_a_p1)

                    ; #26591: origin
                    (not_at_a_p4)

                    ; #11945: <==negation-removal== 26068 (pos)
                    (not (not_at_a_p1))

                    ; #82706: <==negation-removal== 26591 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #19375: origin
                    (at_a_p2)

                    ; #26591: origin
                    (not_at_a_p4)

                    ; #76529: <==negation-removal== 19375 (pos)
                    (not (not_at_a_p2))

                    ; #82706: <==negation-removal== 26591 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #26591: origin
                    (not_at_a_p4)

                    ; #48341: origin
                    (at_a_p3)

                    ; #69284: <==negation-removal== 48341 (pos)
                    (not (not_at_a_p3))

                    ; #82706: <==negation-removal== 26591 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4)
                           (not (leader_a)))
        :effect (and
                    ; #26591: origin
                    (not_at_a_p4)

                    ; #82706: origin
                    (at_a_p4)

                    ; #26591: <==negation-removal== 82706 (pos)
                    (not (not_at_a_p4))

                    ; #82706: <==negation-removal== 26591 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #26591: origin
                    (not_at_a_p4)

                    ; #87621: origin
                    (at_a_p5)

                    ; #76526: <==negation-removal== 87621 (pos)
                    (not (not_at_a_p5))

                    ; #82706: <==negation-removal== 26591 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #26591: origin
                    (not_at_a_p4)

                    ; #63170: origin
                    (at_a_p6)

                    ; #59951: <==negation-removal== 63170 (pos)
                    (not (not_at_a_p6))

                    ; #82706: <==negation-removal== 26591 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #26591: origin
                    (not_at_a_p4)

                    ; #42679: origin
                    (at_a_p7)

                    ; #11099: <==negation-removal== 42679 (pos)
                    (not (not_at_a_p7))

                    ; #82706: <==negation-removal== 26591 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #19850: origin
                    (at_a_p8)

                    ; #26591: origin
                    (not_at_a_p4)

                    ; #82706: <==negation-removal== 26591 (pos)
                    (not (at_a_p4))

                    ; #84005: <==negation-removal== 19850 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #26591: origin
                    (not_at_a_p4)

                    ; #75848: origin
                    (at_a_p9)

                    ; #68163: <==negation-removal== 75848 (pos)
                    (not (not_at_a_p9))

                    ; #82706: <==negation-removal== 26591 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1)
                           (not (leader_a)))
        :effect (and
                    ; #26068: origin
                    (at_a_p1)

                    ; #76526: origin
                    (not_at_a_p5)

                    ; #11945: <==negation-removal== 26068 (pos)
                    (not (not_at_a_p1))

                    ; #87621: <==negation-removal== 76526 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #19375: origin
                    (at_a_p2)

                    ; #76526: origin
                    (not_at_a_p5)

                    ; #76529: <==negation-removal== 19375 (pos)
                    (not (not_at_a_p2))

                    ; #87621: <==negation-removal== 76526 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #48341: origin
                    (at_a_p3)

                    ; #76526: origin
                    (not_at_a_p5)

                    ; #69284: <==negation-removal== 48341 (pos)
                    (not (not_at_a_p3))

                    ; #87621: <==negation-removal== 76526 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4)
                           (not (leader_a)))
        :effect (and
                    ; #76526: origin
                    (not_at_a_p5)

                    ; #82706: origin
                    (at_a_p4)

                    ; #26591: <==negation-removal== 82706 (pos)
                    (not (not_at_a_p4))

                    ; #87621: <==negation-removal== 76526 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #76526: origin
                    (not_at_a_p5)

                    ; #87621: origin
                    (at_a_p5)

                    ; #76526: <==negation-removal== 87621 (pos)
                    (not (not_at_a_p5))

                    ; #87621: <==negation-removal== 76526 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #63170: origin
                    (at_a_p6)

                    ; #76526: origin
                    (not_at_a_p5)

                    ; #59951: <==negation-removal== 63170 (pos)
                    (not (not_at_a_p6))

                    ; #87621: <==negation-removal== 76526 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7)
                           (not (leader_a)))
        :effect (and
                    ; #42679: origin
                    (at_a_p7)

                    ; #76526: origin
                    (not_at_a_p5)

                    ; #11099: <==negation-removal== 42679 (pos)
                    (not (not_at_a_p7))

                    ; #87621: <==negation-removal== 76526 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #19850: origin
                    (at_a_p8)

                    ; #76526: origin
                    (not_at_a_p5)

                    ; #84005: <==negation-removal== 19850 (pos)
                    (not (not_at_a_p8))

                    ; #87621: <==negation-removal== 76526 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #75848: origin
                    (at_a_p9)

                    ; #76526: origin
                    (not_at_a_p5)

                    ; #68163: <==negation-removal== 75848 (pos)
                    (not (not_at_a_p9))

                    ; #87621: <==negation-removal== 76526 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #26068: origin
                    (at_a_p1)

                    ; #59951: origin
                    (not_at_a_p6)

                    ; #11945: <==negation-removal== 26068 (pos)
                    (not (not_at_a_p1))

                    ; #63170: <==negation-removal== 59951 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #19375: origin
                    (at_a_p2)

                    ; #59951: origin
                    (not_at_a_p6)

                    ; #63170: <==negation-removal== 59951 (pos)
                    (not (at_a_p6))

                    ; #76529: <==negation-removal== 19375 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48341: origin
                    (at_a_p3)

                    ; #59951: origin
                    (not_at_a_p6)

                    ; #63170: <==negation-removal== 59951 (pos)
                    (not (at_a_p6))

                    ; #69284: <==negation-removal== 48341 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #59951: origin
                    (not_at_a_p6)

                    ; #82706: origin
                    (at_a_p4)

                    ; #26591: <==negation-removal== 82706 (pos)
                    (not (not_at_a_p4))

                    ; #63170: <==negation-removal== 59951 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #59951: origin
                    (not_at_a_p6)

                    ; #87621: origin
                    (at_a_p5)

                    ; #63170: <==negation-removal== 59951 (pos)
                    (not (at_a_p6))

                    ; #76526: <==negation-removal== 87621 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #59951: origin
                    (not_at_a_p6)

                    ; #63170: origin
                    (at_a_p6)

                    ; #59951: <==negation-removal== 63170 (pos)
                    (not (not_at_a_p6))

                    ; #63170: <==negation-removal== 59951 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #42679: origin
                    (at_a_p7)

                    ; #59951: origin
                    (not_at_a_p6)

                    ; #11099: <==negation-removal== 42679 (pos)
                    (not (not_at_a_p7))

                    ; #63170: <==negation-removal== 59951 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #19850: origin
                    (at_a_p8)

                    ; #59951: origin
                    (not_at_a_p6)

                    ; #63170: <==negation-removal== 59951 (pos)
                    (not (at_a_p6))

                    ; #84005: <==negation-removal== 19850 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #59951: origin
                    (not_at_a_p6)

                    ; #75848: origin
                    (at_a_p9)

                    ; #63170: <==negation-removal== 59951 (pos)
                    (not (at_a_p6))

                    ; #68163: <==negation-removal== 75848 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #11099: origin
                    (not_at_a_p7)

                    ; #26068: origin
                    (at_a_p1)

                    ; #11945: <==negation-removal== 26068 (pos)
                    (not (not_at_a_p1))

                    ; #42679: <==negation-removal== 11099 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #11099: origin
                    (not_at_a_p7)

                    ; #19375: origin
                    (at_a_p2)

                    ; #42679: <==negation-removal== 11099 (pos)
                    (not (at_a_p7))

                    ; #76529: <==negation-removal== 19375 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #11099: origin
                    (not_at_a_p7)

                    ; #48341: origin
                    (at_a_p3)

                    ; #42679: <==negation-removal== 11099 (pos)
                    (not (at_a_p7))

                    ; #69284: <==negation-removal== 48341 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #11099: origin
                    (not_at_a_p7)

                    ; #82706: origin
                    (at_a_p4)

                    ; #26591: <==negation-removal== 82706 (pos)
                    (not (not_at_a_p4))

                    ; #42679: <==negation-removal== 11099 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11099: origin
                    (not_at_a_p7)

                    ; #87621: origin
                    (at_a_p5)

                    ; #42679: <==negation-removal== 11099 (pos)
                    (not (at_a_p7))

                    ; #76526: <==negation-removal== 87621 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11099: origin
                    (not_at_a_p7)

                    ; #63170: origin
                    (at_a_p6)

                    ; #42679: <==negation-removal== 11099 (pos)
                    (not (at_a_p7))

                    ; #59951: <==negation-removal== 63170 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #11099: origin
                    (not_at_a_p7)

                    ; #42679: origin
                    (at_a_p7)

                    ; #11099: <==negation-removal== 42679 (pos)
                    (not (not_at_a_p7))

                    ; #42679: <==negation-removal== 11099 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11099: origin
                    (not_at_a_p7)

                    ; #19850: origin
                    (at_a_p8)

                    ; #42679: <==negation-removal== 11099 (pos)
                    (not (at_a_p7))

                    ; #84005: <==negation-removal== 19850 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11099: origin
                    (not_at_a_p7)

                    ; #75848: origin
                    (at_a_p9)

                    ; #42679: <==negation-removal== 11099 (pos)
                    (not (at_a_p7))

                    ; #68163: <==negation-removal== 75848 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #26068: origin
                    (at_a_p1)

                    ; #84005: origin
                    (not_at_a_p8)

                    ; #11945: <==negation-removal== 26068 (pos)
                    (not (not_at_a_p1))

                    ; #19850: <==negation-removal== 84005 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #19375: origin
                    (at_a_p2)

                    ; #84005: origin
                    (not_at_a_p8)

                    ; #19850: <==negation-removal== 84005 (pos)
                    (not (at_a_p8))

                    ; #76529: <==negation-removal== 19375 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #48341: origin
                    (at_a_p3)

                    ; #84005: origin
                    (not_at_a_p8)

                    ; #19850: <==negation-removal== 84005 (pos)
                    (not (at_a_p8))

                    ; #69284: <==negation-removal== 48341 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #82706: origin
                    (at_a_p4)

                    ; #84005: origin
                    (not_at_a_p8)

                    ; #19850: <==negation-removal== 84005 (pos)
                    (not (at_a_p8))

                    ; #26591: <==negation-removal== 82706 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #84005: origin
                    (not_at_a_p8)

                    ; #87621: origin
                    (at_a_p5)

                    ; #19850: <==negation-removal== 84005 (pos)
                    (not (at_a_p8))

                    ; #76526: <==negation-removal== 87621 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #63170: origin
                    (at_a_p6)

                    ; #84005: origin
                    (not_at_a_p8)

                    ; #19850: <==negation-removal== 84005 (pos)
                    (not (at_a_p8))

                    ; #59951: <==negation-removal== 63170 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #42679: origin
                    (at_a_p7)

                    ; #84005: origin
                    (not_at_a_p8)

                    ; #11099: <==negation-removal== 42679 (pos)
                    (not (not_at_a_p7))

                    ; #19850: <==negation-removal== 84005 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #19850: origin
                    (at_a_p8)

                    ; #84005: origin
                    (not_at_a_p8)

                    ; #19850: <==negation-removal== 84005 (pos)
                    (not (at_a_p8))

                    ; #84005: <==negation-removal== 19850 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #75848: origin
                    (at_a_p9)

                    ; #84005: origin
                    (not_at_a_p8)

                    ; #19850: <==negation-removal== 84005 (pos)
                    (not (at_a_p8))

                    ; #68163: <==negation-removal== 75848 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #26068: origin
                    (at_a_p1)

                    ; #68163: origin
                    (not_at_a_p9)

                    ; #11945: <==negation-removal== 26068 (pos)
                    (not (not_at_a_p1))

                    ; #75848: <==negation-removal== 68163 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #19375: origin
                    (at_a_p2)

                    ; #68163: origin
                    (not_at_a_p9)

                    ; #75848: <==negation-removal== 68163 (pos)
                    (not (at_a_p9))

                    ; #76529: <==negation-removal== 19375 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #48341: origin
                    (at_a_p3)

                    ; #68163: origin
                    (not_at_a_p9)

                    ; #69284: <==negation-removal== 48341 (pos)
                    (not (not_at_a_p3))

                    ; #75848: <==negation-removal== 68163 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #68163: origin
                    (not_at_a_p9)

                    ; #82706: origin
                    (at_a_p4)

                    ; #26591: <==negation-removal== 82706 (pos)
                    (not (not_at_a_p4))

                    ; #75848: <==negation-removal== 68163 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #68163: origin
                    (not_at_a_p9)

                    ; #87621: origin
                    (at_a_p5)

                    ; #75848: <==negation-removal== 68163 (pos)
                    (not (at_a_p9))

                    ; #76526: <==negation-removal== 87621 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #63170: origin
                    (at_a_p6)

                    ; #68163: origin
                    (not_at_a_p9)

                    ; #59951: <==negation-removal== 63170 (pos)
                    (not (not_at_a_p6))

                    ; #75848: <==negation-removal== 68163 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #42679: origin
                    (at_a_p7)

                    ; #68163: origin
                    (not_at_a_p9)

                    ; #11099: <==negation-removal== 42679 (pos)
                    (not (not_at_a_p7))

                    ; #75848: <==negation-removal== 68163 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #19850: origin
                    (at_a_p8)

                    ; #68163: origin
                    (not_at_a_p9)

                    ; #75848: <==negation-removal== 68163 (pos)
                    (not (at_a_p9))

                    ; #84005: <==negation-removal== 19850 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #68163: origin
                    (not_at_a_p9)

                    ; #75848: origin
                    (at_a_p9)

                    ; #68163: <==negation-removal== 75848 (pos)
                    (not (not_at_a_p9))

                    ; #75848: <==negation-removal== 68163 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #47021: origin
                    (not_at_b_p1)

                    ; #82311: origin
                    (at_b_p1)

                    ; #47021: <==negation-removal== 82311 (pos)
                    (not (not_at_b_p1))

                    ; #82311: <==negation-removal== 47021 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11153: origin
                    (at_b_p2)

                    ; #47021: origin
                    (not_at_b_p1)

                    ; #13256: <==negation-removal== 11153 (pos)
                    (not (not_at_b_p2))

                    ; #82311: <==negation-removal== 47021 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #27188: origin
                    (at_b_p3)

                    ; #47021: origin
                    (not_at_b_p1)

                    ; #48307: <==negation-removal== 27188 (pos)
                    (not (not_at_b_p3))

                    ; #82311: <==negation-removal== 47021 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #47021: origin
                    (not_at_b_p1)

                    ; #80950: origin
                    (at_b_p4)

                    ; #15935: <==negation-removal== 80950 (pos)
                    (not (not_at_b_p4))

                    ; #82311: <==negation-removal== 47021 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13560: origin
                    (at_b_p5)

                    ; #47021: origin
                    (not_at_b_p1)

                    ; #22313: <==negation-removal== 13560 (pos)
                    (not (not_at_b_p5))

                    ; #82311: <==negation-removal== 47021 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #47021: origin
                    (not_at_b_p1)

                    ; #57208: origin
                    (at_b_p6)

                    ; #14370: <==negation-removal== 57208 (pos)
                    (not (not_at_b_p6))

                    ; #82311: <==negation-removal== 47021 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #47021: origin
                    (not_at_b_p1)

                    ; #66691: origin
                    (at_b_p7)

                    ; #73615: <==negation-removal== 66691 (pos)
                    (not (not_at_b_p7))

                    ; #82311: <==negation-removal== 47021 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #28019: origin
                    (at_b_p8)

                    ; #47021: origin
                    (not_at_b_p1)

                    ; #69475: <==negation-removal== 28019 (pos)
                    (not (not_at_b_p8))

                    ; #82311: <==negation-removal== 47021 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #10546: origin
                    (at_b_p9)

                    ; #47021: origin
                    (not_at_b_p1)

                    ; #77596: <==negation-removal== 10546 (pos)
                    (not (not_at_b_p9))

                    ; #82311: <==negation-removal== 47021 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #13256: origin
                    (not_at_b_p2)

                    ; #82311: origin
                    (at_b_p1)

                    ; #11153: <==negation-removal== 13256 (pos)
                    (not (at_b_p2))

                    ; #47021: <==negation-removal== 82311 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11153: origin
                    (at_b_p2)

                    ; #13256: origin
                    (not_at_b_p2)

                    ; #11153: <==negation-removal== 13256 (pos)
                    (not (at_b_p2))

                    ; #13256: <==negation-removal== 11153 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #13256: origin
                    (not_at_b_p2)

                    ; #27188: origin
                    (at_b_p3)

                    ; #11153: <==negation-removal== 13256 (pos)
                    (not (at_b_p2))

                    ; #48307: <==negation-removal== 27188 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #13256: origin
                    (not_at_b_p2)

                    ; #80950: origin
                    (at_b_p4)

                    ; #11153: <==negation-removal== 13256 (pos)
                    (not (at_b_p2))

                    ; #15935: <==negation-removal== 80950 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #13256: origin
                    (not_at_b_p2)

                    ; #13560: origin
                    (at_b_p5)

                    ; #11153: <==negation-removal== 13256 (pos)
                    (not (at_b_p2))

                    ; #22313: <==negation-removal== 13560 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #13256: origin
                    (not_at_b_p2)

                    ; #57208: origin
                    (at_b_p6)

                    ; #11153: <==negation-removal== 13256 (pos)
                    (not (at_b_p2))

                    ; #14370: <==negation-removal== 57208 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #13256: origin
                    (not_at_b_p2)

                    ; #66691: origin
                    (at_b_p7)

                    ; #11153: <==negation-removal== 13256 (pos)
                    (not (at_b_p2))

                    ; #73615: <==negation-removal== 66691 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #13256: origin
                    (not_at_b_p2)

                    ; #28019: origin
                    (at_b_p8)

                    ; #11153: <==negation-removal== 13256 (pos)
                    (not (at_b_p2))

                    ; #69475: <==negation-removal== 28019 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #10546: origin
                    (at_b_p9)

                    ; #13256: origin
                    (not_at_b_p2)

                    ; #11153: <==negation-removal== 13256 (pos)
                    (not (at_b_p2))

                    ; #77596: <==negation-removal== 10546 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #48307: origin
                    (not_at_b_p3)

                    ; #82311: origin
                    (at_b_p1)

                    ; #27188: <==negation-removal== 48307 (pos)
                    (not (at_b_p3))

                    ; #47021: <==negation-removal== 82311 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11153: origin
                    (at_b_p2)

                    ; #48307: origin
                    (not_at_b_p3)

                    ; #13256: <==negation-removal== 11153 (pos)
                    (not (not_at_b_p2))

                    ; #27188: <==negation-removal== 48307 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #27188: origin
                    (at_b_p3)

                    ; #48307: origin
                    (not_at_b_p3)

                    ; #27188: <==negation-removal== 48307 (pos)
                    (not (at_b_p3))

                    ; #48307: <==negation-removal== 27188 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #48307: origin
                    (not_at_b_p3)

                    ; #80950: origin
                    (at_b_p4)

                    ; #15935: <==negation-removal== 80950 (pos)
                    (not (not_at_b_p4))

                    ; #27188: <==negation-removal== 48307 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #13560: origin
                    (at_b_p5)

                    ; #48307: origin
                    (not_at_b_p3)

                    ; #22313: <==negation-removal== 13560 (pos)
                    (not (not_at_b_p5))

                    ; #27188: <==negation-removal== 48307 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #48307: origin
                    (not_at_b_p3)

                    ; #57208: origin
                    (at_b_p6)

                    ; #14370: <==negation-removal== 57208 (pos)
                    (not (not_at_b_p6))

                    ; #27188: <==negation-removal== 48307 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #48307: origin
                    (not_at_b_p3)

                    ; #66691: origin
                    (at_b_p7)

                    ; #27188: <==negation-removal== 48307 (pos)
                    (not (at_b_p3))

                    ; #73615: <==negation-removal== 66691 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #28019: origin
                    (at_b_p8)

                    ; #48307: origin
                    (not_at_b_p3)

                    ; #27188: <==negation-removal== 48307 (pos)
                    (not (at_b_p3))

                    ; #69475: <==negation-removal== 28019 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #10546: origin
                    (at_b_p9)

                    ; #48307: origin
                    (not_at_b_p3)

                    ; #27188: <==negation-removal== 48307 (pos)
                    (not (at_b_p3))

                    ; #77596: <==negation-removal== 10546 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #15935: origin
                    (not_at_b_p4)

                    ; #82311: origin
                    (at_b_p1)

                    ; #47021: <==negation-removal== 82311 (pos)
                    (not (not_at_b_p1))

                    ; #80950: <==negation-removal== 15935 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #11153: origin
                    (at_b_p2)

                    ; #15935: origin
                    (not_at_b_p4)

                    ; #13256: <==negation-removal== 11153 (pos)
                    (not (not_at_b_p2))

                    ; #80950: <==negation-removal== 15935 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15935: origin
                    (not_at_b_p4)

                    ; #27188: origin
                    (at_b_p3)

                    ; #48307: <==negation-removal== 27188 (pos)
                    (not (not_at_b_p3))

                    ; #80950: <==negation-removal== 15935 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15935: origin
                    (not_at_b_p4)

                    ; #80950: origin
                    (at_b_p4)

                    ; #15935: <==negation-removal== 80950 (pos)
                    (not (not_at_b_p4))

                    ; #80950: <==negation-removal== 15935 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5)
                           (not (leader_b)))
        :effect (and
                    ; #13560: origin
                    (at_b_p5)

                    ; #15935: origin
                    (not_at_b_p4)

                    ; #22313: <==negation-removal== 13560 (pos)
                    (not (not_at_b_p5))

                    ; #80950: <==negation-removal== 15935 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6)
                           (not (leader_b)))
        :effect (and
                    ; #15935: origin
                    (not_at_b_p4)

                    ; #57208: origin
                    (at_b_p6)

                    ; #14370: <==negation-removal== 57208 (pos)
                    (not (not_at_b_p6))

                    ; #80950: <==negation-removal== 15935 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15935: origin
                    (not_at_b_p4)

                    ; #66691: origin
                    (at_b_p7)

                    ; #73615: <==negation-removal== 66691 (pos)
                    (not (not_at_b_p7))

                    ; #80950: <==negation-removal== 15935 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15935: origin
                    (not_at_b_p4)

                    ; #28019: origin
                    (at_b_p8)

                    ; #69475: <==negation-removal== 28019 (pos)
                    (not (not_at_b_p8))

                    ; #80950: <==negation-removal== 15935 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #10546: origin
                    (at_b_p9)

                    ; #15935: origin
                    (not_at_b_p4)

                    ; #77596: <==negation-removal== 10546 (pos)
                    (not (not_at_b_p9))

                    ; #80950: <==negation-removal== 15935 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #22313: origin
                    (not_at_b_p5)

                    ; #82311: origin
                    (at_b_p1)

                    ; #13560: <==negation-removal== 22313 (pos)
                    (not (at_b_p5))

                    ; #47021: <==negation-removal== 82311 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11153: origin
                    (at_b_p2)

                    ; #22313: origin
                    (not_at_b_p5)

                    ; #13256: <==negation-removal== 11153 (pos)
                    (not (not_at_b_p2))

                    ; #13560: <==negation-removal== 22313 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #22313: origin
                    (not_at_b_p5)

                    ; #27188: origin
                    (at_b_p3)

                    ; #13560: <==negation-removal== 22313 (pos)
                    (not (at_b_p5))

                    ; #48307: <==negation-removal== 27188 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #22313: origin
                    (not_at_b_p5)

                    ; #80950: origin
                    (at_b_p4)

                    ; #13560: <==negation-removal== 22313 (pos)
                    (not (at_b_p5))

                    ; #15935: <==negation-removal== 80950 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #13560: origin
                    (at_b_p5)

                    ; #22313: origin
                    (not_at_b_p5)

                    ; #13560: <==negation-removal== 22313 (pos)
                    (not (at_b_p5))

                    ; #22313: <==negation-removal== 13560 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #22313: origin
                    (not_at_b_p5)

                    ; #57208: origin
                    (at_b_p6)

                    ; #13560: <==negation-removal== 22313 (pos)
                    (not (at_b_p5))

                    ; #14370: <==negation-removal== 57208 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #22313: origin
                    (not_at_b_p5)

                    ; #66691: origin
                    (at_b_p7)

                    ; #13560: <==negation-removal== 22313 (pos)
                    (not (at_b_p5))

                    ; #73615: <==negation-removal== 66691 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #22313: origin
                    (not_at_b_p5)

                    ; #28019: origin
                    (at_b_p8)

                    ; #13560: <==negation-removal== 22313 (pos)
                    (not (at_b_p5))

                    ; #69475: <==negation-removal== 28019 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #10546: origin
                    (at_b_p9)

                    ; #22313: origin
                    (not_at_b_p5)

                    ; #13560: <==negation-removal== 22313 (pos)
                    (not (at_b_p5))

                    ; #77596: <==negation-removal== 10546 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1)
                           (not (leader_b)))
        :effect (and
                    ; #14370: origin
                    (not_at_b_p6)

                    ; #82311: origin
                    (at_b_p1)

                    ; #47021: <==negation-removal== 82311 (pos)
                    (not (not_at_b_p1))

                    ; #57208: <==negation-removal== 14370 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11153: origin
                    (at_b_p2)

                    ; #14370: origin
                    (not_at_b_p6)

                    ; #13256: <==negation-removal== 11153 (pos)
                    (not (not_at_b_p2))

                    ; #57208: <==negation-removal== 14370 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14370: origin
                    (not_at_b_p6)

                    ; #27188: origin
                    (at_b_p3)

                    ; #48307: <==negation-removal== 27188 (pos)
                    (not (not_at_b_p3))

                    ; #57208: <==negation-removal== 14370 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #14370: origin
                    (not_at_b_p6)

                    ; #80950: origin
                    (at_b_p4)

                    ; #15935: <==negation-removal== 80950 (pos)
                    (not (not_at_b_p4))

                    ; #57208: <==negation-removal== 14370 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #13560: origin
                    (at_b_p5)

                    ; #14370: origin
                    (not_at_b_p6)

                    ; #22313: <==negation-removal== 13560 (pos)
                    (not (not_at_b_p5))

                    ; #57208: <==negation-removal== 14370 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #14370: origin
                    (not_at_b_p6)

                    ; #57208: origin
                    (at_b_p6)

                    ; #14370: <==negation-removal== 57208 (pos)
                    (not (not_at_b_p6))

                    ; #57208: <==negation-removal== 14370 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #14370: origin
                    (not_at_b_p6)

                    ; #66691: origin
                    (at_b_p7)

                    ; #57208: <==negation-removal== 14370 (pos)
                    (not (at_b_p6))

                    ; #73615: <==negation-removal== 66691 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14370: origin
                    (not_at_b_p6)

                    ; #28019: origin
                    (at_b_p8)

                    ; #57208: <==negation-removal== 14370 (pos)
                    (not (at_b_p6))

                    ; #69475: <==negation-removal== 28019 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #10546: origin
                    (at_b_p9)

                    ; #14370: origin
                    (not_at_b_p6)

                    ; #57208: <==negation-removal== 14370 (pos)
                    (not (at_b_p6))

                    ; #77596: <==negation-removal== 10546 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1)
                           (not (leader_b)))
        :effect (and
                    ; #73615: origin
                    (not_at_b_p7)

                    ; #82311: origin
                    (at_b_p1)

                    ; #47021: <==negation-removal== 82311 (pos)
                    (not (not_at_b_p1))

                    ; #66691: <==negation-removal== 73615 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11153: origin
                    (at_b_p2)

                    ; #73615: origin
                    (not_at_b_p7)

                    ; #13256: <==negation-removal== 11153 (pos)
                    (not (not_at_b_p2))

                    ; #66691: <==negation-removal== 73615 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #27188: origin
                    (at_b_p3)

                    ; #73615: origin
                    (not_at_b_p7)

                    ; #48307: <==negation-removal== 27188 (pos)
                    (not (not_at_b_p3))

                    ; #66691: <==negation-removal== 73615 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4)
                           (not (leader_b)))
        :effect (and
                    ; #73615: origin
                    (not_at_b_p7)

                    ; #80950: origin
                    (at_b_p4)

                    ; #15935: <==negation-removal== 80950 (pos)
                    (not (not_at_b_p4))

                    ; #66691: <==negation-removal== 73615 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #13560: origin
                    (at_b_p5)

                    ; #73615: origin
                    (not_at_b_p7)

                    ; #22313: <==negation-removal== 13560 (pos)
                    (not (not_at_b_p5))

                    ; #66691: <==negation-removal== 73615 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6)
                           (not (leader_b)))
        :effect (and
                    ; #57208: origin
                    (at_b_p6)

                    ; #73615: origin
                    (not_at_b_p7)

                    ; #14370: <==negation-removal== 57208 (pos)
                    (not (not_at_b_p6))

                    ; #66691: <==negation-removal== 73615 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7)
                           (not (leader_b)))
        :effect (and
                    ; #66691: origin
                    (at_b_p7)

                    ; #73615: origin
                    (not_at_b_p7)

                    ; #66691: <==negation-removal== 73615 (pos)
                    (not (at_b_p7))

                    ; #73615: <==negation-removal== 66691 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #28019: origin
                    (at_b_p8)

                    ; #73615: origin
                    (not_at_b_p7)

                    ; #66691: <==negation-removal== 73615 (pos)
                    (not (at_b_p7))

                    ; #69475: <==negation-removal== 28019 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #10546: origin
                    (at_b_p9)

                    ; #73615: origin
                    (not_at_b_p7)

                    ; #66691: <==negation-removal== 73615 (pos)
                    (not (at_b_p7))

                    ; #77596: <==negation-removal== 10546 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #69475: origin
                    (not_at_b_p8)

                    ; #82311: origin
                    (at_b_p1)

                    ; #28019: <==negation-removal== 69475 (pos)
                    (not (at_b_p8))

                    ; #47021: <==negation-removal== 82311 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #11153: origin
                    (at_b_p2)

                    ; #69475: origin
                    (not_at_b_p8)

                    ; #13256: <==negation-removal== 11153 (pos)
                    (not (not_at_b_p2))

                    ; #28019: <==negation-removal== 69475 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #27188: origin
                    (at_b_p3)

                    ; #69475: origin
                    (not_at_b_p8)

                    ; #28019: <==negation-removal== 69475 (pos)
                    (not (at_b_p8))

                    ; #48307: <==negation-removal== 27188 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #69475: origin
                    (not_at_b_p8)

                    ; #80950: origin
                    (at_b_p4)

                    ; #15935: <==negation-removal== 80950 (pos)
                    (not (not_at_b_p4))

                    ; #28019: <==negation-removal== 69475 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #13560: origin
                    (at_b_p5)

                    ; #69475: origin
                    (not_at_b_p8)

                    ; #22313: <==negation-removal== 13560 (pos)
                    (not (not_at_b_p5))

                    ; #28019: <==negation-removal== 69475 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #57208: origin
                    (at_b_p6)

                    ; #69475: origin
                    (not_at_b_p8)

                    ; #14370: <==negation-removal== 57208 (pos)
                    (not (not_at_b_p6))

                    ; #28019: <==negation-removal== 69475 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #66691: origin
                    (at_b_p7)

                    ; #69475: origin
                    (not_at_b_p8)

                    ; #28019: <==negation-removal== 69475 (pos)
                    (not (at_b_p8))

                    ; #73615: <==negation-removal== 66691 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #28019: origin
                    (at_b_p8)

                    ; #69475: origin
                    (not_at_b_p8)

                    ; #28019: <==negation-removal== 69475 (pos)
                    (not (at_b_p8))

                    ; #69475: <==negation-removal== 28019 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #10546: origin
                    (at_b_p9)

                    ; #69475: origin
                    (not_at_b_p8)

                    ; #28019: <==negation-removal== 69475 (pos)
                    (not (at_b_p8))

                    ; #77596: <==negation-removal== 10546 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #77596: origin
                    (not_at_b_p9)

                    ; #82311: origin
                    (at_b_p1)

                    ; #10546: <==negation-removal== 77596 (pos)
                    (not (at_b_p9))

                    ; #47021: <==negation-removal== 82311 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11153: origin
                    (at_b_p2)

                    ; #77596: origin
                    (not_at_b_p9)

                    ; #10546: <==negation-removal== 77596 (pos)
                    (not (at_b_p9))

                    ; #13256: <==negation-removal== 11153 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3)
                           (not (leader_b)))
        :effect (and
                    ; #27188: origin
                    (at_b_p3)

                    ; #77596: origin
                    (not_at_b_p9)

                    ; #10546: <==negation-removal== 77596 (pos)
                    (not (at_b_p9))

                    ; #48307: <==negation-removal== 27188 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4)
                           (not (leader_b)))
        :effect (and
                    ; #77596: origin
                    (not_at_b_p9)

                    ; #80950: origin
                    (at_b_p4)

                    ; #10546: <==negation-removal== 77596 (pos)
                    (not (at_b_p9))

                    ; #15935: <==negation-removal== 80950 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #13560: origin
                    (at_b_p5)

                    ; #77596: origin
                    (not_at_b_p9)

                    ; #10546: <==negation-removal== 77596 (pos)
                    (not (at_b_p9))

                    ; #22313: <==negation-removal== 13560 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6)
                           (not (leader_b)))
        :effect (and
                    ; #57208: origin
                    (at_b_p6)

                    ; #77596: origin
                    (not_at_b_p9)

                    ; #10546: <==negation-removal== 77596 (pos)
                    (not (at_b_p9))

                    ; #14370: <==negation-removal== 57208 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #66691: origin
                    (at_b_p7)

                    ; #77596: origin
                    (not_at_b_p9)

                    ; #10546: <==negation-removal== 77596 (pos)
                    (not (at_b_p9))

                    ; #73615: <==negation-removal== 66691 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #28019: origin
                    (at_b_p8)

                    ; #77596: origin
                    (not_at_b_p9)

                    ; #10546: <==negation-removal== 77596 (pos)
                    (not (at_b_p9))

                    ; #69475: <==negation-removal== 28019 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9)
                           (not (leader_b)))
        :effect (and
                    ; #10546: origin
                    (at_b_p9)

                    ; #77596: origin
                    (not_at_b_p9)

                    ; #10546: <==negation-removal== 77596 (pos)
                    (not (at_b_p9))

                    ; #77596: <==negation-removal== 10546 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14885: origin
                    (not_at_c_p1)

                    ; #90323: origin
                    (at_c_p1)

                    ; #14885: <==negation-removal== 90323 (pos)
                    (not (not_at_c_p1))

                    ; #90323: <==negation-removal== 14885 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14885: origin
                    (not_at_c_p1)

                    ; #67579: origin
                    (at_c_p2)

                    ; #25494: <==negation-removal== 67579 (pos)
                    (not (not_at_c_p2))

                    ; #90323: <==negation-removal== 14885 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14885: origin
                    (not_at_c_p1)

                    ; #41495: origin
                    (at_c_p3)

                    ; #86370: <==negation-removal== 41495 (pos)
                    (not (not_at_c_p3))

                    ; #90323: <==negation-removal== 14885 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14885: origin
                    (not_at_c_p1)

                    ; #52596: origin
                    (at_c_p4)

                    ; #83459: <==negation-removal== 52596 (pos)
                    (not (not_at_c_p4))

                    ; #90323: <==negation-removal== 14885 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14885: origin
                    (not_at_c_p1)

                    ; #72915: origin
                    (at_c_p5)

                    ; #52759: <==negation-removal== 72915 (pos)
                    (not (not_at_c_p5))

                    ; #90323: <==negation-removal== 14885 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14885: origin
                    (not_at_c_p1)

                    ; #54132: origin
                    (at_c_p6)

                    ; #13353: <==negation-removal== 54132 (pos)
                    (not (not_at_c_p6))

                    ; #90323: <==negation-removal== 14885 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14885: origin
                    (not_at_c_p1)

                    ; #76607: origin
                    (at_c_p7)

                    ; #11375: <==negation-removal== 76607 (pos)
                    (not (not_at_c_p7))

                    ; #90323: <==negation-removal== 14885 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14885: origin
                    (not_at_c_p1)

                    ; #60666: origin
                    (at_c_p8)

                    ; #48536: <==negation-removal== 60666 (pos)
                    (not (not_at_c_p8))

                    ; #90323: <==negation-removal== 14885 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14885: origin
                    (not_at_c_p1)

                    ; #92967: origin
                    (at_c_p9)

                    ; #33790: <==negation-removal== 92967 (pos)
                    (not (not_at_c_p9))

                    ; #90323: <==negation-removal== 14885 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25494: origin
                    (not_at_c_p2)

                    ; #90323: origin
                    (at_c_p1)

                    ; #14885: <==negation-removal== 90323 (pos)
                    (not (not_at_c_p1))

                    ; #67579: <==negation-removal== 25494 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25494: origin
                    (not_at_c_p2)

                    ; #67579: origin
                    (at_c_p2)

                    ; #25494: <==negation-removal== 67579 (pos)
                    (not (not_at_c_p2))

                    ; #67579: <==negation-removal== 25494 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25494: origin
                    (not_at_c_p2)

                    ; #41495: origin
                    (at_c_p3)

                    ; #67579: <==negation-removal== 25494 (pos)
                    (not (at_c_p2))

                    ; #86370: <==negation-removal== 41495 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25494: origin
                    (not_at_c_p2)

                    ; #52596: origin
                    (at_c_p4)

                    ; #67579: <==negation-removal== 25494 (pos)
                    (not (at_c_p2))

                    ; #83459: <==negation-removal== 52596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25494: origin
                    (not_at_c_p2)

                    ; #72915: origin
                    (at_c_p5)

                    ; #52759: <==negation-removal== 72915 (pos)
                    (not (not_at_c_p5))

                    ; #67579: <==negation-removal== 25494 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25494: origin
                    (not_at_c_p2)

                    ; #54132: origin
                    (at_c_p6)

                    ; #13353: <==negation-removal== 54132 (pos)
                    (not (not_at_c_p6))

                    ; #67579: <==negation-removal== 25494 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25494: origin
                    (not_at_c_p2)

                    ; #76607: origin
                    (at_c_p7)

                    ; #11375: <==negation-removal== 76607 (pos)
                    (not (not_at_c_p7))

                    ; #67579: <==negation-removal== 25494 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25494: origin
                    (not_at_c_p2)

                    ; #60666: origin
                    (at_c_p8)

                    ; #48536: <==negation-removal== 60666 (pos)
                    (not (not_at_c_p8))

                    ; #67579: <==negation-removal== 25494 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25494: origin
                    (not_at_c_p2)

                    ; #92967: origin
                    (at_c_p9)

                    ; #33790: <==negation-removal== 92967 (pos)
                    (not (not_at_c_p9))

                    ; #67579: <==negation-removal== 25494 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #86370: origin
                    (not_at_c_p3)

                    ; #90323: origin
                    (at_c_p1)

                    ; #14885: <==negation-removal== 90323 (pos)
                    (not (not_at_c_p1))

                    ; #41495: <==negation-removal== 86370 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #67579: origin
                    (at_c_p2)

                    ; #86370: origin
                    (not_at_c_p3)

                    ; #25494: <==negation-removal== 67579 (pos)
                    (not (not_at_c_p2))

                    ; #41495: <==negation-removal== 86370 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #41495: origin
                    (at_c_p3)

                    ; #86370: origin
                    (not_at_c_p3)

                    ; #41495: <==negation-removal== 86370 (pos)
                    (not (at_c_p3))

                    ; #86370: <==negation-removal== 41495 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #52596: origin
                    (at_c_p4)

                    ; #86370: origin
                    (not_at_c_p3)

                    ; #41495: <==negation-removal== 86370 (pos)
                    (not (at_c_p3))

                    ; #83459: <==negation-removal== 52596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5)
                           (not (leader_c)))
        :effect (and
                    ; #72915: origin
                    (at_c_p5)

                    ; #86370: origin
                    (not_at_c_p3)

                    ; #41495: <==negation-removal== 86370 (pos)
                    (not (at_c_p3))

                    ; #52759: <==negation-removal== 72915 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #54132: origin
                    (at_c_p6)

                    ; #86370: origin
                    (not_at_c_p3)

                    ; #13353: <==negation-removal== 54132 (pos)
                    (not (not_at_c_p6))

                    ; #41495: <==negation-removal== 86370 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7)
                           (not (leader_c)))
        :effect (and
                    ; #76607: origin
                    (at_c_p7)

                    ; #86370: origin
                    (not_at_c_p3)

                    ; #11375: <==negation-removal== 76607 (pos)
                    (not (not_at_c_p7))

                    ; #41495: <==negation-removal== 86370 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8)
                           (not (leader_c)))
        :effect (and
                    ; #60666: origin
                    (at_c_p8)

                    ; #86370: origin
                    (not_at_c_p3)

                    ; #41495: <==negation-removal== 86370 (pos)
                    (not (at_c_p3))

                    ; #48536: <==negation-removal== 60666 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #86370: origin
                    (not_at_c_p3)

                    ; #92967: origin
                    (at_c_p9)

                    ; #33790: <==negation-removal== 92967 (pos)
                    (not (not_at_c_p9))

                    ; #41495: <==negation-removal== 86370 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #83459: origin
                    (not_at_c_p4)

                    ; #90323: origin
                    (at_c_p1)

                    ; #14885: <==negation-removal== 90323 (pos)
                    (not (not_at_c_p1))

                    ; #52596: <==negation-removal== 83459 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #67579: origin
                    (at_c_p2)

                    ; #83459: origin
                    (not_at_c_p4)

                    ; #25494: <==negation-removal== 67579 (pos)
                    (not (not_at_c_p2))

                    ; #52596: <==negation-removal== 83459 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #41495: origin
                    (at_c_p3)

                    ; #83459: origin
                    (not_at_c_p4)

                    ; #52596: <==negation-removal== 83459 (pos)
                    (not (at_c_p4))

                    ; #86370: <==negation-removal== 41495 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #52596: origin
                    (at_c_p4)

                    ; #83459: origin
                    (not_at_c_p4)

                    ; #52596: <==negation-removal== 83459 (pos)
                    (not (at_c_p4))

                    ; #83459: <==negation-removal== 52596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5)
                           (not (leader_c)))
        :effect (and
                    ; #72915: origin
                    (at_c_p5)

                    ; #83459: origin
                    (not_at_c_p4)

                    ; #52596: <==negation-removal== 83459 (pos)
                    (not (at_c_p4))

                    ; #52759: <==negation-removal== 72915 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6)
                           (not (leader_c)))
        :effect (and
                    ; #54132: origin
                    (at_c_p6)

                    ; #83459: origin
                    (not_at_c_p4)

                    ; #13353: <==negation-removal== 54132 (pos)
                    (not (not_at_c_p6))

                    ; #52596: <==negation-removal== 83459 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #76607: origin
                    (at_c_p7)

                    ; #83459: origin
                    (not_at_c_p4)

                    ; #11375: <==negation-removal== 76607 (pos)
                    (not (not_at_c_p7))

                    ; #52596: <==negation-removal== 83459 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #60666: origin
                    (at_c_p8)

                    ; #83459: origin
                    (not_at_c_p4)

                    ; #48536: <==negation-removal== 60666 (pos)
                    (not (not_at_c_p8))

                    ; #52596: <==negation-removal== 83459 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #83459: origin
                    (not_at_c_p4)

                    ; #92967: origin
                    (at_c_p9)

                    ; #33790: <==negation-removal== 92967 (pos)
                    (not (not_at_c_p9))

                    ; #52596: <==negation-removal== 83459 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #52759: origin
                    (not_at_c_p5)

                    ; #90323: origin
                    (at_c_p1)

                    ; #14885: <==negation-removal== 90323 (pos)
                    (not (not_at_c_p1))

                    ; #72915: <==negation-removal== 52759 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52759: origin
                    (not_at_c_p5)

                    ; #67579: origin
                    (at_c_p2)

                    ; #25494: <==negation-removal== 67579 (pos)
                    (not (not_at_c_p2))

                    ; #72915: <==negation-removal== 52759 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #41495: origin
                    (at_c_p3)

                    ; #52759: origin
                    (not_at_c_p5)

                    ; #72915: <==negation-removal== 52759 (pos)
                    (not (at_c_p5))

                    ; #86370: <==negation-removal== 41495 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #52596: origin
                    (at_c_p4)

                    ; #52759: origin
                    (not_at_c_p5)

                    ; #72915: <==negation-removal== 52759 (pos)
                    (not (at_c_p5))

                    ; #83459: <==negation-removal== 52596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #52759: origin
                    (not_at_c_p5)

                    ; #72915: origin
                    (at_c_p5)

                    ; #52759: <==negation-removal== 72915 (pos)
                    (not (not_at_c_p5))

                    ; #72915: <==negation-removal== 52759 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #52759: origin
                    (not_at_c_p5)

                    ; #54132: origin
                    (at_c_p6)

                    ; #13353: <==negation-removal== 54132 (pos)
                    (not (not_at_c_p6))

                    ; #72915: <==negation-removal== 52759 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #52759: origin
                    (not_at_c_p5)

                    ; #76607: origin
                    (at_c_p7)

                    ; #11375: <==negation-removal== 76607 (pos)
                    (not (not_at_c_p7))

                    ; #72915: <==negation-removal== 52759 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #52759: origin
                    (not_at_c_p5)

                    ; #60666: origin
                    (at_c_p8)

                    ; #48536: <==negation-removal== 60666 (pos)
                    (not (not_at_c_p8))

                    ; #72915: <==negation-removal== 52759 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #52759: origin
                    (not_at_c_p5)

                    ; #92967: origin
                    (at_c_p9)

                    ; #33790: <==negation-removal== 92967 (pos)
                    (not (not_at_c_p9))

                    ; #72915: <==negation-removal== 52759 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13353: origin
                    (not_at_c_p6)

                    ; #90323: origin
                    (at_c_p1)

                    ; #14885: <==negation-removal== 90323 (pos)
                    (not (not_at_c_p1))

                    ; #54132: <==negation-removal== 13353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13353: origin
                    (not_at_c_p6)

                    ; #67579: origin
                    (at_c_p2)

                    ; #25494: <==negation-removal== 67579 (pos)
                    (not (not_at_c_p2))

                    ; #54132: <==negation-removal== 13353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13353: origin
                    (not_at_c_p6)

                    ; #41495: origin
                    (at_c_p3)

                    ; #54132: <==negation-removal== 13353 (pos)
                    (not (at_c_p6))

                    ; #86370: <==negation-removal== 41495 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13353: origin
                    (not_at_c_p6)

                    ; #52596: origin
                    (at_c_p4)

                    ; #54132: <==negation-removal== 13353 (pos)
                    (not (at_c_p6))

                    ; #83459: <==negation-removal== 52596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13353: origin
                    (not_at_c_p6)

                    ; #72915: origin
                    (at_c_p5)

                    ; #52759: <==negation-removal== 72915 (pos)
                    (not (not_at_c_p5))

                    ; #54132: <==negation-removal== 13353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13353: origin
                    (not_at_c_p6)

                    ; #54132: origin
                    (at_c_p6)

                    ; #13353: <==negation-removal== 54132 (pos)
                    (not (not_at_c_p6))

                    ; #54132: <==negation-removal== 13353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13353: origin
                    (not_at_c_p6)

                    ; #76607: origin
                    (at_c_p7)

                    ; #11375: <==negation-removal== 76607 (pos)
                    (not (not_at_c_p7))

                    ; #54132: <==negation-removal== 13353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13353: origin
                    (not_at_c_p6)

                    ; #60666: origin
                    (at_c_p8)

                    ; #48536: <==negation-removal== 60666 (pos)
                    (not (not_at_c_p8))

                    ; #54132: <==negation-removal== 13353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13353: origin
                    (not_at_c_p6)

                    ; #92967: origin
                    (at_c_p9)

                    ; #33790: <==negation-removal== 92967 (pos)
                    (not (not_at_c_p9))

                    ; #54132: <==negation-removal== 13353 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11375: origin
                    (not_at_c_p7)

                    ; #90323: origin
                    (at_c_p1)

                    ; #14885: <==negation-removal== 90323 (pos)
                    (not (not_at_c_p1))

                    ; #76607: <==negation-removal== 11375 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #11375: origin
                    (not_at_c_p7)

                    ; #67579: origin
                    (at_c_p2)

                    ; #25494: <==negation-removal== 67579 (pos)
                    (not (not_at_c_p2))

                    ; #76607: <==negation-removal== 11375 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11375: origin
                    (not_at_c_p7)

                    ; #41495: origin
                    (at_c_p3)

                    ; #76607: <==negation-removal== 11375 (pos)
                    (not (at_c_p7))

                    ; #86370: <==negation-removal== 41495 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11375: origin
                    (not_at_c_p7)

                    ; #52596: origin
                    (at_c_p4)

                    ; #76607: <==negation-removal== 11375 (pos)
                    (not (at_c_p7))

                    ; #83459: <==negation-removal== 52596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11375: origin
                    (not_at_c_p7)

                    ; #72915: origin
                    (at_c_p5)

                    ; #52759: <==negation-removal== 72915 (pos)
                    (not (not_at_c_p5))

                    ; #76607: <==negation-removal== 11375 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11375: origin
                    (not_at_c_p7)

                    ; #54132: origin
                    (at_c_p6)

                    ; #13353: <==negation-removal== 54132 (pos)
                    (not (not_at_c_p6))

                    ; #76607: <==negation-removal== 11375 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11375: origin
                    (not_at_c_p7)

                    ; #76607: origin
                    (at_c_p7)

                    ; #11375: <==negation-removal== 76607 (pos)
                    (not (not_at_c_p7))

                    ; #76607: <==negation-removal== 11375 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11375: origin
                    (not_at_c_p7)

                    ; #60666: origin
                    (at_c_p8)

                    ; #48536: <==negation-removal== 60666 (pos)
                    (not (not_at_c_p8))

                    ; #76607: <==negation-removal== 11375 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11375: origin
                    (not_at_c_p7)

                    ; #92967: origin
                    (at_c_p9)

                    ; #33790: <==negation-removal== 92967 (pos)
                    (not (not_at_c_p9))

                    ; #76607: <==negation-removal== 11375 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #48536: origin
                    (not_at_c_p8)

                    ; #90323: origin
                    (at_c_p1)

                    ; #14885: <==negation-removal== 90323 (pos)
                    (not (not_at_c_p1))

                    ; #60666: <==negation-removal== 48536 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #48536: origin
                    (not_at_c_p8)

                    ; #67579: origin
                    (at_c_p2)

                    ; #25494: <==negation-removal== 67579 (pos)
                    (not (not_at_c_p2))

                    ; #60666: <==negation-removal== 48536 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41495: origin
                    (at_c_p3)

                    ; #48536: origin
                    (not_at_c_p8)

                    ; #60666: <==negation-removal== 48536 (pos)
                    (not (at_c_p8))

                    ; #86370: <==negation-removal== 41495 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #48536: origin
                    (not_at_c_p8)

                    ; #52596: origin
                    (at_c_p4)

                    ; #60666: <==negation-removal== 48536 (pos)
                    (not (at_c_p8))

                    ; #83459: <==negation-removal== 52596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #48536: origin
                    (not_at_c_p8)

                    ; #72915: origin
                    (at_c_p5)

                    ; #52759: <==negation-removal== 72915 (pos)
                    (not (not_at_c_p5))

                    ; #60666: <==negation-removal== 48536 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #48536: origin
                    (not_at_c_p8)

                    ; #54132: origin
                    (at_c_p6)

                    ; #13353: <==negation-removal== 54132 (pos)
                    (not (not_at_c_p6))

                    ; #60666: <==negation-removal== 48536 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #48536: origin
                    (not_at_c_p8)

                    ; #76607: origin
                    (at_c_p7)

                    ; #11375: <==negation-removal== 76607 (pos)
                    (not (not_at_c_p7))

                    ; #60666: <==negation-removal== 48536 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #48536: origin
                    (not_at_c_p8)

                    ; #60666: origin
                    (at_c_p8)

                    ; #48536: <==negation-removal== 60666 (pos)
                    (not (not_at_c_p8))

                    ; #60666: <==negation-removal== 48536 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #48536: origin
                    (not_at_c_p8)

                    ; #92967: origin
                    (at_c_p9)

                    ; #33790: <==negation-removal== 92967 (pos)
                    (not (not_at_c_p9))

                    ; #60666: <==negation-removal== 48536 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33790: origin
                    (not_at_c_p9)

                    ; #90323: origin
                    (at_c_p1)

                    ; #14885: <==negation-removal== 90323 (pos)
                    (not (not_at_c_p1))

                    ; #92967: <==negation-removal== 33790 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33790: origin
                    (not_at_c_p9)

                    ; #67579: origin
                    (at_c_p2)

                    ; #25494: <==negation-removal== 67579 (pos)
                    (not (not_at_c_p2))

                    ; #92967: <==negation-removal== 33790 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33790: origin
                    (not_at_c_p9)

                    ; #41495: origin
                    (at_c_p3)

                    ; #86370: <==negation-removal== 41495 (pos)
                    (not (not_at_c_p3))

                    ; #92967: <==negation-removal== 33790 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33790: origin
                    (not_at_c_p9)

                    ; #52596: origin
                    (at_c_p4)

                    ; #83459: <==negation-removal== 52596 (pos)
                    (not (not_at_c_p4))

                    ; #92967: <==negation-removal== 33790 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33790: origin
                    (not_at_c_p9)

                    ; #72915: origin
                    (at_c_p5)

                    ; #52759: <==negation-removal== 72915 (pos)
                    (not (not_at_c_p5))

                    ; #92967: <==negation-removal== 33790 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33790: origin
                    (not_at_c_p9)

                    ; #54132: origin
                    (at_c_p6)

                    ; #13353: <==negation-removal== 54132 (pos)
                    (not (not_at_c_p6))

                    ; #92967: <==negation-removal== 33790 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33790: origin
                    (not_at_c_p9)

                    ; #76607: origin
                    (at_c_p7)

                    ; #11375: <==negation-removal== 76607 (pos)
                    (not (not_at_c_p7))

                    ; #92967: <==negation-removal== 33790 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33790: origin
                    (not_at_c_p9)

                    ; #60666: origin
                    (at_c_p8)

                    ; #48536: <==negation-removal== 60666 (pos)
                    (not (not_at_c_p8))

                    ; #92967: <==negation-removal== 33790 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33790: origin
                    (not_at_c_p9)

                    ; #92967: origin
                    (at_c_p9)

                    ; #33790: <==negation-removal== 92967 (pos)
                    (not (not_at_c_p9))

                    ; #92967: <==negation-removal== 33790 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #26628: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #33268: <==commonly_known== 57734 (neg)
                    (Pc_checked_p1)

                    ; #33844: origin
                    (checked_p1)

                    ; #40349: <==commonly_known== 57734 (neg)
                    (Pb_checked_p1)

                    ; #48467: <==commonly_known== 33844 (pos)
                    (Bc_checked_p1)

                    ; #50564: <==commonly_known== 33844 (pos)
                    (Ba_checked_p1)

                    ; #50829: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #56841: <==closure== 26628 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #62151: <==closure== 50829 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #69525: <==commonly_known== 33844 (pos)
                    (Bb_checked_p1)

                    ; #82389: <==commonly_known== 57734 (neg)
                    (Pa_checked_p1)

                    ; #10251: <==uncertain_firing== 26628 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #16703: <==negation-removal== 82389 (pos)
                    (not (Ba_not_checked_p1))

                    ; #39547: <==negation-removal== 50564 (pos)
                    (not (Pa_not_checked_p1))

                    ; #50249: <==negation-removal== 33268 (pos)
                    (not (Bc_not_checked_p1))

                    ; #51499: <==negation-removal== 26628 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #57734: <==negation-removal== 33844 (pos)
                    (not (not_checked_p1))

                    ; #59559: <==uncertain_firing== 62151 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #59560: <==uncertain_firing== 56841 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #60266: <==negation-removal== 50829 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #62240: <==negation-removal== 56841 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #63685: <==uncertain_firing== 50829 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #70446: <==negation-removal== 62151 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #88711: <==negation-removal== 40349 (pos)
                    (not (Bb_not_checked_p1))

                    ; #94750: <==negation-removal== 69525 (pos)
                    (not (Pb_not_checked_p1))

                    ; #99111: <==negation-removal== 48467 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #11899: <==closure== 85313 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #22252: <==commonly_known== 42857 (pos)
                    (Ba_checked_p2)

                    ; #37603: <==commonly_known== 89282 (neg)
                    (Pa_checked_p2)

                    ; #38146: <==commonly_known== 89282 (neg)
                    (Pb_checked_p2)

                    ; #42857: origin
                    (checked_p2)

                    ; #56290: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #61167: <==commonly_known== 42857 (pos)
                    (Bc_checked_p2)

                    ; #71475: <==commonly_known== 89282 (neg)
                    (Pc_checked_p2)

                    ; #74181: <==closure== 56290 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #85313: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #99348: <==commonly_known== 42857 (pos)
                    (Bb_checked_p2)

                    ; #14949: <==negation-removal== 74181 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #18776: <==negation-removal== 85313 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #21037: <==negation-removal== 99348 (pos)
                    (not (Pb_not_checked_p2))

                    ; #26244: <==negation-removal== 71475 (pos)
                    (not (Bc_not_checked_p2))

                    ; #33740: <==negation-removal== 56290 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35827: <==uncertain_firing== 56290 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #40869: <==negation-removal== 38146 (pos)
                    (not (Bb_not_checked_p2))

                    ; #65651: <==negation-removal== 22252 (pos)
                    (not (Pa_not_checked_p2))

                    ; #68051: <==negation-removal== 37603 (pos)
                    (not (Ba_not_checked_p2))

                    ; #76765: <==uncertain_firing== 74181 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #78491: <==negation-removal== 11899 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #83225: <==uncertain_firing== 85313 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #83923: <==uncertain_firing== 11899 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #85269: <==negation-removal== 61167 (pos)
                    (not (Pc_not_checked_p2))

                    ; #89282: <==negation-removal== 42857 (pos)
                    (not (not_checked_p2))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #15494: <==commonly_known== 91489 (pos)
                    (Bb_checked_p3)

                    ; #19937: <==commonly_known== 78365 (neg)
                    (Pc_checked_p3)

                    ; #28904: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #41458: <==closure== 44551 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #42816: <==commonly_known== 91489 (pos)
                    (Bc_checked_p3)

                    ; #44551: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #48660: <==commonly_known== 78365 (neg)
                    (Pb_checked_p3)

                    ; #67346: <==closure== 28904 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #71373: <==commonly_known== 91489 (pos)
                    (Ba_checked_p3)

                    ; #84484: <==commonly_known== 78365 (neg)
                    (Pa_checked_p3)

                    ; #91489: origin
                    (checked_p3)

                    ; #24319: <==uncertain_firing== 41458 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #24939: <==negation-removal== 15494 (pos)
                    (not (Pb_not_checked_p3))

                    ; #25406: <==negation-removal== 84484 (pos)
                    (not (Ba_not_checked_p3))

                    ; #26024: <==negation-removal== 41458 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #27606: <==negation-removal== 48660 (pos)
                    (not (Bb_not_checked_p3))

                    ; #37312: <==uncertain_firing== 44551 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #52497: <==negation-removal== 44551 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #56137: <==negation-removal== 19937 (pos)
                    (not (Bc_not_checked_p3))

                    ; #60035: <==uncertain_firing== 28904 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #61483: <==negation-removal== 42816 (pos)
                    (not (Pc_not_checked_p3))

                    ; #65586: <==negation-removal== 28904 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #76921: <==negation-removal== 67346 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #78365: <==negation-removal== 91489 (pos)
                    (not (not_checked_p3))

                    ; #80502: <==uncertain_firing== 67346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #83362: <==negation-removal== 71373 (pos)
                    (not (Pa_not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #24776: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #38587: <==commonly_known== 86262 (pos)
                    (Bb_checked_p4)

                    ; #42970: <==commonly_known== 92172 (neg)
                    (Pa_checked_p4)

                    ; #46831: <==closure== 84393 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #50635: <==commonly_known== 92172 (neg)
                    (Pc_checked_p4)

                    ; #75440: <==commonly_known== 92172 (neg)
                    (Pb_checked_p4)

                    ; #80607: <==closure== 24776 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #84393: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #85558: <==commonly_known== 86262 (pos)
                    (Ba_checked_p4)

                    ; #86262: origin
                    (checked_p4)

                    ; #87937: <==commonly_known== 86262 (pos)
                    (Bc_checked_p4)

                    ; #10408: <==uncertain_firing== 80607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #24190: <==negation-removal== 85558 (pos)
                    (not (Pa_not_checked_p4))

                    ; #28776: <==uncertain_firing== 46831 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #39346: <==negation-removal== 80607 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #40718: <==negation-removal== 42970 (pos)
                    (not (Ba_not_checked_p4))

                    ; #54728: <==negation-removal== 24776 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #56267: <==negation-removal== 84393 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #56311: <==uncertain_firing== 24776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #56544: <==negation-removal== 38587 (pos)
                    (not (Pb_not_checked_p4))

                    ; #70483: <==negation-removal== 46831 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #74459: <==negation-removal== 50635 (pos)
                    (not (Bc_not_checked_p4))

                    ; #80215: <==uncertain_firing== 84393 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #84176: <==negation-removal== 87937 (pos)
                    (not (Pc_not_checked_p4))

                    ; #85841: <==negation-removal== 75440 (pos)
                    (not (Bb_not_checked_p4))

                    ; #92172: <==negation-removal== 86262 (pos)
                    (not (not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #21046: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #23811: <==commonly_known== 51268 (pos)
                    (Bc_checked_p5)

                    ; #37482: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #47590: <==closure== 37482 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #51268: origin
                    (checked_p5)

                    ; #54120: <==commonly_known== 51268 (pos)
                    (Bb_checked_p5)

                    ; #69174: <==closure== 21046 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #72941: <==commonly_known== 58760 (neg)
                    (Pc_checked_p5)

                    ; #83611: <==commonly_known== 58760 (neg)
                    (Pa_checked_p5)

                    ; #89778: <==commonly_known== 51268 (pos)
                    (Ba_checked_p5)

                    ; #91718: <==commonly_known== 58760 (neg)
                    (Pb_checked_p5)

                    ; #16661: <==negation-removal== 83611 (pos)
                    (not (Ba_not_checked_p5))

                    ; #19084: <==negation-removal== 54120 (pos)
                    (not (Pb_not_checked_p5))

                    ; #25510: <==uncertain_firing== 47590 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #26596: <==negation-removal== 23811 (pos)
                    (not (Pc_not_checked_p5))

                    ; #26838: <==uncertain_firing== 21046 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #36330: <==negation-removal== 91718 (pos)
                    (not (Bb_not_checked_p5))

                    ; #41085: <==negation-removal== 89778 (pos)
                    (not (Pa_not_checked_p5))

                    ; #47412: <==negation-removal== 47590 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #52047: <==negation-removal== 69174 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #56999: <==uncertain_firing== 37482 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #58760: <==negation-removal== 51268 (pos)
                    (not (not_checked_p5))

                    ; #61244: <==negation-removal== 72941 (pos)
                    (not (Bc_not_checked_p5))

                    ; #63220: <==negation-removal== 37482 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #72440: <==uncertain_firing== 69174 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #77745: <==negation-removal== 21046 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #12873: <==commonly_known== 14777 (neg)
                    (Pa_checked_p6)

                    ; #20275: <==commonly_known== 14777 (neg)
                    (Pc_checked_p6)

                    ; #32553: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #35313: origin
                    (checked_p6)

                    ; #49727: <==closure== 55909 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #51540: <==closure== 32553 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #54160: <==commonly_known== 35313 (pos)
                    (Bb_checked_p6)

                    ; #55909: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #63630: <==commonly_known== 35313 (pos)
                    (Bc_checked_p6)

                    ; #68939: <==commonly_known== 35313 (pos)
                    (Ba_checked_p6)

                    ; #74329: <==commonly_known== 14777 (neg)
                    (Pb_checked_p6)

                    ; #12565: <==negation-removal== 68939 (pos)
                    (not (Pa_not_checked_p6))

                    ; #14777: <==negation-removal== 35313 (pos)
                    (not (not_checked_p6))

                    ; #16144: <==negation-removal== 20275 (pos)
                    (not (Bc_not_checked_p6))

                    ; #18198: <==uncertain_firing== 49727 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #23238: <==negation-removal== 55909 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #31319: <==negation-removal== 74329 (pos)
                    (not (Bb_not_checked_p6))

                    ; #32911: <==negation-removal== 63630 (pos)
                    (not (Pc_not_checked_p6))

                    ; #36133: <==negation-removal== 32553 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #43469: <==negation-removal== 54160 (pos)
                    (not (Pb_not_checked_p6))

                    ; #45895: <==uncertain_firing== 51540 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #48609: <==negation-removal== 12873 (pos)
                    (not (Ba_not_checked_p6))

                    ; #60104: <==uncertain_firing== 32553 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #72973: <==negation-removal== 49727 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #79685: <==negation-removal== 51540 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #91546: <==uncertain_firing== 55909 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #11009: <==closure== 87023 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #14101: <==commonly_known== 64632 (neg)
                    (Pc_checked_p7)

                    ; #16493: <==commonly_known== 41099 (pos)
                    (Ba_checked_p7)

                    ; #39687: <==closure== 44809 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #41099: origin
                    (checked_p7)

                    ; #41155: <==commonly_known== 41099 (pos)
                    (Bb_checked_p7)

                    ; #41226: <==commonly_known== 41099 (pos)
                    (Bc_checked_p7)

                    ; #44809: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #50897: <==commonly_known== 64632 (neg)
                    (Pb_checked_p7)

                    ; #75497: <==commonly_known== 64632 (neg)
                    (Pa_checked_p7)

                    ; #87023: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18745: <==negation-removal== 14101 (pos)
                    (not (Bc_not_checked_p7))

                    ; #19150: <==negation-removal== 44809 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #23902: <==negation-removal== 87023 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #24491: <==uncertain_firing== 39687 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #27812: <==uncertain_firing== 11009 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #33507: <==negation-removal== 50897 (pos)
                    (not (Bb_not_checked_p7))

                    ; #49092: <==negation-removal== 41155 (pos)
                    (not (Pb_not_checked_p7))

                    ; #52770: <==negation-removal== 39687 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #58215: <==uncertain_firing== 44809 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #64632: <==negation-removal== 41099 (pos)
                    (not (not_checked_p7))

                    ; #68553: <==negation-removal== 16493 (pos)
                    (not (Pa_not_checked_p7))

                    ; #76120: <==negation-removal== 75497 (pos)
                    (not (Ba_not_checked_p7))

                    ; #80789: <==negation-removal== 11009 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #86020: <==negation-removal== 41226 (pos)
                    (not (Pc_not_checked_p7))

                    ; #88268: <==uncertain_firing== 87023 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #13339: <==commonly_known== 56038 (pos)
                    (Bc_checked_p8)

                    ; #14291: <==commonly_known== 56038 (pos)
                    (Bb_checked_p8)

                    ; #14757: <==closure== 69862 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #21707: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #35506: <==closure== 21707 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #44024: <==commonly_known== 10384 (neg)
                    (Pa_checked_p8)

                    ; #50316: <==commonly_known== 10384 (neg)
                    (Pc_checked_p8)

                    ; #56038: origin
                    (checked_p8)

                    ; #61501: <==commonly_known== 56038 (pos)
                    (Ba_checked_p8)

                    ; #69862: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #75239: <==commonly_known== 10384 (neg)
                    (Pb_checked_p8)

                    ; #10384: <==negation-removal== 56038 (pos)
                    (not (not_checked_p8))

                    ; #16172: <==negation-removal== 50316 (pos)
                    (not (Bc_not_checked_p8))

                    ; #18962: <==negation-removal== 75239 (pos)
                    (not (Bb_not_checked_p8))

                    ; #21776: <==uncertain_firing== 69862 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #25051: <==negation-removal== 14757 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #31297: <==negation-removal== 13339 (pos)
                    (not (Pc_not_checked_p8))

                    ; #46057: <==uncertain_firing== 21707 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #50055: <==negation-removal== 69862 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #53264: <==negation-removal== 14291 (pos)
                    (not (Pb_not_checked_p8))

                    ; #56348: <==negation-removal== 61501 (pos)
                    (not (Pa_not_checked_p8))

                    ; #65750: <==negation-removal== 35506 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #66706: <==negation-removal== 44024 (pos)
                    (not (Ba_not_checked_p8))

                    ; #77626: <==uncertain_firing== 35506 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #84326: <==negation-removal== 21707 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #85677: <==uncertain_firing== 14757 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #21620: <==commonly_known== 83294 (neg)
                    (Pb_checked_p9)

                    ; #35136: <==commonly_known== 86629 (pos)
                    (Bb_checked_p9)

                    ; #35806: <==commonly_known== 86629 (pos)
                    (Ba_checked_p9)

                    ; #45169: <==closure== 47796 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #46426: <==commonly_known== 83294 (neg)
                    (Pa_checked_p9)

                    ; #47796: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #52742: <==commonly_known== 83294 (neg)
                    (Pc_checked_p9)

                    ; #73005: <==closure== 91479 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #85519: <==commonly_known== 86629 (pos)
                    (Bc_checked_p9)

                    ; #86629: origin
                    (checked_p9)

                    ; #91479: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #29411: <==negation-removal== 47796 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #29756: <==negation-removal== 85519 (pos)
                    (not (Pc_not_checked_p9))

                    ; #33459: <==negation-removal== 91479 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #35188: <==uncertain_firing== 73005 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #37953: <==negation-removal== 35136 (pos)
                    (not (Pb_not_checked_p9))

                    ; #40751: <==negation-removal== 73005 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #48189: <==negation-removal== 46426 (pos)
                    (not (Ba_not_checked_p9))

                    ; #61100: <==negation-removal== 45169 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #62227: <==uncertain_firing== 91479 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #65889: <==negation-removal== 35806 (pos)
                    (not (Pa_not_checked_p9))

                    ; #75235: <==uncertain_firing== 47796 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #80023: <==negation-removal== 52742 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82767: <==uncertain_firing== 45169 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #83294: <==negation-removal== 86629 (pos)
                    (not (not_checked_p9))

                    ; #85015: <==negation-removal== 21620 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #33268: <==commonly_known== 57734 (neg)
                    (Pc_checked_p1)

                    ; #33844: origin
                    (checked_p1)

                    ; #34192: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #35177: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #40349: <==commonly_known== 57734 (neg)
                    (Pb_checked_p1)

                    ; #48467: <==commonly_known== 33844 (pos)
                    (Bc_checked_p1)

                    ; #50564: <==commonly_known== 33844 (pos)
                    (Ba_checked_p1)

                    ; #53859: <==closure== 35177 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #69525: <==commonly_known== 33844 (pos)
                    (Bb_checked_p1)

                    ; #82389: <==commonly_known== 57734 (neg)
                    (Pa_checked_p1)

                    ; #82812: <==closure== 34192 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #16703: <==negation-removal== 82389 (pos)
                    (not (Ba_not_checked_p1))

                    ; #21800: <==negation-removal== 82812 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #32542: <==uncertain_firing== 35177 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #39547: <==negation-removal== 50564 (pos)
                    (not (Pa_not_checked_p1))

                    ; #44303: <==uncertain_firing== 34192 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #47857: <==negation-removal== 35177 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #49083: <==uncertain_firing== 82812 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #50249: <==negation-removal== 33268 (pos)
                    (not (Bc_not_checked_p1))

                    ; #57734: <==negation-removal== 33844 (pos)
                    (not (not_checked_p1))

                    ; #69553: <==uncertain_firing== 53859 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #83398: <==negation-removal== 34192 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #88711: <==negation-removal== 40349 (pos)
                    (not (Bb_not_checked_p1))

                    ; #91582: <==negation-removal== 53859 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #94750: <==negation-removal== 69525 (pos)
                    (not (Pb_not_checked_p1))

                    ; #99111: <==negation-removal== 48467 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #19251: <==closure== 66361 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #22252: <==commonly_known== 42857 (pos)
                    (Ba_checked_p2)

                    ; #35724: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #37238: <==closure== 35724 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #37603: <==commonly_known== 89282 (neg)
                    (Pa_checked_p2)

                    ; #38146: <==commonly_known== 89282 (neg)
                    (Pb_checked_p2)

                    ; #42857: origin
                    (checked_p2)

                    ; #61167: <==commonly_known== 42857 (pos)
                    (Bc_checked_p2)

                    ; #66361: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #71475: <==commonly_known== 89282 (neg)
                    (Pc_checked_p2)

                    ; #99348: <==commonly_known== 42857 (pos)
                    (Bb_checked_p2)

                    ; #18043: <==uncertain_firing== 35724 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #21037: <==negation-removal== 99348 (pos)
                    (not (Pb_not_checked_p2))

                    ; #26244: <==negation-removal== 71475 (pos)
                    (not (Bc_not_checked_p2))

                    ; #31193: <==uncertain_firing== 66361 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #34986: <==uncertain_firing== 37238 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #40869: <==negation-removal== 38146 (pos)
                    (not (Bb_not_checked_p2))

                    ; #46902: <==negation-removal== 19251 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #56777: <==uncertain_firing== 19251 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #62494: <==negation-removal== 37238 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #65651: <==negation-removal== 22252 (pos)
                    (not (Pa_not_checked_p2))

                    ; #68051: <==negation-removal== 37603 (pos)
                    (not (Ba_not_checked_p2))

                    ; #73598: <==negation-removal== 35724 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85269: <==negation-removal== 61167 (pos)
                    (not (Pc_not_checked_p2))

                    ; #87091: <==negation-removal== 66361 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #89282: <==negation-removal== 42857 (pos)
                    (not (not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #15494: <==commonly_known== 91489 (pos)
                    (Bb_checked_p3)

                    ; #18518: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #19937: <==commonly_known== 78365 (neg)
                    (Pc_checked_p3)

                    ; #35184: <==closure== 18518 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #42816: <==commonly_known== 91489 (pos)
                    (Bc_checked_p3)

                    ; #48660: <==commonly_known== 78365 (neg)
                    (Pb_checked_p3)

                    ; #55942: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #58449: <==closure== 55942 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #71373: <==commonly_known== 91489 (pos)
                    (Ba_checked_p3)

                    ; #84484: <==commonly_known== 78365 (neg)
                    (Pa_checked_p3)

                    ; #91489: origin
                    (checked_p3)

                    ; #18772: <==uncertain_firing== 55942 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #20248: <==uncertain_firing== 18518 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #24939: <==negation-removal== 15494 (pos)
                    (not (Pb_not_checked_p3))

                    ; #25406: <==negation-removal== 84484 (pos)
                    (not (Ba_not_checked_p3))

                    ; #27606: <==negation-removal== 48660 (pos)
                    (not (Bb_not_checked_p3))

                    ; #28758: <==negation-removal== 58449 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #34788: <==negation-removal== 18518 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #35767: <==uncertain_firing== 58449 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #56137: <==negation-removal== 19937 (pos)
                    (not (Bc_not_checked_p3))

                    ; #57582: <==uncertain_firing== 35184 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #61483: <==negation-removal== 42816 (pos)
                    (not (Pc_not_checked_p3))

                    ; #73159: <==negation-removal== 55942 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #77674: <==negation-removal== 35184 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #78365: <==negation-removal== 91489 (pos)
                    (not (not_checked_p3))

                    ; #83362: <==negation-removal== 71373 (pos)
                    (not (Pa_not_checked_p3))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17814: <==closure== 32524 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #32524: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #38587: <==commonly_known== 86262 (pos)
                    (Bb_checked_p4)

                    ; #42970: <==commonly_known== 92172 (neg)
                    (Pa_checked_p4)

                    ; #50635: <==commonly_known== 92172 (neg)
                    (Pc_checked_p4)

                    ; #56231: <==closure== 83115 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #75440: <==commonly_known== 92172 (neg)
                    (Pb_checked_p4)

                    ; #83115: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #85558: <==commonly_known== 86262 (pos)
                    (Ba_checked_p4)

                    ; #86262: origin
                    (checked_p4)

                    ; #87937: <==commonly_known== 86262 (pos)
                    (Bc_checked_p4)

                    ; #24190: <==negation-removal== 85558 (pos)
                    (not (Pa_not_checked_p4))

                    ; #31510: <==uncertain_firing== 56231 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #33548: <==negation-removal== 32524 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #40718: <==negation-removal== 42970 (pos)
                    (not (Ba_not_checked_p4))

                    ; #50551: <==negation-removal== 17814 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #56544: <==negation-removal== 38587 (pos)
                    (not (Pb_not_checked_p4))

                    ; #56947: <==negation-removal== 83115 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #60700: <==negation-removal== 56231 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #62643: <==uncertain_firing== 17814 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #74459: <==negation-removal== 50635 (pos)
                    (not (Bc_not_checked_p4))

                    ; #84176: <==negation-removal== 87937 (pos)
                    (not (Pc_not_checked_p4))

                    ; #85841: <==negation-removal== 75440 (pos)
                    (not (Bb_not_checked_p4))

                    ; #87398: <==uncertain_firing== 83115 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #89480: <==uncertain_firing== 32524 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #92172: <==negation-removal== 86262 (pos)
                    (not (not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #23811: <==commonly_known== 51268 (pos)
                    (Bc_checked_p5)

                    ; #36780: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #47022: <==closure== 83644 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #51268: origin
                    (checked_p5)

                    ; #54120: <==commonly_known== 51268 (pos)
                    (Bb_checked_p5)

                    ; #60511: <==closure== 36780 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #72941: <==commonly_known== 58760 (neg)
                    (Pc_checked_p5)

                    ; #83611: <==commonly_known== 58760 (neg)
                    (Pa_checked_p5)

                    ; #83644: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #89778: <==commonly_known== 51268 (pos)
                    (Ba_checked_p5)

                    ; #91718: <==commonly_known== 58760 (neg)
                    (Pb_checked_p5)

                    ; #16661: <==negation-removal== 83611 (pos)
                    (not (Ba_not_checked_p5))

                    ; #19084: <==negation-removal== 54120 (pos)
                    (not (Pb_not_checked_p5))

                    ; #21758: <==negation-removal== 60511 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #22546: <==negation-removal== 36780 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #26596: <==negation-removal== 23811 (pos)
                    (not (Pc_not_checked_p5))

                    ; #26876: <==uncertain_firing== 47022 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #27260: <==uncertain_firing== 83644 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #32351: <==uncertain_firing== 36780 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #36330: <==negation-removal== 91718 (pos)
                    (not (Bb_not_checked_p5))

                    ; #41085: <==negation-removal== 89778 (pos)
                    (not (Pa_not_checked_p5))

                    ; #55257: <==negation-removal== 83644 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #58760: <==negation-removal== 51268 (pos)
                    (not (not_checked_p5))

                    ; #61244: <==negation-removal== 72941 (pos)
                    (not (Bc_not_checked_p5))

                    ; #65567: <==uncertain_firing== 60511 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #83395: <==negation-removal== 47022 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12873: <==commonly_known== 14777 (neg)
                    (Pa_checked_p6)

                    ; #14086: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #20275: <==commonly_known== 14777 (neg)
                    (Pc_checked_p6)

                    ; #35313: origin
                    (checked_p6)

                    ; #40208: <==closure== 79100 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #54160: <==commonly_known== 35313 (pos)
                    (Bb_checked_p6)

                    ; #63630: <==commonly_known== 35313 (pos)
                    (Bc_checked_p6)

                    ; #68939: <==commonly_known== 35313 (pos)
                    (Ba_checked_p6)

                    ; #70520: <==closure== 14086 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #74329: <==commonly_known== 14777 (neg)
                    (Pb_checked_p6)

                    ; #79100: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #12565: <==negation-removal== 68939 (pos)
                    (not (Pa_not_checked_p6))

                    ; #14777: <==negation-removal== 35313 (pos)
                    (not (not_checked_p6))

                    ; #16144: <==negation-removal== 20275 (pos)
                    (not (Bc_not_checked_p6))

                    ; #17317: <==negation-removal== 70520 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #31319: <==negation-removal== 74329 (pos)
                    (not (Bb_not_checked_p6))

                    ; #32911: <==negation-removal== 63630 (pos)
                    (not (Pc_not_checked_p6))

                    ; #36847: <==negation-removal== 14086 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #39171: <==uncertain_firing== 14086 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #43469: <==negation-removal== 54160 (pos)
                    (not (Pb_not_checked_p6))

                    ; #48609: <==negation-removal== 12873 (pos)
                    (not (Ba_not_checked_p6))

                    ; #52017: <==uncertain_firing== 70520 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #64998: <==uncertain_firing== 40208 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #67566: <==negation-removal== 79100 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #69575: <==negation-removal== 40208 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #79609: <==uncertain_firing== 79100 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #14101: <==commonly_known== 64632 (neg)
                    (Pc_checked_p7)

                    ; #16493: <==commonly_known== 41099 (pos)
                    (Ba_checked_p7)

                    ; #41099: origin
                    (checked_p7)

                    ; #41155: <==commonly_known== 41099 (pos)
                    (Bb_checked_p7)

                    ; #41226: <==commonly_known== 41099 (pos)
                    (Bc_checked_p7)

                    ; #42937: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #50897: <==commonly_known== 64632 (neg)
                    (Pb_checked_p7)

                    ; #55972: <==closure== 42937 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #74079: <==closure== 75722 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #75497: <==commonly_known== 64632 (neg)
                    (Pa_checked_p7)

                    ; #75722: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #17105: <==uncertain_firing== 42937 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #18745: <==negation-removal== 14101 (pos)
                    (not (Bc_not_checked_p7))

                    ; #33507: <==negation-removal== 50897 (pos)
                    (not (Bb_not_checked_p7))

                    ; #34723: <==negation-removal== 75722 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #43133: <==negation-removal== 42937 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #45484: <==negation-removal== 74079 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #48004: <==negation-removal== 55972 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #48880: <==uncertain_firing== 74079 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #49092: <==negation-removal== 41155 (pos)
                    (not (Pb_not_checked_p7))

                    ; #64632: <==negation-removal== 41099 (pos)
                    (not (not_checked_p7))

                    ; #68553: <==negation-removal== 16493 (pos)
                    (not (Pa_not_checked_p7))

                    ; #72714: <==uncertain_firing== 55972 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #76120: <==negation-removal== 75497 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79040: <==uncertain_firing== 75722 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #86020: <==negation-removal== 41226 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #13339: <==commonly_known== 56038 (pos)
                    (Bc_checked_p8)

                    ; #14291: <==commonly_known== 56038 (pos)
                    (Bb_checked_p8)

                    ; #28734: <==closure== 53551 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #29760: <==closure== 78072 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #44024: <==commonly_known== 10384 (neg)
                    (Pa_checked_p8)

                    ; #50316: <==commonly_known== 10384 (neg)
                    (Pc_checked_p8)

                    ; #53551: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #56038: origin
                    (checked_p8)

                    ; #61501: <==commonly_known== 56038 (pos)
                    (Ba_checked_p8)

                    ; #75239: <==commonly_known== 10384 (neg)
                    (Pb_checked_p8)

                    ; #78072: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #10384: <==negation-removal== 56038 (pos)
                    (not (not_checked_p8))

                    ; #16172: <==negation-removal== 50316 (pos)
                    (not (Bc_not_checked_p8))

                    ; #18071: <==uncertain_firing== 53551 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #18962: <==negation-removal== 75239 (pos)
                    (not (Bb_not_checked_p8))

                    ; #31297: <==negation-removal== 13339 (pos)
                    (not (Pc_not_checked_p8))

                    ; #31928: <==negation-removal== 29760 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #45613: <==uncertain_firing== 29760 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #47795: <==uncertain_firing== 28734 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #53264: <==negation-removal== 14291 (pos)
                    (not (Pb_not_checked_p8))

                    ; #56348: <==negation-removal== 61501 (pos)
                    (not (Pa_not_checked_p8))

                    ; #57828: <==negation-removal== 53551 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #66706: <==negation-removal== 44024 (pos)
                    (not (Ba_not_checked_p8))

                    ; #73518: <==negation-removal== 78072 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #74078: <==uncertain_firing== 78072 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #77927: <==negation-removal== 28734 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15312: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #15727: <==closure== 15312 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #20314: <==closure== 37008 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #21620: <==commonly_known== 83294 (neg)
                    (Pb_checked_p9)

                    ; #35136: <==commonly_known== 86629 (pos)
                    (Bb_checked_p9)

                    ; #35806: <==commonly_known== 86629 (pos)
                    (Ba_checked_p9)

                    ; #37008: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #46426: <==commonly_known== 83294 (neg)
                    (Pa_checked_p9)

                    ; #52742: <==commonly_known== 83294 (neg)
                    (Pc_checked_p9)

                    ; #85519: <==commonly_known== 86629 (pos)
                    (Bc_checked_p9)

                    ; #86629: origin
                    (checked_p9)

                    ; #15529: <==negation-removal== 20314 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #17518: <==uncertain_firing== 15312 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #29756: <==negation-removal== 85519 (pos)
                    (not (Pc_not_checked_p9))

                    ; #35556: <==negation-removal== 37008 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #37953: <==negation-removal== 35136 (pos)
                    (not (Pb_not_checked_p9))

                    ; #38902: <==negation-removal== 15312 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #39680: <==uncertain_firing== 20314 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #48189: <==negation-removal== 46426 (pos)
                    (not (Ba_not_checked_p9))

                    ; #50530: <==negation-removal== 15727 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #62416: <==uncertain_firing== 15727 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #64888: <==uncertain_firing== 37008 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #65889: <==negation-removal== 35806 (pos)
                    (not (Pa_not_checked_p9))

                    ; #80023: <==negation-removal== 52742 (pos)
                    (not (Bc_not_checked_p9))

                    ; #83294: <==negation-removal== 86629 (pos)
                    (not (not_checked_p9))

                    ; #85015: <==negation-removal== 21620 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #32597: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #33268: <==commonly_known== 57734 (neg)
                    (Pc_checked_p1)

                    ; #33844: origin
                    (checked_p1)

                    ; #40349: <==commonly_known== 57734 (neg)
                    (Pb_checked_p1)

                    ; #48467: <==commonly_known== 33844 (pos)
                    (Bc_checked_p1)

                    ; #48738: <==closure== 32597 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #50564: <==commonly_known== 33844 (pos)
                    (Ba_checked_p1)

                    ; #69148: <==closure== 89847 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #69525: <==commonly_known== 33844 (pos)
                    (Bb_checked_p1)

                    ; #82389: <==commonly_known== 57734 (neg)
                    (Pa_checked_p1)

                    ; #89847: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #16703: <==negation-removal== 82389 (pos)
                    (not (Ba_not_checked_p1))

                    ; #37623: <==negation-removal== 48738 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #39547: <==negation-removal== 50564 (pos)
                    (not (Pa_not_checked_p1))

                    ; #50249: <==negation-removal== 33268 (pos)
                    (not (Bc_not_checked_p1))

                    ; #50510: <==uncertain_firing== 48738 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #55604: <==uncertain_firing== 69148 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #56887: <==uncertain_firing== 89847 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #57734: <==negation-removal== 33844 (pos)
                    (not (not_checked_p1))

                    ; #64435: <==uncertain_firing== 32597 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #69785: <==negation-removal== 69148 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #80115: <==negation-removal== 89847 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #88711: <==negation-removal== 40349 (pos)
                    (not (Bb_not_checked_p1))

                    ; #88883: <==negation-removal== 32597 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #94750: <==negation-removal== 69525 (pos)
                    (not (Pb_not_checked_p1))

                    ; #99111: <==negation-removal== 48467 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #11711: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #18508: <==closure== 11711 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #22252: <==commonly_known== 42857 (pos)
                    (Ba_checked_p2)

                    ; #37603: <==commonly_known== 89282 (neg)
                    (Pa_checked_p2)

                    ; #38146: <==commonly_known== 89282 (neg)
                    (Pb_checked_p2)

                    ; #42857: origin
                    (checked_p2)

                    ; #61167: <==commonly_known== 42857 (pos)
                    (Bc_checked_p2)

                    ; #67339: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #68134: <==closure== 67339 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #71475: <==commonly_known== 89282 (neg)
                    (Pc_checked_p2)

                    ; #99348: <==commonly_known== 42857 (pos)
                    (Bb_checked_p2)

                    ; #16473: <==negation-removal== 67339 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #18110: <==uncertain_firing== 68134 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #21037: <==negation-removal== 99348 (pos)
                    (not (Pb_not_checked_p2))

                    ; #26244: <==negation-removal== 71475 (pos)
                    (not (Bc_not_checked_p2))

                    ; #40869: <==negation-removal== 38146 (pos)
                    (not (Bb_not_checked_p2))

                    ; #44949: <==uncertain_firing== 18508 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #51809: <==negation-removal== 11711 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #65651: <==negation-removal== 22252 (pos)
                    (not (Pa_not_checked_p2))

                    ; #66691: <==negation-removal== 18508 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #68051: <==negation-removal== 37603 (pos)
                    (not (Ba_not_checked_p2))

                    ; #70897: <==uncertain_firing== 67339 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #78914: <==negation-removal== 68134 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #85269: <==negation-removal== 61167 (pos)
                    (not (Pc_not_checked_p2))

                    ; #89282: <==negation-removal== 42857 (pos)
                    (not (not_checked_p2))

                    ; #90708: <==uncertain_firing== 11711 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #13831: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #15494: <==commonly_known== 91489 (pos)
                    (Bb_checked_p3)

                    ; #19937: <==commonly_known== 78365 (neg)
                    (Pc_checked_p3)

                    ; #27031: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #42816: <==commonly_known== 91489 (pos)
                    (Bc_checked_p3)

                    ; #45578: <==closure== 13831 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #48660: <==commonly_known== 78365 (neg)
                    (Pb_checked_p3)

                    ; #71373: <==commonly_known== 91489 (pos)
                    (Ba_checked_p3)

                    ; #76961: <==closure== 27031 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #84484: <==commonly_known== 78365 (neg)
                    (Pa_checked_p3)

                    ; #91489: origin
                    (checked_p3)

                    ; #20871: <==uncertain_firing== 76961 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #24939: <==negation-removal== 15494 (pos)
                    (not (Pb_not_checked_p3))

                    ; #25406: <==negation-removal== 84484 (pos)
                    (not (Ba_not_checked_p3))

                    ; #25997: <==negation-removal== 45578 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #27606: <==negation-removal== 48660 (pos)
                    (not (Bb_not_checked_p3))

                    ; #32875: <==uncertain_firing== 27031 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #34564: <==uncertain_firing== 45578 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #42745: <==negation-removal== 13831 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #56137: <==negation-removal== 19937 (pos)
                    (not (Bc_not_checked_p3))

                    ; #58349: <==uncertain_firing== 13831 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #61483: <==negation-removal== 42816 (pos)
                    (not (Pc_not_checked_p3))

                    ; #68709: <==negation-removal== 76961 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #78365: <==negation-removal== 91489 (pos)
                    (not (not_checked_p3))

                    ; #83362: <==negation-removal== 71373 (pos)
                    (not (Pa_not_checked_p3))

                    ; #86479: <==negation-removal== 27031 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32278: <==closure== 49399 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #38587: <==commonly_known== 86262 (pos)
                    (Bb_checked_p4)

                    ; #42970: <==commonly_known== 92172 (neg)
                    (Pa_checked_p4)

                    ; #43136: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #49399: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #50635: <==commonly_known== 92172 (neg)
                    (Pc_checked_p4)

                    ; #60574: <==closure== 43136 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #75440: <==commonly_known== 92172 (neg)
                    (Pb_checked_p4)

                    ; #85558: <==commonly_known== 86262 (pos)
                    (Ba_checked_p4)

                    ; #86262: origin
                    (checked_p4)

                    ; #87937: <==commonly_known== 86262 (pos)
                    (Bc_checked_p4)

                    ; #12653: <==uncertain_firing== 43136 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #24190: <==negation-removal== 85558 (pos)
                    (not (Pa_not_checked_p4))

                    ; #29558: <==negation-removal== 43136 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #31387: <==negation-removal== 32278 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #40718: <==negation-removal== 42970 (pos)
                    (not (Ba_not_checked_p4))

                    ; #45390: <==negation-removal== 49399 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #53992: <==uncertain_firing== 60574 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #56544: <==negation-removal== 38587 (pos)
                    (not (Pb_not_checked_p4))

                    ; #58997: <==negation-removal== 60574 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #74459: <==negation-removal== 50635 (pos)
                    (not (Bc_not_checked_p4))

                    ; #77747: <==uncertain_firing== 49399 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #84176: <==negation-removal== 87937 (pos)
                    (not (Pc_not_checked_p4))

                    ; #85841: <==negation-removal== 75440 (pos)
                    (not (Bb_not_checked_p4))

                    ; #87957: <==uncertain_firing== 32278 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #92172: <==negation-removal== 86262 (pos)
                    (not (not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #23811: <==commonly_known== 51268 (pos)
                    (Bc_checked_p5)

                    ; #45624: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #45665: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #51268: origin
                    (checked_p5)

                    ; #54120: <==commonly_known== 51268 (pos)
                    (Bb_checked_p5)

                    ; #72941: <==commonly_known== 58760 (neg)
                    (Pc_checked_p5)

                    ; #76645: <==closure== 45624 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #83611: <==commonly_known== 58760 (neg)
                    (Pa_checked_p5)

                    ; #89778: <==commonly_known== 51268 (pos)
                    (Ba_checked_p5)

                    ; #90861: <==closure== 45665 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #91718: <==commonly_known== 58760 (neg)
                    (Pb_checked_p5)

                    ; #10711: <==negation-removal== 90861 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #16661: <==negation-removal== 83611 (pos)
                    (not (Ba_not_checked_p5))

                    ; #17581: <==uncertain_firing== 45624 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #19084: <==negation-removal== 54120 (pos)
                    (not (Pb_not_checked_p5))

                    ; #26596: <==negation-removal== 23811 (pos)
                    (not (Pc_not_checked_p5))

                    ; #36330: <==negation-removal== 91718 (pos)
                    (not (Bb_not_checked_p5))

                    ; #37532: <==negation-removal== 45665 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #41085: <==negation-removal== 89778 (pos)
                    (not (Pa_not_checked_p5))

                    ; #41355: <==uncertain_firing== 76645 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #54723: <==negation-removal== 45624 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #58760: <==negation-removal== 51268 (pos)
                    (not (not_checked_p5))

                    ; #61081: <==uncertain_firing== 45665 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #61244: <==negation-removal== 72941 (pos)
                    (not (Bc_not_checked_p5))

                    ; #71109: <==uncertain_firing== 90861 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #77671: <==negation-removal== 76645 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #12873: <==commonly_known== 14777 (neg)
                    (Pa_checked_p6)

                    ; #20275: <==commonly_known== 14777 (neg)
                    (Pc_checked_p6)

                    ; #35313: origin
                    (checked_p6)

                    ; #49045: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #53471: <==closure== 49045 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #54160: <==commonly_known== 35313 (pos)
                    (Bb_checked_p6)

                    ; #58538: <==closure== 79968 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #63630: <==commonly_known== 35313 (pos)
                    (Bc_checked_p6)

                    ; #68939: <==commonly_known== 35313 (pos)
                    (Ba_checked_p6)

                    ; #74329: <==commonly_known== 14777 (neg)
                    (Pb_checked_p6)

                    ; #79968: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #10952: <==negation-removal== 53471 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #12565: <==negation-removal== 68939 (pos)
                    (not (Pa_not_checked_p6))

                    ; #14777: <==negation-removal== 35313 (pos)
                    (not (not_checked_p6))

                    ; #16144: <==negation-removal== 20275 (pos)
                    (not (Bc_not_checked_p6))

                    ; #16215: <==uncertain_firing== 53471 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #27792: <==negation-removal== 79968 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #31319: <==negation-removal== 74329 (pos)
                    (not (Bb_not_checked_p6))

                    ; #32127: <==negation-removal== 49045 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #32911: <==negation-removal== 63630 (pos)
                    (not (Pc_not_checked_p6))

                    ; #43469: <==negation-removal== 54160 (pos)
                    (not (Pb_not_checked_p6))

                    ; #47331: <==uncertain_firing== 79968 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #48609: <==negation-removal== 12873 (pos)
                    (not (Ba_not_checked_p6))

                    ; #70372: <==negation-removal== 58538 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #77894: <==uncertain_firing== 58538 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #87286: <==uncertain_firing== 49045 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #12384: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #14101: <==commonly_known== 64632 (neg)
                    (Pc_checked_p7)

                    ; #16493: <==commonly_known== 41099 (pos)
                    (Ba_checked_p7)

                    ; #41099: origin
                    (checked_p7)

                    ; #41155: <==commonly_known== 41099 (pos)
                    (Bb_checked_p7)

                    ; #41226: <==commonly_known== 41099 (pos)
                    (Bc_checked_p7)

                    ; #50897: <==commonly_known== 64632 (neg)
                    (Pb_checked_p7)

                    ; #59606: <==closure== 12384 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #61689: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #69875: <==closure== 61689 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #75497: <==commonly_known== 64632 (neg)
                    (Pa_checked_p7)

                    ; #11073: <==negation-removal== 59606 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #18745: <==negation-removal== 14101 (pos)
                    (not (Bc_not_checked_p7))

                    ; #26013: <==negation-removal== 12384 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #33507: <==negation-removal== 50897 (pos)
                    (not (Bb_not_checked_p7))

                    ; #49092: <==negation-removal== 41155 (pos)
                    (not (Pb_not_checked_p7))

                    ; #54914: <==uncertain_firing== 59606 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #58513: <==negation-removal== 69875 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #58891: <==negation-removal== 61689 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #63287: <==uncertain_firing== 12384 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #64632: <==negation-removal== 41099 (pos)
                    (not (not_checked_p7))

                    ; #68164: <==uncertain_firing== 69875 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #68553: <==negation-removal== 16493 (pos)
                    (not (Pa_not_checked_p7))

                    ; #76120: <==negation-removal== 75497 (pos)
                    (not (Ba_not_checked_p7))

                    ; #82028: <==uncertain_firing== 61689 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #86020: <==negation-removal== 41226 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #13339: <==commonly_known== 56038 (pos)
                    (Bc_checked_p8)

                    ; #14291: <==commonly_known== 56038 (pos)
                    (Bb_checked_p8)

                    ; #20383: <==closure== 68700 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #25968: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #27958: <==closure== 25968 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #44024: <==commonly_known== 10384 (neg)
                    (Pa_checked_p8)

                    ; #50316: <==commonly_known== 10384 (neg)
                    (Pc_checked_p8)

                    ; #56038: origin
                    (checked_p8)

                    ; #61501: <==commonly_known== 56038 (pos)
                    (Ba_checked_p8)

                    ; #68700: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #75239: <==commonly_known== 10384 (neg)
                    (Pb_checked_p8)

                    ; #10384: <==negation-removal== 56038 (pos)
                    (not (not_checked_p8))

                    ; #12221: <==uncertain_firing== 20383 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #16172: <==negation-removal== 50316 (pos)
                    (not (Bc_not_checked_p8))

                    ; #18962: <==negation-removal== 75239 (pos)
                    (not (Bb_not_checked_p8))

                    ; #30000: <==uncertain_firing== 25968 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #31297: <==negation-removal== 13339 (pos)
                    (not (Pc_not_checked_p8))

                    ; #49105: <==uncertain_firing== 27958 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #49461: <==negation-removal== 25968 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #53264: <==negation-removal== 14291 (pos)
                    (not (Pb_not_checked_p8))

                    ; #56348: <==negation-removal== 61501 (pos)
                    (not (Pa_not_checked_p8))

                    ; #63547: <==negation-removal== 68700 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #66197: <==negation-removal== 27958 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #66706: <==negation-removal== 44024 (pos)
                    (not (Ba_not_checked_p8))

                    ; #73083: <==negation-removal== 20383 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #87357: <==uncertain_firing== 68700 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #19991: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #21620: <==commonly_known== 83294 (neg)
                    (Pb_checked_p9)

                    ; #35136: <==commonly_known== 86629 (pos)
                    (Bb_checked_p9)

                    ; #35806: <==commonly_known== 86629 (pos)
                    (Ba_checked_p9)

                    ; #42458: <==closure== 56258 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #46426: <==commonly_known== 83294 (neg)
                    (Pa_checked_p9)

                    ; #52742: <==commonly_known== 83294 (neg)
                    (Pc_checked_p9)

                    ; #56258: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #58274: <==closure== 19991 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #85519: <==commonly_known== 86629 (pos)
                    (Bc_checked_p9)

                    ; #86629: origin
                    (checked_p9)

                    ; #23741: <==uncertain_firing== 56258 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #23926: <==uncertain_firing== 19991 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29756: <==negation-removal== 85519 (pos)
                    (not (Pc_not_checked_p9))

                    ; #37953: <==negation-removal== 35136 (pos)
                    (not (Pb_not_checked_p9))

                    ; #38504: <==negation-removal== 42458 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #39426: <==negation-removal== 58274 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #47902: <==uncertain_firing== 42458 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #48189: <==negation-removal== 46426 (pos)
                    (not (Ba_not_checked_p9))

                    ; #56308: <==uncertain_firing== 58274 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #65889: <==negation-removal== 35806 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73214: <==negation-removal== 56258 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #80023: <==negation-removal== 52742 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82083: <==negation-removal== 19991 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #83294: <==negation-removal== 86629 (pos)
                    (not (not_checked_p9))

                    ; #85015: <==negation-removal== 21620 (pos)
                    (not (Bb_not_checked_p9))))

)