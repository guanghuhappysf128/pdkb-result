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
                    ; #22924: <==closure== 24371 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #24371: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #24636: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #51681: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #89632: <==closure== 51681 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #89666: <==closure== 24636 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #18362: <==negation-removal== 89632 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #19486: <==uncertain_firing== 24636 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #30602: <==negation-removal== 51681 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #41166: <==uncertain_firing== 22924 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #43211: <==negation-removal== 24636 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #44083: <==negation-removal== 89666 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #53803: <==negation-removal== 22924 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #66930: <==uncertain_firing== 24371 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #76103: <==negation-removal== 24371 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #79038: <==uncertain_firing== 89666 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #80589: <==uncertain_firing== 51681 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #90070: <==uncertain_firing== 89632 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #22924: <==closure== 24371 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #24371: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #24636: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #51681: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #89632: <==closure== 51681 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #89666: <==closure== 24636 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #18362: <==negation-removal== 89632 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #19486: <==uncertain_firing== 24636 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #30602: <==negation-removal== 51681 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #41166: <==uncertain_firing== 22924 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #43211: <==negation-removal== 24636 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #44083: <==negation-removal== 89666 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #53803: <==negation-removal== 22924 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #66930: <==uncertain_firing== 24371 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #76103: <==negation-removal== 24371 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #79038: <==uncertain_firing== 89666 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #80589: <==uncertain_firing== 51681 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #90070: <==uncertain_firing== 89632 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #22924: <==closure== 24371 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #24371: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #24636: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #51681: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #89632: <==closure== 51681 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #89666: <==closure== 24636 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #18362: <==negation-removal== 89632 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #19486: <==uncertain_firing== 24636 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #30602: <==negation-removal== 51681 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #41166: <==uncertain_firing== 22924 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #43211: <==negation-removal== 24636 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #44083: <==negation-removal== 89666 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #53803: <==negation-removal== 22924 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #66930: <==uncertain_firing== 24371 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #76103: <==negation-removal== 24371 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #79038: <==uncertain_firing== 89666 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #80589: <==uncertain_firing== 51681 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #90070: <==uncertain_firing== 89632 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #17247: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #47958: <==closure== 48598 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #48598: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #65531: <==closure== 72198 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #71683: <==closure== 17247 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #72198: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #12729: <==uncertain_firing== 65531 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #25214: <==uncertain_firing== 72198 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #27752: <==negation-removal== 65531 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #27903: <==negation-removal== 71683 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #36185: <==negation-removal== 17247 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #45192: <==negation-removal== 47958 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #57905: <==uncertain_firing== 47958 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #60239: <==negation-removal== 48598 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #60874: <==uncertain_firing== 17247 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #63071: <==uncertain_firing== 71683 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #83165: <==negation-removal== 72198 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #84061: <==uncertain_firing== 48598 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #17247: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #47958: <==closure== 48598 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #48598: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #65531: <==closure== 72198 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #71683: <==closure== 17247 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #72198: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #12729: <==uncertain_firing== 65531 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #25214: <==uncertain_firing== 72198 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #27752: <==negation-removal== 65531 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #27903: <==negation-removal== 71683 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #36185: <==negation-removal== 17247 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #45192: <==negation-removal== 47958 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #57905: <==uncertain_firing== 47958 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #60239: <==negation-removal== 48598 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #60874: <==uncertain_firing== 17247 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #63071: <==uncertain_firing== 71683 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #83165: <==negation-removal== 72198 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #84061: <==uncertain_firing== 48598 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #17247: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #47958: <==closure== 48598 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #48598: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #65531: <==closure== 72198 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #71683: <==closure== 17247 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #72198: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #12729: <==uncertain_firing== 65531 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #25214: <==uncertain_firing== 72198 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #27752: <==negation-removal== 65531 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #27903: <==negation-removal== 71683 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #36185: <==negation-removal== 17247 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #45192: <==negation-removal== 47958 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #57905: <==uncertain_firing== 47958 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #60239: <==negation-removal== 48598 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #60874: <==uncertain_firing== 17247 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #63071: <==uncertain_firing== 71683 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #83165: <==negation-removal== 72198 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #84061: <==uncertain_firing== 48598 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #28883: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #39603: <==closure== 28883 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #40380: <==closure== 79832 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #46034: <==closure== 58436 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #58436: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #79832: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #22103: <==uncertain_firing== 58436 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #27666: <==negation-removal== 39603 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #31906: <==negation-removal== 40380 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #41808: <==uncertain_firing== 46034 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #51171: <==negation-removal== 28883 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #59764: <==negation-removal== 79832 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #61234: <==uncertain_firing== 79832 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #63319: <==negation-removal== 58436 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #66265: <==uncertain_firing== 39603 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #66644: <==uncertain_firing== 40380 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #68352: <==uncertain_firing== 28883 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #76755: <==negation-removal== 46034 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #28883: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #39603: <==closure== 28883 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #40380: <==closure== 79832 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #46034: <==closure== 58436 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #58436: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #79832: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #22103: <==uncertain_firing== 58436 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #27666: <==negation-removal== 39603 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #31906: <==negation-removal== 40380 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #41808: <==uncertain_firing== 46034 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #51171: <==negation-removal== 28883 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #59764: <==negation-removal== 79832 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #61234: <==uncertain_firing== 79832 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #63319: <==negation-removal== 58436 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #66265: <==uncertain_firing== 39603 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #66644: <==uncertain_firing== 40380 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #68352: <==uncertain_firing== 28883 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #76755: <==negation-removal== 46034 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #28883: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #39603: <==closure== 28883 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #40380: <==closure== 79832 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #46034: <==closure== 58436 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #58436: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #79832: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #22103: <==uncertain_firing== 58436 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #27666: <==negation-removal== 39603 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #31906: <==negation-removal== 40380 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #41808: <==uncertain_firing== 46034 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #51171: <==negation-removal== 28883 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #59764: <==negation-removal== 79832 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #61234: <==uncertain_firing== 79832 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #63319: <==negation-removal== 58436 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #66265: <==uncertain_firing== 39603 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #66644: <==uncertain_firing== 40380 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #68352: <==uncertain_firing== 28883 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #76755: <==negation-removal== 46034 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #29167: <==closure== 61991 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #32476: <==closure== 49824 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #49824: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #61991: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #79626: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #84603: <==closure== 79626 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #14597: <==negation-removal== 79626 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #15572: <==negation-removal== 61991 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #17433: <==uncertain_firing== 49824 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #28294: <==negation-removal== 84603 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #30028: <==uncertain_firing== 29167 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #42140: <==negation-removal== 49824 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #48444: <==negation-removal== 29167 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #55499: <==negation-removal== 32476 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #63629: <==uncertain_firing== 84603 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #74528: <==uncertain_firing== 61991 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #84184: <==uncertain_firing== 79626 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #91893: <==uncertain_firing== 32476 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #29167: <==closure== 61991 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #32476: <==closure== 49824 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #49824: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #61991: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #79626: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #84603: <==closure== 79626 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #14597: <==negation-removal== 79626 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #15572: <==negation-removal== 61991 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #17433: <==uncertain_firing== 49824 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #28294: <==negation-removal== 84603 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #30028: <==uncertain_firing== 29167 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #42140: <==negation-removal== 49824 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #48444: <==negation-removal== 29167 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #55499: <==negation-removal== 32476 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #63629: <==uncertain_firing== 84603 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #74528: <==uncertain_firing== 61991 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #84184: <==uncertain_firing== 79626 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #91893: <==uncertain_firing== 32476 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #29167: <==closure== 61991 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #32476: <==closure== 49824 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #49824: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #61991: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #79626: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #84603: <==closure== 79626 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #14597: <==negation-removal== 79626 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #15572: <==negation-removal== 61991 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #17433: <==uncertain_firing== 49824 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #28294: <==negation-removal== 84603 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #30028: <==uncertain_firing== 29167 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #42140: <==negation-removal== 49824 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #48444: <==negation-removal== 29167 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #55499: <==negation-removal== 32476 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #63629: <==uncertain_firing== 84603 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #74528: <==uncertain_firing== 61991 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #84184: <==uncertain_firing== 79626 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #91893: <==uncertain_firing== 32476 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #10266: <==closure== 44722 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #34107: <==closure== 51667 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #41402: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #44722: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #46654: <==closure== 41402 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #51667: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #10533: <==uncertain_firing== 51667 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #22104: <==uncertain_firing== 41402 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #38954: <==negation-removal== 41402 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #44253: <==uncertain_firing== 34107 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #48072: <==uncertain_firing== 46654 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #56461: <==negation-removal== 34107 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #67738: <==negation-removal== 46654 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #70082: <==uncertain_firing== 10266 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #82572: <==negation-removal== 51667 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #83799: <==negation-removal== 10266 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #89465: <==negation-removal== 44722 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #90423: <==uncertain_firing== 44722 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #10266: <==closure== 44722 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #34107: <==closure== 51667 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #41402: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #44722: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #46654: <==closure== 41402 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #51667: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #10533: <==uncertain_firing== 51667 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #22104: <==uncertain_firing== 41402 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #38954: <==negation-removal== 41402 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #44253: <==uncertain_firing== 34107 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #48072: <==uncertain_firing== 46654 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #56461: <==negation-removal== 34107 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #67738: <==negation-removal== 46654 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #70082: <==uncertain_firing== 10266 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #82572: <==negation-removal== 51667 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #83799: <==negation-removal== 10266 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #89465: <==negation-removal== 44722 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #90423: <==uncertain_firing== 44722 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #10266: <==closure== 44722 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #34107: <==closure== 51667 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #41402: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #44722: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #46654: <==closure== 41402 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #51667: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #10533: <==uncertain_firing== 51667 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #22104: <==uncertain_firing== 41402 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #38954: <==negation-removal== 41402 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #44253: <==uncertain_firing== 34107 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #48072: <==uncertain_firing== 46654 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #56461: <==negation-removal== 34107 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #67738: <==negation-removal== 46654 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #70082: <==uncertain_firing== 10266 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #82572: <==negation-removal== 51667 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #83799: <==negation-removal== 10266 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #89465: <==negation-removal== 44722 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #90423: <==uncertain_firing== 44722 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #15063: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #24139: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #59877: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #65798: <==closure== 59877 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #77440: <==closure== 24139 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #92919: <==closure== 15063 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #18994: <==negation-removal== 65798 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #31277: <==negation-removal== 15063 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #41337: <==negation-removal== 59877 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #53395: <==negation-removal== 77440 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #65679: <==uncertain_firing== 92919 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #67023: <==uncertain_firing== 15063 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #79261: <==uncertain_firing== 65798 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #81665: <==uncertain_firing== 77440 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #84579: <==uncertain_firing== 59877 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #87045: <==uncertain_firing== 24139 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #88713: <==negation-removal== 24139 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #90790: <==negation-removal== 92919 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #15063: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #24139: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #59877: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #65798: <==closure== 59877 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #77440: <==closure== 24139 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #92919: <==closure== 15063 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #18994: <==negation-removal== 65798 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #31277: <==negation-removal== 15063 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #41337: <==negation-removal== 59877 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #53395: <==negation-removal== 77440 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #65679: <==uncertain_firing== 92919 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #67023: <==uncertain_firing== 15063 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #79261: <==uncertain_firing== 65798 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #81665: <==uncertain_firing== 77440 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #84579: <==uncertain_firing== 59877 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #87045: <==uncertain_firing== 24139 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #88713: <==negation-removal== 24139 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #90790: <==negation-removal== 92919 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #15063: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #24139: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #59877: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #65798: <==closure== 59877 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #77440: <==closure== 24139 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #92919: <==closure== 15063 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #18994: <==negation-removal== 65798 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #31277: <==negation-removal== 15063 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #41337: <==negation-removal== 59877 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #53395: <==negation-removal== 77440 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #65679: <==uncertain_firing== 92919 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #67023: <==uncertain_firing== 15063 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #79261: <==uncertain_firing== 65798 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #81665: <==uncertain_firing== 77440 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #84579: <==uncertain_firing== 59877 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #87045: <==uncertain_firing== 24139 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #88713: <==negation-removal== 24139 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #90790: <==negation-removal== 92919 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #10080: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #12485: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #19010: <==closure== 12485 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #52470: <==closure== 59336 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #59336: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #74945: <==closure== 10080 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #23939: <==negation-removal== 52470 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #29697: <==uncertain_firing== 19010 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #49680: <==negation-removal== 19010 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #51930: <==negation-removal== 12485 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #54322: <==negation-removal== 74945 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #60906: <==uncertain_firing== 52470 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #65803: <==uncertain_firing== 12485 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #65874: <==uncertain_firing== 74945 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #69427: <==negation-removal== 10080 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #70685: <==uncertain_firing== 10080 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #77263: <==uncertain_firing== 59336 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #87328: <==negation-removal== 59336 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #10080: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #12485: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #19010: <==closure== 12485 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #52470: <==closure== 59336 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #59336: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #74945: <==closure== 10080 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #23939: <==negation-removal== 52470 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #29697: <==uncertain_firing== 19010 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #49680: <==negation-removal== 19010 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #51930: <==negation-removal== 12485 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #54322: <==negation-removal== 74945 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #60906: <==uncertain_firing== 52470 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #65803: <==uncertain_firing== 12485 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #65874: <==uncertain_firing== 74945 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #69427: <==negation-removal== 10080 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #70685: <==uncertain_firing== 10080 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #77263: <==uncertain_firing== 59336 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #87328: <==negation-removal== 59336 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #10080: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #12485: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #19010: <==closure== 12485 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #52470: <==closure== 59336 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #59336: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #74945: <==closure== 10080 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #23939: <==negation-removal== 52470 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #29697: <==uncertain_firing== 19010 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #49680: <==negation-removal== 19010 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #51930: <==negation-removal== 12485 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #54322: <==negation-removal== 74945 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #60906: <==uncertain_firing== 52470 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #65803: <==uncertain_firing== 12485 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #65874: <==uncertain_firing== 74945 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #69427: <==negation-removal== 10080 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #70685: <==uncertain_firing== 10080 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #77263: <==uncertain_firing== 59336 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #87328: <==negation-removal== 59336 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #43168: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #50670: <==closure== 43168 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #51429: <==closure== 64970 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #55494: <==closure== 85250 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #64970: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #85250: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #22178: <==uncertain_firing== 85250 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #24479: <==uncertain_firing== 50670 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #44565: <==uncertain_firing== 55494 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #56866: <==uncertain_firing== 51429 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #59695: <==negation-removal== 50670 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #62063: <==negation-removal== 51429 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #68154: <==negation-removal== 85250 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #70155: <==negation-removal== 55494 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #73651: <==uncertain_firing== 43168 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #77341: <==negation-removal== 64970 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #88251: <==uncertain_firing== 64970 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #88971: <==negation-removal== 43168 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #43168: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #50670: <==closure== 43168 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #51429: <==closure== 64970 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #55494: <==closure== 85250 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #64970: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #85250: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #22178: <==uncertain_firing== 85250 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #24479: <==uncertain_firing== 50670 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #44565: <==uncertain_firing== 55494 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #56866: <==uncertain_firing== 51429 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #59695: <==negation-removal== 50670 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #62063: <==negation-removal== 51429 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #68154: <==negation-removal== 85250 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #70155: <==negation-removal== 55494 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #73651: <==uncertain_firing== 43168 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #77341: <==negation-removal== 64970 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #88251: <==uncertain_firing== 64970 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #88971: <==negation-removal== 43168 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #43168: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #50670: <==closure== 43168 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #51429: <==closure== 64970 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #55494: <==closure== 85250 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #64970: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #85250: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #22178: <==uncertain_firing== 85250 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #24479: <==uncertain_firing== 50670 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #44565: <==uncertain_firing== 55494 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #56866: <==uncertain_firing== 51429 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #59695: <==negation-removal== 50670 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #62063: <==negation-removal== 51429 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #68154: <==negation-removal== 85250 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #70155: <==negation-removal== 55494 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #73651: <==uncertain_firing== 43168 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #77341: <==negation-removal== 64970 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #88251: <==uncertain_firing== 64970 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #88971: <==negation-removal== 43168 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #52382: <==closure== 71496 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #63460: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #65585: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #71496: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #81154: <==closure== 63460 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #99076: <==closure== 65585 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #16382: <==uncertain_firing== 52382 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #19406: <==negation-removal== 52382 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #33560: <==uncertain_firing== 71496 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #36177: <==negation-removal== 81154 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #37025: <==negation-removal== 99076 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #46227: <==uncertain_firing== 81154 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #46330: <==negation-removal== 71496 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #63096: <==uncertain_firing== 65585 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #63566: <==uncertain_firing== 99076 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #70685: <==negation-removal== 65585 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #84388: <==negation-removal== 63460 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #88210: <==uncertain_firing== 63460 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #52382: <==closure== 71496 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #63460: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #65585: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #71496: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #81154: <==closure== 63460 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #99076: <==closure== 65585 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #16382: <==uncertain_firing== 52382 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #19406: <==negation-removal== 52382 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #33560: <==uncertain_firing== 71496 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #36177: <==negation-removal== 81154 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #37025: <==negation-removal== 99076 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #46227: <==uncertain_firing== 81154 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #46330: <==negation-removal== 71496 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #63096: <==uncertain_firing== 65585 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #63566: <==uncertain_firing== 99076 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #70685: <==negation-removal== 65585 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #84388: <==negation-removal== 63460 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #88210: <==uncertain_firing== 63460 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #52382: <==closure== 71496 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #63460: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #65585: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #71496: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #81154: <==closure== 63460 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #99076: <==closure== 65585 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #16382: <==uncertain_firing== 52382 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #19406: <==negation-removal== 52382 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #33560: <==uncertain_firing== 71496 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #36177: <==negation-removal== 81154 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #37025: <==negation-removal== 99076 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #46227: <==uncertain_firing== 81154 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #46330: <==negation-removal== 71496 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #63096: <==uncertain_firing== 65585 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #63566: <==uncertain_firing== 99076 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #70685: <==negation-removal== 65585 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #84388: <==negation-removal== 63460 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #88210: <==uncertain_firing== 63460 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #42363: <==closure== 46692 (pos)
                    (Pb_survivorat_s_p1)

                    ; #43954: <==closure== 77828 (pos)
                    (Pa_survivorat_s_p1)

                    ; #46692: origin
                    (Bb_survivorat_s_p1)

                    ; #55988: <==closure== 81459 (pos)
                    (Pc_survivorat_s_p1)

                    ; #77828: origin
                    (Ba_survivorat_s_p1)

                    ; #81459: origin
                    (Bc_survivorat_s_p1)

                    ; #20578: <==negation-removal== 43954 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #59932: <==negation-removal== 81459 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #63978: <==negation-removal== 42363 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #68202: <==negation-removal== 77828 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #76851: <==negation-removal== 55988 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #79416: <==negation-removal== 46692 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #42363: <==closure== 46692 (pos)
                    (Pb_survivorat_s_p1)

                    ; #43954: <==closure== 77828 (pos)
                    (Pa_survivorat_s_p1)

                    ; #46692: origin
                    (Bb_survivorat_s_p1)

                    ; #55988: <==closure== 81459 (pos)
                    (Pc_survivorat_s_p1)

                    ; #77828: origin
                    (Ba_survivorat_s_p1)

                    ; #81459: origin
                    (Bc_survivorat_s_p1)

                    ; #20578: <==negation-removal== 43954 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #59932: <==negation-removal== 81459 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #63978: <==negation-removal== 42363 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #68202: <==negation-removal== 77828 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #76851: <==negation-removal== 55988 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #79416: <==negation-removal== 46692 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #42363: <==closure== 46692 (pos)
                    (Pb_survivorat_s_p1)

                    ; #43954: <==closure== 77828 (pos)
                    (Pa_survivorat_s_p1)

                    ; #46692: origin
                    (Bb_survivorat_s_p1)

                    ; #55988: <==closure== 81459 (pos)
                    (Pc_survivorat_s_p1)

                    ; #77828: origin
                    (Ba_survivorat_s_p1)

                    ; #81459: origin
                    (Bc_survivorat_s_p1)

                    ; #20578: <==negation-removal== 43954 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #59932: <==negation-removal== 81459 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #63978: <==negation-removal== 42363 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #68202: <==negation-removal== 77828 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #76851: <==negation-removal== 55988 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #79416: <==negation-removal== 46692 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #24478: <==closure== 59438 (pos)
                    (Pb_survivorat_s_p2)

                    ; #43960: origin
                    (Bc_survivorat_s_p2)

                    ; #44383: <==closure== 43960 (pos)
                    (Pc_survivorat_s_p2)

                    ; #45372: <==closure== 88423 (pos)
                    (Pa_survivorat_s_p2)

                    ; #59438: origin
                    (Bb_survivorat_s_p2)

                    ; #88423: origin
                    (Ba_survivorat_s_p2)

                    ; #12611: <==negation-removal== 44383 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #22403: <==negation-removal== 43960 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #53329: <==negation-removal== 24478 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #64279: <==negation-removal== 88423 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65053: <==negation-removal== 59438 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67150: <==negation-removal== 45372 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #24478: <==closure== 59438 (pos)
                    (Pb_survivorat_s_p2)

                    ; #43960: origin
                    (Bc_survivorat_s_p2)

                    ; #44383: <==closure== 43960 (pos)
                    (Pc_survivorat_s_p2)

                    ; #45372: <==closure== 88423 (pos)
                    (Pa_survivorat_s_p2)

                    ; #59438: origin
                    (Bb_survivorat_s_p2)

                    ; #88423: origin
                    (Ba_survivorat_s_p2)

                    ; #12611: <==negation-removal== 44383 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #22403: <==negation-removal== 43960 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #53329: <==negation-removal== 24478 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #64279: <==negation-removal== 88423 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65053: <==negation-removal== 59438 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67150: <==negation-removal== 45372 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #24478: <==closure== 59438 (pos)
                    (Pb_survivorat_s_p2)

                    ; #43960: origin
                    (Bc_survivorat_s_p2)

                    ; #44383: <==closure== 43960 (pos)
                    (Pc_survivorat_s_p2)

                    ; #45372: <==closure== 88423 (pos)
                    (Pa_survivorat_s_p2)

                    ; #59438: origin
                    (Bb_survivorat_s_p2)

                    ; #88423: origin
                    (Ba_survivorat_s_p2)

                    ; #12611: <==negation-removal== 44383 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #22403: <==negation-removal== 43960 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #53329: <==negation-removal== 24478 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #64279: <==negation-removal== 88423 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65053: <==negation-removal== 59438 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67150: <==negation-removal== 45372 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #11934: origin
                    (Bb_survivorat_s_p3)

                    ; #19046: origin
                    (Bc_survivorat_s_p3)

                    ; #32042: origin
                    (Ba_survivorat_s_p3)

                    ; #36476: <==closure== 19046 (pos)
                    (Pc_survivorat_s_p3)

                    ; #45744: <==closure== 11934 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61147: <==closure== 32042 (pos)
                    (Pa_survivorat_s_p3)

                    ; #29018: <==negation-removal== 32042 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #41868: <==negation-removal== 61147 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #74947: <==negation-removal== 45744 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #76742: <==negation-removal== 11934 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #76999: <==negation-removal== 36476 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #86735: <==negation-removal== 19046 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #11934: origin
                    (Bb_survivorat_s_p3)

                    ; #19046: origin
                    (Bc_survivorat_s_p3)

                    ; #32042: origin
                    (Ba_survivorat_s_p3)

                    ; #36476: <==closure== 19046 (pos)
                    (Pc_survivorat_s_p3)

                    ; #45744: <==closure== 11934 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61147: <==closure== 32042 (pos)
                    (Pa_survivorat_s_p3)

                    ; #29018: <==negation-removal== 32042 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #41868: <==negation-removal== 61147 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #74947: <==negation-removal== 45744 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #76742: <==negation-removal== 11934 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #76999: <==negation-removal== 36476 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #86735: <==negation-removal== 19046 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #11934: origin
                    (Bb_survivorat_s_p3)

                    ; #19046: origin
                    (Bc_survivorat_s_p3)

                    ; #32042: origin
                    (Ba_survivorat_s_p3)

                    ; #36476: <==closure== 19046 (pos)
                    (Pc_survivorat_s_p3)

                    ; #45744: <==closure== 11934 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61147: <==closure== 32042 (pos)
                    (Pa_survivorat_s_p3)

                    ; #29018: <==negation-removal== 32042 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #41868: <==negation-removal== 61147 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #74947: <==negation-removal== 45744 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #76742: <==negation-removal== 11934 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #76999: <==negation-removal== 36476 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #86735: <==negation-removal== 19046 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #25315: origin
                    (Bc_survivorat_s_p4)

                    ; #36646: origin
                    (Ba_survivorat_s_p4)

                    ; #63943: <==closure== 78966 (pos)
                    (Pb_survivorat_s_p4)

                    ; #78966: origin
                    (Bb_survivorat_s_p4)

                    ; #80096: <==closure== 36646 (pos)
                    (Pa_survivorat_s_p4)

                    ; #95499: <==closure== 25315 (pos)
                    (Pc_survivorat_s_p4)

                    ; #12369: <==negation-removal== 78966 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #28345: <==negation-removal== 80096 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #42379: <==negation-removal== 95499 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #75649: <==negation-removal== 25315 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85098: <==negation-removal== 63943 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #85142: <==negation-removal== 36646 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #25315: origin
                    (Bc_survivorat_s_p4)

                    ; #36646: origin
                    (Ba_survivorat_s_p4)

                    ; #63943: <==closure== 78966 (pos)
                    (Pb_survivorat_s_p4)

                    ; #78966: origin
                    (Bb_survivorat_s_p4)

                    ; #80096: <==closure== 36646 (pos)
                    (Pa_survivorat_s_p4)

                    ; #95499: <==closure== 25315 (pos)
                    (Pc_survivorat_s_p4)

                    ; #12369: <==negation-removal== 78966 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #28345: <==negation-removal== 80096 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #42379: <==negation-removal== 95499 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #75649: <==negation-removal== 25315 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85098: <==negation-removal== 63943 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #85142: <==negation-removal== 36646 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #25315: origin
                    (Bc_survivorat_s_p4)

                    ; #36646: origin
                    (Ba_survivorat_s_p4)

                    ; #63943: <==closure== 78966 (pos)
                    (Pb_survivorat_s_p4)

                    ; #78966: origin
                    (Bb_survivorat_s_p4)

                    ; #80096: <==closure== 36646 (pos)
                    (Pa_survivorat_s_p4)

                    ; #95499: <==closure== 25315 (pos)
                    (Pc_survivorat_s_p4)

                    ; #12369: <==negation-removal== 78966 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #28345: <==negation-removal== 80096 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #42379: <==negation-removal== 95499 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #75649: <==negation-removal== 25315 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85098: <==negation-removal== 63943 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #85142: <==negation-removal== 36646 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #16246: origin
                    (Bc_survivorat_s_p5)

                    ; #19336: origin
                    (Ba_survivorat_s_p5)

                    ; #20594: <==closure== 70146 (pos)
                    (Pb_survivorat_s_p5)

                    ; #33636: <==closure== 16246 (pos)
                    (Pc_survivorat_s_p5)

                    ; #63689: <==closure== 19336 (pos)
                    (Pa_survivorat_s_p5)

                    ; #70146: origin
                    (Bb_survivorat_s_p5)

                    ; #21155: <==negation-removal== 70146 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #25753: <==negation-removal== 63689 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #38480: <==negation-removal== 16246 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #40693: <==negation-removal== 20594 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #70985: <==negation-removal== 33636 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #85065: <==negation-removal== 19336 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #16246: origin
                    (Bc_survivorat_s_p5)

                    ; #19336: origin
                    (Ba_survivorat_s_p5)

                    ; #20594: <==closure== 70146 (pos)
                    (Pb_survivorat_s_p5)

                    ; #33636: <==closure== 16246 (pos)
                    (Pc_survivorat_s_p5)

                    ; #63689: <==closure== 19336 (pos)
                    (Pa_survivorat_s_p5)

                    ; #70146: origin
                    (Bb_survivorat_s_p5)

                    ; #21155: <==negation-removal== 70146 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #25753: <==negation-removal== 63689 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #38480: <==negation-removal== 16246 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #40693: <==negation-removal== 20594 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #70985: <==negation-removal== 33636 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #85065: <==negation-removal== 19336 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #16246: origin
                    (Bc_survivorat_s_p5)

                    ; #19336: origin
                    (Ba_survivorat_s_p5)

                    ; #20594: <==closure== 70146 (pos)
                    (Pb_survivorat_s_p5)

                    ; #33636: <==closure== 16246 (pos)
                    (Pc_survivorat_s_p5)

                    ; #63689: <==closure== 19336 (pos)
                    (Pa_survivorat_s_p5)

                    ; #70146: origin
                    (Bb_survivorat_s_p5)

                    ; #21155: <==negation-removal== 70146 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #25753: <==negation-removal== 63689 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #38480: <==negation-removal== 16246 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #40693: <==negation-removal== 20594 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #70985: <==negation-removal== 33636 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #85065: <==negation-removal== 19336 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #14457: <==closure== 83507 (pos)
                    (Pa_survivorat_s_p6)

                    ; #52036: <==closure== 66486 (pos)
                    (Pb_survivorat_s_p6)

                    ; #64325: <==closure== 70023 (pos)
                    (Pc_survivorat_s_p6)

                    ; #66486: origin
                    (Bb_survivorat_s_p6)

                    ; #70023: origin
                    (Bc_survivorat_s_p6)

                    ; #83507: origin
                    (Ba_survivorat_s_p6)

                    ; #21774: <==negation-removal== 66486 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #22473: <==negation-removal== 83507 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #36560: <==negation-removal== 70023 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #43355: <==negation-removal== 52036 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #48664: <==negation-removal== 64325 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #64572: <==negation-removal== 14457 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #14457: <==closure== 83507 (pos)
                    (Pa_survivorat_s_p6)

                    ; #52036: <==closure== 66486 (pos)
                    (Pb_survivorat_s_p6)

                    ; #64325: <==closure== 70023 (pos)
                    (Pc_survivorat_s_p6)

                    ; #66486: origin
                    (Bb_survivorat_s_p6)

                    ; #70023: origin
                    (Bc_survivorat_s_p6)

                    ; #83507: origin
                    (Ba_survivorat_s_p6)

                    ; #21774: <==negation-removal== 66486 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #22473: <==negation-removal== 83507 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #36560: <==negation-removal== 70023 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #43355: <==negation-removal== 52036 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #48664: <==negation-removal== 64325 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #64572: <==negation-removal== 14457 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #14457: <==closure== 83507 (pos)
                    (Pa_survivorat_s_p6)

                    ; #52036: <==closure== 66486 (pos)
                    (Pb_survivorat_s_p6)

                    ; #64325: <==closure== 70023 (pos)
                    (Pc_survivorat_s_p6)

                    ; #66486: origin
                    (Bb_survivorat_s_p6)

                    ; #70023: origin
                    (Bc_survivorat_s_p6)

                    ; #83507: origin
                    (Ba_survivorat_s_p6)

                    ; #21774: <==negation-removal== 66486 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #22473: <==negation-removal== 83507 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #36560: <==negation-removal== 70023 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #43355: <==negation-removal== 52036 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #48664: <==negation-removal== 64325 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #64572: <==negation-removal== 14457 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #20734: origin
                    (Bc_survivorat_s_p7)

                    ; #40356: origin
                    (Ba_survivorat_s_p7)

                    ; #63914: origin
                    (Bb_survivorat_s_p7)

                    ; #70489: <==closure== 40356 (pos)
                    (Pa_survivorat_s_p7)

                    ; #71736: <==closure== 20734 (pos)
                    (Pc_survivorat_s_p7)

                    ; #71901: <==closure== 63914 (pos)
                    (Pb_survivorat_s_p7)

                    ; #35230: <==negation-removal== 40356 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #59984: <==negation-removal== 63914 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #68570: <==negation-removal== 70489 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69429: <==negation-removal== 71901 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #70581: <==negation-removal== 20734 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #74457: <==negation-removal== 71736 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #20734: origin
                    (Bc_survivorat_s_p7)

                    ; #40356: origin
                    (Ba_survivorat_s_p7)

                    ; #63914: origin
                    (Bb_survivorat_s_p7)

                    ; #70489: <==closure== 40356 (pos)
                    (Pa_survivorat_s_p7)

                    ; #71736: <==closure== 20734 (pos)
                    (Pc_survivorat_s_p7)

                    ; #71901: <==closure== 63914 (pos)
                    (Pb_survivorat_s_p7)

                    ; #35230: <==negation-removal== 40356 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #59984: <==negation-removal== 63914 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #68570: <==negation-removal== 70489 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69429: <==negation-removal== 71901 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #70581: <==negation-removal== 20734 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #74457: <==negation-removal== 71736 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #20734: origin
                    (Bc_survivorat_s_p7)

                    ; #40356: origin
                    (Ba_survivorat_s_p7)

                    ; #63914: origin
                    (Bb_survivorat_s_p7)

                    ; #70489: <==closure== 40356 (pos)
                    (Pa_survivorat_s_p7)

                    ; #71736: <==closure== 20734 (pos)
                    (Pc_survivorat_s_p7)

                    ; #71901: <==closure== 63914 (pos)
                    (Pb_survivorat_s_p7)

                    ; #35230: <==negation-removal== 40356 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #59984: <==negation-removal== 63914 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #68570: <==negation-removal== 70489 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69429: <==negation-removal== 71901 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #70581: <==negation-removal== 20734 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #74457: <==negation-removal== 71736 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #19698: <==closure== 60275 (pos)
                    (Pa_survivorat_s_p8)

                    ; #33583: <==closure== 74187 (pos)
                    (Pb_survivorat_s_p8)

                    ; #41731: origin
                    (Bc_survivorat_s_p8)

                    ; #60275: origin
                    (Ba_survivorat_s_p8)

                    ; #74187: origin
                    (Bb_survivorat_s_p8)

                    ; #75083: <==closure== 41731 (pos)
                    (Pc_survivorat_s_p8)

                    ; #38301: <==negation-removal== 19698 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43031: <==negation-removal== 75083 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #54269: <==negation-removal== 33583 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #62224: <==negation-removal== 60275 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #87238: <==negation-removal== 41731 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #89404: <==negation-removal== 74187 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #19698: <==closure== 60275 (pos)
                    (Pa_survivorat_s_p8)

                    ; #33583: <==closure== 74187 (pos)
                    (Pb_survivorat_s_p8)

                    ; #41731: origin
                    (Bc_survivorat_s_p8)

                    ; #60275: origin
                    (Ba_survivorat_s_p8)

                    ; #74187: origin
                    (Bb_survivorat_s_p8)

                    ; #75083: <==closure== 41731 (pos)
                    (Pc_survivorat_s_p8)

                    ; #38301: <==negation-removal== 19698 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43031: <==negation-removal== 75083 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #54269: <==negation-removal== 33583 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #62224: <==negation-removal== 60275 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #87238: <==negation-removal== 41731 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #89404: <==negation-removal== 74187 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #19698: <==closure== 60275 (pos)
                    (Pa_survivorat_s_p8)

                    ; #33583: <==closure== 74187 (pos)
                    (Pb_survivorat_s_p8)

                    ; #41731: origin
                    (Bc_survivorat_s_p8)

                    ; #60275: origin
                    (Ba_survivorat_s_p8)

                    ; #74187: origin
                    (Bb_survivorat_s_p8)

                    ; #75083: <==closure== 41731 (pos)
                    (Pc_survivorat_s_p8)

                    ; #38301: <==negation-removal== 19698 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43031: <==negation-removal== 75083 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #54269: <==negation-removal== 33583 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #62224: <==negation-removal== 60275 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #87238: <==negation-removal== 41731 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #89404: <==negation-removal== 74187 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #11859: <==closure== 66213 (pos)
                    (Pa_survivorat_s_p9)

                    ; #26345: origin
                    (Bb_survivorat_s_p9)

                    ; #50071: <==closure== 64825 (pos)
                    (Pc_survivorat_s_p9)

                    ; #64825: origin
                    (Bc_survivorat_s_p9)

                    ; #66213: origin
                    (Ba_survivorat_s_p9)

                    ; #66574: <==closure== 26345 (pos)
                    (Pb_survivorat_s_p9)

                    ; #35669: <==negation-removal== 66574 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #50901: <==negation-removal== 26345 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #54917: <==negation-removal== 64825 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #55435: <==negation-removal== 66213 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #81362: <==negation-removal== 50071 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85725: <==negation-removal== 11859 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #11859: <==closure== 66213 (pos)
                    (Pa_survivorat_s_p9)

                    ; #26345: origin
                    (Bb_survivorat_s_p9)

                    ; #50071: <==closure== 64825 (pos)
                    (Pc_survivorat_s_p9)

                    ; #64825: origin
                    (Bc_survivorat_s_p9)

                    ; #66213: origin
                    (Ba_survivorat_s_p9)

                    ; #66574: <==closure== 26345 (pos)
                    (Pb_survivorat_s_p9)

                    ; #35669: <==negation-removal== 66574 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #50901: <==negation-removal== 26345 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #54917: <==negation-removal== 64825 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #55435: <==negation-removal== 66213 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #81362: <==negation-removal== 50071 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85725: <==negation-removal== 11859 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #11859: <==closure== 66213 (pos)
                    (Pa_survivorat_s_p9)

                    ; #26345: origin
                    (Bb_survivorat_s_p9)

                    ; #50071: <==closure== 64825 (pos)
                    (Pc_survivorat_s_p9)

                    ; #64825: origin
                    (Bc_survivorat_s_p9)

                    ; #66213: origin
                    (Ba_survivorat_s_p9)

                    ; #66574: <==closure== 26345 (pos)
                    (Pb_survivorat_s_p9)

                    ; #35669: <==negation-removal== 66574 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #50901: <==negation-removal== 26345 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #54917: <==negation-removal== 64825 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #55435: <==negation-removal== 66213 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #81362: <==negation-removal== 50071 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85725: <==negation-removal== 11859 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #66346: origin
                    (at_a_p1)

                    ; #85879: origin
                    (not_at_a_p1)

                    ; #66346: <==negation-removal== 85879 (pos)
                    (not (at_a_p1))

                    ; #85879: <==negation-removal== 66346 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #73665: origin
                    (at_a_p2)

                    ; #85879: origin
                    (not_at_a_p1)

                    ; #27221: <==negation-removal== 73665 (pos)
                    (not (not_at_a_p2))

                    ; #66346: <==negation-removal== 85879 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #11796: origin
                    (at_a_p3)

                    ; #85879: origin
                    (not_at_a_p1)

                    ; #48671: <==negation-removal== 11796 (pos)
                    (not (not_at_a_p3))

                    ; #66346: <==negation-removal== 85879 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #49358: origin
                    (at_a_p4)

                    ; #85879: origin
                    (not_at_a_p1)

                    ; #40605: <==negation-removal== 49358 (pos)
                    (not (not_at_a_p4))

                    ; #66346: <==negation-removal== 85879 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #23489: origin
                    (at_a_p5)

                    ; #85879: origin
                    (not_at_a_p1)

                    ; #60326: <==negation-removal== 23489 (pos)
                    (not (not_at_a_p5))

                    ; #66346: <==negation-removal== 85879 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #54571: origin
                    (at_a_p6)

                    ; #85879: origin
                    (not_at_a_p1)

                    ; #62240: <==negation-removal== 54571 (pos)
                    (not (not_at_a_p6))

                    ; #66346: <==negation-removal== 85879 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #85879: origin
                    (not_at_a_p1)

                    ; #91741: origin
                    (at_a_p7)

                    ; #18927: <==negation-removal== 91741 (pos)
                    (not (not_at_a_p7))

                    ; #66346: <==negation-removal== 85879 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #85879: origin
                    (not_at_a_p1)

                    ; #97660: origin
                    (at_a_p8)

                    ; #47026: <==negation-removal== 97660 (pos)
                    (not (not_at_a_p8))

                    ; #66346: <==negation-removal== 85879 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #27479: origin
                    (at_a_p9)

                    ; #85879: origin
                    (not_at_a_p1)

                    ; #23960: <==negation-removal== 27479 (pos)
                    (not (not_at_a_p9))

                    ; #66346: <==negation-removal== 85879 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #27221: origin
                    (not_at_a_p2)

                    ; #66346: origin
                    (at_a_p1)

                    ; #73665: <==negation-removal== 27221 (pos)
                    (not (at_a_p2))

                    ; #85879: <==negation-removal== 66346 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #27221: origin
                    (not_at_a_p2)

                    ; #73665: origin
                    (at_a_p2)

                    ; #27221: <==negation-removal== 73665 (pos)
                    (not (not_at_a_p2))

                    ; #73665: <==negation-removal== 27221 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #11796: origin
                    (at_a_p3)

                    ; #27221: origin
                    (not_at_a_p2)

                    ; #48671: <==negation-removal== 11796 (pos)
                    (not (not_at_a_p3))

                    ; #73665: <==negation-removal== 27221 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #27221: origin
                    (not_at_a_p2)

                    ; #49358: origin
                    (at_a_p4)

                    ; #40605: <==negation-removal== 49358 (pos)
                    (not (not_at_a_p4))

                    ; #73665: <==negation-removal== 27221 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #23489: origin
                    (at_a_p5)

                    ; #27221: origin
                    (not_at_a_p2)

                    ; #60326: <==negation-removal== 23489 (pos)
                    (not (not_at_a_p5))

                    ; #73665: <==negation-removal== 27221 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #27221: origin
                    (not_at_a_p2)

                    ; #54571: origin
                    (at_a_p6)

                    ; #62240: <==negation-removal== 54571 (pos)
                    (not (not_at_a_p6))

                    ; #73665: <==negation-removal== 27221 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #27221: origin
                    (not_at_a_p2)

                    ; #91741: origin
                    (at_a_p7)

                    ; #18927: <==negation-removal== 91741 (pos)
                    (not (not_at_a_p7))

                    ; #73665: <==negation-removal== 27221 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #27221: origin
                    (not_at_a_p2)

                    ; #97660: origin
                    (at_a_p8)

                    ; #47026: <==negation-removal== 97660 (pos)
                    (not (not_at_a_p8))

                    ; #73665: <==negation-removal== 27221 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #27221: origin
                    (not_at_a_p2)

                    ; #27479: origin
                    (at_a_p9)

                    ; #23960: <==negation-removal== 27479 (pos)
                    (not (not_at_a_p9))

                    ; #73665: <==negation-removal== 27221 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #48671: origin
                    (not_at_a_p3)

                    ; #66346: origin
                    (at_a_p1)

                    ; #11796: <==negation-removal== 48671 (pos)
                    (not (at_a_p3))

                    ; #85879: <==negation-removal== 66346 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #48671: origin
                    (not_at_a_p3)

                    ; #73665: origin
                    (at_a_p2)

                    ; #11796: <==negation-removal== 48671 (pos)
                    (not (at_a_p3))

                    ; #27221: <==negation-removal== 73665 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #11796: origin
                    (at_a_p3)

                    ; #48671: origin
                    (not_at_a_p3)

                    ; #11796: <==negation-removal== 48671 (pos)
                    (not (at_a_p3))

                    ; #48671: <==negation-removal== 11796 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #48671: origin
                    (not_at_a_p3)

                    ; #49358: origin
                    (at_a_p4)

                    ; #11796: <==negation-removal== 48671 (pos)
                    (not (at_a_p3))

                    ; #40605: <==negation-removal== 49358 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #23489: origin
                    (at_a_p5)

                    ; #48671: origin
                    (not_at_a_p3)

                    ; #11796: <==negation-removal== 48671 (pos)
                    (not (at_a_p3))

                    ; #60326: <==negation-removal== 23489 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #48671: origin
                    (not_at_a_p3)

                    ; #54571: origin
                    (at_a_p6)

                    ; #11796: <==negation-removal== 48671 (pos)
                    (not (at_a_p3))

                    ; #62240: <==negation-removal== 54571 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #48671: origin
                    (not_at_a_p3)

                    ; #91741: origin
                    (at_a_p7)

                    ; #11796: <==negation-removal== 48671 (pos)
                    (not (at_a_p3))

                    ; #18927: <==negation-removal== 91741 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #48671: origin
                    (not_at_a_p3)

                    ; #97660: origin
                    (at_a_p8)

                    ; #11796: <==negation-removal== 48671 (pos)
                    (not (at_a_p3))

                    ; #47026: <==negation-removal== 97660 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #27479: origin
                    (at_a_p9)

                    ; #48671: origin
                    (not_at_a_p3)

                    ; #11796: <==negation-removal== 48671 (pos)
                    (not (at_a_p3))

                    ; #23960: <==negation-removal== 27479 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #40605: origin
                    (not_at_a_p4)

                    ; #66346: origin
                    (at_a_p1)

                    ; #49358: <==negation-removal== 40605 (pos)
                    (not (at_a_p4))

                    ; #85879: <==negation-removal== 66346 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #40605: origin
                    (not_at_a_p4)

                    ; #73665: origin
                    (at_a_p2)

                    ; #27221: <==negation-removal== 73665 (pos)
                    (not (not_at_a_p2))

                    ; #49358: <==negation-removal== 40605 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #11796: origin
                    (at_a_p3)

                    ; #40605: origin
                    (not_at_a_p4)

                    ; #48671: <==negation-removal== 11796 (pos)
                    (not (not_at_a_p3))

                    ; #49358: <==negation-removal== 40605 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #40605: origin
                    (not_at_a_p4)

                    ; #49358: origin
                    (at_a_p4)

                    ; #40605: <==negation-removal== 49358 (pos)
                    (not (not_at_a_p4))

                    ; #49358: <==negation-removal== 40605 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #23489: origin
                    (at_a_p5)

                    ; #40605: origin
                    (not_at_a_p4)

                    ; #49358: <==negation-removal== 40605 (pos)
                    (not (at_a_p4))

                    ; #60326: <==negation-removal== 23489 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #40605: origin
                    (not_at_a_p4)

                    ; #54571: origin
                    (at_a_p6)

                    ; #49358: <==negation-removal== 40605 (pos)
                    (not (at_a_p4))

                    ; #62240: <==negation-removal== 54571 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #40605: origin
                    (not_at_a_p4)

                    ; #91741: origin
                    (at_a_p7)

                    ; #18927: <==negation-removal== 91741 (pos)
                    (not (not_at_a_p7))

                    ; #49358: <==negation-removal== 40605 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #40605: origin
                    (not_at_a_p4)

                    ; #97660: origin
                    (at_a_p8)

                    ; #47026: <==negation-removal== 97660 (pos)
                    (not (not_at_a_p8))

                    ; #49358: <==negation-removal== 40605 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #27479: origin
                    (at_a_p9)

                    ; #40605: origin
                    (not_at_a_p4)

                    ; #23960: <==negation-removal== 27479 (pos)
                    (not (not_at_a_p9))

                    ; #49358: <==negation-removal== 40605 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #60326: origin
                    (not_at_a_p5)

                    ; #66346: origin
                    (at_a_p1)

                    ; #23489: <==negation-removal== 60326 (pos)
                    (not (at_a_p5))

                    ; #85879: <==negation-removal== 66346 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #60326: origin
                    (not_at_a_p5)

                    ; #73665: origin
                    (at_a_p2)

                    ; #23489: <==negation-removal== 60326 (pos)
                    (not (at_a_p5))

                    ; #27221: <==negation-removal== 73665 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #11796: origin
                    (at_a_p3)

                    ; #60326: origin
                    (not_at_a_p5)

                    ; #23489: <==negation-removal== 60326 (pos)
                    (not (at_a_p5))

                    ; #48671: <==negation-removal== 11796 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #49358: origin
                    (at_a_p4)

                    ; #60326: origin
                    (not_at_a_p5)

                    ; #23489: <==negation-removal== 60326 (pos)
                    (not (at_a_p5))

                    ; #40605: <==negation-removal== 49358 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #23489: origin
                    (at_a_p5)

                    ; #60326: origin
                    (not_at_a_p5)

                    ; #23489: <==negation-removal== 60326 (pos)
                    (not (at_a_p5))

                    ; #60326: <==negation-removal== 23489 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #54571: origin
                    (at_a_p6)

                    ; #60326: origin
                    (not_at_a_p5)

                    ; #23489: <==negation-removal== 60326 (pos)
                    (not (at_a_p5))

                    ; #62240: <==negation-removal== 54571 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #60326: origin
                    (not_at_a_p5)

                    ; #91741: origin
                    (at_a_p7)

                    ; #18927: <==negation-removal== 91741 (pos)
                    (not (not_at_a_p7))

                    ; #23489: <==negation-removal== 60326 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #60326: origin
                    (not_at_a_p5)

                    ; #97660: origin
                    (at_a_p8)

                    ; #23489: <==negation-removal== 60326 (pos)
                    (not (at_a_p5))

                    ; #47026: <==negation-removal== 97660 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #27479: origin
                    (at_a_p9)

                    ; #60326: origin
                    (not_at_a_p5)

                    ; #23489: <==negation-removal== 60326 (pos)
                    (not (at_a_p5))

                    ; #23960: <==negation-removal== 27479 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #62240: origin
                    (not_at_a_p6)

                    ; #66346: origin
                    (at_a_p1)

                    ; #54571: <==negation-removal== 62240 (pos)
                    (not (at_a_p6))

                    ; #85879: <==negation-removal== 66346 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #62240: origin
                    (not_at_a_p6)

                    ; #73665: origin
                    (at_a_p2)

                    ; #27221: <==negation-removal== 73665 (pos)
                    (not (not_at_a_p2))

                    ; #54571: <==negation-removal== 62240 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #11796: origin
                    (at_a_p3)

                    ; #62240: origin
                    (not_at_a_p6)

                    ; #48671: <==negation-removal== 11796 (pos)
                    (not (not_at_a_p3))

                    ; #54571: <==negation-removal== 62240 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #49358: origin
                    (at_a_p4)

                    ; #62240: origin
                    (not_at_a_p6)

                    ; #40605: <==negation-removal== 49358 (pos)
                    (not (not_at_a_p4))

                    ; #54571: <==negation-removal== 62240 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #23489: origin
                    (at_a_p5)

                    ; #62240: origin
                    (not_at_a_p6)

                    ; #54571: <==negation-removal== 62240 (pos)
                    (not (at_a_p6))

                    ; #60326: <==negation-removal== 23489 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #54571: origin
                    (at_a_p6)

                    ; #62240: origin
                    (not_at_a_p6)

                    ; #54571: <==negation-removal== 62240 (pos)
                    (not (at_a_p6))

                    ; #62240: <==negation-removal== 54571 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #62240: origin
                    (not_at_a_p6)

                    ; #91741: origin
                    (at_a_p7)

                    ; #18927: <==negation-removal== 91741 (pos)
                    (not (not_at_a_p7))

                    ; #54571: <==negation-removal== 62240 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #62240: origin
                    (not_at_a_p6)

                    ; #97660: origin
                    (at_a_p8)

                    ; #47026: <==negation-removal== 97660 (pos)
                    (not (not_at_a_p8))

                    ; #54571: <==negation-removal== 62240 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #27479: origin
                    (at_a_p9)

                    ; #62240: origin
                    (not_at_a_p6)

                    ; #23960: <==negation-removal== 27479 (pos)
                    (not (not_at_a_p9))

                    ; #54571: <==negation-removal== 62240 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #18927: origin
                    (not_at_a_p7)

                    ; #66346: origin
                    (at_a_p1)

                    ; #85879: <==negation-removal== 66346 (pos)
                    (not (not_at_a_p1))

                    ; #91741: <==negation-removal== 18927 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #18927: origin
                    (not_at_a_p7)

                    ; #73665: origin
                    (at_a_p2)

                    ; #27221: <==negation-removal== 73665 (pos)
                    (not (not_at_a_p2))

                    ; #91741: <==negation-removal== 18927 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #11796: origin
                    (at_a_p3)

                    ; #18927: origin
                    (not_at_a_p7)

                    ; #48671: <==negation-removal== 11796 (pos)
                    (not (not_at_a_p3))

                    ; #91741: <==negation-removal== 18927 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #18927: origin
                    (not_at_a_p7)

                    ; #49358: origin
                    (at_a_p4)

                    ; #40605: <==negation-removal== 49358 (pos)
                    (not (not_at_a_p4))

                    ; #91741: <==negation-removal== 18927 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #18927: origin
                    (not_at_a_p7)

                    ; #23489: origin
                    (at_a_p5)

                    ; #60326: <==negation-removal== 23489 (pos)
                    (not (not_at_a_p5))

                    ; #91741: <==negation-removal== 18927 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #18927: origin
                    (not_at_a_p7)

                    ; #54571: origin
                    (at_a_p6)

                    ; #62240: <==negation-removal== 54571 (pos)
                    (not (not_at_a_p6))

                    ; #91741: <==negation-removal== 18927 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #18927: origin
                    (not_at_a_p7)

                    ; #91741: origin
                    (at_a_p7)

                    ; #18927: <==negation-removal== 91741 (pos)
                    (not (not_at_a_p7))

                    ; #91741: <==negation-removal== 18927 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #18927: origin
                    (not_at_a_p7)

                    ; #97660: origin
                    (at_a_p8)

                    ; #47026: <==negation-removal== 97660 (pos)
                    (not (not_at_a_p8))

                    ; #91741: <==negation-removal== 18927 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #18927: origin
                    (not_at_a_p7)

                    ; #27479: origin
                    (at_a_p9)

                    ; #23960: <==negation-removal== 27479 (pos)
                    (not (not_at_a_p9))

                    ; #91741: <==negation-removal== 18927 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #47026: origin
                    (not_at_a_p8)

                    ; #66346: origin
                    (at_a_p1)

                    ; #85879: <==negation-removal== 66346 (pos)
                    (not (not_at_a_p1))

                    ; #97660: <==negation-removal== 47026 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #47026: origin
                    (not_at_a_p8)

                    ; #73665: origin
                    (at_a_p2)

                    ; #27221: <==negation-removal== 73665 (pos)
                    (not (not_at_a_p2))

                    ; #97660: <==negation-removal== 47026 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #11796: origin
                    (at_a_p3)

                    ; #47026: origin
                    (not_at_a_p8)

                    ; #48671: <==negation-removal== 11796 (pos)
                    (not (not_at_a_p3))

                    ; #97660: <==negation-removal== 47026 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #47026: origin
                    (not_at_a_p8)

                    ; #49358: origin
                    (at_a_p4)

                    ; #40605: <==negation-removal== 49358 (pos)
                    (not (not_at_a_p4))

                    ; #97660: <==negation-removal== 47026 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #23489: origin
                    (at_a_p5)

                    ; #47026: origin
                    (not_at_a_p8)

                    ; #60326: <==negation-removal== 23489 (pos)
                    (not (not_at_a_p5))

                    ; #97660: <==negation-removal== 47026 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #47026: origin
                    (not_at_a_p8)

                    ; #54571: origin
                    (at_a_p6)

                    ; #62240: <==negation-removal== 54571 (pos)
                    (not (not_at_a_p6))

                    ; #97660: <==negation-removal== 47026 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #47026: origin
                    (not_at_a_p8)

                    ; #91741: origin
                    (at_a_p7)

                    ; #18927: <==negation-removal== 91741 (pos)
                    (not (not_at_a_p7))

                    ; #97660: <==negation-removal== 47026 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #47026: origin
                    (not_at_a_p8)

                    ; #97660: origin
                    (at_a_p8)

                    ; #47026: <==negation-removal== 97660 (pos)
                    (not (not_at_a_p8))

                    ; #97660: <==negation-removal== 47026 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #27479: origin
                    (at_a_p9)

                    ; #47026: origin
                    (not_at_a_p8)

                    ; #23960: <==negation-removal== 27479 (pos)
                    (not (not_at_a_p9))

                    ; #97660: <==negation-removal== 47026 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #23960: origin
                    (not_at_a_p9)

                    ; #66346: origin
                    (at_a_p1)

                    ; #27479: <==negation-removal== 23960 (pos)
                    (not (at_a_p9))

                    ; #85879: <==negation-removal== 66346 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #23960: origin
                    (not_at_a_p9)

                    ; #73665: origin
                    (at_a_p2)

                    ; #27221: <==negation-removal== 73665 (pos)
                    (not (not_at_a_p2))

                    ; #27479: <==negation-removal== 23960 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #11796: origin
                    (at_a_p3)

                    ; #23960: origin
                    (not_at_a_p9)

                    ; #27479: <==negation-removal== 23960 (pos)
                    (not (at_a_p9))

                    ; #48671: <==negation-removal== 11796 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #23960: origin
                    (not_at_a_p9)

                    ; #49358: origin
                    (at_a_p4)

                    ; #27479: <==negation-removal== 23960 (pos)
                    (not (at_a_p9))

                    ; #40605: <==negation-removal== 49358 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #23489: origin
                    (at_a_p5)

                    ; #23960: origin
                    (not_at_a_p9)

                    ; #27479: <==negation-removal== 23960 (pos)
                    (not (at_a_p9))

                    ; #60326: <==negation-removal== 23489 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #23960: origin
                    (not_at_a_p9)

                    ; #54571: origin
                    (at_a_p6)

                    ; #27479: <==negation-removal== 23960 (pos)
                    (not (at_a_p9))

                    ; #62240: <==negation-removal== 54571 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #23960: origin
                    (not_at_a_p9)

                    ; #91741: origin
                    (at_a_p7)

                    ; #18927: <==negation-removal== 91741 (pos)
                    (not (not_at_a_p7))

                    ; #27479: <==negation-removal== 23960 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #23960: origin
                    (not_at_a_p9)

                    ; #97660: origin
                    (at_a_p8)

                    ; #27479: <==negation-removal== 23960 (pos)
                    (not (at_a_p9))

                    ; #47026: <==negation-removal== 97660 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #23960: origin
                    (not_at_a_p9)

                    ; #27479: origin
                    (at_a_p9)

                    ; #23960: <==negation-removal== 27479 (pos)
                    (not (not_at_a_p9))

                    ; #27479: <==negation-removal== 23960 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #39763: origin
                    (at_b_p1)

                    ; #87202: origin
                    (not_at_b_p1)

                    ; #39763: <==negation-removal== 87202 (pos)
                    (not (at_b_p1))

                    ; #87202: <==negation-removal== 39763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #25348: origin
                    (at_b_p2)

                    ; #87202: origin
                    (not_at_b_p1)

                    ; #28338: <==negation-removal== 25348 (pos)
                    (not (not_at_b_p2))

                    ; #39763: <==negation-removal== 87202 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #40911: origin
                    (at_b_p3)

                    ; #87202: origin
                    (not_at_b_p1)

                    ; #39763: <==negation-removal== 87202 (pos)
                    (not (at_b_p1))

                    ; #68439: <==negation-removal== 40911 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #83441: origin
                    (at_b_p4)

                    ; #87202: origin
                    (not_at_b_p1)

                    ; #39763: <==negation-removal== 87202 (pos)
                    (not (at_b_p1))

                    ; #92104: <==negation-removal== 83441 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #32736: origin
                    (at_b_p5)

                    ; #87202: origin
                    (not_at_b_p1)

                    ; #37869: <==negation-removal== 32736 (pos)
                    (not (not_at_b_p5))

                    ; #39763: <==negation-removal== 87202 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #65951: origin
                    (at_b_p6)

                    ; #87202: origin
                    (not_at_b_p1)

                    ; #39763: <==negation-removal== 87202 (pos)
                    (not (at_b_p1))

                    ; #57137: <==negation-removal== 65951 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #28489: origin
                    (at_b_p7)

                    ; #87202: origin
                    (not_at_b_p1)

                    ; #39763: <==negation-removal== 87202 (pos)
                    (not (at_b_p1))

                    ; #66702: <==negation-removal== 28489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #87202: origin
                    (not_at_b_p1)

                    ; #91616: origin
                    (at_b_p8)

                    ; #39763: <==negation-removal== 87202 (pos)
                    (not (at_b_p1))

                    ; #62206: <==negation-removal== 91616 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #20057: origin
                    (at_b_p9)

                    ; #87202: origin
                    (not_at_b_p1)

                    ; #39763: <==negation-removal== 87202 (pos)
                    (not (at_b_p1))

                    ; #82235: <==negation-removal== 20057 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #28338: origin
                    (not_at_b_p2)

                    ; #39763: origin
                    (at_b_p1)

                    ; #25348: <==negation-removal== 28338 (pos)
                    (not (at_b_p2))

                    ; #87202: <==negation-removal== 39763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #25348: origin
                    (at_b_p2)

                    ; #28338: origin
                    (not_at_b_p2)

                    ; #25348: <==negation-removal== 28338 (pos)
                    (not (at_b_p2))

                    ; #28338: <==negation-removal== 25348 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #28338: origin
                    (not_at_b_p2)

                    ; #40911: origin
                    (at_b_p3)

                    ; #25348: <==negation-removal== 28338 (pos)
                    (not (at_b_p2))

                    ; #68439: <==negation-removal== 40911 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #28338: origin
                    (not_at_b_p2)

                    ; #83441: origin
                    (at_b_p4)

                    ; #25348: <==negation-removal== 28338 (pos)
                    (not (at_b_p2))

                    ; #92104: <==negation-removal== 83441 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #28338: origin
                    (not_at_b_p2)

                    ; #32736: origin
                    (at_b_p5)

                    ; #25348: <==negation-removal== 28338 (pos)
                    (not (at_b_p2))

                    ; #37869: <==negation-removal== 32736 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #28338: origin
                    (not_at_b_p2)

                    ; #65951: origin
                    (at_b_p6)

                    ; #25348: <==negation-removal== 28338 (pos)
                    (not (at_b_p2))

                    ; #57137: <==negation-removal== 65951 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #28338: origin
                    (not_at_b_p2)

                    ; #28489: origin
                    (at_b_p7)

                    ; #25348: <==negation-removal== 28338 (pos)
                    (not (at_b_p2))

                    ; #66702: <==negation-removal== 28489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #28338: origin
                    (not_at_b_p2)

                    ; #91616: origin
                    (at_b_p8)

                    ; #25348: <==negation-removal== 28338 (pos)
                    (not (at_b_p2))

                    ; #62206: <==negation-removal== 91616 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #20057: origin
                    (at_b_p9)

                    ; #28338: origin
                    (not_at_b_p2)

                    ; #25348: <==negation-removal== 28338 (pos)
                    (not (at_b_p2))

                    ; #82235: <==negation-removal== 20057 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #39763: origin
                    (at_b_p1)

                    ; #68439: origin
                    (not_at_b_p3)

                    ; #40911: <==negation-removal== 68439 (pos)
                    (not (at_b_p3))

                    ; #87202: <==negation-removal== 39763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #25348: origin
                    (at_b_p2)

                    ; #68439: origin
                    (not_at_b_p3)

                    ; #28338: <==negation-removal== 25348 (pos)
                    (not (not_at_b_p2))

                    ; #40911: <==negation-removal== 68439 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #40911: origin
                    (at_b_p3)

                    ; #68439: origin
                    (not_at_b_p3)

                    ; #40911: <==negation-removal== 68439 (pos)
                    (not (at_b_p3))

                    ; #68439: <==negation-removal== 40911 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #68439: origin
                    (not_at_b_p3)

                    ; #83441: origin
                    (at_b_p4)

                    ; #40911: <==negation-removal== 68439 (pos)
                    (not (at_b_p3))

                    ; #92104: <==negation-removal== 83441 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #32736: origin
                    (at_b_p5)

                    ; #68439: origin
                    (not_at_b_p3)

                    ; #37869: <==negation-removal== 32736 (pos)
                    (not (not_at_b_p5))

                    ; #40911: <==negation-removal== 68439 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #65951: origin
                    (at_b_p6)

                    ; #68439: origin
                    (not_at_b_p3)

                    ; #40911: <==negation-removal== 68439 (pos)
                    (not (at_b_p3))

                    ; #57137: <==negation-removal== 65951 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #28489: origin
                    (at_b_p7)

                    ; #68439: origin
                    (not_at_b_p3)

                    ; #40911: <==negation-removal== 68439 (pos)
                    (not (at_b_p3))

                    ; #66702: <==negation-removal== 28489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #68439: origin
                    (not_at_b_p3)

                    ; #91616: origin
                    (at_b_p8)

                    ; #40911: <==negation-removal== 68439 (pos)
                    (not (at_b_p3))

                    ; #62206: <==negation-removal== 91616 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #20057: origin
                    (at_b_p9)

                    ; #68439: origin
                    (not_at_b_p3)

                    ; #40911: <==negation-removal== 68439 (pos)
                    (not (at_b_p3))

                    ; #82235: <==negation-removal== 20057 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #39763: origin
                    (at_b_p1)

                    ; #92104: origin
                    (not_at_b_p4)

                    ; #83441: <==negation-removal== 92104 (pos)
                    (not (at_b_p4))

                    ; #87202: <==negation-removal== 39763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #25348: origin
                    (at_b_p2)

                    ; #92104: origin
                    (not_at_b_p4)

                    ; #28338: <==negation-removal== 25348 (pos)
                    (not (not_at_b_p2))

                    ; #83441: <==negation-removal== 92104 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #40911: origin
                    (at_b_p3)

                    ; #92104: origin
                    (not_at_b_p4)

                    ; #68439: <==negation-removal== 40911 (pos)
                    (not (not_at_b_p3))

                    ; #83441: <==negation-removal== 92104 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #83441: origin
                    (at_b_p4)

                    ; #92104: origin
                    (not_at_b_p4)

                    ; #83441: <==negation-removal== 92104 (pos)
                    (not (at_b_p4))

                    ; #92104: <==negation-removal== 83441 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #32736: origin
                    (at_b_p5)

                    ; #92104: origin
                    (not_at_b_p4)

                    ; #37869: <==negation-removal== 32736 (pos)
                    (not (not_at_b_p5))

                    ; #83441: <==negation-removal== 92104 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #65951: origin
                    (at_b_p6)

                    ; #92104: origin
                    (not_at_b_p4)

                    ; #57137: <==negation-removal== 65951 (pos)
                    (not (not_at_b_p6))

                    ; #83441: <==negation-removal== 92104 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #28489: origin
                    (at_b_p7)

                    ; #92104: origin
                    (not_at_b_p4)

                    ; #66702: <==negation-removal== 28489 (pos)
                    (not (not_at_b_p7))

                    ; #83441: <==negation-removal== 92104 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #91616: origin
                    (at_b_p8)

                    ; #92104: origin
                    (not_at_b_p4)

                    ; #62206: <==negation-removal== 91616 (pos)
                    (not (not_at_b_p8))

                    ; #83441: <==negation-removal== 92104 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #20057: origin
                    (at_b_p9)

                    ; #92104: origin
                    (not_at_b_p4)

                    ; #82235: <==negation-removal== 20057 (pos)
                    (not (not_at_b_p9))

                    ; #83441: <==negation-removal== 92104 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #37869: origin
                    (not_at_b_p5)

                    ; #39763: origin
                    (at_b_p1)

                    ; #32736: <==negation-removal== 37869 (pos)
                    (not (at_b_p5))

                    ; #87202: <==negation-removal== 39763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #25348: origin
                    (at_b_p2)

                    ; #37869: origin
                    (not_at_b_p5)

                    ; #28338: <==negation-removal== 25348 (pos)
                    (not (not_at_b_p2))

                    ; #32736: <==negation-removal== 37869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #37869: origin
                    (not_at_b_p5)

                    ; #40911: origin
                    (at_b_p3)

                    ; #32736: <==negation-removal== 37869 (pos)
                    (not (at_b_p5))

                    ; #68439: <==negation-removal== 40911 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #37869: origin
                    (not_at_b_p5)

                    ; #83441: origin
                    (at_b_p4)

                    ; #32736: <==negation-removal== 37869 (pos)
                    (not (at_b_p5))

                    ; #92104: <==negation-removal== 83441 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #32736: origin
                    (at_b_p5)

                    ; #37869: origin
                    (not_at_b_p5)

                    ; #32736: <==negation-removal== 37869 (pos)
                    (not (at_b_p5))

                    ; #37869: <==negation-removal== 32736 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #37869: origin
                    (not_at_b_p5)

                    ; #65951: origin
                    (at_b_p6)

                    ; #32736: <==negation-removal== 37869 (pos)
                    (not (at_b_p5))

                    ; #57137: <==negation-removal== 65951 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #28489: origin
                    (at_b_p7)

                    ; #37869: origin
                    (not_at_b_p5)

                    ; #32736: <==negation-removal== 37869 (pos)
                    (not (at_b_p5))

                    ; #66702: <==negation-removal== 28489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #37869: origin
                    (not_at_b_p5)

                    ; #91616: origin
                    (at_b_p8)

                    ; #32736: <==negation-removal== 37869 (pos)
                    (not (at_b_p5))

                    ; #62206: <==negation-removal== 91616 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #20057: origin
                    (at_b_p9)

                    ; #37869: origin
                    (not_at_b_p5)

                    ; #32736: <==negation-removal== 37869 (pos)
                    (not (at_b_p5))

                    ; #82235: <==negation-removal== 20057 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #39763: origin
                    (at_b_p1)

                    ; #57137: origin
                    (not_at_b_p6)

                    ; #65951: <==negation-removal== 57137 (pos)
                    (not (at_b_p6))

                    ; #87202: <==negation-removal== 39763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #25348: origin
                    (at_b_p2)

                    ; #57137: origin
                    (not_at_b_p6)

                    ; #28338: <==negation-removal== 25348 (pos)
                    (not (not_at_b_p2))

                    ; #65951: <==negation-removal== 57137 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #40911: origin
                    (at_b_p3)

                    ; #57137: origin
                    (not_at_b_p6)

                    ; #65951: <==negation-removal== 57137 (pos)
                    (not (at_b_p6))

                    ; #68439: <==negation-removal== 40911 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #57137: origin
                    (not_at_b_p6)

                    ; #83441: origin
                    (at_b_p4)

                    ; #65951: <==negation-removal== 57137 (pos)
                    (not (at_b_p6))

                    ; #92104: <==negation-removal== 83441 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #32736: origin
                    (at_b_p5)

                    ; #57137: origin
                    (not_at_b_p6)

                    ; #37869: <==negation-removal== 32736 (pos)
                    (not (not_at_b_p5))

                    ; #65951: <==negation-removal== 57137 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #57137: origin
                    (not_at_b_p6)

                    ; #65951: origin
                    (at_b_p6)

                    ; #57137: <==negation-removal== 65951 (pos)
                    (not (not_at_b_p6))

                    ; #65951: <==negation-removal== 57137 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #28489: origin
                    (at_b_p7)

                    ; #57137: origin
                    (not_at_b_p6)

                    ; #65951: <==negation-removal== 57137 (pos)
                    (not (at_b_p6))

                    ; #66702: <==negation-removal== 28489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #57137: origin
                    (not_at_b_p6)

                    ; #91616: origin
                    (at_b_p8)

                    ; #62206: <==negation-removal== 91616 (pos)
                    (not (not_at_b_p8))

                    ; #65951: <==negation-removal== 57137 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #20057: origin
                    (at_b_p9)

                    ; #57137: origin
                    (not_at_b_p6)

                    ; #65951: <==negation-removal== 57137 (pos)
                    (not (at_b_p6))

                    ; #82235: <==negation-removal== 20057 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #39763: origin
                    (at_b_p1)

                    ; #66702: origin
                    (not_at_b_p7)

                    ; #28489: <==negation-removal== 66702 (pos)
                    (not (at_b_p7))

                    ; #87202: <==negation-removal== 39763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #25348: origin
                    (at_b_p2)

                    ; #66702: origin
                    (not_at_b_p7)

                    ; #28338: <==negation-removal== 25348 (pos)
                    (not (not_at_b_p2))

                    ; #28489: <==negation-removal== 66702 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #40911: origin
                    (at_b_p3)

                    ; #66702: origin
                    (not_at_b_p7)

                    ; #28489: <==negation-removal== 66702 (pos)
                    (not (at_b_p7))

                    ; #68439: <==negation-removal== 40911 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #66702: origin
                    (not_at_b_p7)

                    ; #83441: origin
                    (at_b_p4)

                    ; #28489: <==negation-removal== 66702 (pos)
                    (not (at_b_p7))

                    ; #92104: <==negation-removal== 83441 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #32736: origin
                    (at_b_p5)

                    ; #66702: origin
                    (not_at_b_p7)

                    ; #28489: <==negation-removal== 66702 (pos)
                    (not (at_b_p7))

                    ; #37869: <==negation-removal== 32736 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #65951: origin
                    (at_b_p6)

                    ; #66702: origin
                    (not_at_b_p7)

                    ; #28489: <==negation-removal== 66702 (pos)
                    (not (at_b_p7))

                    ; #57137: <==negation-removal== 65951 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #28489: origin
                    (at_b_p7)

                    ; #66702: origin
                    (not_at_b_p7)

                    ; #28489: <==negation-removal== 66702 (pos)
                    (not (at_b_p7))

                    ; #66702: <==negation-removal== 28489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #66702: origin
                    (not_at_b_p7)

                    ; #91616: origin
                    (at_b_p8)

                    ; #28489: <==negation-removal== 66702 (pos)
                    (not (at_b_p7))

                    ; #62206: <==negation-removal== 91616 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #20057: origin
                    (at_b_p9)

                    ; #66702: origin
                    (not_at_b_p7)

                    ; #28489: <==negation-removal== 66702 (pos)
                    (not (at_b_p7))

                    ; #82235: <==negation-removal== 20057 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #39763: origin
                    (at_b_p1)

                    ; #62206: origin
                    (not_at_b_p8)

                    ; #87202: <==negation-removal== 39763 (pos)
                    (not (not_at_b_p1))

                    ; #91616: <==negation-removal== 62206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #25348: origin
                    (at_b_p2)

                    ; #62206: origin
                    (not_at_b_p8)

                    ; #28338: <==negation-removal== 25348 (pos)
                    (not (not_at_b_p2))

                    ; #91616: <==negation-removal== 62206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #40911: origin
                    (at_b_p3)

                    ; #62206: origin
                    (not_at_b_p8)

                    ; #68439: <==negation-removal== 40911 (pos)
                    (not (not_at_b_p3))

                    ; #91616: <==negation-removal== 62206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #62206: origin
                    (not_at_b_p8)

                    ; #83441: origin
                    (at_b_p4)

                    ; #91616: <==negation-removal== 62206 (pos)
                    (not (at_b_p8))

                    ; #92104: <==negation-removal== 83441 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #32736: origin
                    (at_b_p5)

                    ; #62206: origin
                    (not_at_b_p8)

                    ; #37869: <==negation-removal== 32736 (pos)
                    (not (not_at_b_p5))

                    ; #91616: <==negation-removal== 62206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #62206: origin
                    (not_at_b_p8)

                    ; #65951: origin
                    (at_b_p6)

                    ; #57137: <==negation-removal== 65951 (pos)
                    (not (not_at_b_p6))

                    ; #91616: <==negation-removal== 62206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #28489: origin
                    (at_b_p7)

                    ; #62206: origin
                    (not_at_b_p8)

                    ; #66702: <==negation-removal== 28489 (pos)
                    (not (not_at_b_p7))

                    ; #91616: <==negation-removal== 62206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #62206: origin
                    (not_at_b_p8)

                    ; #91616: origin
                    (at_b_p8)

                    ; #62206: <==negation-removal== 91616 (pos)
                    (not (not_at_b_p8))

                    ; #91616: <==negation-removal== 62206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #20057: origin
                    (at_b_p9)

                    ; #62206: origin
                    (not_at_b_p8)

                    ; #82235: <==negation-removal== 20057 (pos)
                    (not (not_at_b_p9))

                    ; #91616: <==negation-removal== 62206 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #39763: origin
                    (at_b_p1)

                    ; #82235: origin
                    (not_at_b_p9)

                    ; #20057: <==negation-removal== 82235 (pos)
                    (not (at_b_p9))

                    ; #87202: <==negation-removal== 39763 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #25348: origin
                    (at_b_p2)

                    ; #82235: origin
                    (not_at_b_p9)

                    ; #20057: <==negation-removal== 82235 (pos)
                    (not (at_b_p9))

                    ; #28338: <==negation-removal== 25348 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #40911: origin
                    (at_b_p3)

                    ; #82235: origin
                    (not_at_b_p9)

                    ; #20057: <==negation-removal== 82235 (pos)
                    (not (at_b_p9))

                    ; #68439: <==negation-removal== 40911 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #82235: origin
                    (not_at_b_p9)

                    ; #83441: origin
                    (at_b_p4)

                    ; #20057: <==negation-removal== 82235 (pos)
                    (not (at_b_p9))

                    ; #92104: <==negation-removal== 83441 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #32736: origin
                    (at_b_p5)

                    ; #82235: origin
                    (not_at_b_p9)

                    ; #20057: <==negation-removal== 82235 (pos)
                    (not (at_b_p9))

                    ; #37869: <==negation-removal== 32736 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #65951: origin
                    (at_b_p6)

                    ; #82235: origin
                    (not_at_b_p9)

                    ; #20057: <==negation-removal== 82235 (pos)
                    (not (at_b_p9))

                    ; #57137: <==negation-removal== 65951 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #28489: origin
                    (at_b_p7)

                    ; #82235: origin
                    (not_at_b_p9)

                    ; #20057: <==negation-removal== 82235 (pos)
                    (not (at_b_p9))

                    ; #66702: <==negation-removal== 28489 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #82235: origin
                    (not_at_b_p9)

                    ; #91616: origin
                    (at_b_p8)

                    ; #20057: <==negation-removal== 82235 (pos)
                    (not (at_b_p9))

                    ; #62206: <==negation-removal== 91616 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #20057: origin
                    (at_b_p9)

                    ; #82235: origin
                    (not_at_b_p9)

                    ; #20057: <==negation-removal== 82235 (pos)
                    (not (at_b_p9))

                    ; #82235: <==negation-removal== 20057 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #34859: origin
                    (not_at_c_p1)

                    ; #59541: origin
                    (at_c_p1)

                    ; #34859: <==negation-removal== 59541 (pos)
                    (not (not_at_c_p1))

                    ; #59541: <==negation-removal== 34859 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #34859: origin
                    (not_at_c_p1)

                    ; #40785: origin
                    (at_c_p2)

                    ; #10140: <==negation-removal== 40785 (pos)
                    (not (not_at_c_p2))

                    ; #59541: <==negation-removal== 34859 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #34859: origin
                    (not_at_c_p1)

                    ; #82780: origin
                    (at_c_p3)

                    ; #46034: <==negation-removal== 82780 (pos)
                    (not (not_at_c_p3))

                    ; #59541: <==negation-removal== 34859 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #28302: origin
                    (at_c_p4)

                    ; #34859: origin
                    (not_at_c_p1)

                    ; #14893: <==negation-removal== 28302 (pos)
                    (not (not_at_c_p4))

                    ; #59541: <==negation-removal== 34859 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #34859: origin
                    (not_at_c_p1)

                    ; #53602: origin
                    (at_c_p5)

                    ; #56924: <==negation-removal== 53602 (pos)
                    (not (not_at_c_p5))

                    ; #59541: <==negation-removal== 34859 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #11507: origin
                    (at_c_p6)

                    ; #34859: origin
                    (not_at_c_p1)

                    ; #59541: <==negation-removal== 34859 (pos)
                    (not (at_c_p1))

                    ; #77498: <==negation-removal== 11507 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #34859: origin
                    (not_at_c_p1)

                    ; #63440: origin
                    (at_c_p7)

                    ; #59541: <==negation-removal== 34859 (pos)
                    (not (at_c_p1))

                    ; #88266: <==negation-removal== 63440 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #34859: origin
                    (not_at_c_p1)

                    ; #44363: origin
                    (at_c_p8)

                    ; #59541: <==negation-removal== 34859 (pos)
                    (not (at_c_p1))

                    ; #72277: <==negation-removal== 44363 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #34159: origin
                    (at_c_p9)

                    ; #34859: origin
                    (not_at_c_p1)

                    ; #59541: <==negation-removal== 34859 (pos)
                    (not (at_c_p1))

                    ; #81717: <==negation-removal== 34159 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #10140: origin
                    (not_at_c_p2)

                    ; #59541: origin
                    (at_c_p1)

                    ; #34859: <==negation-removal== 59541 (pos)
                    (not (not_at_c_p1))

                    ; #40785: <==negation-removal== 10140 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #10140: origin
                    (not_at_c_p2)

                    ; #40785: origin
                    (at_c_p2)

                    ; #10140: <==negation-removal== 40785 (pos)
                    (not (not_at_c_p2))

                    ; #40785: <==negation-removal== 10140 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #10140: origin
                    (not_at_c_p2)

                    ; #82780: origin
                    (at_c_p3)

                    ; #40785: <==negation-removal== 10140 (pos)
                    (not (at_c_p2))

                    ; #46034: <==negation-removal== 82780 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #10140: origin
                    (not_at_c_p2)

                    ; #28302: origin
                    (at_c_p4)

                    ; #14893: <==negation-removal== 28302 (pos)
                    (not (not_at_c_p4))

                    ; #40785: <==negation-removal== 10140 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #10140: origin
                    (not_at_c_p2)

                    ; #53602: origin
                    (at_c_p5)

                    ; #40785: <==negation-removal== 10140 (pos)
                    (not (at_c_p2))

                    ; #56924: <==negation-removal== 53602 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #10140: origin
                    (not_at_c_p2)

                    ; #11507: origin
                    (at_c_p6)

                    ; #40785: <==negation-removal== 10140 (pos)
                    (not (at_c_p2))

                    ; #77498: <==negation-removal== 11507 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #10140: origin
                    (not_at_c_p2)

                    ; #63440: origin
                    (at_c_p7)

                    ; #40785: <==negation-removal== 10140 (pos)
                    (not (at_c_p2))

                    ; #88266: <==negation-removal== 63440 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #10140: origin
                    (not_at_c_p2)

                    ; #44363: origin
                    (at_c_p8)

                    ; #40785: <==negation-removal== 10140 (pos)
                    (not (at_c_p2))

                    ; #72277: <==negation-removal== 44363 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #10140: origin
                    (not_at_c_p2)

                    ; #34159: origin
                    (at_c_p9)

                    ; #40785: <==negation-removal== 10140 (pos)
                    (not (at_c_p2))

                    ; #81717: <==negation-removal== 34159 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #46034: origin
                    (not_at_c_p3)

                    ; #59541: origin
                    (at_c_p1)

                    ; #34859: <==negation-removal== 59541 (pos)
                    (not (not_at_c_p1))

                    ; #82780: <==negation-removal== 46034 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #40785: origin
                    (at_c_p2)

                    ; #46034: origin
                    (not_at_c_p3)

                    ; #10140: <==negation-removal== 40785 (pos)
                    (not (not_at_c_p2))

                    ; #82780: <==negation-removal== 46034 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #46034: origin
                    (not_at_c_p3)

                    ; #82780: origin
                    (at_c_p3)

                    ; #46034: <==negation-removal== 82780 (pos)
                    (not (not_at_c_p3))

                    ; #82780: <==negation-removal== 46034 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #28302: origin
                    (at_c_p4)

                    ; #46034: origin
                    (not_at_c_p3)

                    ; #14893: <==negation-removal== 28302 (pos)
                    (not (not_at_c_p4))

                    ; #82780: <==negation-removal== 46034 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #46034: origin
                    (not_at_c_p3)

                    ; #53602: origin
                    (at_c_p5)

                    ; #56924: <==negation-removal== 53602 (pos)
                    (not (not_at_c_p5))

                    ; #82780: <==negation-removal== 46034 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #11507: origin
                    (at_c_p6)

                    ; #46034: origin
                    (not_at_c_p3)

                    ; #77498: <==negation-removal== 11507 (pos)
                    (not (not_at_c_p6))

                    ; #82780: <==negation-removal== 46034 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #46034: origin
                    (not_at_c_p3)

                    ; #63440: origin
                    (at_c_p7)

                    ; #82780: <==negation-removal== 46034 (pos)
                    (not (at_c_p3))

                    ; #88266: <==negation-removal== 63440 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #44363: origin
                    (at_c_p8)

                    ; #46034: origin
                    (not_at_c_p3)

                    ; #72277: <==negation-removal== 44363 (pos)
                    (not (not_at_c_p8))

                    ; #82780: <==negation-removal== 46034 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #34159: origin
                    (at_c_p9)

                    ; #46034: origin
                    (not_at_c_p3)

                    ; #81717: <==negation-removal== 34159 (pos)
                    (not (not_at_c_p9))

                    ; #82780: <==negation-removal== 46034 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #14893: origin
                    (not_at_c_p4)

                    ; #59541: origin
                    (at_c_p1)

                    ; #28302: <==negation-removal== 14893 (pos)
                    (not (at_c_p4))

                    ; #34859: <==negation-removal== 59541 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #14893: origin
                    (not_at_c_p4)

                    ; #40785: origin
                    (at_c_p2)

                    ; #10140: <==negation-removal== 40785 (pos)
                    (not (not_at_c_p2))

                    ; #28302: <==negation-removal== 14893 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #14893: origin
                    (not_at_c_p4)

                    ; #82780: origin
                    (at_c_p3)

                    ; #28302: <==negation-removal== 14893 (pos)
                    (not (at_c_p4))

                    ; #46034: <==negation-removal== 82780 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #14893: origin
                    (not_at_c_p4)

                    ; #28302: origin
                    (at_c_p4)

                    ; #14893: <==negation-removal== 28302 (pos)
                    (not (not_at_c_p4))

                    ; #28302: <==negation-removal== 14893 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #14893: origin
                    (not_at_c_p4)

                    ; #53602: origin
                    (at_c_p5)

                    ; #28302: <==negation-removal== 14893 (pos)
                    (not (at_c_p4))

                    ; #56924: <==negation-removal== 53602 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #11507: origin
                    (at_c_p6)

                    ; #14893: origin
                    (not_at_c_p4)

                    ; #28302: <==negation-removal== 14893 (pos)
                    (not (at_c_p4))

                    ; #77498: <==negation-removal== 11507 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #14893: origin
                    (not_at_c_p4)

                    ; #63440: origin
                    (at_c_p7)

                    ; #28302: <==negation-removal== 14893 (pos)
                    (not (at_c_p4))

                    ; #88266: <==negation-removal== 63440 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #14893: origin
                    (not_at_c_p4)

                    ; #44363: origin
                    (at_c_p8)

                    ; #28302: <==negation-removal== 14893 (pos)
                    (not (at_c_p4))

                    ; #72277: <==negation-removal== 44363 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #14893: origin
                    (not_at_c_p4)

                    ; #34159: origin
                    (at_c_p9)

                    ; #28302: <==negation-removal== 14893 (pos)
                    (not (at_c_p4))

                    ; #81717: <==negation-removal== 34159 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #56924: origin
                    (not_at_c_p5)

                    ; #59541: origin
                    (at_c_p1)

                    ; #34859: <==negation-removal== 59541 (pos)
                    (not (not_at_c_p1))

                    ; #53602: <==negation-removal== 56924 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #40785: origin
                    (at_c_p2)

                    ; #56924: origin
                    (not_at_c_p5)

                    ; #10140: <==negation-removal== 40785 (pos)
                    (not (not_at_c_p2))

                    ; #53602: <==negation-removal== 56924 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #56924: origin
                    (not_at_c_p5)

                    ; #82780: origin
                    (at_c_p3)

                    ; #46034: <==negation-removal== 82780 (pos)
                    (not (not_at_c_p3))

                    ; #53602: <==negation-removal== 56924 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #28302: origin
                    (at_c_p4)

                    ; #56924: origin
                    (not_at_c_p5)

                    ; #14893: <==negation-removal== 28302 (pos)
                    (not (not_at_c_p4))

                    ; #53602: <==negation-removal== 56924 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #53602: origin
                    (at_c_p5)

                    ; #56924: origin
                    (not_at_c_p5)

                    ; #53602: <==negation-removal== 56924 (pos)
                    (not (at_c_p5))

                    ; #56924: <==negation-removal== 53602 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #11507: origin
                    (at_c_p6)

                    ; #56924: origin
                    (not_at_c_p5)

                    ; #53602: <==negation-removal== 56924 (pos)
                    (not (at_c_p5))

                    ; #77498: <==negation-removal== 11507 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #56924: origin
                    (not_at_c_p5)

                    ; #63440: origin
                    (at_c_p7)

                    ; #53602: <==negation-removal== 56924 (pos)
                    (not (at_c_p5))

                    ; #88266: <==negation-removal== 63440 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #44363: origin
                    (at_c_p8)

                    ; #56924: origin
                    (not_at_c_p5)

                    ; #53602: <==negation-removal== 56924 (pos)
                    (not (at_c_p5))

                    ; #72277: <==negation-removal== 44363 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #34159: origin
                    (at_c_p9)

                    ; #56924: origin
                    (not_at_c_p5)

                    ; #53602: <==negation-removal== 56924 (pos)
                    (not (at_c_p5))

                    ; #81717: <==negation-removal== 34159 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #59541: origin
                    (at_c_p1)

                    ; #77498: origin
                    (not_at_c_p6)

                    ; #11507: <==negation-removal== 77498 (pos)
                    (not (at_c_p6))

                    ; #34859: <==negation-removal== 59541 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #40785: origin
                    (at_c_p2)

                    ; #77498: origin
                    (not_at_c_p6)

                    ; #10140: <==negation-removal== 40785 (pos)
                    (not (not_at_c_p2))

                    ; #11507: <==negation-removal== 77498 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #77498: origin
                    (not_at_c_p6)

                    ; #82780: origin
                    (at_c_p3)

                    ; #11507: <==negation-removal== 77498 (pos)
                    (not (at_c_p6))

                    ; #46034: <==negation-removal== 82780 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #28302: origin
                    (at_c_p4)

                    ; #77498: origin
                    (not_at_c_p6)

                    ; #11507: <==negation-removal== 77498 (pos)
                    (not (at_c_p6))

                    ; #14893: <==negation-removal== 28302 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #53602: origin
                    (at_c_p5)

                    ; #77498: origin
                    (not_at_c_p6)

                    ; #11507: <==negation-removal== 77498 (pos)
                    (not (at_c_p6))

                    ; #56924: <==negation-removal== 53602 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #11507: origin
                    (at_c_p6)

                    ; #77498: origin
                    (not_at_c_p6)

                    ; #11507: <==negation-removal== 77498 (pos)
                    (not (at_c_p6))

                    ; #77498: <==negation-removal== 11507 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #63440: origin
                    (at_c_p7)

                    ; #77498: origin
                    (not_at_c_p6)

                    ; #11507: <==negation-removal== 77498 (pos)
                    (not (at_c_p6))

                    ; #88266: <==negation-removal== 63440 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #44363: origin
                    (at_c_p8)

                    ; #77498: origin
                    (not_at_c_p6)

                    ; #11507: <==negation-removal== 77498 (pos)
                    (not (at_c_p6))

                    ; #72277: <==negation-removal== 44363 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #34159: origin
                    (at_c_p9)

                    ; #77498: origin
                    (not_at_c_p6)

                    ; #11507: <==negation-removal== 77498 (pos)
                    (not (at_c_p6))

                    ; #81717: <==negation-removal== 34159 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #59541: origin
                    (at_c_p1)

                    ; #88266: origin
                    (not_at_c_p7)

                    ; #34859: <==negation-removal== 59541 (pos)
                    (not (not_at_c_p1))

                    ; #63440: <==negation-removal== 88266 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #40785: origin
                    (at_c_p2)

                    ; #88266: origin
                    (not_at_c_p7)

                    ; #10140: <==negation-removal== 40785 (pos)
                    (not (not_at_c_p2))

                    ; #63440: <==negation-removal== 88266 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #82780: origin
                    (at_c_p3)

                    ; #88266: origin
                    (not_at_c_p7)

                    ; #46034: <==negation-removal== 82780 (pos)
                    (not (not_at_c_p3))

                    ; #63440: <==negation-removal== 88266 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #28302: origin
                    (at_c_p4)

                    ; #88266: origin
                    (not_at_c_p7)

                    ; #14893: <==negation-removal== 28302 (pos)
                    (not (not_at_c_p4))

                    ; #63440: <==negation-removal== 88266 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #53602: origin
                    (at_c_p5)

                    ; #88266: origin
                    (not_at_c_p7)

                    ; #56924: <==negation-removal== 53602 (pos)
                    (not (not_at_c_p5))

                    ; #63440: <==negation-removal== 88266 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #11507: origin
                    (at_c_p6)

                    ; #88266: origin
                    (not_at_c_p7)

                    ; #63440: <==negation-removal== 88266 (pos)
                    (not (at_c_p7))

                    ; #77498: <==negation-removal== 11507 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #63440: origin
                    (at_c_p7)

                    ; #88266: origin
                    (not_at_c_p7)

                    ; #63440: <==negation-removal== 88266 (pos)
                    (not (at_c_p7))

                    ; #88266: <==negation-removal== 63440 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #44363: origin
                    (at_c_p8)

                    ; #88266: origin
                    (not_at_c_p7)

                    ; #63440: <==negation-removal== 88266 (pos)
                    (not (at_c_p7))

                    ; #72277: <==negation-removal== 44363 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #34159: origin
                    (at_c_p9)

                    ; #88266: origin
                    (not_at_c_p7)

                    ; #63440: <==negation-removal== 88266 (pos)
                    (not (at_c_p7))

                    ; #81717: <==negation-removal== 34159 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #59541: origin
                    (at_c_p1)

                    ; #72277: origin
                    (not_at_c_p8)

                    ; #34859: <==negation-removal== 59541 (pos)
                    (not (not_at_c_p1))

                    ; #44363: <==negation-removal== 72277 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #40785: origin
                    (at_c_p2)

                    ; #72277: origin
                    (not_at_c_p8)

                    ; #10140: <==negation-removal== 40785 (pos)
                    (not (not_at_c_p2))

                    ; #44363: <==negation-removal== 72277 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #72277: origin
                    (not_at_c_p8)

                    ; #82780: origin
                    (at_c_p3)

                    ; #44363: <==negation-removal== 72277 (pos)
                    (not (at_c_p8))

                    ; #46034: <==negation-removal== 82780 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #28302: origin
                    (at_c_p4)

                    ; #72277: origin
                    (not_at_c_p8)

                    ; #14893: <==negation-removal== 28302 (pos)
                    (not (not_at_c_p4))

                    ; #44363: <==negation-removal== 72277 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #53602: origin
                    (at_c_p5)

                    ; #72277: origin
                    (not_at_c_p8)

                    ; #44363: <==negation-removal== 72277 (pos)
                    (not (at_c_p8))

                    ; #56924: <==negation-removal== 53602 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #11507: origin
                    (at_c_p6)

                    ; #72277: origin
                    (not_at_c_p8)

                    ; #44363: <==negation-removal== 72277 (pos)
                    (not (at_c_p8))

                    ; #77498: <==negation-removal== 11507 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #63440: origin
                    (at_c_p7)

                    ; #72277: origin
                    (not_at_c_p8)

                    ; #44363: <==negation-removal== 72277 (pos)
                    (not (at_c_p8))

                    ; #88266: <==negation-removal== 63440 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #44363: origin
                    (at_c_p8)

                    ; #72277: origin
                    (not_at_c_p8)

                    ; #44363: <==negation-removal== 72277 (pos)
                    (not (at_c_p8))

                    ; #72277: <==negation-removal== 44363 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #34159: origin
                    (at_c_p9)

                    ; #72277: origin
                    (not_at_c_p8)

                    ; #44363: <==negation-removal== 72277 (pos)
                    (not (at_c_p8))

                    ; #81717: <==negation-removal== 34159 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #59541: origin
                    (at_c_p1)

                    ; #81717: origin
                    (not_at_c_p9)

                    ; #34159: <==negation-removal== 81717 (pos)
                    (not (at_c_p9))

                    ; #34859: <==negation-removal== 59541 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #40785: origin
                    (at_c_p2)

                    ; #81717: origin
                    (not_at_c_p9)

                    ; #10140: <==negation-removal== 40785 (pos)
                    (not (not_at_c_p2))

                    ; #34159: <==negation-removal== 81717 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #81717: origin
                    (not_at_c_p9)

                    ; #82780: origin
                    (at_c_p3)

                    ; #34159: <==negation-removal== 81717 (pos)
                    (not (at_c_p9))

                    ; #46034: <==negation-removal== 82780 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #28302: origin
                    (at_c_p4)

                    ; #81717: origin
                    (not_at_c_p9)

                    ; #14893: <==negation-removal== 28302 (pos)
                    (not (not_at_c_p4))

                    ; #34159: <==negation-removal== 81717 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #53602: origin
                    (at_c_p5)

                    ; #81717: origin
                    (not_at_c_p9)

                    ; #34159: <==negation-removal== 81717 (pos)
                    (not (at_c_p9))

                    ; #56924: <==negation-removal== 53602 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #11507: origin
                    (at_c_p6)

                    ; #81717: origin
                    (not_at_c_p9)

                    ; #34159: <==negation-removal== 81717 (pos)
                    (not (at_c_p9))

                    ; #77498: <==negation-removal== 11507 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #63440: origin
                    (at_c_p7)

                    ; #81717: origin
                    (not_at_c_p9)

                    ; #34159: <==negation-removal== 81717 (pos)
                    (not (at_c_p9))

                    ; #88266: <==negation-removal== 63440 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #44363: origin
                    (at_c_p8)

                    ; #81717: origin
                    (not_at_c_p9)

                    ; #34159: <==negation-removal== 81717 (pos)
                    (not (at_c_p9))

                    ; #72277: <==negation-removal== 44363 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #34159: origin
                    (at_c_p9)

                    ; #81717: origin
                    (not_at_c_p9)

                    ; #34159: <==negation-removal== 81717 (pos)
                    (not (at_c_p9))

                    ; #81717: <==negation-removal== 34159 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #16242: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #16416: <==commonly_known== 47158 (pos)
                    (Bc_checked_p1)

                    ; #27993: <==commonly_known== 47158 (pos)
                    (Ba_checked_p1)

                    ; #41654: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #43119: <==commonly_known== 57376 (neg)
                    (Pc_checked_p1)

                    ; #47158: origin
                    (checked_p1)

                    ; #51940: <==closure== 41654 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #62446: <==commonly_known== 57376 (neg)
                    (Pa_checked_p1)

                    ; #71969: <==closure== 16242 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #72513: <==commonly_known== 47158 (pos)
                    (Bb_checked_p1)

                    ; #84352: <==commonly_known== 57376 (neg)
                    (Pb_checked_p1)

                    ; #10072: <==negation-removal== 16416 (pos)
                    (not (Pc_not_checked_p1))

                    ; #21817: <==uncertain_firing== 16242 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #22837: <==negation-removal== 27993 (pos)
                    (not (Pa_not_checked_p1))

                    ; #29414: <==negation-removal== 71969 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #40510: <==uncertain_firing== 41654 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #44335: <==uncertain_firing== 71969 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #45461: <==negation-removal== 16242 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #54142: <==negation-removal== 72513 (pos)
                    (not (Pb_not_checked_p1))

                    ; #56795: <==negation-removal== 51940 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #57376: <==negation-removal== 47158 (pos)
                    (not (not_checked_p1))

                    ; #60553: <==negation-removal== 62446 (pos)
                    (not (Ba_not_checked_p1))

                    ; #78809: <==uncertain_firing== 51940 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #80544: <==negation-removal== 84352 (pos)
                    (not (Bb_not_checked_p1))

                    ; #80616: <==negation-removal== 41654 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #83799: <==negation-removal== 43119 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #18349: origin
                    (checked_p2)

                    ; #24509: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #42271: <==commonly_known== 32987 (neg)
                    (Pa_checked_p2)

                    ; #43226: <==commonly_known== 18349 (pos)
                    (Bb_checked_p2)

                    ; #47661: <==commonly_known== 32987 (neg)
                    (Pc_checked_p2)

                    ; #47885: <==commonly_known== 18349 (pos)
                    (Bc_checked_p2)

                    ; #53623: <==commonly_known== 32987 (neg)
                    (Pb_checked_p2)

                    ; #67611: <==closure== 24509 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #76527: <==closure== 81501 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #81501: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #91399: <==commonly_known== 18349 (pos)
                    (Ba_checked_p2)

                    ; #25004: <==negation-removal== 81501 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #25732: <==negation-removal== 47885 (pos)
                    (not (Pc_not_checked_p2))

                    ; #26312: <==negation-removal== 91399 (pos)
                    (not (Pa_not_checked_p2))

                    ; #29513: <==negation-removal== 47661 (pos)
                    (not (Bc_not_checked_p2))

                    ; #31227: <==negation-removal== 24509 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #31473: <==negation-removal== 67611 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #32987: <==negation-removal== 18349 (pos)
                    (not (not_checked_p2))

                    ; #40575: <==negation-removal== 43226 (pos)
                    (not (Pb_not_checked_p2))

                    ; #42708: <==uncertain_firing== 24509 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #46258: <==uncertain_firing== 67611 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #55248: <==uncertain_firing== 76527 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #64728: <==negation-removal== 42271 (pos)
                    (not (Ba_not_checked_p2))

                    ; #85085: <==negation-removal== 76527 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #88547: <==uncertain_firing== 81501 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #91599: <==negation-removal== 53623 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #18962: <==commonly_known== 36586 (pos)
                    (Bb_checked_p3)

                    ; #29447: <==closure== 88366 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #31976: <==commonly_known== 66817 (neg)
                    (Pb_checked_p3)

                    ; #36586: origin
                    (checked_p3)

                    ; #42691: <==commonly_known== 66817 (neg)
                    (Pa_checked_p3)

                    ; #47730: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #63605: <==commonly_known== 66817 (neg)
                    (Pc_checked_p3)

                    ; #65483: <==commonly_known== 36586 (pos)
                    (Bc_checked_p3)

                    ; #78353: <==closure== 47730 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #85530: <==commonly_known== 36586 (pos)
                    (Ba_checked_p3)

                    ; #88366: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #17273: <==negation-removal== 63605 (pos)
                    (not (Bc_not_checked_p3))

                    ; #21834: <==negation-removal== 47730 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #25588: <==negation-removal== 42691 (pos)
                    (not (Ba_not_checked_p3))

                    ; #39110: <==negation-removal== 88366 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #39303: <==uncertain_firing== 78353 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #45754: <==negation-removal== 65483 (pos)
                    (not (Pc_not_checked_p3))

                    ; #52117: <==negation-removal== 18962 (pos)
                    (not (Pb_not_checked_p3))

                    ; #59385: <==negation-removal== 31976 (pos)
                    (not (Bb_not_checked_p3))

                    ; #64149: <==negation-removal== 29447 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #66817: <==negation-removal== 36586 (pos)
                    (not (not_checked_p3))

                    ; #68899: <==negation-removal== 78353 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #69241: <==uncertain_firing== 47730 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #72688: <==uncertain_firing== 29447 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #77368: <==negation-removal== 85530 (pos)
                    (not (Pa_not_checked_p3))

                    ; #82382: <==uncertain_firing== 88366 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #14100: <==closure== 60018 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #29179: <==commonly_known== 35673 (pos)
                    (Bb_checked_p4)

                    ; #35673: origin
                    (checked_p4)

                    ; #40065: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #42519: <==commonly_known== 32137 (neg)
                    (Pc_checked_p4)

                    ; #53194: <==commonly_known== 35673 (pos)
                    (Ba_checked_p4)

                    ; #56516: <==commonly_known== 32137 (neg)
                    (Pb_checked_p4)

                    ; #60018: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #67412: <==commonly_known== 35673 (pos)
                    (Bc_checked_p4)

                    ; #71591: <==closure== 40065 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #85135: <==commonly_known== 32137 (neg)
                    (Pa_checked_p4)

                    ; #15220: <==negation-removal== 71591 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #17050: <==negation-removal== 56516 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22633: <==negation-removal== 14100 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #32137: <==negation-removal== 35673 (pos)
                    (not (not_checked_p4))

                    ; #40285: <==negation-removal== 29179 (pos)
                    (not (Pb_not_checked_p4))

                    ; #43755: <==uncertain_firing== 60018 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #44571: <==negation-removal== 60018 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #45840: <==uncertain_firing== 71591 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #58664: <==negation-removal== 40065 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #70665: <==negation-removal== 53194 (pos)
                    (not (Pa_not_checked_p4))

                    ; #79278: <==negation-removal== 85135 (pos)
                    (not (Ba_not_checked_p4))

                    ; #80829: <==negation-removal== 42519 (pos)
                    (not (Bc_not_checked_p4))

                    ; #84086: <==uncertain_firing== 40065 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #85386: <==negation-removal== 67412 (pos)
                    (not (Pc_not_checked_p4))

                    ; #89474: <==uncertain_firing== 14100 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #33898: <==closure== 35323 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #35323: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #37459: <==closure== 85896 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #38820: <==commonly_known== 45122 (neg)
                    (Pc_checked_p5)

                    ; #42949: origin
                    (checked_p5)

                    ; #53550: <==commonly_known== 42949 (pos)
                    (Bb_checked_p5)

                    ; #55547: <==commonly_known== 42949 (pos)
                    (Bc_checked_p5)

                    ; #57873: <==commonly_known== 42949 (pos)
                    (Ba_checked_p5)

                    ; #61011: <==commonly_known== 45122 (neg)
                    (Pa_checked_p5)

                    ; #63231: <==commonly_known== 45122 (neg)
                    (Pb_checked_p5)

                    ; #85896: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #19776: <==negation-removal== 63231 (pos)
                    (not (Bb_not_checked_p5))

                    ; #24211: <==uncertain_firing== 35323 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #26279: <==negation-removal== 61011 (pos)
                    (not (Ba_not_checked_p5))

                    ; #28421: <==negation-removal== 33898 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #29500: <==negation-removal== 53550 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34886: <==uncertain_firing== 85896 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #35442: <==negation-removal== 57873 (pos)
                    (not (Pa_not_checked_p5))

                    ; #43744: <==uncertain_firing== 37459 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #45122: <==negation-removal== 42949 (pos)
                    (not (not_checked_p5))

                    ; #61343: <==negation-removal== 55547 (pos)
                    (not (Pc_not_checked_p5))

                    ; #82969: <==negation-removal== 38820 (pos)
                    (not (Bc_not_checked_p5))

                    ; #84644: <==negation-removal== 85896 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #87418: <==uncertain_firing== 33898 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #90508: <==negation-removal== 37459 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #93610: <==negation-removal== 35323 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12357: <==commonly_known== 59137 (neg)
                    (Pb_checked_p6)

                    ; #13898: <==commonly_known== 17762 (pos)
                    (Bb_checked_p6)

                    ; #17762: origin
                    (checked_p6)

                    ; #19042: <==closure== 58803 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #23718: <==closure== 32316 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #32238: <==commonly_known== 17762 (pos)
                    (Ba_checked_p6)

                    ; #32316: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #54383: <==commonly_known== 59137 (neg)
                    (Pc_checked_p6)

                    ; #58803: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #73894: <==commonly_known== 17762 (pos)
                    (Bc_checked_p6)

                    ; #79161: <==commonly_known== 59137 (neg)
                    (Pa_checked_p6)

                    ; #13573: <==negation-removal== 13898 (pos)
                    (not (Pb_not_checked_p6))

                    ; #14736: <==negation-removal== 32238 (pos)
                    (not (Pa_not_checked_p6))

                    ; #21772: <==uncertain_firing== 19042 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #26062: <==negation-removal== 79161 (pos)
                    (not (Ba_not_checked_p6))

                    ; #32814: <==negation-removal== 73894 (pos)
                    (not (Pc_not_checked_p6))

                    ; #45022: <==uncertain_firing== 32316 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #47024: <==uncertain_firing== 23718 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #48593: <==negation-removal== 12357 (pos)
                    (not (Bb_not_checked_p6))

                    ; #59137: <==negation-removal== 17762 (pos)
                    (not (not_checked_p6))

                    ; #60403: <==uncertain_firing== 58803 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #63063: <==negation-removal== 19042 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #64716: <==negation-removal== 58803 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #79215: <==negation-removal== 32316 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #82969: <==negation-removal== 23718 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #87762: <==negation-removal== 54383 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #24496: <==closure== 59247 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #27111: <==commonly_known== 17197 (neg)
                    (Pc_checked_p7)

                    ; #40144: <==commonly_known== 50234 (pos)
                    (Ba_checked_p7)

                    ; #50234: origin
                    (checked_p7)

                    ; #59247: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #60169: <==commonly_known== 17197 (neg)
                    (Pb_checked_p7)

                    ; #61323: <==closure== 83080 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #66692: <==commonly_known== 50234 (pos)
                    (Bb_checked_p7)

                    ; #70543: <==commonly_known== 50234 (pos)
                    (Bc_checked_p7)

                    ; #83080: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #87994: <==commonly_known== 17197 (neg)
                    (Pa_checked_p7)

                    ; #15930: <==negation-removal== 83080 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #17197: <==negation-removal== 50234 (pos)
                    (not (not_checked_p7))

                    ; #29402: <==negation-removal== 60169 (pos)
                    (not (Bb_not_checked_p7))

                    ; #31307: <==negation-removal== 27111 (pos)
                    (not (Bc_not_checked_p7))

                    ; #40964: <==negation-removal== 70543 (pos)
                    (not (Pc_not_checked_p7))

                    ; #43548: <==uncertain_firing== 59247 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #48539: <==negation-removal== 24496 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #52275: <==uncertain_firing== 24496 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #53233: <==negation-removal== 59247 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #53532: <==negation-removal== 87994 (pos)
                    (not (Ba_not_checked_p7))

                    ; #61636: <==negation-removal== 66692 (pos)
                    (not (Pb_not_checked_p7))

                    ; #65258: <==uncertain_firing== 83080 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #72260: <==uncertain_firing== 61323 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #76791: <==negation-removal== 40144 (pos)
                    (not (Pa_not_checked_p7))

                    ; #81556: <==negation-removal== 61323 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11031: <==commonly_known== 30206 (neg)
                    (Pb_checked_p8)

                    ; #20070: <==closure== 24707 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #24707: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #36742: <==commonly_known== 30206 (neg)
                    (Pc_checked_p8)

                    ; #62742: <==commonly_known== 30206 (neg)
                    (Pa_checked_p8)

                    ; #74649: <==closure== 83826 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #83826: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #84300: <==commonly_known== 95578 (pos)
                    (Ba_checked_p8)

                    ; #90276: <==commonly_known== 95578 (pos)
                    (Bc_checked_p8)

                    ; #90950: <==commonly_known== 95578 (pos)
                    (Bb_checked_p8)

                    ; #95578: origin
                    (checked_p8)

                    ; #14603: <==negation-removal== 36742 (pos)
                    (not (Bc_not_checked_p8))

                    ; #17591: <==negation-removal== 20070 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #30206: <==negation-removal== 95578 (pos)
                    (not (not_checked_p8))

                    ; #39747: <==uncertain_firing== 83826 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #43332: <==negation-removal== 83826 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #43347: <==negation-removal== 24707 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #43460: <==negation-removal== 84300 (pos)
                    (not (Pa_not_checked_p8))

                    ; #47624: <==uncertain_firing== 20070 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #63555: <==negation-removal== 62742 (pos)
                    (not (Ba_not_checked_p8))

                    ; #74051: <==uncertain_firing== 74649 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #82922: <==negation-removal== 11031 (pos)
                    (not (Bb_not_checked_p8))

                    ; #83056: <==negation-removal== 90276 (pos)
                    (not (Pc_not_checked_p8))

                    ; #84441: <==negation-removal== 90950 (pos)
                    (not (Pb_not_checked_p8))

                    ; #86236: <==uncertain_firing== 24707 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #91512: <==negation-removal== 74649 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10591: <==closure== 69098 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #15599: <==commonly_known== 66489 (pos)
                    (Ba_checked_p9)

                    ; #16953: <==commonly_known== 52096 (neg)
                    (Pc_checked_p9)

                    ; #18758: <==commonly_known== 52096 (neg)
                    (Pa_checked_p9)

                    ; #22238: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #23691: <==commonly_known== 52096 (neg)
                    (Pb_checked_p9)

                    ; #66489: origin
                    (checked_p9)

                    ; #69098: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #81445: <==closure== 22238 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #84245: <==commonly_known== 66489 (pos)
                    (Bb_checked_p9)

                    ; #87279: <==commonly_known== 66489 (pos)
                    (Bc_checked_p9)

                    ; #14297: <==negation-removal== 10591 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #16428: <==uncertain_firing== 81445 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #19079: <==uncertain_firing== 69098 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #25660: <==negation-removal== 22238 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #27006: <==negation-removal== 87279 (pos)
                    (not (Pc_not_checked_p9))

                    ; #46635: <==negation-removal== 18758 (pos)
                    (not (Ba_not_checked_p9))

                    ; #52096: <==negation-removal== 66489 (pos)
                    (not (not_checked_p9))

                    ; #53245: <==uncertain_firing== 22238 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #55903: <==negation-removal== 16953 (pos)
                    (not (Bc_not_checked_p9))

                    ; #57847: <==uncertain_firing== 10591 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #74551: <==negation-removal== 15599 (pos)
                    (not (Pa_not_checked_p9))

                    ; #80848: <==negation-removal== 69098 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #80905: <==negation-removal== 23691 (pos)
                    (not (Bb_not_checked_p9))

                    ; #82099: <==negation-removal== 81445 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #87519: <==negation-removal== 84245 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #16416: <==commonly_known== 47158 (pos)
                    (Bc_checked_p1)

                    ; #27993: <==commonly_known== 47158 (pos)
                    (Ba_checked_p1)

                    ; #36568: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #43119: <==commonly_known== 57376 (neg)
                    (Pc_checked_p1)

                    ; #47158: origin
                    (checked_p1)

                    ; #49084: <==closure== 36568 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #62446: <==commonly_known== 57376 (neg)
                    (Pa_checked_p1)

                    ; #68825: <==closure== 74999 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #72513: <==commonly_known== 47158 (pos)
                    (Bb_checked_p1)

                    ; #74999: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #84352: <==commonly_known== 57376 (neg)
                    (Pb_checked_p1)

                    ; #10072: <==negation-removal== 16416 (pos)
                    (not (Pc_not_checked_p1))

                    ; #21629: <==uncertain_firing== 49084 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #22837: <==negation-removal== 27993 (pos)
                    (not (Pa_not_checked_p1))

                    ; #37771: <==uncertain_firing== 36568 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #45537: <==uncertain_firing== 68825 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #47724: <==negation-removal== 74999 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #54142: <==negation-removal== 72513 (pos)
                    (not (Pb_not_checked_p1))

                    ; #57376: <==negation-removal== 47158 (pos)
                    (not (not_checked_p1))

                    ; #60553: <==negation-removal== 62446 (pos)
                    (not (Ba_not_checked_p1))

                    ; #70184: <==uncertain_firing== 74999 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #71376: <==negation-removal== 49084 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #78939: <==negation-removal== 36568 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #79208: <==negation-removal== 68825 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #80544: <==negation-removal== 84352 (pos)
                    (not (Bb_not_checked_p1))

                    ; #83799: <==negation-removal== 43119 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #14980: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #18349: origin
                    (checked_p2)

                    ; #41173: <==closure== 64089 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #42271: <==commonly_known== 32987 (neg)
                    (Pa_checked_p2)

                    ; #43226: <==commonly_known== 18349 (pos)
                    (Bb_checked_p2)

                    ; #47661: <==commonly_known== 32987 (neg)
                    (Pc_checked_p2)

                    ; #47885: <==commonly_known== 18349 (pos)
                    (Bc_checked_p2)

                    ; #53623: <==commonly_known== 32987 (neg)
                    (Pb_checked_p2)

                    ; #64089: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #66177: <==closure== 14980 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #91399: <==commonly_known== 18349 (pos)
                    (Ba_checked_p2)

                    ; #13880: <==negation-removal== 66177 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #14538: <==negation-removal== 64089 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #21776: <==negation-removal== 14980 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #23686: <==negation-removal== 41173 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #25732: <==negation-removal== 47885 (pos)
                    (not (Pc_not_checked_p2))

                    ; #26312: <==negation-removal== 91399 (pos)
                    (not (Pa_not_checked_p2))

                    ; #29513: <==negation-removal== 47661 (pos)
                    (not (Bc_not_checked_p2))

                    ; #31035: <==uncertain_firing== 64089 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #32987: <==negation-removal== 18349 (pos)
                    (not (not_checked_p2))

                    ; #40575: <==negation-removal== 43226 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54210: <==uncertain_firing== 14980 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #63990: <==uncertain_firing== 66177 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #64728: <==negation-removal== 42271 (pos)
                    (not (Ba_not_checked_p2))

                    ; #78839: <==uncertain_firing== 41173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #91599: <==negation-removal== 53623 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #18962: <==commonly_known== 36586 (pos)
                    (Bb_checked_p3)

                    ; #31976: <==commonly_known== 66817 (neg)
                    (Pb_checked_p3)

                    ; #36586: origin
                    (checked_p3)

                    ; #42691: <==commonly_known== 66817 (neg)
                    (Pa_checked_p3)

                    ; #49892: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #52039: <==closure== 49892 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #63605: <==commonly_known== 66817 (neg)
                    (Pc_checked_p3)

                    ; #65483: <==commonly_known== 36586 (pos)
                    (Bc_checked_p3)

                    ; #85530: <==commonly_known== 36586 (pos)
                    (Ba_checked_p3)

                    ; #85653: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #89133: <==closure== 85653 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #16308: <==negation-removal== 52039 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #16324: <==negation-removal== 85653 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #17273: <==negation-removal== 63605 (pos)
                    (not (Bc_not_checked_p3))

                    ; #23415: <==uncertain_firing== 89133 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #25588: <==negation-removal== 42691 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45754: <==negation-removal== 65483 (pos)
                    (not (Pc_not_checked_p3))

                    ; #47954: <==negation-removal== 89133 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #52117: <==negation-removal== 18962 (pos)
                    (not (Pb_not_checked_p3))

                    ; #59385: <==negation-removal== 31976 (pos)
                    (not (Bb_not_checked_p3))

                    ; #66817: <==negation-removal== 36586 (pos)
                    (not (not_checked_p3))

                    ; #70175: <==uncertain_firing== 52039 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #75783: <==negation-removal== 49892 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #77368: <==negation-removal== 85530 (pos)
                    (not (Pa_not_checked_p3))

                    ; #84448: <==uncertain_firing== 49892 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #86031: <==uncertain_firing== 85653 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #16636: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #29179: <==commonly_known== 35673 (pos)
                    (Bb_checked_p4)

                    ; #35673: origin
                    (checked_p4)

                    ; #42058: <==closure== 74266 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #42519: <==commonly_known== 32137 (neg)
                    (Pc_checked_p4)

                    ; #53194: <==commonly_known== 35673 (pos)
                    (Ba_checked_p4)

                    ; #56516: <==commonly_known== 32137 (neg)
                    (Pb_checked_p4)

                    ; #59300: <==closure== 16636 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #67412: <==commonly_known== 35673 (pos)
                    (Bc_checked_p4)

                    ; #74266: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #85135: <==commonly_known== 32137 (neg)
                    (Pa_checked_p4)

                    ; #17050: <==negation-removal== 56516 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22615: <==negation-removal== 16636 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #32137: <==negation-removal== 35673 (pos)
                    (not (not_checked_p4))

                    ; #40285: <==negation-removal== 29179 (pos)
                    (not (Pb_not_checked_p4))

                    ; #41964: <==uncertain_firing== 42058 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #53622: <==negation-removal== 42058 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #57862: <==negation-removal== 59300 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #65373: <==uncertain_firing== 59300 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #68888: <==negation-removal== 74266 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #70665: <==negation-removal== 53194 (pos)
                    (not (Pa_not_checked_p4))

                    ; #79271: <==uncertain_firing== 74266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #79278: <==negation-removal== 85135 (pos)
                    (not (Ba_not_checked_p4))

                    ; #80574: <==uncertain_firing== 16636 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #80829: <==negation-removal== 42519 (pos)
                    (not (Bc_not_checked_p4))

                    ; #85386: <==negation-removal== 67412 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #17476: <==closure== 59229 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #18018: <==closure== 43957 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #38820: <==commonly_known== 45122 (neg)
                    (Pc_checked_p5)

                    ; #42949: origin
                    (checked_p5)

                    ; #43957: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #53550: <==commonly_known== 42949 (pos)
                    (Bb_checked_p5)

                    ; #55547: <==commonly_known== 42949 (pos)
                    (Bc_checked_p5)

                    ; #57873: <==commonly_known== 42949 (pos)
                    (Ba_checked_p5)

                    ; #59229: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #61011: <==commonly_known== 45122 (neg)
                    (Pa_checked_p5)

                    ; #63231: <==commonly_known== 45122 (neg)
                    (Pb_checked_p5)

                    ; #14937: <==negation-removal== 17476 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #19776: <==negation-removal== 63231 (pos)
                    (not (Bb_not_checked_p5))

                    ; #24720: <==negation-removal== 43957 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #26279: <==negation-removal== 61011 (pos)
                    (not (Ba_not_checked_p5))

                    ; #29500: <==negation-removal== 53550 (pos)
                    (not (Pb_not_checked_p5))

                    ; #32409: <==uncertain_firing== 18018 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #35442: <==negation-removal== 57873 (pos)
                    (not (Pa_not_checked_p5))

                    ; #45122: <==negation-removal== 42949 (pos)
                    (not (not_checked_p5))

                    ; #56458: <==negation-removal== 18018 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #61343: <==negation-removal== 55547 (pos)
                    (not (Pc_not_checked_p5))

                    ; #68698: <==uncertain_firing== 59229 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #73933: <==uncertain_firing== 43957 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #75551: <==negation-removal== 59229 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #82969: <==negation-removal== 38820 (pos)
                    (not (Bc_not_checked_p5))

                    ; #88079: <==uncertain_firing== 17476 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12357: <==commonly_known== 59137 (neg)
                    (Pb_checked_p6)

                    ; #13898: <==commonly_known== 17762 (pos)
                    (Bb_checked_p6)

                    ; #17762: origin
                    (checked_p6)

                    ; #31103: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #32238: <==commonly_known== 17762 (pos)
                    (Ba_checked_p6)

                    ; #50077: <==closure== 87622 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #53291: <==closure== 31103 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #54383: <==commonly_known== 59137 (neg)
                    (Pc_checked_p6)

                    ; #73894: <==commonly_known== 17762 (pos)
                    (Bc_checked_p6)

                    ; #79161: <==commonly_known== 59137 (neg)
                    (Pa_checked_p6)

                    ; #87622: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #10231: <==negation-removal== 53291 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #13573: <==negation-removal== 13898 (pos)
                    (not (Pb_not_checked_p6))

                    ; #14736: <==negation-removal== 32238 (pos)
                    (not (Pa_not_checked_p6))

                    ; #16273: <==negation-removal== 87622 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #24121: <==negation-removal== 50077 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #24813: <==uncertain_firing== 53291 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #26062: <==negation-removal== 79161 (pos)
                    (not (Ba_not_checked_p6))

                    ; #32814: <==negation-removal== 73894 (pos)
                    (not (Pc_not_checked_p6))

                    ; #36766: <==uncertain_firing== 87622 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #48593: <==negation-removal== 12357 (pos)
                    (not (Bb_not_checked_p6))

                    ; #59137: <==negation-removal== 17762 (pos)
                    (not (not_checked_p6))

                    ; #60553: <==uncertain_firing== 50077 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #63524: <==uncertain_firing== 31103 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #75031: <==negation-removal== 31103 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #87762: <==negation-removal== 54383 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #26715: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #27111: <==commonly_known== 17197 (neg)
                    (Pc_checked_p7)

                    ; #29068: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #31615: <==closure== 29068 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #32265: <==closure== 26715 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #40144: <==commonly_known== 50234 (pos)
                    (Ba_checked_p7)

                    ; #50234: origin
                    (checked_p7)

                    ; #60169: <==commonly_known== 17197 (neg)
                    (Pb_checked_p7)

                    ; #66692: <==commonly_known== 50234 (pos)
                    (Bb_checked_p7)

                    ; #70543: <==commonly_known== 50234 (pos)
                    (Bc_checked_p7)

                    ; #87994: <==commonly_known== 17197 (neg)
                    (Pa_checked_p7)

                    ; #17197: <==negation-removal== 50234 (pos)
                    (not (not_checked_p7))

                    ; #19954: <==negation-removal== 29068 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #27591: <==uncertain_firing== 31615 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #29402: <==negation-removal== 60169 (pos)
                    (not (Bb_not_checked_p7))

                    ; #30727: <==negation-removal== 32265 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #30939: <==uncertain_firing== 32265 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #31307: <==negation-removal== 27111 (pos)
                    (not (Bc_not_checked_p7))

                    ; #39615: <==uncertain_firing== 26715 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #40964: <==negation-removal== 70543 (pos)
                    (not (Pc_not_checked_p7))

                    ; #50769: <==uncertain_firing== 29068 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #53532: <==negation-removal== 87994 (pos)
                    (not (Ba_not_checked_p7))

                    ; #61636: <==negation-removal== 66692 (pos)
                    (not (Pb_not_checked_p7))

                    ; #63739: <==negation-removal== 26715 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #66401: <==negation-removal== 31615 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #76791: <==negation-removal== 40144 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11031: <==commonly_known== 30206 (neg)
                    (Pb_checked_p8)

                    ; #33455: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #36742: <==commonly_known== 30206 (neg)
                    (Pc_checked_p8)

                    ; #44604: <==closure== 33455 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #61563: <==closure== 88765 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #62742: <==commonly_known== 30206 (neg)
                    (Pa_checked_p8)

                    ; #84300: <==commonly_known== 95578 (pos)
                    (Ba_checked_p8)

                    ; #88765: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #90276: <==commonly_known== 95578 (pos)
                    (Bc_checked_p8)

                    ; #90950: <==commonly_known== 95578 (pos)
                    (Bb_checked_p8)

                    ; #95578: origin
                    (checked_p8)

                    ; #14603: <==negation-removal== 36742 (pos)
                    (not (Bc_not_checked_p8))

                    ; #16989: <==negation-removal== 33455 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #23347: <==uncertain_firing== 61563 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #30206: <==negation-removal== 95578 (pos)
                    (not (not_checked_p8))

                    ; #33041: <==uncertain_firing== 88765 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #43460: <==negation-removal== 84300 (pos)
                    (not (Pa_not_checked_p8))

                    ; #53590: <==uncertain_firing== 33455 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #61287: <==negation-removal== 44604 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #62615: <==negation-removal== 61563 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #63555: <==negation-removal== 62742 (pos)
                    (not (Ba_not_checked_p8))

                    ; #63619: <==negation-removal== 88765 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #79259: <==uncertain_firing== 44604 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #82922: <==negation-removal== 11031 (pos)
                    (not (Bb_not_checked_p8))

                    ; #83056: <==negation-removal== 90276 (pos)
                    (not (Pc_not_checked_p8))

                    ; #84441: <==negation-removal== 90950 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #15599: <==commonly_known== 66489 (pos)
                    (Ba_checked_p9)

                    ; #16953: <==commonly_known== 52096 (neg)
                    (Pc_checked_p9)

                    ; #18758: <==commonly_known== 52096 (neg)
                    (Pa_checked_p9)

                    ; #23691: <==commonly_known== 52096 (neg)
                    (Pb_checked_p9)

                    ; #45887: <==closure== 70381 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #47506: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #66489: origin
                    (checked_p9)

                    ; #70381: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #84245: <==commonly_known== 66489 (pos)
                    (Bb_checked_p9)

                    ; #85236: <==closure== 47506 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #87279: <==commonly_known== 66489 (pos)
                    (Bc_checked_p9)

                    ; #23816: <==negation-removal== 47506 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #27006: <==negation-removal== 87279 (pos)
                    (not (Pc_not_checked_p9))

                    ; #38238: <==uncertain_firing== 45887 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45375: <==uncertain_firing== 85236 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #46635: <==negation-removal== 18758 (pos)
                    (not (Ba_not_checked_p9))

                    ; #52096: <==negation-removal== 66489 (pos)
                    (not (not_checked_p9))

                    ; #55903: <==negation-removal== 16953 (pos)
                    (not (Bc_not_checked_p9))

                    ; #63574: <==uncertain_firing== 70381 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #65884: <==uncertain_firing== 47506 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #67970: <==negation-removal== 85236 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #68000: <==negation-removal== 70381 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69515: <==negation-removal== 45887 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #74551: <==negation-removal== 15599 (pos)
                    (not (Pa_not_checked_p9))

                    ; #80905: <==negation-removal== 23691 (pos)
                    (not (Bb_not_checked_p9))

                    ; #87519: <==negation-removal== 84245 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10334: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #16416: <==commonly_known== 47158 (pos)
                    (Bc_checked_p1)

                    ; #27993: <==commonly_known== 47158 (pos)
                    (Ba_checked_p1)

                    ; #43119: <==commonly_known== 57376 (neg)
                    (Pc_checked_p1)

                    ; #47158: origin
                    (checked_p1)

                    ; #53601: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #62446: <==commonly_known== 57376 (neg)
                    (Pa_checked_p1)

                    ; #72513: <==commonly_known== 47158 (pos)
                    (Bb_checked_p1)

                    ; #74825: <==closure== 10334 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #80333: <==closure== 53601 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #84352: <==commonly_known== 57376 (neg)
                    (Pb_checked_p1)

                    ; #10072: <==negation-removal== 16416 (pos)
                    (not (Pc_not_checked_p1))

                    ; #15865: <==uncertain_firing== 80333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #22837: <==negation-removal== 27993 (pos)
                    (not (Pa_not_checked_p1))

                    ; #22997: <==negation-removal== 80333 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #36164: <==negation-removal== 74825 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #37462: <==negation-removal== 10334 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #44998: <==uncertain_firing== 53601 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #52251: <==uncertain_firing== 74825 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #54142: <==negation-removal== 72513 (pos)
                    (not (Pb_not_checked_p1))

                    ; #55344: <==negation-removal== 53601 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #57376: <==negation-removal== 47158 (pos)
                    (not (not_checked_p1))

                    ; #60553: <==negation-removal== 62446 (pos)
                    (not (Ba_not_checked_p1))

                    ; #80538: <==uncertain_firing== 10334 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #80544: <==negation-removal== 84352 (pos)
                    (not (Bb_not_checked_p1))

                    ; #83799: <==negation-removal== 43119 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12994: <==closure== 41290 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #18349: origin
                    (checked_p2)

                    ; #19564: <==closure== 43820 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #41290: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #42271: <==commonly_known== 32987 (neg)
                    (Pa_checked_p2)

                    ; #43226: <==commonly_known== 18349 (pos)
                    (Bb_checked_p2)

                    ; #43820: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #47661: <==commonly_known== 32987 (neg)
                    (Pc_checked_p2)

                    ; #47885: <==commonly_known== 18349 (pos)
                    (Bc_checked_p2)

                    ; #53623: <==commonly_known== 32987 (neg)
                    (Pb_checked_p2)

                    ; #91399: <==commonly_known== 18349 (pos)
                    (Ba_checked_p2)

                    ; #14046: <==negation-removal== 12994 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #15294: <==uncertain_firing== 19564 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #20872: <==uncertain_firing== 41290 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #25732: <==negation-removal== 47885 (pos)
                    (not (Pc_not_checked_p2))

                    ; #26312: <==negation-removal== 91399 (pos)
                    (not (Pa_not_checked_p2))

                    ; #29513: <==negation-removal== 47661 (pos)
                    (not (Bc_not_checked_p2))

                    ; #30268: <==uncertain_firing== 43820 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #32987: <==negation-removal== 18349 (pos)
                    (not (not_checked_p2))

                    ; #40575: <==negation-removal== 43226 (pos)
                    (not (Pb_not_checked_p2))

                    ; #44121: <==negation-removal== 41290 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #64728: <==negation-removal== 42271 (pos)
                    (not (Ba_not_checked_p2))

                    ; #75819: <==uncertain_firing== 12994 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #80707: <==negation-removal== 43820 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #86882: <==negation-removal== 19564 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #91599: <==negation-removal== 53623 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #18962: <==commonly_known== 36586 (pos)
                    (Bb_checked_p3)

                    ; #19435: <==closure== 57763 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #31976: <==commonly_known== 66817 (neg)
                    (Pb_checked_p3)

                    ; #35392: <==closure== 50830 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #36586: origin
                    (checked_p3)

                    ; #42691: <==commonly_known== 66817 (neg)
                    (Pa_checked_p3)

                    ; #50830: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #57763: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #63605: <==commonly_known== 66817 (neg)
                    (Pc_checked_p3)

                    ; #65483: <==commonly_known== 36586 (pos)
                    (Bc_checked_p3)

                    ; #85530: <==commonly_known== 36586 (pos)
                    (Ba_checked_p3)

                    ; #17273: <==negation-removal== 63605 (pos)
                    (not (Bc_not_checked_p3))

                    ; #25588: <==negation-removal== 42691 (pos)
                    (not (Ba_not_checked_p3))

                    ; #28259: <==negation-removal== 35392 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #31610: <==uncertain_firing== 35392 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #35403: <==negation-removal== 50830 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #40751: <==uncertain_firing== 19435 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #45653: <==negation-removal== 57763 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #45754: <==negation-removal== 65483 (pos)
                    (not (Pc_not_checked_p3))

                    ; #52117: <==negation-removal== 18962 (pos)
                    (not (Pb_not_checked_p3))

                    ; #59385: <==negation-removal== 31976 (pos)
                    (not (Bb_not_checked_p3))

                    ; #62581: <==negation-removal== 19435 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #66483: <==uncertain_firing== 57763 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #66817: <==negation-removal== 36586 (pos)
                    (not (not_checked_p3))

                    ; #77368: <==negation-removal== 85530 (pos)
                    (not (Pa_not_checked_p3))

                    ; #82189: <==uncertain_firing== 50830 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #29179: <==commonly_known== 35673 (pos)
                    (Bb_checked_p4)

                    ; #35673: origin
                    (checked_p4)

                    ; #35899: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #42058: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #42519: <==commonly_known== 32137 (neg)
                    (Pc_checked_p4)

                    ; #53194: <==commonly_known== 35673 (pos)
                    (Ba_checked_p4)

                    ; #56516: <==commonly_known== 32137 (neg)
                    (Pb_checked_p4)

                    ; #63832: <==closure== 35899 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #67412: <==commonly_known== 35673 (pos)
                    (Bc_checked_p4)

                    ; #84355: <==closure== 42058 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #85135: <==commonly_known== 32137 (neg)
                    (Pa_checked_p4)

                    ; #10278: <==uncertain_firing== 42058 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #12098: <==negation-removal== 35899 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #17050: <==negation-removal== 56516 (pos)
                    (not (Bb_not_checked_p4))

                    ; #17055: <==uncertain_firing== 84355 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #21698: <==uncertain_firing== 63832 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #32137: <==negation-removal== 35673 (pos)
                    (not (not_checked_p4))

                    ; #35707: <==negation-removal== 63832 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #40285: <==negation-removal== 29179 (pos)
                    (not (Pb_not_checked_p4))

                    ; #57077: <==negation-removal== 42058 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57609: <==uncertain_firing== 35899 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #70665: <==negation-removal== 53194 (pos)
                    (not (Pa_not_checked_p4))

                    ; #78690: <==negation-removal== 84355 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #79278: <==negation-removal== 85135 (pos)
                    (not (Ba_not_checked_p4))

                    ; #80829: <==negation-removal== 42519 (pos)
                    (not (Bc_not_checked_p4))

                    ; #85386: <==negation-removal== 67412 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #19321: <==closure== 60493 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #23915: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #38820: <==commonly_known== 45122 (neg)
                    (Pc_checked_p5)

                    ; #42949: origin
                    (checked_p5)

                    ; #53550: <==commonly_known== 42949 (pos)
                    (Bb_checked_p5)

                    ; #55547: <==commonly_known== 42949 (pos)
                    (Bc_checked_p5)

                    ; #57873: <==commonly_known== 42949 (pos)
                    (Ba_checked_p5)

                    ; #58876: <==closure== 23915 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #60493: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #61011: <==commonly_known== 45122 (neg)
                    (Pa_checked_p5)

                    ; #63231: <==commonly_known== 45122 (neg)
                    (Pb_checked_p5)

                    ; #11448: <==negation-removal== 23915 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #12454: <==uncertain_firing== 19321 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #14186: <==uncertain_firing== 60493 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #19776: <==negation-removal== 63231 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26279: <==negation-removal== 61011 (pos)
                    (not (Ba_not_checked_p5))

                    ; #29500: <==negation-removal== 53550 (pos)
                    (not (Pb_not_checked_p5))

                    ; #35442: <==negation-removal== 57873 (pos)
                    (not (Pa_not_checked_p5))

                    ; #36658: <==uncertain_firing== 58876 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #45122: <==negation-removal== 42949 (pos)
                    (not (not_checked_p5))

                    ; #49845: <==negation-removal== 58876 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #51639: <==negation-removal== 19321 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #52765: <==uncertain_firing== 23915 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #61343: <==negation-removal== 55547 (pos)
                    (not (Pc_not_checked_p5))

                    ; #72990: <==negation-removal== 60493 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82969: <==negation-removal== 38820 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12357: <==commonly_known== 59137 (neg)
                    (Pb_checked_p6)

                    ; #13898: <==commonly_known== 17762 (pos)
                    (Bb_checked_p6)

                    ; #17762: origin
                    (checked_p6)

                    ; #26405: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #32238: <==commonly_known== 17762 (pos)
                    (Ba_checked_p6)

                    ; #40421: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #46534: <==closure== 40421 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #54383: <==commonly_known== 59137 (neg)
                    (Pc_checked_p6)

                    ; #73894: <==commonly_known== 17762 (pos)
                    (Bc_checked_p6)

                    ; #78147: <==closure== 26405 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #79161: <==commonly_known== 59137 (neg)
                    (Pa_checked_p6)

                    ; #13573: <==negation-removal== 13898 (pos)
                    (not (Pb_not_checked_p6))

                    ; #14736: <==negation-removal== 32238 (pos)
                    (not (Pa_not_checked_p6))

                    ; #19105: <==uncertain_firing== 78147 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #20074: <==uncertain_firing== 46534 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #21913: <==negation-removal== 26405 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #26062: <==negation-removal== 79161 (pos)
                    (not (Ba_not_checked_p6))

                    ; #28274: <==negation-removal== 40421 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #32814: <==negation-removal== 73894 (pos)
                    (not (Pc_not_checked_p6))

                    ; #43021: <==negation-removal== 46534 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #48381: <==uncertain_firing== 40421 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #48593: <==negation-removal== 12357 (pos)
                    (not (Bb_not_checked_p6))

                    ; #55508: <==uncertain_firing== 26405 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #59137: <==negation-removal== 17762 (pos)
                    (not (not_checked_p6))

                    ; #69388: <==negation-removal== 78147 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #87762: <==negation-removal== 54383 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19399: <==closure== 88537 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #27111: <==commonly_known== 17197 (neg)
                    (Pc_checked_p7)

                    ; #32954: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #40144: <==commonly_known== 50234 (pos)
                    (Ba_checked_p7)

                    ; #50234: origin
                    (checked_p7)

                    ; #60169: <==commonly_known== 17197 (neg)
                    (Pb_checked_p7)

                    ; #66692: <==commonly_known== 50234 (pos)
                    (Bb_checked_p7)

                    ; #66884: <==closure== 32954 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #70543: <==commonly_known== 50234 (pos)
                    (Bc_checked_p7)

                    ; #87994: <==commonly_known== 17197 (neg)
                    (Pa_checked_p7)

                    ; #88537: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #17197: <==negation-removal== 50234 (pos)
                    (not (not_checked_p7))

                    ; #26233: <==negation-removal== 88537 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #29402: <==negation-removal== 60169 (pos)
                    (not (Bb_not_checked_p7))

                    ; #31307: <==negation-removal== 27111 (pos)
                    (not (Bc_not_checked_p7))

                    ; #33082: <==uncertain_firing== 19399 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #40964: <==negation-removal== 70543 (pos)
                    (not (Pc_not_checked_p7))

                    ; #49141: <==negation-removal== 32954 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #53532: <==negation-removal== 87994 (pos)
                    (not (Ba_not_checked_p7))

                    ; #61532: <==negation-removal== 66884 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #61636: <==negation-removal== 66692 (pos)
                    (not (Pb_not_checked_p7))

                    ; #66541: <==negation-removal== 19399 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #76791: <==negation-removal== 40144 (pos)
                    (not (Pa_not_checked_p7))

                    ; #78301: <==uncertain_firing== 66884 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #81517: <==uncertain_firing== 88537 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #82996: <==uncertain_firing== 32954 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11031: <==commonly_known== 30206 (neg)
                    (Pb_checked_p8)

                    ; #19078: <==closure== 53250 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #19445: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #33222: <==closure== 19445 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #36742: <==commonly_known== 30206 (neg)
                    (Pc_checked_p8)

                    ; #53250: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #62742: <==commonly_known== 30206 (neg)
                    (Pa_checked_p8)

                    ; #84300: <==commonly_known== 95578 (pos)
                    (Ba_checked_p8)

                    ; #90276: <==commonly_known== 95578 (pos)
                    (Bc_checked_p8)

                    ; #90950: <==commonly_known== 95578 (pos)
                    (Bb_checked_p8)

                    ; #95578: origin
                    (checked_p8)

                    ; #14603: <==negation-removal== 36742 (pos)
                    (not (Bc_not_checked_p8))

                    ; #24598: <==negation-removal== 19445 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #27407: <==negation-removal== 33222 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #30206: <==negation-removal== 95578 (pos)
                    (not (not_checked_p8))

                    ; #43460: <==negation-removal== 84300 (pos)
                    (not (Pa_not_checked_p8))

                    ; #53623: <==uncertain_firing== 19445 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #53640: <==negation-removal== 53250 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #61870: <==uncertain_firing== 19078 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #63555: <==negation-removal== 62742 (pos)
                    (not (Ba_not_checked_p8))

                    ; #71000: <==negation-removal== 19078 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #82922: <==negation-removal== 11031 (pos)
                    (not (Bb_not_checked_p8))

                    ; #83056: <==negation-removal== 90276 (pos)
                    (not (Pc_not_checked_p8))

                    ; #84140: <==uncertain_firing== 33222 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #84441: <==negation-removal== 90950 (pos)
                    (not (Pb_not_checked_p8))

                    ; #86592: <==uncertain_firing== 53250 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #15599: <==commonly_known== 66489 (pos)
                    (Ba_checked_p9)

                    ; #16953: <==commonly_known== 52096 (neg)
                    (Pc_checked_p9)

                    ; #18758: <==commonly_known== 52096 (neg)
                    (Pa_checked_p9)

                    ; #23691: <==commonly_known== 52096 (neg)
                    (Pb_checked_p9)

                    ; #25134: <==closure== 98029 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #66489: origin
                    (checked_p9)

                    ; #67604: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #75456: <==closure== 67604 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #84245: <==commonly_known== 66489 (pos)
                    (Bb_checked_p9)

                    ; #87279: <==commonly_known== 66489 (pos)
                    (Bc_checked_p9)

                    ; #98029: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #11787: <==negation-removal== 98029 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #27006: <==negation-removal== 87279 (pos)
                    (not (Pc_not_checked_p9))

                    ; #27248: <==uncertain_firing== 98029 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #43373: <==uncertain_firing== 67604 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #46635: <==negation-removal== 18758 (pos)
                    (not (Ba_not_checked_p9))

                    ; #52096: <==negation-removal== 66489 (pos)
                    (not (not_checked_p9))

                    ; #55903: <==negation-removal== 16953 (pos)
                    (not (Bc_not_checked_p9))

                    ; #62222: <==negation-removal== 25134 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63812: <==negation-removal== 75456 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #71987: <==uncertain_firing== 25134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #72830: <==negation-removal== 67604 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #74551: <==negation-removal== 15599 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77317: <==uncertain_firing== 75456 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #80905: <==negation-removal== 23691 (pos)
                    (not (Bb_not_checked_p9))

                    ; #87519: <==negation-removal== 84245 (pos)
                    (not (Pb_not_checked_p9))))

)