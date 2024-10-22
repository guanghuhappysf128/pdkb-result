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
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #14735: <==closure== 63935 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #22442: <==closure== 29361 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #29361: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #63935: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #66505: <==closure== 80098 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #80098: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #11717: <==uncertain_firing== 22442 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #20649: <==negation-removal== 29361 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #31920: <==uncertain_firing== 80098 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #35414: <==uncertain_firing== 66505 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #35416: <==uncertain_firing== 29361 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #36104: <==negation-removal== 22442 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #53743: <==negation-removal== 63935 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54757: <==uncertain_firing== 63935 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #57631: <==negation-removal== 66505 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #70683: <==uncertain_firing== 14735 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #73281: <==negation-removal== 14735 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #85259: <==negation-removal== 80098 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #14735: <==closure== 63935 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #22442: <==closure== 29361 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #29361: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #63935: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #66505: <==closure== 80098 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #80098: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #11717: <==uncertain_firing== 22442 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #20649: <==negation-removal== 29361 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #31920: <==uncertain_firing== 80098 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #35414: <==uncertain_firing== 66505 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #35416: <==uncertain_firing== 29361 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #36104: <==negation-removal== 22442 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #53743: <==negation-removal== 63935 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54757: <==uncertain_firing== 63935 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #57631: <==negation-removal== 66505 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #70683: <==uncertain_firing== 14735 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #73281: <==negation-removal== 14735 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #85259: <==negation-removal== 80098 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #14735: <==closure== 63935 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #22442: <==closure== 29361 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #29361: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #63935: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #66505: <==closure== 80098 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #80098: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #11717: <==uncertain_firing== 22442 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #20649: <==negation-removal== 29361 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #31920: <==uncertain_firing== 80098 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #35414: <==uncertain_firing== 66505 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #35416: <==uncertain_firing== 29361 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #36104: <==negation-removal== 22442 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #53743: <==negation-removal== 63935 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54757: <==uncertain_firing== 63935 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #57631: <==negation-removal== 66505 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #70683: <==uncertain_firing== 14735 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #73281: <==negation-removal== 14735 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #85259: <==negation-removal== 80098 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #11744: <==closure== 54021 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #17381: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #18528: <==closure== 54284 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #32351: <==closure== 17381 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #54021: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #54284: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #11922: <==negation-removal== 54284 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #20622: <==uncertain_firing== 11744 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #22951: <==uncertain_firing== 32351 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #31010: <==negation-removal== 11744 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #33252: <==negation-removal== 32351 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #34547: <==negation-removal== 18528 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #46740: <==uncertain_firing== 17381 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #52922: <==uncertain_firing== 18528 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #60972: <==negation-removal== 17381 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71276: <==uncertain_firing== 54021 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #80354: <==uncertain_firing== 54284 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #91425: <==negation-removal== 54021 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #11744: <==closure== 54021 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #17381: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #18528: <==closure== 54284 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #32351: <==closure== 17381 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #54021: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #54284: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #11922: <==negation-removal== 54284 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #20622: <==uncertain_firing== 11744 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #22951: <==uncertain_firing== 32351 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #31010: <==negation-removal== 11744 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #33252: <==negation-removal== 32351 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #34547: <==negation-removal== 18528 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #46740: <==uncertain_firing== 17381 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #52922: <==uncertain_firing== 18528 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #60972: <==negation-removal== 17381 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71276: <==uncertain_firing== 54021 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #80354: <==uncertain_firing== 54284 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #91425: <==negation-removal== 54021 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #11744: <==closure== 54021 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #17381: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #18528: <==closure== 54284 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #32351: <==closure== 17381 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #54021: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #54284: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #11922: <==negation-removal== 54284 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #20622: <==uncertain_firing== 11744 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #22951: <==uncertain_firing== 32351 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #31010: <==negation-removal== 11744 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #33252: <==negation-removal== 32351 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #34547: <==negation-removal== 18528 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #46740: <==uncertain_firing== 17381 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #52922: <==uncertain_firing== 18528 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #60972: <==negation-removal== 17381 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71276: <==uncertain_firing== 54021 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #80354: <==uncertain_firing== 54284 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #91425: <==negation-removal== 54021 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #13409: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #20215: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #27785: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #46674: <==closure== 13409 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #61666: <==closure== 20215 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #72066: <==closure== 27785 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #10645: <==uncertain_firing== 13409 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #10931: <==uncertain_firing== 72066 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #15256: <==negation-removal== 20215 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #19041: <==uncertain_firing== 46674 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #28460: <==negation-removal== 46674 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #33186: <==uncertain_firing== 27785 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #40856: <==negation-removal== 27785 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #47058: <==uncertain_firing== 61666 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #48494: <==negation-removal== 13409 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #56625: <==uncertain_firing== 20215 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #76173: <==negation-removal== 61666 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #76688: <==negation-removal== 72066 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #13409: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #20215: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #27785: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #46674: <==closure== 13409 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #61666: <==closure== 20215 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #72066: <==closure== 27785 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #10645: <==uncertain_firing== 13409 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #10931: <==uncertain_firing== 72066 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #15256: <==negation-removal== 20215 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #19041: <==uncertain_firing== 46674 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #28460: <==negation-removal== 46674 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #33186: <==uncertain_firing== 27785 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #40856: <==negation-removal== 27785 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #47058: <==uncertain_firing== 61666 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #48494: <==negation-removal== 13409 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #56625: <==uncertain_firing== 20215 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #76173: <==negation-removal== 61666 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #76688: <==negation-removal== 72066 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #13409: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #20215: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #27785: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #46674: <==closure== 13409 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #61666: <==closure== 20215 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #72066: <==closure== 27785 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #10645: <==uncertain_firing== 13409 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #10931: <==uncertain_firing== 72066 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #15256: <==negation-removal== 20215 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #19041: <==uncertain_firing== 46674 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #28460: <==negation-removal== 46674 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #33186: <==uncertain_firing== 27785 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #40856: <==negation-removal== 27785 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #47058: <==uncertain_firing== 61666 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #48494: <==negation-removal== 13409 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #56625: <==uncertain_firing== 20215 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #76173: <==negation-removal== 61666 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #76688: <==negation-removal== 72066 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #24234: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #33065: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #45414: <==closure== 24234 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #79779: <==closure== 33065 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #87992: <==closure== 89514 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #89514: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #16420: <==negation-removal== 33065 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #26906: <==uncertain_firing== 87992 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #33655: <==negation-removal== 89514 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #34742: <==negation-removal== 79779 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #40502: <==negation-removal== 45414 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #43368: <==negation-removal== 24234 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #64646: <==uncertain_firing== 89514 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #67099: <==uncertain_firing== 79779 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #76304: <==uncertain_firing== 24234 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #79522: <==uncertain_firing== 33065 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #88219: <==uncertain_firing== 45414 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #89541: <==negation-removal== 87992 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #24234: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #33065: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #45414: <==closure== 24234 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #79779: <==closure== 33065 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #87992: <==closure== 89514 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #89514: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #16420: <==negation-removal== 33065 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #26906: <==uncertain_firing== 87992 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #33655: <==negation-removal== 89514 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #34742: <==negation-removal== 79779 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #40502: <==negation-removal== 45414 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #43368: <==negation-removal== 24234 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #64646: <==uncertain_firing== 89514 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #67099: <==uncertain_firing== 79779 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #76304: <==uncertain_firing== 24234 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #79522: <==uncertain_firing== 33065 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #88219: <==uncertain_firing== 45414 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #89541: <==negation-removal== 87992 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #24234: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #33065: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #45414: <==closure== 24234 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #79779: <==closure== 33065 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #87992: <==closure== 89514 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #89514: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #16420: <==negation-removal== 33065 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #26906: <==uncertain_firing== 87992 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #33655: <==negation-removal== 89514 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #34742: <==negation-removal== 79779 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #40502: <==negation-removal== 45414 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #43368: <==negation-removal== 24234 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #64646: <==uncertain_firing== 89514 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #67099: <==uncertain_firing== 79779 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #76304: <==uncertain_firing== 24234 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #79522: <==uncertain_firing== 33065 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #88219: <==uncertain_firing== 45414 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #89541: <==negation-removal== 87992 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #15070: <==closure== 75380 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #74397: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #75380: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #78072: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #83041: <==closure== 74397 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #86680: <==closure== 78072 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #11236: <==negation-removal== 15070 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #28267: <==uncertain_firing== 74397 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #31508: <==negation-removal== 83041 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #34130: <==negation-removal== 75380 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #43515: <==negation-removal== 78072 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #48437: <==negation-removal== 86680 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #54563: <==uncertain_firing== 86680 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67089: <==uncertain_firing== 78072 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #74135: <==negation-removal== 74397 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77607: <==uncertain_firing== 15070 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #81295: <==uncertain_firing== 75380 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #82145: <==uncertain_firing== 83041 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #15070: <==closure== 75380 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #74397: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #75380: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #78072: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #83041: <==closure== 74397 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #86680: <==closure== 78072 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #11236: <==negation-removal== 15070 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #28267: <==uncertain_firing== 74397 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #31508: <==negation-removal== 83041 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #34130: <==negation-removal== 75380 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #43515: <==negation-removal== 78072 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #48437: <==negation-removal== 86680 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #54563: <==uncertain_firing== 86680 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67089: <==uncertain_firing== 78072 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #74135: <==negation-removal== 74397 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77607: <==uncertain_firing== 15070 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #81295: <==uncertain_firing== 75380 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #82145: <==uncertain_firing== 83041 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #15070: <==closure== 75380 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #74397: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #75380: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #78072: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #83041: <==closure== 74397 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #86680: <==closure== 78072 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #11236: <==negation-removal== 15070 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #28267: <==uncertain_firing== 74397 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #31508: <==negation-removal== 83041 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #34130: <==negation-removal== 75380 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #43515: <==negation-removal== 78072 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #48437: <==negation-removal== 86680 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #54563: <==uncertain_firing== 86680 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67089: <==uncertain_firing== 78072 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #74135: <==negation-removal== 74397 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77607: <==uncertain_firing== 15070 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #81295: <==uncertain_firing== 75380 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #82145: <==uncertain_firing== 83041 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #17128: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #26064: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #29982: <==closure== 17128 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #48981: <==closure== 26064 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #52989: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #66963: <==closure== 52989 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #13023: <==negation-removal== 52989 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #14983: <==uncertain_firing== 48981 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #27585: <==negation-removal== 26064 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #27615: <==uncertain_firing== 17128 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #30899: <==negation-removal== 48981 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #37168: <==negation-removal== 66963 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #41928: <==uncertain_firing== 66963 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #55924: <==uncertain_firing== 29982 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #56665: <==uncertain_firing== 52989 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #67875: <==uncertain_firing== 26064 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #72308: <==negation-removal== 29982 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #88250: <==negation-removal== 17128 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #17128: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #26064: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #29982: <==closure== 17128 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #48981: <==closure== 26064 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #52989: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #66963: <==closure== 52989 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #13023: <==negation-removal== 52989 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #14983: <==uncertain_firing== 48981 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #27585: <==negation-removal== 26064 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #27615: <==uncertain_firing== 17128 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #30899: <==negation-removal== 48981 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #37168: <==negation-removal== 66963 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #41928: <==uncertain_firing== 66963 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #55924: <==uncertain_firing== 29982 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #56665: <==uncertain_firing== 52989 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #67875: <==uncertain_firing== 26064 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #72308: <==negation-removal== 29982 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #88250: <==negation-removal== 17128 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #17128: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #26064: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #29982: <==closure== 17128 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #48981: <==closure== 26064 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #52989: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #66963: <==closure== 52989 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #13023: <==negation-removal== 52989 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #14983: <==uncertain_firing== 48981 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #27585: <==negation-removal== 26064 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #27615: <==uncertain_firing== 17128 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #30899: <==negation-removal== 48981 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #37168: <==negation-removal== 66963 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #41928: <==uncertain_firing== 66963 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #55924: <==uncertain_firing== 29982 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #56665: <==uncertain_firing== 52989 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #67875: <==uncertain_firing== 26064 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #72308: <==negation-removal== 29982 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #88250: <==negation-removal== 17128 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #13911: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #35151: <==closure== 68655 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #68655: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #69691: <==closure== 13911 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #75168: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #87787: <==closure== 75168 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #19243: <==negation-removal== 35151 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #21771: <==uncertain_firing== 87787 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #23404: <==uncertain_firing== 68655 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #24352: <==uncertain_firing== 35151 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #33024: <==negation-removal== 87787 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39162: <==negation-removal== 69691 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #46914: <==negation-removal== 13911 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #55064: <==uncertain_firing== 75168 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #58602: <==negation-removal== 68655 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #70917: <==uncertain_firing== 69691 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #75970: <==negation-removal== 75168 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #80717: <==uncertain_firing== 13911 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #13911: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #35151: <==closure== 68655 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #68655: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #69691: <==closure== 13911 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #75168: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #87787: <==closure== 75168 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #19243: <==negation-removal== 35151 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #21771: <==uncertain_firing== 87787 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #23404: <==uncertain_firing== 68655 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #24352: <==uncertain_firing== 35151 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #33024: <==negation-removal== 87787 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39162: <==negation-removal== 69691 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #46914: <==negation-removal== 13911 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #55064: <==uncertain_firing== 75168 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #58602: <==negation-removal== 68655 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #70917: <==uncertain_firing== 69691 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #75970: <==negation-removal== 75168 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #80717: <==uncertain_firing== 13911 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #13911: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #35151: <==closure== 68655 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #68655: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #69691: <==closure== 13911 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #75168: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #87787: <==closure== 75168 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #19243: <==negation-removal== 35151 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #21771: <==uncertain_firing== 87787 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #23404: <==uncertain_firing== 68655 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #24352: <==uncertain_firing== 35151 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #33024: <==negation-removal== 87787 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39162: <==negation-removal== 69691 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #46914: <==negation-removal== 13911 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #55064: <==uncertain_firing== 75168 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #58602: <==negation-removal== 68655 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #70917: <==uncertain_firing== 69691 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #75970: <==negation-removal== 75168 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #80717: <==uncertain_firing== 13911 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #21483: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #41302: <==closure== 21483 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #44450: <==closure== 54768 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #54768: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #75123: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #90176: <==closure== 75123 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #10775: <==negation-removal== 75123 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #12227: <==negation-removal== 21483 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #13857: <==negation-removal== 54768 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #21851: <==negation-removal== 44450 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #33048: <==negation-removal== 41302 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #47292: <==uncertain_firing== 21483 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #51472: <==uncertain_firing== 90176 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56197: <==uncertain_firing== 75123 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #72069: <==uncertain_firing== 44450 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #72125: <==negation-removal== 90176 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #72624: <==uncertain_firing== 54768 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #95434: <==uncertain_firing== 41302 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #21483: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #41302: <==closure== 21483 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #44450: <==closure== 54768 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #54768: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #75123: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #90176: <==closure== 75123 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #10775: <==negation-removal== 75123 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #12227: <==negation-removal== 21483 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #13857: <==negation-removal== 54768 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #21851: <==negation-removal== 44450 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #33048: <==negation-removal== 41302 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #47292: <==uncertain_firing== 21483 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #51472: <==uncertain_firing== 90176 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56197: <==uncertain_firing== 75123 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #72069: <==uncertain_firing== 44450 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #72125: <==negation-removal== 90176 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #72624: <==uncertain_firing== 54768 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #95434: <==uncertain_firing== 41302 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #21483: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #41302: <==closure== 21483 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #44450: <==closure== 54768 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #54768: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #75123: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #90176: <==closure== 75123 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #10775: <==negation-removal== 75123 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #12227: <==negation-removal== 21483 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #13857: <==negation-removal== 54768 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #21851: <==negation-removal== 44450 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #33048: <==negation-removal== 41302 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #47292: <==uncertain_firing== 21483 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #51472: <==uncertain_firing== 90176 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56197: <==uncertain_firing== 75123 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #72069: <==uncertain_firing== 44450 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #72125: <==negation-removal== 90176 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #72624: <==uncertain_firing== 54768 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #95434: <==uncertain_firing== 41302 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #47307: <==closure== 58233 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #50328: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #58233: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #64783: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #67224: <==closure== 50328 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #73761: <==closure== 64783 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #11057: <==uncertain_firing== 67224 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #14251: <==uncertain_firing== 58233 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #19671: <==uncertain_firing== 64783 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #20214: <==negation-removal== 58233 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #22815: <==uncertain_firing== 50328 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #36927: <==uncertain_firing== 47307 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #39466: <==uncertain_firing== 73761 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #40807: <==negation-removal== 64783 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #49837: <==negation-removal== 50328 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73778: <==negation-removal== 73761 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #88607: <==negation-removal== 47307 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #89980: <==negation-removal== 67224 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #47307: <==closure== 58233 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #50328: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #58233: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #64783: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #67224: <==closure== 50328 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #73761: <==closure== 64783 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #11057: <==uncertain_firing== 67224 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #14251: <==uncertain_firing== 58233 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #19671: <==uncertain_firing== 64783 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #20214: <==negation-removal== 58233 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #22815: <==uncertain_firing== 50328 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #36927: <==uncertain_firing== 47307 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #39466: <==uncertain_firing== 73761 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #40807: <==negation-removal== 64783 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #49837: <==negation-removal== 50328 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73778: <==negation-removal== 73761 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #88607: <==negation-removal== 47307 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #89980: <==negation-removal== 67224 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #47307: <==closure== 58233 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #50328: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #58233: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #64783: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #67224: <==closure== 50328 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #73761: <==closure== 64783 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #11057: <==uncertain_firing== 67224 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #14251: <==uncertain_firing== 58233 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #19671: <==uncertain_firing== 64783 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #20214: <==negation-removal== 58233 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #22815: <==uncertain_firing== 50328 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #36927: <==uncertain_firing== 47307 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #39466: <==uncertain_firing== 73761 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #40807: <==negation-removal== 64783 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #49837: <==negation-removal== 50328 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73778: <==negation-removal== 73761 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #88607: <==negation-removal== 47307 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #89980: <==negation-removal== 67224 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #20600: origin
                    (Bb_survivorat_s_p1)

                    ; #22490: <==closure== 86874 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28616: origin
                    (Ba_survivorat_s_p1)

                    ; #75118: <==closure== 20600 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77844: <==closure== 28616 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86874: origin
                    (Bc_survivorat_s_p1)

                    ; #18882: <==negation-removal== 28616 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #20087: <==negation-removal== 22490 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #37337: <==negation-removal== 20600 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #50189: <==negation-removal== 75118 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #77117: <==negation-removal== 86874 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #78591: <==negation-removal== 77844 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #20600: origin
                    (Bb_survivorat_s_p1)

                    ; #22490: <==closure== 86874 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28616: origin
                    (Ba_survivorat_s_p1)

                    ; #75118: <==closure== 20600 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77844: <==closure== 28616 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86874: origin
                    (Bc_survivorat_s_p1)

                    ; #18882: <==negation-removal== 28616 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #20087: <==negation-removal== 22490 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #37337: <==negation-removal== 20600 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #50189: <==negation-removal== 75118 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #77117: <==negation-removal== 86874 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #78591: <==negation-removal== 77844 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #20600: origin
                    (Bb_survivorat_s_p1)

                    ; #22490: <==closure== 86874 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28616: origin
                    (Ba_survivorat_s_p1)

                    ; #75118: <==closure== 20600 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77844: <==closure== 28616 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86874: origin
                    (Bc_survivorat_s_p1)

                    ; #18882: <==negation-removal== 28616 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #20087: <==negation-removal== 22490 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #37337: <==negation-removal== 20600 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #50189: <==negation-removal== 75118 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #77117: <==negation-removal== 86874 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #78591: <==negation-removal== 77844 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #12506: origin
                    (Bb_survivorat_s_p2)

                    ; #23016: origin
                    (Bc_survivorat_s_p2)

                    ; #36645: origin
                    (Ba_survivorat_s_p2)

                    ; #44046: <==closure== 36645 (pos)
                    (Pa_survivorat_s_p2)

                    ; #58717: <==closure== 23016 (pos)
                    (Pc_survivorat_s_p2)

                    ; #78294: <==closure== 12506 (pos)
                    (Pb_survivorat_s_p2)

                    ; #15449: <==negation-removal== 58717 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #18871: <==negation-removal== 12506 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #30621: <==negation-removal== 23016 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #32479: <==negation-removal== 78294 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #62283: <==negation-removal== 36645 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #82622: <==negation-removal== 44046 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #12506: origin
                    (Bb_survivorat_s_p2)

                    ; #23016: origin
                    (Bc_survivorat_s_p2)

                    ; #36645: origin
                    (Ba_survivorat_s_p2)

                    ; #44046: <==closure== 36645 (pos)
                    (Pa_survivorat_s_p2)

                    ; #58717: <==closure== 23016 (pos)
                    (Pc_survivorat_s_p2)

                    ; #78294: <==closure== 12506 (pos)
                    (Pb_survivorat_s_p2)

                    ; #15449: <==negation-removal== 58717 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #18871: <==negation-removal== 12506 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #30621: <==negation-removal== 23016 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #32479: <==negation-removal== 78294 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #62283: <==negation-removal== 36645 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #82622: <==negation-removal== 44046 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #12506: origin
                    (Bb_survivorat_s_p2)

                    ; #23016: origin
                    (Bc_survivorat_s_p2)

                    ; #36645: origin
                    (Ba_survivorat_s_p2)

                    ; #44046: <==closure== 36645 (pos)
                    (Pa_survivorat_s_p2)

                    ; #58717: <==closure== 23016 (pos)
                    (Pc_survivorat_s_p2)

                    ; #78294: <==closure== 12506 (pos)
                    (Pb_survivorat_s_p2)

                    ; #15449: <==negation-removal== 58717 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #18871: <==negation-removal== 12506 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #30621: <==negation-removal== 23016 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #32479: <==negation-removal== 78294 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #62283: <==negation-removal== 36645 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #82622: <==negation-removal== 44046 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #23782: <==closure== 68409 (pos)
                    (Pb_survivorat_s_p3)

                    ; #37658: <==closure== 38332 (pos)
                    (Pa_survivorat_s_p3)

                    ; #38332: origin
                    (Ba_survivorat_s_p3)

                    ; #68409: origin
                    (Bb_survivorat_s_p3)

                    ; #84023: origin
                    (Bc_survivorat_s_p3)

                    ; #88830: <==closure== 84023 (pos)
                    (Pc_survivorat_s_p3)

                    ; #73389: <==negation-removal== 68409 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #74890: <==negation-removal== 38332 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #75274: <==negation-removal== 37658 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #85357: <==negation-removal== 84023 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #85435: <==negation-removal== 88830 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #92015: <==negation-removal== 23782 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #23782: <==closure== 68409 (pos)
                    (Pb_survivorat_s_p3)

                    ; #37658: <==closure== 38332 (pos)
                    (Pa_survivorat_s_p3)

                    ; #38332: origin
                    (Ba_survivorat_s_p3)

                    ; #68409: origin
                    (Bb_survivorat_s_p3)

                    ; #84023: origin
                    (Bc_survivorat_s_p3)

                    ; #88830: <==closure== 84023 (pos)
                    (Pc_survivorat_s_p3)

                    ; #73389: <==negation-removal== 68409 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #74890: <==negation-removal== 38332 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #75274: <==negation-removal== 37658 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #85357: <==negation-removal== 84023 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #85435: <==negation-removal== 88830 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #92015: <==negation-removal== 23782 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #23782: <==closure== 68409 (pos)
                    (Pb_survivorat_s_p3)

                    ; #37658: <==closure== 38332 (pos)
                    (Pa_survivorat_s_p3)

                    ; #38332: origin
                    (Ba_survivorat_s_p3)

                    ; #68409: origin
                    (Bb_survivorat_s_p3)

                    ; #84023: origin
                    (Bc_survivorat_s_p3)

                    ; #88830: <==closure== 84023 (pos)
                    (Pc_survivorat_s_p3)

                    ; #73389: <==negation-removal== 68409 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #74890: <==negation-removal== 38332 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #75274: <==negation-removal== 37658 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #85357: <==negation-removal== 84023 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #85435: <==negation-removal== 88830 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #92015: <==negation-removal== 23782 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #26968: origin
                    (Bb_survivorat_s_p4)

                    ; #28228: <==closure== 62165 (pos)
                    (Pa_survivorat_s_p4)

                    ; #38924: origin
                    (Bc_survivorat_s_p4)

                    ; #43383: <==closure== 38924 (pos)
                    (Pc_survivorat_s_p4)

                    ; #62165: origin
                    (Ba_survivorat_s_p4)

                    ; #86761: <==closure== 26968 (pos)
                    (Pb_survivorat_s_p4)

                    ; #10138: <==negation-removal== 38924 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #39132: <==negation-removal== 43383 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #40317: <==negation-removal== 86761 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #54807: <==negation-removal== 28228 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #88892: <==negation-removal== 62165 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #95430: <==negation-removal== 26968 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #26968: origin
                    (Bb_survivorat_s_p4)

                    ; #28228: <==closure== 62165 (pos)
                    (Pa_survivorat_s_p4)

                    ; #38924: origin
                    (Bc_survivorat_s_p4)

                    ; #43383: <==closure== 38924 (pos)
                    (Pc_survivorat_s_p4)

                    ; #62165: origin
                    (Ba_survivorat_s_p4)

                    ; #86761: <==closure== 26968 (pos)
                    (Pb_survivorat_s_p4)

                    ; #10138: <==negation-removal== 38924 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #39132: <==negation-removal== 43383 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #40317: <==negation-removal== 86761 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #54807: <==negation-removal== 28228 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #88892: <==negation-removal== 62165 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #95430: <==negation-removal== 26968 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #26968: origin
                    (Bb_survivorat_s_p4)

                    ; #28228: <==closure== 62165 (pos)
                    (Pa_survivorat_s_p4)

                    ; #38924: origin
                    (Bc_survivorat_s_p4)

                    ; #43383: <==closure== 38924 (pos)
                    (Pc_survivorat_s_p4)

                    ; #62165: origin
                    (Ba_survivorat_s_p4)

                    ; #86761: <==closure== 26968 (pos)
                    (Pb_survivorat_s_p4)

                    ; #10138: <==negation-removal== 38924 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #39132: <==negation-removal== 43383 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #40317: <==negation-removal== 86761 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #54807: <==negation-removal== 28228 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #88892: <==negation-removal== 62165 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #95430: <==negation-removal== 26968 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #15797: <==closure== 86540 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23314: <==closure== 82224 (pos)
                    (Pa_survivorat_s_p5)

                    ; #47719: <==closure== 61774 (pos)
                    (Pb_survivorat_s_p5)

                    ; #61774: origin
                    (Bb_survivorat_s_p5)

                    ; #82224: origin
                    (Ba_survivorat_s_p5)

                    ; #86540: origin
                    (Bc_survivorat_s_p5)

                    ; #18658: <==negation-removal== 86540 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #40948: <==negation-removal== 61774 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #59094: <==negation-removal== 15797 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #86277: <==negation-removal== 47719 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #87214: <==negation-removal== 23314 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #87796: <==negation-removal== 82224 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #15797: <==closure== 86540 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23314: <==closure== 82224 (pos)
                    (Pa_survivorat_s_p5)

                    ; #47719: <==closure== 61774 (pos)
                    (Pb_survivorat_s_p5)

                    ; #61774: origin
                    (Bb_survivorat_s_p5)

                    ; #82224: origin
                    (Ba_survivorat_s_p5)

                    ; #86540: origin
                    (Bc_survivorat_s_p5)

                    ; #18658: <==negation-removal== 86540 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #40948: <==negation-removal== 61774 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #59094: <==negation-removal== 15797 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #86277: <==negation-removal== 47719 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #87214: <==negation-removal== 23314 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #87796: <==negation-removal== 82224 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #15797: <==closure== 86540 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23314: <==closure== 82224 (pos)
                    (Pa_survivorat_s_p5)

                    ; #47719: <==closure== 61774 (pos)
                    (Pb_survivorat_s_p5)

                    ; #61774: origin
                    (Bb_survivorat_s_p5)

                    ; #82224: origin
                    (Ba_survivorat_s_p5)

                    ; #86540: origin
                    (Bc_survivorat_s_p5)

                    ; #18658: <==negation-removal== 86540 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #40948: <==negation-removal== 61774 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #59094: <==negation-removal== 15797 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #86277: <==negation-removal== 47719 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #87214: <==negation-removal== 23314 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #87796: <==negation-removal== 82224 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #12661: <==closure== 17228 (pos)
                    (Pc_survivorat_s_p6)

                    ; #17228: origin
                    (Bc_survivorat_s_p6)

                    ; #30760: origin
                    (Bb_survivorat_s_p6)

                    ; #37723: <==closure== 30760 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54835: <==closure== 90649 (pos)
                    (Pa_survivorat_s_p6)

                    ; #90649: origin
                    (Ba_survivorat_s_p6)

                    ; #15250: <==negation-removal== 37723 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #16939: <==negation-removal== 12661 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #27765: <==negation-removal== 30760 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #72176: <==negation-removal== 90649 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #80019: <==negation-removal== 17228 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #86602: <==negation-removal== 54835 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #12661: <==closure== 17228 (pos)
                    (Pc_survivorat_s_p6)

                    ; #17228: origin
                    (Bc_survivorat_s_p6)

                    ; #30760: origin
                    (Bb_survivorat_s_p6)

                    ; #37723: <==closure== 30760 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54835: <==closure== 90649 (pos)
                    (Pa_survivorat_s_p6)

                    ; #90649: origin
                    (Ba_survivorat_s_p6)

                    ; #15250: <==negation-removal== 37723 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #16939: <==negation-removal== 12661 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #27765: <==negation-removal== 30760 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #72176: <==negation-removal== 90649 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #80019: <==negation-removal== 17228 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #86602: <==negation-removal== 54835 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #12661: <==closure== 17228 (pos)
                    (Pc_survivorat_s_p6)

                    ; #17228: origin
                    (Bc_survivorat_s_p6)

                    ; #30760: origin
                    (Bb_survivorat_s_p6)

                    ; #37723: <==closure== 30760 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54835: <==closure== 90649 (pos)
                    (Pa_survivorat_s_p6)

                    ; #90649: origin
                    (Ba_survivorat_s_p6)

                    ; #15250: <==negation-removal== 37723 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #16939: <==negation-removal== 12661 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #27765: <==negation-removal== 30760 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #72176: <==negation-removal== 90649 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #80019: <==negation-removal== 17228 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #86602: <==negation-removal== 54835 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #10556: <==closure== 85306 (pos)
                    (Pc_survivorat_s_p7)

                    ; #22822: origin
                    (Ba_survivorat_s_p7)

                    ; #29490: <==closure== 22822 (pos)
                    (Pa_survivorat_s_p7)

                    ; #41546: origin
                    (Bb_survivorat_s_p7)

                    ; #80925: <==closure== 41546 (pos)
                    (Pb_survivorat_s_p7)

                    ; #85306: origin
                    (Bc_survivorat_s_p7)

                    ; #24382: <==negation-removal== 41546 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #70513: <==negation-removal== 10556 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #75411: <==negation-removal== 22822 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #81067: <==negation-removal== 85306 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #83427: <==negation-removal== 80925 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #88307: <==negation-removal== 29490 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #10556: <==closure== 85306 (pos)
                    (Pc_survivorat_s_p7)

                    ; #22822: origin
                    (Ba_survivorat_s_p7)

                    ; #29490: <==closure== 22822 (pos)
                    (Pa_survivorat_s_p7)

                    ; #41546: origin
                    (Bb_survivorat_s_p7)

                    ; #80925: <==closure== 41546 (pos)
                    (Pb_survivorat_s_p7)

                    ; #85306: origin
                    (Bc_survivorat_s_p7)

                    ; #24382: <==negation-removal== 41546 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #70513: <==negation-removal== 10556 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #75411: <==negation-removal== 22822 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #81067: <==negation-removal== 85306 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #83427: <==negation-removal== 80925 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #88307: <==negation-removal== 29490 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #10556: <==closure== 85306 (pos)
                    (Pc_survivorat_s_p7)

                    ; #22822: origin
                    (Ba_survivorat_s_p7)

                    ; #29490: <==closure== 22822 (pos)
                    (Pa_survivorat_s_p7)

                    ; #41546: origin
                    (Bb_survivorat_s_p7)

                    ; #80925: <==closure== 41546 (pos)
                    (Pb_survivorat_s_p7)

                    ; #85306: origin
                    (Bc_survivorat_s_p7)

                    ; #24382: <==negation-removal== 41546 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #70513: <==negation-removal== 10556 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #75411: <==negation-removal== 22822 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #81067: <==negation-removal== 85306 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #83427: <==negation-removal== 80925 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #88307: <==negation-removal== 29490 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #24406: <==closure== 30917 (pos)
                    (Pb_survivorat_s_p8)

                    ; #30917: origin
                    (Bb_survivorat_s_p8)

                    ; #38139: <==closure== 76841 (pos)
                    (Pc_survivorat_s_p8)

                    ; #60981: <==closure== 77378 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76841: origin
                    (Bc_survivorat_s_p8)

                    ; #77378: origin
                    (Ba_survivorat_s_p8)

                    ; #15567: <==negation-removal== 38139 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #20406: <==negation-removal== 76841 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #30650: <==negation-removal== 60981 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #62660: <==negation-removal== 30917 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #64454: <==negation-removal== 24406 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #88481: <==negation-removal== 77378 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #24406: <==closure== 30917 (pos)
                    (Pb_survivorat_s_p8)

                    ; #30917: origin
                    (Bb_survivorat_s_p8)

                    ; #38139: <==closure== 76841 (pos)
                    (Pc_survivorat_s_p8)

                    ; #60981: <==closure== 77378 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76841: origin
                    (Bc_survivorat_s_p8)

                    ; #77378: origin
                    (Ba_survivorat_s_p8)

                    ; #15567: <==negation-removal== 38139 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #20406: <==negation-removal== 76841 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #30650: <==negation-removal== 60981 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #62660: <==negation-removal== 30917 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #64454: <==negation-removal== 24406 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #88481: <==negation-removal== 77378 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #24406: <==closure== 30917 (pos)
                    (Pb_survivorat_s_p8)

                    ; #30917: origin
                    (Bb_survivorat_s_p8)

                    ; #38139: <==closure== 76841 (pos)
                    (Pc_survivorat_s_p8)

                    ; #60981: <==closure== 77378 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76841: origin
                    (Bc_survivorat_s_p8)

                    ; #77378: origin
                    (Ba_survivorat_s_p8)

                    ; #15567: <==negation-removal== 38139 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #20406: <==negation-removal== 76841 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #30650: <==negation-removal== 60981 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #62660: <==negation-removal== 30917 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #64454: <==negation-removal== 24406 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #88481: <==negation-removal== 77378 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #30885: <==closure== 71230 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58361: origin
                    (Ba_survivorat_s_p9)

                    ; #62174: origin
                    (Bb_survivorat_s_p9)

                    ; #71230: origin
                    (Bc_survivorat_s_p9)

                    ; #75303: <==closure== 58361 (pos)
                    (Pa_survivorat_s_p9)

                    ; #83417: <==closure== 62174 (pos)
                    (Pb_survivorat_s_p9)

                    ; #33605: <==negation-removal== 30885 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #37600: <==negation-removal== 71230 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #41104: <==negation-removal== 62174 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #53253: <==negation-removal== 58361 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #56379: <==negation-removal== 83417 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #73704: <==negation-removal== 75303 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #30885: <==closure== 71230 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58361: origin
                    (Ba_survivorat_s_p9)

                    ; #62174: origin
                    (Bb_survivorat_s_p9)

                    ; #71230: origin
                    (Bc_survivorat_s_p9)

                    ; #75303: <==closure== 58361 (pos)
                    (Pa_survivorat_s_p9)

                    ; #83417: <==closure== 62174 (pos)
                    (Pb_survivorat_s_p9)

                    ; #33605: <==negation-removal== 30885 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #37600: <==negation-removal== 71230 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #41104: <==negation-removal== 62174 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #53253: <==negation-removal== 58361 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #56379: <==negation-removal== 83417 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #73704: <==negation-removal== 75303 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #30885: <==closure== 71230 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58361: origin
                    (Ba_survivorat_s_p9)

                    ; #62174: origin
                    (Bb_survivorat_s_p9)

                    ; #71230: origin
                    (Bc_survivorat_s_p9)

                    ; #75303: <==closure== 58361 (pos)
                    (Pa_survivorat_s_p9)

                    ; #83417: <==closure== 62174 (pos)
                    (Pb_survivorat_s_p9)

                    ; #33605: <==negation-removal== 30885 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #37600: <==negation-removal== 71230 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #41104: <==negation-removal== 62174 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #53253: <==negation-removal== 58361 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #56379: <==negation-removal== 83417 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #73704: <==negation-removal== 75303 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #15751: origin
                    (at_a_p1)

                    ; #54013: origin
                    (not_at_a_p1)

                    ; #15751: <==negation-removal== 54013 (pos)
                    (not (at_a_p1))

                    ; #54013: <==negation-removal== 15751 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #21050: origin
                    (at_a_p2)

                    ; #54013: origin
                    (not_at_a_p1)

                    ; #15751: <==negation-removal== 54013 (pos)
                    (not (at_a_p1))

                    ; #77786: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #54013: origin
                    (not_at_a_p1)

                    ; #55056: origin
                    (at_a_p3)

                    ; #15751: <==negation-removal== 54013 (pos)
                    (not (at_a_p1))

                    ; #50887: <==negation-removal== 55056 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #38272: origin
                    (at_a_p4)

                    ; #54013: origin
                    (not_at_a_p1)

                    ; #15751: <==negation-removal== 54013 (pos)
                    (not (at_a_p1))

                    ; #17818: <==negation-removal== 38272 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #54013: origin
                    (not_at_a_p1)

                    ; #78743: origin
                    (at_a_p5)

                    ; #15751: <==negation-removal== 54013 (pos)
                    (not (at_a_p1))

                    ; #70068: <==negation-removal== 78743 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #54013: origin
                    (not_at_a_p1)

                    ; #54677: origin
                    (at_a_p6)

                    ; #15751: <==negation-removal== 54013 (pos)
                    (not (at_a_p1))

                    ; #45002: <==negation-removal== 54677 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #48771: origin
                    (at_a_p7)

                    ; #54013: origin
                    (not_at_a_p1)

                    ; #15751: <==negation-removal== 54013 (pos)
                    (not (at_a_p1))

                    ; #27102: <==negation-removal== 48771 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #54013: origin
                    (not_at_a_p1)

                    ; #67906: origin
                    (at_a_p8)

                    ; #15751: <==negation-removal== 54013 (pos)
                    (not (at_a_p1))

                    ; #70352: <==negation-removal== 67906 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #54013: origin
                    (not_at_a_p1)

                    ; #68276: origin
                    (at_a_p9)

                    ; #15751: <==negation-removal== 54013 (pos)
                    (not (at_a_p1))

                    ; #80920: <==negation-removal== 68276 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #15751: origin
                    (at_a_p1)

                    ; #77786: origin
                    (not_at_a_p2)

                    ; #21050: <==negation-removal== 77786 (pos)
                    (not (at_a_p2))

                    ; #54013: <==negation-removal== 15751 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #21050: origin
                    (at_a_p2)

                    ; #77786: origin
                    (not_at_a_p2)

                    ; #21050: <==negation-removal== 77786 (pos)
                    (not (at_a_p2))

                    ; #77786: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #55056: origin
                    (at_a_p3)

                    ; #77786: origin
                    (not_at_a_p2)

                    ; #21050: <==negation-removal== 77786 (pos)
                    (not (at_a_p2))

                    ; #50887: <==negation-removal== 55056 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #38272: origin
                    (at_a_p4)

                    ; #77786: origin
                    (not_at_a_p2)

                    ; #17818: <==negation-removal== 38272 (pos)
                    (not (not_at_a_p4))

                    ; #21050: <==negation-removal== 77786 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #77786: origin
                    (not_at_a_p2)

                    ; #78743: origin
                    (at_a_p5)

                    ; #21050: <==negation-removal== 77786 (pos)
                    (not (at_a_p2))

                    ; #70068: <==negation-removal== 78743 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #54677: origin
                    (at_a_p6)

                    ; #77786: origin
                    (not_at_a_p2)

                    ; #21050: <==negation-removal== 77786 (pos)
                    (not (at_a_p2))

                    ; #45002: <==negation-removal== 54677 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #48771: origin
                    (at_a_p7)

                    ; #77786: origin
                    (not_at_a_p2)

                    ; #21050: <==negation-removal== 77786 (pos)
                    (not (at_a_p2))

                    ; #27102: <==negation-removal== 48771 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #67906: origin
                    (at_a_p8)

                    ; #77786: origin
                    (not_at_a_p2)

                    ; #21050: <==negation-removal== 77786 (pos)
                    (not (at_a_p2))

                    ; #70352: <==negation-removal== 67906 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #68276: origin
                    (at_a_p9)

                    ; #77786: origin
                    (not_at_a_p2)

                    ; #21050: <==negation-removal== 77786 (pos)
                    (not (at_a_p2))

                    ; #80920: <==negation-removal== 68276 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #15751: origin
                    (at_a_p1)

                    ; #50887: origin
                    (not_at_a_p3)

                    ; #54013: <==negation-removal== 15751 (pos)
                    (not (not_at_a_p1))

                    ; #55056: <==negation-removal== 50887 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #21050: origin
                    (at_a_p2)

                    ; #50887: origin
                    (not_at_a_p3)

                    ; #55056: <==negation-removal== 50887 (pos)
                    (not (at_a_p3))

                    ; #77786: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #50887: origin
                    (not_at_a_p3)

                    ; #55056: origin
                    (at_a_p3)

                    ; #50887: <==negation-removal== 55056 (pos)
                    (not (not_at_a_p3))

                    ; #55056: <==negation-removal== 50887 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #38272: origin
                    (at_a_p4)

                    ; #50887: origin
                    (not_at_a_p3)

                    ; #17818: <==negation-removal== 38272 (pos)
                    (not (not_at_a_p4))

                    ; #55056: <==negation-removal== 50887 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #50887: origin
                    (not_at_a_p3)

                    ; #78743: origin
                    (at_a_p5)

                    ; #55056: <==negation-removal== 50887 (pos)
                    (not (at_a_p3))

                    ; #70068: <==negation-removal== 78743 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #50887: origin
                    (not_at_a_p3)

                    ; #54677: origin
                    (at_a_p6)

                    ; #45002: <==negation-removal== 54677 (pos)
                    (not (not_at_a_p6))

                    ; #55056: <==negation-removal== 50887 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #48771: origin
                    (at_a_p7)

                    ; #50887: origin
                    (not_at_a_p3)

                    ; #27102: <==negation-removal== 48771 (pos)
                    (not (not_at_a_p7))

                    ; #55056: <==negation-removal== 50887 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #50887: origin
                    (not_at_a_p3)

                    ; #67906: origin
                    (at_a_p8)

                    ; #55056: <==negation-removal== 50887 (pos)
                    (not (at_a_p3))

                    ; #70352: <==negation-removal== 67906 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #50887: origin
                    (not_at_a_p3)

                    ; #68276: origin
                    (at_a_p9)

                    ; #55056: <==negation-removal== 50887 (pos)
                    (not (at_a_p3))

                    ; #80920: <==negation-removal== 68276 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #15751: origin
                    (at_a_p1)

                    ; #17818: origin
                    (not_at_a_p4)

                    ; #38272: <==negation-removal== 17818 (pos)
                    (not (at_a_p4))

                    ; #54013: <==negation-removal== 15751 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #17818: origin
                    (not_at_a_p4)

                    ; #21050: origin
                    (at_a_p2)

                    ; #38272: <==negation-removal== 17818 (pos)
                    (not (at_a_p4))

                    ; #77786: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #17818: origin
                    (not_at_a_p4)

                    ; #55056: origin
                    (at_a_p3)

                    ; #38272: <==negation-removal== 17818 (pos)
                    (not (at_a_p4))

                    ; #50887: <==negation-removal== 55056 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #17818: origin
                    (not_at_a_p4)

                    ; #38272: origin
                    (at_a_p4)

                    ; #17818: <==negation-removal== 38272 (pos)
                    (not (not_at_a_p4))

                    ; #38272: <==negation-removal== 17818 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #17818: origin
                    (not_at_a_p4)

                    ; #78743: origin
                    (at_a_p5)

                    ; #38272: <==negation-removal== 17818 (pos)
                    (not (at_a_p4))

                    ; #70068: <==negation-removal== 78743 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #17818: origin
                    (not_at_a_p4)

                    ; #54677: origin
                    (at_a_p6)

                    ; #38272: <==negation-removal== 17818 (pos)
                    (not (at_a_p4))

                    ; #45002: <==negation-removal== 54677 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #17818: origin
                    (not_at_a_p4)

                    ; #48771: origin
                    (at_a_p7)

                    ; #27102: <==negation-removal== 48771 (pos)
                    (not (not_at_a_p7))

                    ; #38272: <==negation-removal== 17818 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #17818: origin
                    (not_at_a_p4)

                    ; #67906: origin
                    (at_a_p8)

                    ; #38272: <==negation-removal== 17818 (pos)
                    (not (at_a_p4))

                    ; #70352: <==negation-removal== 67906 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #17818: origin
                    (not_at_a_p4)

                    ; #68276: origin
                    (at_a_p9)

                    ; #38272: <==negation-removal== 17818 (pos)
                    (not (at_a_p4))

                    ; #80920: <==negation-removal== 68276 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #15751: origin
                    (at_a_p1)

                    ; #70068: origin
                    (not_at_a_p5)

                    ; #54013: <==negation-removal== 15751 (pos)
                    (not (not_at_a_p1))

                    ; #78743: <==negation-removal== 70068 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #21050: origin
                    (at_a_p2)

                    ; #70068: origin
                    (not_at_a_p5)

                    ; #77786: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p2))

                    ; #78743: <==negation-removal== 70068 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #55056: origin
                    (at_a_p3)

                    ; #70068: origin
                    (not_at_a_p5)

                    ; #50887: <==negation-removal== 55056 (pos)
                    (not (not_at_a_p3))

                    ; #78743: <==negation-removal== 70068 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #38272: origin
                    (at_a_p4)

                    ; #70068: origin
                    (not_at_a_p5)

                    ; #17818: <==negation-removal== 38272 (pos)
                    (not (not_at_a_p4))

                    ; #78743: <==negation-removal== 70068 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #70068: origin
                    (not_at_a_p5)

                    ; #78743: origin
                    (at_a_p5)

                    ; #70068: <==negation-removal== 78743 (pos)
                    (not (not_at_a_p5))

                    ; #78743: <==negation-removal== 70068 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #54677: origin
                    (at_a_p6)

                    ; #70068: origin
                    (not_at_a_p5)

                    ; #45002: <==negation-removal== 54677 (pos)
                    (not (not_at_a_p6))

                    ; #78743: <==negation-removal== 70068 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #48771: origin
                    (at_a_p7)

                    ; #70068: origin
                    (not_at_a_p5)

                    ; #27102: <==negation-removal== 48771 (pos)
                    (not (not_at_a_p7))

                    ; #78743: <==negation-removal== 70068 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #67906: origin
                    (at_a_p8)

                    ; #70068: origin
                    (not_at_a_p5)

                    ; #70352: <==negation-removal== 67906 (pos)
                    (not (not_at_a_p8))

                    ; #78743: <==negation-removal== 70068 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #68276: origin
                    (at_a_p9)

                    ; #70068: origin
                    (not_at_a_p5)

                    ; #78743: <==negation-removal== 70068 (pos)
                    (not (at_a_p5))

                    ; #80920: <==negation-removal== 68276 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #15751: origin
                    (at_a_p1)

                    ; #45002: origin
                    (not_at_a_p6)

                    ; #54013: <==negation-removal== 15751 (pos)
                    (not (not_at_a_p1))

                    ; #54677: <==negation-removal== 45002 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #21050: origin
                    (at_a_p2)

                    ; #45002: origin
                    (not_at_a_p6)

                    ; #54677: <==negation-removal== 45002 (pos)
                    (not (at_a_p6))

                    ; #77786: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #45002: origin
                    (not_at_a_p6)

                    ; #55056: origin
                    (at_a_p3)

                    ; #50887: <==negation-removal== 55056 (pos)
                    (not (not_at_a_p3))

                    ; #54677: <==negation-removal== 45002 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #38272: origin
                    (at_a_p4)

                    ; #45002: origin
                    (not_at_a_p6)

                    ; #17818: <==negation-removal== 38272 (pos)
                    (not (not_at_a_p4))

                    ; #54677: <==negation-removal== 45002 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #45002: origin
                    (not_at_a_p6)

                    ; #78743: origin
                    (at_a_p5)

                    ; #54677: <==negation-removal== 45002 (pos)
                    (not (at_a_p6))

                    ; #70068: <==negation-removal== 78743 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #45002: origin
                    (not_at_a_p6)

                    ; #54677: origin
                    (at_a_p6)

                    ; #45002: <==negation-removal== 54677 (pos)
                    (not (not_at_a_p6))

                    ; #54677: <==negation-removal== 45002 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #45002: origin
                    (not_at_a_p6)

                    ; #48771: origin
                    (at_a_p7)

                    ; #27102: <==negation-removal== 48771 (pos)
                    (not (not_at_a_p7))

                    ; #54677: <==negation-removal== 45002 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #45002: origin
                    (not_at_a_p6)

                    ; #67906: origin
                    (at_a_p8)

                    ; #54677: <==negation-removal== 45002 (pos)
                    (not (at_a_p6))

                    ; #70352: <==negation-removal== 67906 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #45002: origin
                    (not_at_a_p6)

                    ; #68276: origin
                    (at_a_p9)

                    ; #54677: <==negation-removal== 45002 (pos)
                    (not (at_a_p6))

                    ; #80920: <==negation-removal== 68276 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #15751: origin
                    (at_a_p1)

                    ; #27102: origin
                    (not_at_a_p7)

                    ; #48771: <==negation-removal== 27102 (pos)
                    (not (at_a_p7))

                    ; #54013: <==negation-removal== 15751 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #21050: origin
                    (at_a_p2)

                    ; #27102: origin
                    (not_at_a_p7)

                    ; #48771: <==negation-removal== 27102 (pos)
                    (not (at_a_p7))

                    ; #77786: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #27102: origin
                    (not_at_a_p7)

                    ; #55056: origin
                    (at_a_p3)

                    ; #48771: <==negation-removal== 27102 (pos)
                    (not (at_a_p7))

                    ; #50887: <==negation-removal== 55056 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #27102: origin
                    (not_at_a_p7)

                    ; #38272: origin
                    (at_a_p4)

                    ; #17818: <==negation-removal== 38272 (pos)
                    (not (not_at_a_p4))

                    ; #48771: <==negation-removal== 27102 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #27102: origin
                    (not_at_a_p7)

                    ; #78743: origin
                    (at_a_p5)

                    ; #48771: <==negation-removal== 27102 (pos)
                    (not (at_a_p7))

                    ; #70068: <==negation-removal== 78743 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #27102: origin
                    (not_at_a_p7)

                    ; #54677: origin
                    (at_a_p6)

                    ; #45002: <==negation-removal== 54677 (pos)
                    (not (not_at_a_p6))

                    ; #48771: <==negation-removal== 27102 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #27102: origin
                    (not_at_a_p7)

                    ; #48771: origin
                    (at_a_p7)

                    ; #27102: <==negation-removal== 48771 (pos)
                    (not (not_at_a_p7))

                    ; #48771: <==negation-removal== 27102 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #27102: origin
                    (not_at_a_p7)

                    ; #67906: origin
                    (at_a_p8)

                    ; #48771: <==negation-removal== 27102 (pos)
                    (not (at_a_p7))

                    ; #70352: <==negation-removal== 67906 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #27102: origin
                    (not_at_a_p7)

                    ; #68276: origin
                    (at_a_p9)

                    ; #48771: <==negation-removal== 27102 (pos)
                    (not (at_a_p7))

                    ; #80920: <==negation-removal== 68276 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #15751: origin
                    (at_a_p1)

                    ; #70352: origin
                    (not_at_a_p8)

                    ; #54013: <==negation-removal== 15751 (pos)
                    (not (not_at_a_p1))

                    ; #67906: <==negation-removal== 70352 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #21050: origin
                    (at_a_p2)

                    ; #70352: origin
                    (not_at_a_p8)

                    ; #67906: <==negation-removal== 70352 (pos)
                    (not (at_a_p8))

                    ; #77786: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #55056: origin
                    (at_a_p3)

                    ; #70352: origin
                    (not_at_a_p8)

                    ; #50887: <==negation-removal== 55056 (pos)
                    (not (not_at_a_p3))

                    ; #67906: <==negation-removal== 70352 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #38272: origin
                    (at_a_p4)

                    ; #70352: origin
                    (not_at_a_p8)

                    ; #17818: <==negation-removal== 38272 (pos)
                    (not (not_at_a_p4))

                    ; #67906: <==negation-removal== 70352 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #70352: origin
                    (not_at_a_p8)

                    ; #78743: origin
                    (at_a_p5)

                    ; #67906: <==negation-removal== 70352 (pos)
                    (not (at_a_p8))

                    ; #70068: <==negation-removal== 78743 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #54677: origin
                    (at_a_p6)

                    ; #70352: origin
                    (not_at_a_p8)

                    ; #45002: <==negation-removal== 54677 (pos)
                    (not (not_at_a_p6))

                    ; #67906: <==negation-removal== 70352 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #48771: origin
                    (at_a_p7)

                    ; #70352: origin
                    (not_at_a_p8)

                    ; #27102: <==negation-removal== 48771 (pos)
                    (not (not_at_a_p7))

                    ; #67906: <==negation-removal== 70352 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #67906: origin
                    (at_a_p8)

                    ; #70352: origin
                    (not_at_a_p8)

                    ; #67906: <==negation-removal== 70352 (pos)
                    (not (at_a_p8))

                    ; #70352: <==negation-removal== 67906 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #68276: origin
                    (at_a_p9)

                    ; #70352: origin
                    (not_at_a_p8)

                    ; #67906: <==negation-removal== 70352 (pos)
                    (not (at_a_p8))

                    ; #80920: <==negation-removal== 68276 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #15751: origin
                    (at_a_p1)

                    ; #80920: origin
                    (not_at_a_p9)

                    ; #54013: <==negation-removal== 15751 (pos)
                    (not (not_at_a_p1))

                    ; #68276: <==negation-removal== 80920 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #21050: origin
                    (at_a_p2)

                    ; #80920: origin
                    (not_at_a_p9)

                    ; #68276: <==negation-removal== 80920 (pos)
                    (not (at_a_p9))

                    ; #77786: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #55056: origin
                    (at_a_p3)

                    ; #80920: origin
                    (not_at_a_p9)

                    ; #50887: <==negation-removal== 55056 (pos)
                    (not (not_at_a_p3))

                    ; #68276: <==negation-removal== 80920 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #38272: origin
                    (at_a_p4)

                    ; #80920: origin
                    (not_at_a_p9)

                    ; #17818: <==negation-removal== 38272 (pos)
                    (not (not_at_a_p4))

                    ; #68276: <==negation-removal== 80920 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #78743: origin
                    (at_a_p5)

                    ; #80920: origin
                    (not_at_a_p9)

                    ; #68276: <==negation-removal== 80920 (pos)
                    (not (at_a_p9))

                    ; #70068: <==negation-removal== 78743 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #54677: origin
                    (at_a_p6)

                    ; #80920: origin
                    (not_at_a_p9)

                    ; #45002: <==negation-removal== 54677 (pos)
                    (not (not_at_a_p6))

                    ; #68276: <==negation-removal== 80920 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #48771: origin
                    (at_a_p7)

                    ; #80920: origin
                    (not_at_a_p9)

                    ; #27102: <==negation-removal== 48771 (pos)
                    (not (not_at_a_p7))

                    ; #68276: <==negation-removal== 80920 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #67906: origin
                    (at_a_p8)

                    ; #80920: origin
                    (not_at_a_p9)

                    ; #68276: <==negation-removal== 80920 (pos)
                    (not (at_a_p9))

                    ; #70352: <==negation-removal== 67906 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #68276: origin
                    (at_a_p9)

                    ; #80920: origin
                    (not_at_a_p9)

                    ; #68276: <==negation-removal== 80920 (pos)
                    (not (at_a_p9))

                    ; #80920: <==negation-removal== 68276 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #25289: origin
                    (at_b_p1)

                    ; #77553: origin
                    (not_at_b_p1)

                    ; #25289: <==negation-removal== 77553 (pos)
                    (not (at_b_p1))

                    ; #77553: <==negation-removal== 25289 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #77553: origin
                    (not_at_b_p1)

                    ; #79396: origin
                    (at_b_p2)

                    ; #12071: <==negation-removal== 79396 (pos)
                    (not (not_at_b_p2))

                    ; #25289: <==negation-removal== 77553 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #33860: origin
                    (at_b_p3)

                    ; #77553: origin
                    (not_at_b_p1)

                    ; #14189: <==negation-removal== 33860 (pos)
                    (not (not_at_b_p3))

                    ; #25289: <==negation-removal== 77553 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #14641: origin
                    (at_b_p4)

                    ; #77553: origin
                    (not_at_b_p1)

                    ; #25289: <==negation-removal== 77553 (pos)
                    (not (at_b_p1))

                    ; #70548: <==negation-removal== 14641 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #77553: origin
                    (not_at_b_p1)

                    ; #89806: origin
                    (at_b_p5)

                    ; #25289: <==negation-removal== 77553 (pos)
                    (not (at_b_p1))

                    ; #54474: <==negation-removal== 89806 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #38573: origin
                    (at_b_p6)

                    ; #77553: origin
                    (not_at_b_p1)

                    ; #25289: <==negation-removal== 77553 (pos)
                    (not (at_b_p1))

                    ; #57304: <==negation-removal== 38573 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #77162: origin
                    (at_b_p7)

                    ; #77553: origin
                    (not_at_b_p1)

                    ; #25289: <==negation-removal== 77553 (pos)
                    (not (at_b_p1))

                    ; #25721: <==negation-removal== 77162 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #67062: origin
                    (at_b_p8)

                    ; #77553: origin
                    (not_at_b_p1)

                    ; #25289: <==negation-removal== 77553 (pos)
                    (not (at_b_p1))

                    ; #27702: <==negation-removal== 67062 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #20712: origin
                    (at_b_p9)

                    ; #77553: origin
                    (not_at_b_p1)

                    ; #25289: <==negation-removal== 77553 (pos)
                    (not (at_b_p1))

                    ; #45761: <==negation-removal== 20712 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #12071: origin
                    (not_at_b_p2)

                    ; #25289: origin
                    (at_b_p1)

                    ; #77553: <==negation-removal== 25289 (pos)
                    (not (not_at_b_p1))

                    ; #79396: <==negation-removal== 12071 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #12071: origin
                    (not_at_b_p2)

                    ; #79396: origin
                    (at_b_p2)

                    ; #12071: <==negation-removal== 79396 (pos)
                    (not (not_at_b_p2))

                    ; #79396: <==negation-removal== 12071 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #12071: origin
                    (not_at_b_p2)

                    ; #33860: origin
                    (at_b_p3)

                    ; #14189: <==negation-removal== 33860 (pos)
                    (not (not_at_b_p3))

                    ; #79396: <==negation-removal== 12071 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #12071: origin
                    (not_at_b_p2)

                    ; #14641: origin
                    (at_b_p4)

                    ; #70548: <==negation-removal== 14641 (pos)
                    (not (not_at_b_p4))

                    ; #79396: <==negation-removal== 12071 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #12071: origin
                    (not_at_b_p2)

                    ; #89806: origin
                    (at_b_p5)

                    ; #54474: <==negation-removal== 89806 (pos)
                    (not (not_at_b_p5))

                    ; #79396: <==negation-removal== 12071 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #12071: origin
                    (not_at_b_p2)

                    ; #38573: origin
                    (at_b_p6)

                    ; #57304: <==negation-removal== 38573 (pos)
                    (not (not_at_b_p6))

                    ; #79396: <==negation-removal== 12071 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #12071: origin
                    (not_at_b_p2)

                    ; #77162: origin
                    (at_b_p7)

                    ; #25721: <==negation-removal== 77162 (pos)
                    (not (not_at_b_p7))

                    ; #79396: <==negation-removal== 12071 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #12071: origin
                    (not_at_b_p2)

                    ; #67062: origin
                    (at_b_p8)

                    ; #27702: <==negation-removal== 67062 (pos)
                    (not (not_at_b_p8))

                    ; #79396: <==negation-removal== 12071 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #12071: origin
                    (not_at_b_p2)

                    ; #20712: origin
                    (at_b_p9)

                    ; #45761: <==negation-removal== 20712 (pos)
                    (not (not_at_b_p9))

                    ; #79396: <==negation-removal== 12071 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #14189: origin
                    (not_at_b_p3)

                    ; #25289: origin
                    (at_b_p1)

                    ; #33860: <==negation-removal== 14189 (pos)
                    (not (at_b_p3))

                    ; #77553: <==negation-removal== 25289 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #14189: origin
                    (not_at_b_p3)

                    ; #79396: origin
                    (at_b_p2)

                    ; #12071: <==negation-removal== 79396 (pos)
                    (not (not_at_b_p2))

                    ; #33860: <==negation-removal== 14189 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #14189: origin
                    (not_at_b_p3)

                    ; #33860: origin
                    (at_b_p3)

                    ; #14189: <==negation-removal== 33860 (pos)
                    (not (not_at_b_p3))

                    ; #33860: <==negation-removal== 14189 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #14189: origin
                    (not_at_b_p3)

                    ; #14641: origin
                    (at_b_p4)

                    ; #33860: <==negation-removal== 14189 (pos)
                    (not (at_b_p3))

                    ; #70548: <==negation-removal== 14641 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #14189: origin
                    (not_at_b_p3)

                    ; #89806: origin
                    (at_b_p5)

                    ; #33860: <==negation-removal== 14189 (pos)
                    (not (at_b_p3))

                    ; #54474: <==negation-removal== 89806 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #14189: origin
                    (not_at_b_p3)

                    ; #38573: origin
                    (at_b_p6)

                    ; #33860: <==negation-removal== 14189 (pos)
                    (not (at_b_p3))

                    ; #57304: <==negation-removal== 38573 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #14189: origin
                    (not_at_b_p3)

                    ; #77162: origin
                    (at_b_p7)

                    ; #25721: <==negation-removal== 77162 (pos)
                    (not (not_at_b_p7))

                    ; #33860: <==negation-removal== 14189 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #14189: origin
                    (not_at_b_p3)

                    ; #67062: origin
                    (at_b_p8)

                    ; #27702: <==negation-removal== 67062 (pos)
                    (not (not_at_b_p8))

                    ; #33860: <==negation-removal== 14189 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #14189: origin
                    (not_at_b_p3)

                    ; #20712: origin
                    (at_b_p9)

                    ; #33860: <==negation-removal== 14189 (pos)
                    (not (at_b_p3))

                    ; #45761: <==negation-removal== 20712 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #25289: origin
                    (at_b_p1)

                    ; #70548: origin
                    (not_at_b_p4)

                    ; #14641: <==negation-removal== 70548 (pos)
                    (not (at_b_p4))

                    ; #77553: <==negation-removal== 25289 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #70548: origin
                    (not_at_b_p4)

                    ; #79396: origin
                    (at_b_p2)

                    ; #12071: <==negation-removal== 79396 (pos)
                    (not (not_at_b_p2))

                    ; #14641: <==negation-removal== 70548 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #33860: origin
                    (at_b_p3)

                    ; #70548: origin
                    (not_at_b_p4)

                    ; #14189: <==negation-removal== 33860 (pos)
                    (not (not_at_b_p3))

                    ; #14641: <==negation-removal== 70548 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #14641: origin
                    (at_b_p4)

                    ; #70548: origin
                    (not_at_b_p4)

                    ; #14641: <==negation-removal== 70548 (pos)
                    (not (at_b_p4))

                    ; #70548: <==negation-removal== 14641 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #70548: origin
                    (not_at_b_p4)

                    ; #89806: origin
                    (at_b_p5)

                    ; #14641: <==negation-removal== 70548 (pos)
                    (not (at_b_p4))

                    ; #54474: <==negation-removal== 89806 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #38573: origin
                    (at_b_p6)

                    ; #70548: origin
                    (not_at_b_p4)

                    ; #14641: <==negation-removal== 70548 (pos)
                    (not (at_b_p4))

                    ; #57304: <==negation-removal== 38573 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #70548: origin
                    (not_at_b_p4)

                    ; #77162: origin
                    (at_b_p7)

                    ; #14641: <==negation-removal== 70548 (pos)
                    (not (at_b_p4))

                    ; #25721: <==negation-removal== 77162 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #67062: origin
                    (at_b_p8)

                    ; #70548: origin
                    (not_at_b_p4)

                    ; #14641: <==negation-removal== 70548 (pos)
                    (not (at_b_p4))

                    ; #27702: <==negation-removal== 67062 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #20712: origin
                    (at_b_p9)

                    ; #70548: origin
                    (not_at_b_p4)

                    ; #14641: <==negation-removal== 70548 (pos)
                    (not (at_b_p4))

                    ; #45761: <==negation-removal== 20712 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #25289: origin
                    (at_b_p1)

                    ; #54474: origin
                    (not_at_b_p5)

                    ; #77553: <==negation-removal== 25289 (pos)
                    (not (not_at_b_p1))

                    ; #89806: <==negation-removal== 54474 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #54474: origin
                    (not_at_b_p5)

                    ; #79396: origin
                    (at_b_p2)

                    ; #12071: <==negation-removal== 79396 (pos)
                    (not (not_at_b_p2))

                    ; #89806: <==negation-removal== 54474 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #33860: origin
                    (at_b_p3)

                    ; #54474: origin
                    (not_at_b_p5)

                    ; #14189: <==negation-removal== 33860 (pos)
                    (not (not_at_b_p3))

                    ; #89806: <==negation-removal== 54474 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #14641: origin
                    (at_b_p4)

                    ; #54474: origin
                    (not_at_b_p5)

                    ; #70548: <==negation-removal== 14641 (pos)
                    (not (not_at_b_p4))

                    ; #89806: <==negation-removal== 54474 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #54474: origin
                    (not_at_b_p5)

                    ; #89806: origin
                    (at_b_p5)

                    ; #54474: <==negation-removal== 89806 (pos)
                    (not (not_at_b_p5))

                    ; #89806: <==negation-removal== 54474 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #38573: origin
                    (at_b_p6)

                    ; #54474: origin
                    (not_at_b_p5)

                    ; #57304: <==negation-removal== 38573 (pos)
                    (not (not_at_b_p6))

                    ; #89806: <==negation-removal== 54474 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #54474: origin
                    (not_at_b_p5)

                    ; #77162: origin
                    (at_b_p7)

                    ; #25721: <==negation-removal== 77162 (pos)
                    (not (not_at_b_p7))

                    ; #89806: <==negation-removal== 54474 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #54474: origin
                    (not_at_b_p5)

                    ; #67062: origin
                    (at_b_p8)

                    ; #27702: <==negation-removal== 67062 (pos)
                    (not (not_at_b_p8))

                    ; #89806: <==negation-removal== 54474 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #20712: origin
                    (at_b_p9)

                    ; #54474: origin
                    (not_at_b_p5)

                    ; #45761: <==negation-removal== 20712 (pos)
                    (not (not_at_b_p9))

                    ; #89806: <==negation-removal== 54474 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #25289: origin
                    (at_b_p1)

                    ; #57304: origin
                    (not_at_b_p6)

                    ; #38573: <==negation-removal== 57304 (pos)
                    (not (at_b_p6))

                    ; #77553: <==negation-removal== 25289 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #57304: origin
                    (not_at_b_p6)

                    ; #79396: origin
                    (at_b_p2)

                    ; #12071: <==negation-removal== 79396 (pos)
                    (not (not_at_b_p2))

                    ; #38573: <==negation-removal== 57304 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #33860: origin
                    (at_b_p3)

                    ; #57304: origin
                    (not_at_b_p6)

                    ; #14189: <==negation-removal== 33860 (pos)
                    (not (not_at_b_p3))

                    ; #38573: <==negation-removal== 57304 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #14641: origin
                    (at_b_p4)

                    ; #57304: origin
                    (not_at_b_p6)

                    ; #38573: <==negation-removal== 57304 (pos)
                    (not (at_b_p6))

                    ; #70548: <==negation-removal== 14641 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #57304: origin
                    (not_at_b_p6)

                    ; #89806: origin
                    (at_b_p5)

                    ; #38573: <==negation-removal== 57304 (pos)
                    (not (at_b_p6))

                    ; #54474: <==negation-removal== 89806 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #38573: origin
                    (at_b_p6)

                    ; #57304: origin
                    (not_at_b_p6)

                    ; #38573: <==negation-removal== 57304 (pos)
                    (not (at_b_p6))

                    ; #57304: <==negation-removal== 38573 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #57304: origin
                    (not_at_b_p6)

                    ; #77162: origin
                    (at_b_p7)

                    ; #25721: <==negation-removal== 77162 (pos)
                    (not (not_at_b_p7))

                    ; #38573: <==negation-removal== 57304 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #57304: origin
                    (not_at_b_p6)

                    ; #67062: origin
                    (at_b_p8)

                    ; #27702: <==negation-removal== 67062 (pos)
                    (not (not_at_b_p8))

                    ; #38573: <==negation-removal== 57304 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #20712: origin
                    (at_b_p9)

                    ; #57304: origin
                    (not_at_b_p6)

                    ; #38573: <==negation-removal== 57304 (pos)
                    (not (at_b_p6))

                    ; #45761: <==negation-removal== 20712 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #25289: origin
                    (at_b_p1)

                    ; #25721: origin
                    (not_at_b_p7)

                    ; #77162: <==negation-removal== 25721 (pos)
                    (not (at_b_p7))

                    ; #77553: <==negation-removal== 25289 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #25721: origin
                    (not_at_b_p7)

                    ; #79396: origin
                    (at_b_p2)

                    ; #12071: <==negation-removal== 79396 (pos)
                    (not (not_at_b_p2))

                    ; #77162: <==negation-removal== 25721 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #25721: origin
                    (not_at_b_p7)

                    ; #33860: origin
                    (at_b_p3)

                    ; #14189: <==negation-removal== 33860 (pos)
                    (not (not_at_b_p3))

                    ; #77162: <==negation-removal== 25721 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #14641: origin
                    (at_b_p4)

                    ; #25721: origin
                    (not_at_b_p7)

                    ; #70548: <==negation-removal== 14641 (pos)
                    (not (not_at_b_p4))

                    ; #77162: <==negation-removal== 25721 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #25721: origin
                    (not_at_b_p7)

                    ; #89806: origin
                    (at_b_p5)

                    ; #54474: <==negation-removal== 89806 (pos)
                    (not (not_at_b_p5))

                    ; #77162: <==negation-removal== 25721 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #25721: origin
                    (not_at_b_p7)

                    ; #38573: origin
                    (at_b_p6)

                    ; #57304: <==negation-removal== 38573 (pos)
                    (not (not_at_b_p6))

                    ; #77162: <==negation-removal== 25721 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #25721: origin
                    (not_at_b_p7)

                    ; #77162: origin
                    (at_b_p7)

                    ; #25721: <==negation-removal== 77162 (pos)
                    (not (not_at_b_p7))

                    ; #77162: <==negation-removal== 25721 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #25721: origin
                    (not_at_b_p7)

                    ; #67062: origin
                    (at_b_p8)

                    ; #27702: <==negation-removal== 67062 (pos)
                    (not (not_at_b_p8))

                    ; #77162: <==negation-removal== 25721 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #20712: origin
                    (at_b_p9)

                    ; #25721: origin
                    (not_at_b_p7)

                    ; #45761: <==negation-removal== 20712 (pos)
                    (not (not_at_b_p9))

                    ; #77162: <==negation-removal== 25721 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #25289: origin
                    (at_b_p1)

                    ; #27702: origin
                    (not_at_b_p8)

                    ; #67062: <==negation-removal== 27702 (pos)
                    (not (at_b_p8))

                    ; #77553: <==negation-removal== 25289 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #27702: origin
                    (not_at_b_p8)

                    ; #79396: origin
                    (at_b_p2)

                    ; #12071: <==negation-removal== 79396 (pos)
                    (not (not_at_b_p2))

                    ; #67062: <==negation-removal== 27702 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #27702: origin
                    (not_at_b_p8)

                    ; #33860: origin
                    (at_b_p3)

                    ; #14189: <==negation-removal== 33860 (pos)
                    (not (not_at_b_p3))

                    ; #67062: <==negation-removal== 27702 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #14641: origin
                    (at_b_p4)

                    ; #27702: origin
                    (not_at_b_p8)

                    ; #67062: <==negation-removal== 27702 (pos)
                    (not (at_b_p8))

                    ; #70548: <==negation-removal== 14641 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #27702: origin
                    (not_at_b_p8)

                    ; #89806: origin
                    (at_b_p5)

                    ; #54474: <==negation-removal== 89806 (pos)
                    (not (not_at_b_p5))

                    ; #67062: <==negation-removal== 27702 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #27702: origin
                    (not_at_b_p8)

                    ; #38573: origin
                    (at_b_p6)

                    ; #57304: <==negation-removal== 38573 (pos)
                    (not (not_at_b_p6))

                    ; #67062: <==negation-removal== 27702 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #27702: origin
                    (not_at_b_p8)

                    ; #77162: origin
                    (at_b_p7)

                    ; #25721: <==negation-removal== 77162 (pos)
                    (not (not_at_b_p7))

                    ; #67062: <==negation-removal== 27702 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #27702: origin
                    (not_at_b_p8)

                    ; #67062: origin
                    (at_b_p8)

                    ; #27702: <==negation-removal== 67062 (pos)
                    (not (not_at_b_p8))

                    ; #67062: <==negation-removal== 27702 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #20712: origin
                    (at_b_p9)

                    ; #27702: origin
                    (not_at_b_p8)

                    ; #45761: <==negation-removal== 20712 (pos)
                    (not (not_at_b_p9))

                    ; #67062: <==negation-removal== 27702 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #25289: origin
                    (at_b_p1)

                    ; #45761: origin
                    (not_at_b_p9)

                    ; #20712: <==negation-removal== 45761 (pos)
                    (not (at_b_p9))

                    ; #77553: <==negation-removal== 25289 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #45761: origin
                    (not_at_b_p9)

                    ; #79396: origin
                    (at_b_p2)

                    ; #12071: <==negation-removal== 79396 (pos)
                    (not (not_at_b_p2))

                    ; #20712: <==negation-removal== 45761 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #33860: origin
                    (at_b_p3)

                    ; #45761: origin
                    (not_at_b_p9)

                    ; #14189: <==negation-removal== 33860 (pos)
                    (not (not_at_b_p3))

                    ; #20712: <==negation-removal== 45761 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #14641: origin
                    (at_b_p4)

                    ; #45761: origin
                    (not_at_b_p9)

                    ; #20712: <==negation-removal== 45761 (pos)
                    (not (at_b_p9))

                    ; #70548: <==negation-removal== 14641 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #45761: origin
                    (not_at_b_p9)

                    ; #89806: origin
                    (at_b_p5)

                    ; #20712: <==negation-removal== 45761 (pos)
                    (not (at_b_p9))

                    ; #54474: <==negation-removal== 89806 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #38573: origin
                    (at_b_p6)

                    ; #45761: origin
                    (not_at_b_p9)

                    ; #20712: <==negation-removal== 45761 (pos)
                    (not (at_b_p9))

                    ; #57304: <==negation-removal== 38573 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #45761: origin
                    (not_at_b_p9)

                    ; #77162: origin
                    (at_b_p7)

                    ; #20712: <==negation-removal== 45761 (pos)
                    (not (at_b_p9))

                    ; #25721: <==negation-removal== 77162 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #45761: origin
                    (not_at_b_p9)

                    ; #67062: origin
                    (at_b_p8)

                    ; #20712: <==negation-removal== 45761 (pos)
                    (not (at_b_p9))

                    ; #27702: <==negation-removal== 67062 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #20712: origin
                    (at_b_p9)

                    ; #45761: origin
                    (not_at_b_p9)

                    ; #20712: <==negation-removal== 45761 (pos)
                    (not (at_b_p9))

                    ; #45761: <==negation-removal== 20712 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #70230: origin
                    (at_c_p1)

                    ; #72327: origin
                    (not_at_c_p1)

                    ; #70230: <==negation-removal== 72327 (pos)
                    (not (at_c_p1))

                    ; #72327: <==negation-removal== 70230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #27481: origin
                    (at_c_p2)

                    ; #72327: origin
                    (not_at_c_p1)

                    ; #35615: <==negation-removal== 27481 (pos)
                    (not (not_at_c_p2))

                    ; #70230: <==negation-removal== 72327 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #32581: origin
                    (at_c_p3)

                    ; #72327: origin
                    (not_at_c_p1)

                    ; #64067: <==negation-removal== 32581 (pos)
                    (not (not_at_c_p3))

                    ; #70230: <==negation-removal== 72327 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #51665: origin
                    (at_c_p4)

                    ; #72327: origin
                    (not_at_c_p1)

                    ; #27433: <==negation-removal== 51665 (pos)
                    (not (not_at_c_p4))

                    ; #70230: <==negation-removal== 72327 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #53142: origin
                    (at_c_p5)

                    ; #72327: origin
                    (not_at_c_p1)

                    ; #70230: <==negation-removal== 72327 (pos)
                    (not (at_c_p1))

                    ; #79566: <==negation-removal== 53142 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #30500: origin
                    (at_c_p6)

                    ; #72327: origin
                    (not_at_c_p1)

                    ; #70230: <==negation-removal== 72327 (pos)
                    (not (at_c_p1))

                    ; #73303: <==negation-removal== 30500 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #12778: origin
                    (at_c_p7)

                    ; #72327: origin
                    (not_at_c_p1)

                    ; #70230: <==negation-removal== 72327 (pos)
                    (not (at_c_p1))

                    ; #79345: <==negation-removal== 12778 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #25772: origin
                    (at_c_p8)

                    ; #72327: origin
                    (not_at_c_p1)

                    ; #70230: <==negation-removal== 72327 (pos)
                    (not (at_c_p1))

                    ; #89515: <==negation-removal== 25772 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #72327: origin
                    (not_at_c_p1)

                    ; #87120: origin
                    (at_c_p9)

                    ; #37038: <==negation-removal== 87120 (pos)
                    (not (not_at_c_p9))

                    ; #70230: <==negation-removal== 72327 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #35615: origin
                    (not_at_c_p2)

                    ; #70230: origin
                    (at_c_p1)

                    ; #27481: <==negation-removal== 35615 (pos)
                    (not (at_c_p2))

                    ; #72327: <==negation-removal== 70230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #27481: origin
                    (at_c_p2)

                    ; #35615: origin
                    (not_at_c_p2)

                    ; #27481: <==negation-removal== 35615 (pos)
                    (not (at_c_p2))

                    ; #35615: <==negation-removal== 27481 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #32581: origin
                    (at_c_p3)

                    ; #35615: origin
                    (not_at_c_p2)

                    ; #27481: <==negation-removal== 35615 (pos)
                    (not (at_c_p2))

                    ; #64067: <==negation-removal== 32581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #35615: origin
                    (not_at_c_p2)

                    ; #51665: origin
                    (at_c_p4)

                    ; #27433: <==negation-removal== 51665 (pos)
                    (not (not_at_c_p4))

                    ; #27481: <==negation-removal== 35615 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #35615: origin
                    (not_at_c_p2)

                    ; #53142: origin
                    (at_c_p5)

                    ; #27481: <==negation-removal== 35615 (pos)
                    (not (at_c_p2))

                    ; #79566: <==negation-removal== 53142 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #30500: origin
                    (at_c_p6)

                    ; #35615: origin
                    (not_at_c_p2)

                    ; #27481: <==negation-removal== 35615 (pos)
                    (not (at_c_p2))

                    ; #73303: <==negation-removal== 30500 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #12778: origin
                    (at_c_p7)

                    ; #35615: origin
                    (not_at_c_p2)

                    ; #27481: <==negation-removal== 35615 (pos)
                    (not (at_c_p2))

                    ; #79345: <==negation-removal== 12778 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #25772: origin
                    (at_c_p8)

                    ; #35615: origin
                    (not_at_c_p2)

                    ; #27481: <==negation-removal== 35615 (pos)
                    (not (at_c_p2))

                    ; #89515: <==negation-removal== 25772 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #35615: origin
                    (not_at_c_p2)

                    ; #87120: origin
                    (at_c_p9)

                    ; #27481: <==negation-removal== 35615 (pos)
                    (not (at_c_p2))

                    ; #37038: <==negation-removal== 87120 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #64067: origin
                    (not_at_c_p3)

                    ; #70230: origin
                    (at_c_p1)

                    ; #32581: <==negation-removal== 64067 (pos)
                    (not (at_c_p3))

                    ; #72327: <==negation-removal== 70230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #27481: origin
                    (at_c_p2)

                    ; #64067: origin
                    (not_at_c_p3)

                    ; #32581: <==negation-removal== 64067 (pos)
                    (not (at_c_p3))

                    ; #35615: <==negation-removal== 27481 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #32581: origin
                    (at_c_p3)

                    ; #64067: origin
                    (not_at_c_p3)

                    ; #32581: <==negation-removal== 64067 (pos)
                    (not (at_c_p3))

                    ; #64067: <==negation-removal== 32581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #51665: origin
                    (at_c_p4)

                    ; #64067: origin
                    (not_at_c_p3)

                    ; #27433: <==negation-removal== 51665 (pos)
                    (not (not_at_c_p4))

                    ; #32581: <==negation-removal== 64067 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #53142: origin
                    (at_c_p5)

                    ; #64067: origin
                    (not_at_c_p3)

                    ; #32581: <==negation-removal== 64067 (pos)
                    (not (at_c_p3))

                    ; #79566: <==negation-removal== 53142 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #30500: origin
                    (at_c_p6)

                    ; #64067: origin
                    (not_at_c_p3)

                    ; #32581: <==negation-removal== 64067 (pos)
                    (not (at_c_p3))

                    ; #73303: <==negation-removal== 30500 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #12778: origin
                    (at_c_p7)

                    ; #64067: origin
                    (not_at_c_p3)

                    ; #32581: <==negation-removal== 64067 (pos)
                    (not (at_c_p3))

                    ; #79345: <==negation-removal== 12778 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #25772: origin
                    (at_c_p8)

                    ; #64067: origin
                    (not_at_c_p3)

                    ; #32581: <==negation-removal== 64067 (pos)
                    (not (at_c_p3))

                    ; #89515: <==negation-removal== 25772 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #64067: origin
                    (not_at_c_p3)

                    ; #87120: origin
                    (at_c_p9)

                    ; #32581: <==negation-removal== 64067 (pos)
                    (not (at_c_p3))

                    ; #37038: <==negation-removal== 87120 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #27433: origin
                    (not_at_c_p4)

                    ; #70230: origin
                    (at_c_p1)

                    ; #51665: <==negation-removal== 27433 (pos)
                    (not (at_c_p4))

                    ; #72327: <==negation-removal== 70230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #27433: origin
                    (not_at_c_p4)

                    ; #27481: origin
                    (at_c_p2)

                    ; #35615: <==negation-removal== 27481 (pos)
                    (not (not_at_c_p2))

                    ; #51665: <==negation-removal== 27433 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #27433: origin
                    (not_at_c_p4)

                    ; #32581: origin
                    (at_c_p3)

                    ; #51665: <==negation-removal== 27433 (pos)
                    (not (at_c_p4))

                    ; #64067: <==negation-removal== 32581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #27433: origin
                    (not_at_c_p4)

                    ; #51665: origin
                    (at_c_p4)

                    ; #27433: <==negation-removal== 51665 (pos)
                    (not (not_at_c_p4))

                    ; #51665: <==negation-removal== 27433 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #27433: origin
                    (not_at_c_p4)

                    ; #53142: origin
                    (at_c_p5)

                    ; #51665: <==negation-removal== 27433 (pos)
                    (not (at_c_p4))

                    ; #79566: <==negation-removal== 53142 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #27433: origin
                    (not_at_c_p4)

                    ; #30500: origin
                    (at_c_p6)

                    ; #51665: <==negation-removal== 27433 (pos)
                    (not (at_c_p4))

                    ; #73303: <==negation-removal== 30500 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #12778: origin
                    (at_c_p7)

                    ; #27433: origin
                    (not_at_c_p4)

                    ; #51665: <==negation-removal== 27433 (pos)
                    (not (at_c_p4))

                    ; #79345: <==negation-removal== 12778 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #25772: origin
                    (at_c_p8)

                    ; #27433: origin
                    (not_at_c_p4)

                    ; #51665: <==negation-removal== 27433 (pos)
                    (not (at_c_p4))

                    ; #89515: <==negation-removal== 25772 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #27433: origin
                    (not_at_c_p4)

                    ; #87120: origin
                    (at_c_p9)

                    ; #37038: <==negation-removal== 87120 (pos)
                    (not (not_at_c_p9))

                    ; #51665: <==negation-removal== 27433 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #70230: origin
                    (at_c_p1)

                    ; #79566: origin
                    (not_at_c_p5)

                    ; #53142: <==negation-removal== 79566 (pos)
                    (not (at_c_p5))

                    ; #72327: <==negation-removal== 70230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #27481: origin
                    (at_c_p2)

                    ; #79566: origin
                    (not_at_c_p5)

                    ; #35615: <==negation-removal== 27481 (pos)
                    (not (not_at_c_p2))

                    ; #53142: <==negation-removal== 79566 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #32581: origin
                    (at_c_p3)

                    ; #79566: origin
                    (not_at_c_p5)

                    ; #53142: <==negation-removal== 79566 (pos)
                    (not (at_c_p5))

                    ; #64067: <==negation-removal== 32581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #51665: origin
                    (at_c_p4)

                    ; #79566: origin
                    (not_at_c_p5)

                    ; #27433: <==negation-removal== 51665 (pos)
                    (not (not_at_c_p4))

                    ; #53142: <==negation-removal== 79566 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #53142: origin
                    (at_c_p5)

                    ; #79566: origin
                    (not_at_c_p5)

                    ; #53142: <==negation-removal== 79566 (pos)
                    (not (at_c_p5))

                    ; #79566: <==negation-removal== 53142 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #30500: origin
                    (at_c_p6)

                    ; #79566: origin
                    (not_at_c_p5)

                    ; #53142: <==negation-removal== 79566 (pos)
                    (not (at_c_p5))

                    ; #73303: <==negation-removal== 30500 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #12778: origin
                    (at_c_p7)

                    ; #79566: origin
                    (not_at_c_p5)

                    ; #53142: <==negation-removal== 79566 (pos)
                    (not (at_c_p5))

                    ; #79345: <==negation-removal== 12778 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #25772: origin
                    (at_c_p8)

                    ; #79566: origin
                    (not_at_c_p5)

                    ; #53142: <==negation-removal== 79566 (pos)
                    (not (at_c_p5))

                    ; #89515: <==negation-removal== 25772 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #79566: origin
                    (not_at_c_p5)

                    ; #87120: origin
                    (at_c_p9)

                    ; #37038: <==negation-removal== 87120 (pos)
                    (not (not_at_c_p9))

                    ; #53142: <==negation-removal== 79566 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #70230: origin
                    (at_c_p1)

                    ; #73303: origin
                    (not_at_c_p6)

                    ; #30500: <==negation-removal== 73303 (pos)
                    (not (at_c_p6))

                    ; #72327: <==negation-removal== 70230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #27481: origin
                    (at_c_p2)

                    ; #73303: origin
                    (not_at_c_p6)

                    ; #30500: <==negation-removal== 73303 (pos)
                    (not (at_c_p6))

                    ; #35615: <==negation-removal== 27481 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #32581: origin
                    (at_c_p3)

                    ; #73303: origin
                    (not_at_c_p6)

                    ; #30500: <==negation-removal== 73303 (pos)
                    (not (at_c_p6))

                    ; #64067: <==negation-removal== 32581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #51665: origin
                    (at_c_p4)

                    ; #73303: origin
                    (not_at_c_p6)

                    ; #27433: <==negation-removal== 51665 (pos)
                    (not (not_at_c_p4))

                    ; #30500: <==negation-removal== 73303 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #53142: origin
                    (at_c_p5)

                    ; #73303: origin
                    (not_at_c_p6)

                    ; #30500: <==negation-removal== 73303 (pos)
                    (not (at_c_p6))

                    ; #79566: <==negation-removal== 53142 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #30500: origin
                    (at_c_p6)

                    ; #73303: origin
                    (not_at_c_p6)

                    ; #30500: <==negation-removal== 73303 (pos)
                    (not (at_c_p6))

                    ; #73303: <==negation-removal== 30500 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #12778: origin
                    (at_c_p7)

                    ; #73303: origin
                    (not_at_c_p6)

                    ; #30500: <==negation-removal== 73303 (pos)
                    (not (at_c_p6))

                    ; #79345: <==negation-removal== 12778 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #25772: origin
                    (at_c_p8)

                    ; #73303: origin
                    (not_at_c_p6)

                    ; #30500: <==negation-removal== 73303 (pos)
                    (not (at_c_p6))

                    ; #89515: <==negation-removal== 25772 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #73303: origin
                    (not_at_c_p6)

                    ; #87120: origin
                    (at_c_p9)

                    ; #30500: <==negation-removal== 73303 (pos)
                    (not (at_c_p6))

                    ; #37038: <==negation-removal== 87120 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #70230: origin
                    (at_c_p1)

                    ; #79345: origin
                    (not_at_c_p7)

                    ; #12778: <==negation-removal== 79345 (pos)
                    (not (at_c_p7))

                    ; #72327: <==negation-removal== 70230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #27481: origin
                    (at_c_p2)

                    ; #79345: origin
                    (not_at_c_p7)

                    ; #12778: <==negation-removal== 79345 (pos)
                    (not (at_c_p7))

                    ; #35615: <==negation-removal== 27481 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #32581: origin
                    (at_c_p3)

                    ; #79345: origin
                    (not_at_c_p7)

                    ; #12778: <==negation-removal== 79345 (pos)
                    (not (at_c_p7))

                    ; #64067: <==negation-removal== 32581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #51665: origin
                    (at_c_p4)

                    ; #79345: origin
                    (not_at_c_p7)

                    ; #12778: <==negation-removal== 79345 (pos)
                    (not (at_c_p7))

                    ; #27433: <==negation-removal== 51665 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #53142: origin
                    (at_c_p5)

                    ; #79345: origin
                    (not_at_c_p7)

                    ; #12778: <==negation-removal== 79345 (pos)
                    (not (at_c_p7))

                    ; #79566: <==negation-removal== 53142 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #30500: origin
                    (at_c_p6)

                    ; #79345: origin
                    (not_at_c_p7)

                    ; #12778: <==negation-removal== 79345 (pos)
                    (not (at_c_p7))

                    ; #73303: <==negation-removal== 30500 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #12778: origin
                    (at_c_p7)

                    ; #79345: origin
                    (not_at_c_p7)

                    ; #12778: <==negation-removal== 79345 (pos)
                    (not (at_c_p7))

                    ; #79345: <==negation-removal== 12778 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #25772: origin
                    (at_c_p8)

                    ; #79345: origin
                    (not_at_c_p7)

                    ; #12778: <==negation-removal== 79345 (pos)
                    (not (at_c_p7))

                    ; #89515: <==negation-removal== 25772 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #79345: origin
                    (not_at_c_p7)

                    ; #87120: origin
                    (at_c_p9)

                    ; #12778: <==negation-removal== 79345 (pos)
                    (not (at_c_p7))

                    ; #37038: <==negation-removal== 87120 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #70230: origin
                    (at_c_p1)

                    ; #89515: origin
                    (not_at_c_p8)

                    ; #25772: <==negation-removal== 89515 (pos)
                    (not (at_c_p8))

                    ; #72327: <==negation-removal== 70230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #27481: origin
                    (at_c_p2)

                    ; #89515: origin
                    (not_at_c_p8)

                    ; #25772: <==negation-removal== 89515 (pos)
                    (not (at_c_p8))

                    ; #35615: <==negation-removal== 27481 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #32581: origin
                    (at_c_p3)

                    ; #89515: origin
                    (not_at_c_p8)

                    ; #25772: <==negation-removal== 89515 (pos)
                    (not (at_c_p8))

                    ; #64067: <==negation-removal== 32581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #51665: origin
                    (at_c_p4)

                    ; #89515: origin
                    (not_at_c_p8)

                    ; #25772: <==negation-removal== 89515 (pos)
                    (not (at_c_p8))

                    ; #27433: <==negation-removal== 51665 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #53142: origin
                    (at_c_p5)

                    ; #89515: origin
                    (not_at_c_p8)

                    ; #25772: <==negation-removal== 89515 (pos)
                    (not (at_c_p8))

                    ; #79566: <==negation-removal== 53142 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #30500: origin
                    (at_c_p6)

                    ; #89515: origin
                    (not_at_c_p8)

                    ; #25772: <==negation-removal== 89515 (pos)
                    (not (at_c_p8))

                    ; #73303: <==negation-removal== 30500 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #12778: origin
                    (at_c_p7)

                    ; #89515: origin
                    (not_at_c_p8)

                    ; #25772: <==negation-removal== 89515 (pos)
                    (not (at_c_p8))

                    ; #79345: <==negation-removal== 12778 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #25772: origin
                    (at_c_p8)

                    ; #89515: origin
                    (not_at_c_p8)

                    ; #25772: <==negation-removal== 89515 (pos)
                    (not (at_c_p8))

                    ; #89515: <==negation-removal== 25772 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #87120: origin
                    (at_c_p9)

                    ; #89515: origin
                    (not_at_c_p8)

                    ; #25772: <==negation-removal== 89515 (pos)
                    (not (at_c_p8))

                    ; #37038: <==negation-removal== 87120 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #37038: origin
                    (not_at_c_p9)

                    ; #70230: origin
                    (at_c_p1)

                    ; #72327: <==negation-removal== 70230 (pos)
                    (not (not_at_c_p1))

                    ; #87120: <==negation-removal== 37038 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #27481: origin
                    (at_c_p2)

                    ; #37038: origin
                    (not_at_c_p9)

                    ; #35615: <==negation-removal== 27481 (pos)
                    (not (not_at_c_p2))

                    ; #87120: <==negation-removal== 37038 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #32581: origin
                    (at_c_p3)

                    ; #37038: origin
                    (not_at_c_p9)

                    ; #64067: <==negation-removal== 32581 (pos)
                    (not (not_at_c_p3))

                    ; #87120: <==negation-removal== 37038 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #37038: origin
                    (not_at_c_p9)

                    ; #51665: origin
                    (at_c_p4)

                    ; #27433: <==negation-removal== 51665 (pos)
                    (not (not_at_c_p4))

                    ; #87120: <==negation-removal== 37038 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #37038: origin
                    (not_at_c_p9)

                    ; #53142: origin
                    (at_c_p5)

                    ; #79566: <==negation-removal== 53142 (pos)
                    (not (not_at_c_p5))

                    ; #87120: <==negation-removal== 37038 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #30500: origin
                    (at_c_p6)

                    ; #37038: origin
                    (not_at_c_p9)

                    ; #73303: <==negation-removal== 30500 (pos)
                    (not (not_at_c_p6))

                    ; #87120: <==negation-removal== 37038 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #12778: origin
                    (at_c_p7)

                    ; #37038: origin
                    (not_at_c_p9)

                    ; #79345: <==negation-removal== 12778 (pos)
                    (not (not_at_c_p7))

                    ; #87120: <==negation-removal== 37038 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #25772: origin
                    (at_c_p8)

                    ; #37038: origin
                    (not_at_c_p9)

                    ; #87120: <==negation-removal== 37038 (pos)
                    (not (at_c_p9))

                    ; #89515: <==negation-removal== 25772 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #37038: origin
                    (not_at_c_p9)

                    ; #87120: origin
                    (at_c_p9)

                    ; #37038: <==negation-removal== 87120 (pos)
                    (not (not_at_c_p9))

                    ; #87120: <==negation-removal== 37038 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13035: <==commonly_known== 45587 (neg)
                    (Pb_checked_p1)

                    ; #13268: <==closure== 83683 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #15497: <==closure== 26467 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #26467: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #37307: origin
                    (checked_p1)

                    ; #46676: <==commonly_known== 37307 (pos)
                    (Bb_checked_p1)

                    ; #63962: <==commonly_known== 45587 (neg)
                    (Pa_checked_p1)

                    ; #70021: <==commonly_known== 37307 (pos)
                    (Ba_checked_p1)

                    ; #81154: <==commonly_known== 45587 (neg)
                    (Pc_checked_p1)

                    ; #83683: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #88154: <==commonly_known== 37307 (pos)
                    (Bc_checked_p1)

                    ; #11735: <==negation-removal== 13035 (pos)
                    (not (Bb_not_checked_p1))

                    ; #14951: <==negation-removal== 26467 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #19232: <==negation-removal== 13268 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #20052: <==negation-removal== 63962 (pos)
                    (not (Ba_not_checked_p1))

                    ; #28526: <==uncertain_firing== 26467 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #29932: <==negation-removal== 81154 (pos)
                    (not (Bc_not_checked_p1))

                    ; #36398: <==uncertain_firing== 13268 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #45587: <==negation-removal== 37307 (pos)
                    (not (not_checked_p1))

                    ; #51634: <==negation-removal== 83683 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #78494: <==negation-removal== 46676 (pos)
                    (not (Pb_not_checked_p1))

                    ; #78829: <==negation-removal== 15497 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #83211: <==uncertain_firing== 83683 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #85822: <==negation-removal== 70021 (pos)
                    (not (Pa_not_checked_p1))

                    ; #87306: <==uncertain_firing== 15497 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91094: <==negation-removal== 88154 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10369: <==commonly_known== 62509 (neg)
                    (Pc_checked_p2)

                    ; #20130: <==closure== 75950 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #33611: origin
                    (checked_p2)

                    ; #34045: <==commonly_known== 62509 (neg)
                    (Pb_checked_p2)

                    ; #59052: <==commonly_known== 33611 (pos)
                    (Bb_checked_p2)

                    ; #65530: <==commonly_known== 62509 (neg)
                    (Pa_checked_p2)

                    ; #72542: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #75950: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #78487: <==closure== 72542 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #81835: <==commonly_known== 33611 (pos)
                    (Bc_checked_p2)

                    ; #86346: <==commonly_known== 33611 (pos)
                    (Ba_checked_p2)

                    ; #15963: <==uncertain_firing== 78487 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #32771: <==negation-removal== 72542 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #34627: <==uncertain_firing== 20130 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #41175: <==negation-removal== 78487 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #46529: <==negation-removal== 65530 (pos)
                    (not (Ba_not_checked_p2))

                    ; #49284: <==negation-removal== 34045 (pos)
                    (not (Bb_not_checked_p2))

                    ; #49675: <==negation-removal== 59052 (pos)
                    (not (Pb_not_checked_p2))

                    ; #57314: <==uncertain_firing== 72542 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #62509: <==negation-removal== 33611 (pos)
                    (not (not_checked_p2))

                    ; #68086: <==negation-removal== 86346 (pos)
                    (not (Pa_not_checked_p2))

                    ; #78203: <==uncertain_firing== 75950 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #86638: <==negation-removal== 81835 (pos)
                    (not (Pc_not_checked_p2))

                    ; #89023: <==negation-removal== 10369 (pos)
                    (not (Bc_not_checked_p2))

                    ; #89183: <==negation-removal== 75950 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #90713: <==negation-removal== 20130 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16428: origin
                    (checked_p3)

                    ; #19788: <==commonly_known== 16428 (pos)
                    (Bc_checked_p3)

                    ; #43102: <==commonly_known== 75430 (neg)
                    (Pb_checked_p3)

                    ; #47222: <==commonly_known== 16428 (pos)
                    (Ba_checked_p3)

                    ; #47923: <==commonly_known== 75430 (neg)
                    (Pa_checked_p3)

                    ; #52199: <==closure== 54324 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #54324: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #60214: <==commonly_known== 16428 (pos)
                    (Bb_checked_p3)

                    ; #63156: <==closure== 90378 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #75718: <==commonly_known== 75430 (neg)
                    (Pc_checked_p3)

                    ; #90378: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #10169: <==negation-removal== 75718 (pos)
                    (not (Bc_not_checked_p3))

                    ; #19461: <==negation-removal== 60214 (pos)
                    (not (Pb_not_checked_p3))

                    ; #20183: <==uncertain_firing== 54324 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #32120: <==negation-removal== 43102 (pos)
                    (not (Bb_not_checked_p3))

                    ; #45588: <==uncertain_firing== 63156 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #46527: <==uncertain_firing== 90378 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #46930: <==negation-removal== 47222 (pos)
                    (not (Pa_not_checked_p3))

                    ; #47441: <==negation-removal== 90378 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #66135: <==negation-removal== 47923 (pos)
                    (not (Ba_not_checked_p3))

                    ; #72350: <==negation-removal== 52199 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #75430: <==negation-removal== 16428 (pos)
                    (not (not_checked_p3))

                    ; #77621: <==negation-removal== 63156 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #79458: <==negation-removal== 54324 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #88387: <==uncertain_firing== 52199 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #97425: <==negation-removal== 19788 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #23484: <==commonly_known== 15556 (neg)
                    (Pa_checked_p4)

                    ; #35416: <==closure== 78058 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #60582: <==commonly_known== 15556 (neg)
                    (Pb_checked_p4)

                    ; #60766: <==closure== 61085 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #61085: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #71630: <==commonly_known== 15556 (neg)
                    (Pc_checked_p4)

                    ; #77902: <==commonly_known== 89351 (pos)
                    (Bb_checked_p4)

                    ; #78058: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #82092: <==commonly_known== 89351 (pos)
                    (Ba_checked_p4)

                    ; #89351: origin
                    (checked_p4)

                    ; #94169: <==commonly_known== 89351 (pos)
                    (Bc_checked_p4)

                    ; #10022: <==negation-removal== 82092 (pos)
                    (not (Pa_not_checked_p4))

                    ; #10253: <==negation-removal== 61085 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #11829: <==negation-removal== 77902 (pos)
                    (not (Pb_not_checked_p4))

                    ; #12277: <==negation-removal== 94169 (pos)
                    (not (Pc_not_checked_p4))

                    ; #15556: <==negation-removal== 89351 (pos)
                    (not (not_checked_p4))

                    ; #21722: <==uncertain_firing== 61085 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #29529: <==negation-removal== 35416 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #42422: <==negation-removal== 71630 (pos)
                    (not (Bc_not_checked_p4))

                    ; #46223: <==uncertain_firing== 35416 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #52640: <==negation-removal== 60766 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #53503: <==uncertain_firing== 60766 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #54410: <==negation-removal== 78058 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #65863: <==negation-removal== 60582 (pos)
                    (not (Bb_not_checked_p4))

                    ; #87318: <==negation-removal== 23484 (pos)
                    (not (Ba_not_checked_p4))

                    ; #91004: <==uncertain_firing== 78058 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12539: <==commonly_known== 17238 (neg)
                    (Pc_checked_p5)

                    ; #27808: origin
                    (checked_p5)

                    ; #32240: <==closure== 54393 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #49008: <==commonly_known== 27808 (pos)
                    (Bb_checked_p5)

                    ; #54393: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #67266: <==closure== 80394 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #69087: <==commonly_known== 17238 (neg)
                    (Pb_checked_p5)

                    ; #72341: <==commonly_known== 27808 (pos)
                    (Bc_checked_p5)

                    ; #76639: <==commonly_known== 17238 (neg)
                    (Pa_checked_p5)

                    ; #76662: <==commonly_known== 27808 (pos)
                    (Ba_checked_p5)

                    ; #80394: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #12638: <==negation-removal== 32240 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #17238: <==negation-removal== 27808 (pos)
                    (not (not_checked_p5))

                    ; #35185: <==negation-removal== 76662 (pos)
                    (not (Pa_not_checked_p5))

                    ; #37824: <==uncertain_firing== 54393 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #39860: <==negation-removal== 76639 (pos)
                    (not (Ba_not_checked_p5))

                    ; #51153: <==negation-removal== 54393 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #55927: <==negation-removal== 12539 (pos)
                    (not (Bc_not_checked_p5))

                    ; #56019: <==uncertain_firing== 67266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #69641: <==uncertain_firing== 32240 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #71086: <==negation-removal== 80394 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #72590: <==negation-removal== 49008 (pos)
                    (not (Pb_not_checked_p5))

                    ; #74729: <==negation-removal== 69087 (pos)
                    (not (Bb_not_checked_p5))

                    ; #77955: <==negation-removal== 72341 (pos)
                    (not (Pc_not_checked_p5))

                    ; #81826: <==uncertain_firing== 80394 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #88332: <==negation-removal== 67266 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #20818: <==commonly_known== 28996 (neg)
                    (Pa_checked_p6)

                    ; #20915: <==commonly_known== 28996 (neg)
                    (Pb_checked_p6)

                    ; #26453: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #36579: <==closure== 26453 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #60659: origin
                    (checked_p6)

                    ; #61371: <==commonly_known== 60659 (pos)
                    (Bb_checked_p6)

                    ; #72702: <==commonly_known== 28996 (neg)
                    (Pc_checked_p6)

                    ; #79535: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #87291: <==commonly_known== 60659 (pos)
                    (Bc_checked_p6)

                    ; #87891: <==closure== 79535 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #88929: <==commonly_known== 60659 (pos)
                    (Ba_checked_p6)

                    ; #13415: <==negation-removal== 87291 (pos)
                    (not (Pc_not_checked_p6))

                    ; #13415: <==uncertain_firing== 26453 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #26863: <==negation-removal== 61371 (pos)
                    (not (Pb_not_checked_p6))

                    ; #28996: <==negation-removal== 60659 (pos)
                    (not (not_checked_p6))

                    ; #46275: <==negation-removal== 20818 (pos)
                    (not (Ba_not_checked_p6))

                    ; #48083: <==negation-removal== 20915 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63690: <==negation-removal== 88929 (pos)
                    (not (Pa_not_checked_p6))

                    ; #69653: <==uncertain_firing== 36579 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #69861: <==negation-removal== 26453 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #70768: <==negation-removal== 72702 (pos)
                    (not (Bc_not_checked_p6))

                    ; #72392: <==negation-removal== 36579 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #75572: <==negation-removal== 87891 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #79246: <==uncertain_firing== 87891 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #86372: <==uncertain_firing== 79535 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #90324: <==negation-removal== 79535 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11871: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #24119: origin
                    (checked_p7)

                    ; #30285: <==commonly_known== 24119 (pos)
                    (Ba_checked_p7)

                    ; #42117: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #47544: <==commonly_known== 24119 (pos)
                    (Bb_checked_p7)

                    ; #49161: <==commonly_known== 57389 (neg)
                    (Pc_checked_p7)

                    ; #50366: <==closure== 11871 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #55864: <==commonly_known== 57389 (neg)
                    (Pb_checked_p7)

                    ; #58505: <==commonly_known== 57389 (neg)
                    (Pa_checked_p7)

                    ; #74730: <==closure== 42117 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #77983: <==commonly_known== 24119 (pos)
                    (Bc_checked_p7)

                    ; #10783: <==negation-removal== 50366 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #13904: <==uncertain_firing== 50366 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #21007: <==uncertain_firing== 42117 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #24173: <==negation-removal== 49161 (pos)
                    (not (Bc_not_checked_p7))

                    ; #27172: <==negation-removal== 77983 (pos)
                    (not (Pc_not_checked_p7))

                    ; #43547: <==negation-removal== 47544 (pos)
                    (not (Pb_not_checked_p7))

                    ; #44507: <==uncertain_firing== 74730 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #48301: <==negation-removal== 55864 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57389: <==negation-removal== 24119 (pos)
                    (not (not_checked_p7))

                    ; #58245: <==uncertain_firing== 11871 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #78514: <==negation-removal== 42117 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #79738: <==negation-removal== 11871 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #82904: <==negation-removal== 58505 (pos)
                    (not (Ba_not_checked_p7))

                    ; #86349: <==negation-removal== 30285 (pos)
                    (not (Pa_not_checked_p7))

                    ; #90934: <==negation-removal== 74730 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11206: <==commonly_known== 14798 (pos)
                    (Ba_checked_p8)

                    ; #14798: origin
                    (checked_p8)

                    ; #26163: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #31487: <==commonly_known== 41705 (neg)
                    (Pb_checked_p8)

                    ; #34127: <==closure== 26163 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #35342: <==commonly_known== 41705 (neg)
                    (Pc_checked_p8)

                    ; #38438: <==closure== 66859 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #58014: <==commonly_known== 14798 (pos)
                    (Bc_checked_p8)

                    ; #58244: <==commonly_known== 14798 (pos)
                    (Bb_checked_p8)

                    ; #66859: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #74837: <==commonly_known== 41705 (neg)
                    (Pa_checked_p8)

                    ; #11336: <==negation-removal== 58014 (pos)
                    (not (Pc_not_checked_p8))

                    ; #12393: <==negation-removal== 31487 (pos)
                    (not (Bb_not_checked_p8))

                    ; #23288: <==negation-removal== 35342 (pos)
                    (not (Bc_not_checked_p8))

                    ; #23573: <==negation-removal== 34127 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #29413: <==uncertain_firing== 38438 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #34830: <==uncertain_firing== 66859 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #41705: <==negation-removal== 14798 (pos)
                    (not (not_checked_p8))

                    ; #43007: <==negation-removal== 74837 (pos)
                    (not (Ba_not_checked_p8))

                    ; #43630: <==negation-removal== 58244 (pos)
                    (not (Pb_not_checked_p8))

                    ; #46419: <==negation-removal== 26163 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #49997: <==uncertain_firing== 34127 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #59889: <==uncertain_firing== 26163 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #68648: <==negation-removal== 38438 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #77194: <==negation-removal== 11206 (pos)
                    (not (Pa_not_checked_p8))

                    ; #80404: <==negation-removal== 66859 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12557: origin
                    (checked_p9)

                    ; #12821: <==commonly_known== 12557 (pos)
                    (Ba_checked_p9)

                    ; #20856: <==commonly_known== 17957 (neg)
                    (Pc_checked_p9)

                    ; #23269: <==commonly_known== 12557 (pos)
                    (Bb_checked_p9)

                    ; #24339: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #32997: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #46344: <==commonly_known== 12557 (pos)
                    (Bc_checked_p9)

                    ; #67600: <==closure== 24339 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #85929: <==commonly_known== 17957 (neg)
                    (Pa_checked_p9)

                    ; #90227: <==closure== 32997 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #91149: <==commonly_known== 17957 (neg)
                    (Pb_checked_p9)

                    ; #17957: <==negation-removal== 12557 (pos)
                    (not (not_checked_p9))

                    ; #22003: <==negation-removal== 90227 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #31846: <==negation-removal== 12821 (pos)
                    (not (Pa_not_checked_p9))

                    ; #34731: <==negation-removal== 46344 (pos)
                    (not (Pc_not_checked_p9))

                    ; #36000: <==uncertain_firing== 67600 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #55597: <==negation-removal== 24339 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #64416: <==uncertain_firing== 32997 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #64976: <==negation-removal== 85929 (pos)
                    (not (Ba_not_checked_p9))

                    ; #65017: <==negation-removal== 20856 (pos)
                    (not (Bc_not_checked_p9))

                    ; #65702: <==uncertain_firing== 90227 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #67901: <==uncertain_firing== 24339 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #76756: <==negation-removal== 91149 (pos)
                    (not (Bb_not_checked_p9))

                    ; #78475: <==negation-removal== 67600 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #88619: <==negation-removal== 32997 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #89980: <==negation-removal== 23269 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13035: <==commonly_known== 45587 (neg)
                    (Pb_checked_p1)

                    ; #37307: origin
                    (checked_p1)

                    ; #37794: <==closure== 58336 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #46676: <==commonly_known== 37307 (pos)
                    (Bb_checked_p1)

                    ; #56742: <==closure== 85852 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #58336: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #63962: <==commonly_known== 45587 (neg)
                    (Pa_checked_p1)

                    ; #70021: <==commonly_known== 37307 (pos)
                    (Ba_checked_p1)

                    ; #81154: <==commonly_known== 45587 (neg)
                    (Pc_checked_p1)

                    ; #85852: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #88154: <==commonly_known== 37307 (pos)
                    (Bc_checked_p1)

                    ; #11735: <==negation-removal== 13035 (pos)
                    (not (Bb_not_checked_p1))

                    ; #17955: <==negation-removal== 58336 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #18746: <==negation-removal== 37794 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #20052: <==negation-removal== 63962 (pos)
                    (not (Ba_not_checked_p1))

                    ; #29932: <==negation-removal== 81154 (pos)
                    (not (Bc_not_checked_p1))

                    ; #31420: <==uncertain_firing== 85852 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #38498: <==uncertain_firing== 37794 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #45587: <==negation-removal== 37307 (pos)
                    (not (not_checked_p1))

                    ; #60983: <==negation-removal== 85852 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #62078: <==uncertain_firing== 56742 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #68589: <==negation-removal== 56742 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #70460: <==uncertain_firing== 58336 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #78494: <==negation-removal== 46676 (pos)
                    (not (Pb_not_checked_p1))

                    ; #85822: <==negation-removal== 70021 (pos)
                    (not (Pa_not_checked_p1))

                    ; #91094: <==negation-removal== 88154 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10369: <==commonly_known== 62509 (neg)
                    (Pc_checked_p2)

                    ; #11910: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #33611: origin
                    (checked_p2)

                    ; #34045: <==commonly_known== 62509 (neg)
                    (Pb_checked_p2)

                    ; #35385: <==closure== 11910 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #59052: <==commonly_known== 33611 (pos)
                    (Bb_checked_p2)

                    ; #65530: <==commonly_known== 62509 (neg)
                    (Pa_checked_p2)

                    ; #73665: <==closure== 78691 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #78691: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #81835: <==commonly_known== 33611 (pos)
                    (Bc_checked_p2)

                    ; #86346: <==commonly_known== 33611 (pos)
                    (Ba_checked_p2)

                    ; #14486: <==negation-removal== 35385 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #40718: <==uncertain_firing== 35385 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #46529: <==negation-removal== 65530 (pos)
                    (not (Ba_not_checked_p2))

                    ; #49284: <==negation-removal== 34045 (pos)
                    (not (Bb_not_checked_p2))

                    ; #49675: <==negation-removal== 59052 (pos)
                    (not (Pb_not_checked_p2))

                    ; #52606: <==negation-removal== 78691 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #55923: <==negation-removal== 73665 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #58703: <==negation-removal== 11910 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62509: <==negation-removal== 33611 (pos)
                    (not (not_checked_p2))

                    ; #68086: <==negation-removal== 86346 (pos)
                    (not (Pa_not_checked_p2))

                    ; #69788: <==uncertain_firing== 73665 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #72134: <==uncertain_firing== 11910 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #81769: <==uncertain_firing== 78691 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #86638: <==negation-removal== 81835 (pos)
                    (not (Pc_not_checked_p2))

                    ; #89023: <==negation-removal== 10369 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16428: origin
                    (checked_p3)

                    ; #19788: <==commonly_known== 16428 (pos)
                    (Bc_checked_p3)

                    ; #35200: <==closure== 42198 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #42198: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #43102: <==commonly_known== 75430 (neg)
                    (Pb_checked_p3)

                    ; #45261: <==closure== 86745 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #47222: <==commonly_known== 16428 (pos)
                    (Ba_checked_p3)

                    ; #47923: <==commonly_known== 75430 (neg)
                    (Pa_checked_p3)

                    ; #60214: <==commonly_known== 16428 (pos)
                    (Bb_checked_p3)

                    ; #75718: <==commonly_known== 75430 (neg)
                    (Pc_checked_p3)

                    ; #86745: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #10169: <==negation-removal== 75718 (pos)
                    (not (Bc_not_checked_p3))

                    ; #13478: <==negation-removal== 35200 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #15395: <==negation-removal== 45261 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #19461: <==negation-removal== 60214 (pos)
                    (not (Pb_not_checked_p3))

                    ; #32120: <==negation-removal== 43102 (pos)
                    (not (Bb_not_checked_p3))

                    ; #34054: <==uncertain_firing== 42198 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #42808: <==uncertain_firing== 86745 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #46930: <==negation-removal== 47222 (pos)
                    (not (Pa_not_checked_p3))

                    ; #50996: <==negation-removal== 86745 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #66135: <==negation-removal== 47923 (pos)
                    (not (Ba_not_checked_p3))

                    ; #70042: <==uncertain_firing== 35200 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #72385: <==uncertain_firing== 45261 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #75430: <==negation-removal== 16428 (pos)
                    (not (not_checked_p3))

                    ; #78716: <==negation-removal== 42198 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #97425: <==negation-removal== 19788 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #23484: <==commonly_known== 15556 (neg)
                    (Pa_checked_p4)

                    ; #23572: <==closure== 80855 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #50035: <==closure== 54493 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #54493: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #60582: <==commonly_known== 15556 (neg)
                    (Pb_checked_p4)

                    ; #71630: <==commonly_known== 15556 (neg)
                    (Pc_checked_p4)

                    ; #77902: <==commonly_known== 89351 (pos)
                    (Bb_checked_p4)

                    ; #80855: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #82092: <==commonly_known== 89351 (pos)
                    (Ba_checked_p4)

                    ; #89351: origin
                    (checked_p4)

                    ; #94169: <==commonly_known== 89351 (pos)
                    (Bc_checked_p4)

                    ; #10022: <==negation-removal== 82092 (pos)
                    (not (Pa_not_checked_p4))

                    ; #11829: <==negation-removal== 77902 (pos)
                    (not (Pb_not_checked_p4))

                    ; #12277: <==negation-removal== 94169 (pos)
                    (not (Pc_not_checked_p4))

                    ; #15556: <==negation-removal== 89351 (pos)
                    (not (not_checked_p4))

                    ; #25348: <==uncertain_firing== 23572 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #31858: <==negation-removal== 80855 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41262: <==negation-removal== 23572 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #42422: <==negation-removal== 71630 (pos)
                    (not (Bc_not_checked_p4))

                    ; #65863: <==negation-removal== 60582 (pos)
                    (not (Bb_not_checked_p4))

                    ; #68299: <==uncertain_firing== 54493 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #78032: <==uncertain_firing== 80855 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #80670: <==uncertain_firing== 50035 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #87318: <==negation-removal== 23484 (pos)
                    (not (Ba_not_checked_p4))

                    ; #91423: <==negation-removal== 50035 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #91622: <==negation-removal== 54493 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12539: <==commonly_known== 17238 (neg)
                    (Pc_checked_p5)

                    ; #27808: origin
                    (checked_p5)

                    ; #28587: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #45076: <==closure== 28587 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #49008: <==commonly_known== 27808 (pos)
                    (Bb_checked_p5)

                    ; #69087: <==commonly_known== 17238 (neg)
                    (Pb_checked_p5)

                    ; #72341: <==commonly_known== 27808 (pos)
                    (Bc_checked_p5)

                    ; #76639: <==commonly_known== 17238 (neg)
                    (Pa_checked_p5)

                    ; #76662: <==commonly_known== 27808 (pos)
                    (Ba_checked_p5)

                    ; #88293: <==closure== 91451 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #91451: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #17238: <==negation-removal== 27808 (pos)
                    (not (not_checked_p5))

                    ; #18607: <==uncertain_firing== 45076 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #22703: <==negation-removal== 28587 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #23531: <==uncertain_firing== 28587 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #35185: <==negation-removal== 76662 (pos)
                    (not (Pa_not_checked_p5))

                    ; #39860: <==negation-removal== 76639 (pos)
                    (not (Ba_not_checked_p5))

                    ; #43725: <==negation-removal== 88293 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #50679: <==negation-removal== 45076 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #55927: <==negation-removal== 12539 (pos)
                    (not (Bc_not_checked_p5))

                    ; #65121: <==negation-removal== 91451 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #71182: <==uncertain_firing== 88293 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #72590: <==negation-removal== 49008 (pos)
                    (not (Pb_not_checked_p5))

                    ; #74729: <==negation-removal== 69087 (pos)
                    (not (Bb_not_checked_p5))

                    ; #77955: <==negation-removal== 72341 (pos)
                    (not (Pc_not_checked_p5))

                    ; #90341: <==uncertain_firing== 91451 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #20818: <==commonly_known== 28996 (neg)
                    (Pa_checked_p6)

                    ; #20915: <==commonly_known== 28996 (neg)
                    (Pb_checked_p6)

                    ; #30309: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #60659: origin
                    (checked_p6)

                    ; #61371: <==commonly_known== 60659 (pos)
                    (Bb_checked_p6)

                    ; #71789: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #72702: <==commonly_known== 28996 (neg)
                    (Pc_checked_p6)

                    ; #80908: <==closure== 71789 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #87291: <==commonly_known== 60659 (pos)
                    (Bc_checked_p6)

                    ; #88929: <==commonly_known== 60659 (pos)
                    (Ba_checked_p6)

                    ; #90453: <==closure== 30309 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #13415: <==negation-removal== 87291 (pos)
                    (not (Pc_not_checked_p6))

                    ; #13511: <==uncertain_firing== 30309 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #26863: <==negation-removal== 61371 (pos)
                    (not (Pb_not_checked_p6))

                    ; #28996: <==negation-removal== 60659 (pos)
                    (not (not_checked_p6))

                    ; #29068: <==uncertain_firing== 90453 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #45246: <==negation-removal== 90453 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #46275: <==negation-removal== 20818 (pos)
                    (not (Ba_not_checked_p6))

                    ; #48083: <==negation-removal== 20915 (pos)
                    (not (Bb_not_checked_p6))

                    ; #52663: <==uncertain_firing== 80908 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #60590: <==negation-removal== 80908 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #63690: <==negation-removal== 88929 (pos)
                    (not (Pa_not_checked_p6))

                    ; #70768: <==negation-removal== 72702 (pos)
                    (not (Bc_not_checked_p6))

                    ; #74950: <==uncertain_firing== 71789 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #77282: <==negation-removal== 30309 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #89926: <==negation-removal== 71789 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #24119: origin
                    (checked_p7)

                    ; #29921: <==closure== 45934 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #30285: <==commonly_known== 24119 (pos)
                    (Ba_checked_p7)

                    ; #45934: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #47544: <==commonly_known== 24119 (pos)
                    (Bb_checked_p7)

                    ; #49161: <==commonly_known== 57389 (neg)
                    (Pc_checked_p7)

                    ; #55864: <==commonly_known== 57389 (neg)
                    (Pb_checked_p7)

                    ; #58505: <==commonly_known== 57389 (neg)
                    (Pa_checked_p7)

                    ; #73695: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #77983: <==commonly_known== 24119 (pos)
                    (Bc_checked_p7)

                    ; #88560: <==closure== 73695 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #19408: <==negation-removal== 29921 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #21798: <==negation-removal== 73695 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #22897: <==negation-removal== 88560 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24173: <==negation-removal== 49161 (pos)
                    (not (Bc_not_checked_p7))

                    ; #27172: <==negation-removal== 77983 (pos)
                    (not (Pc_not_checked_p7))

                    ; #33240: <==uncertain_firing== 73695 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #33351: <==uncertain_firing== 29921 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #35570: <==uncertain_firing== 45934 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #36513: <==negation-removal== 45934 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #43547: <==negation-removal== 47544 (pos)
                    (not (Pb_not_checked_p7))

                    ; #48301: <==negation-removal== 55864 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57389: <==negation-removal== 24119 (pos)
                    (not (not_checked_p7))

                    ; #81889: <==uncertain_firing== 88560 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #82904: <==negation-removal== 58505 (pos)
                    (not (Ba_not_checked_p7))

                    ; #86349: <==negation-removal== 30285 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11206: <==commonly_known== 14798 (pos)
                    (Ba_checked_p8)

                    ; #14798: origin
                    (checked_p8)

                    ; #31487: <==commonly_known== 41705 (neg)
                    (Pb_checked_p8)

                    ; #33649: <==closure== 74820 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #35342: <==commonly_known== 41705 (neg)
                    (Pc_checked_p8)

                    ; #38327: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #58014: <==commonly_known== 14798 (pos)
                    (Bc_checked_p8)

                    ; #58244: <==commonly_known== 14798 (pos)
                    (Bb_checked_p8)

                    ; #74820: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #74837: <==commonly_known== 41705 (neg)
                    (Pa_checked_p8)

                    ; #89101: <==closure== 38327 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #11336: <==negation-removal== 58014 (pos)
                    (not (Pc_not_checked_p8))

                    ; #11502: <==uncertain_firing== 38327 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #12393: <==negation-removal== 31487 (pos)
                    (not (Bb_not_checked_p8))

                    ; #16785: <==negation-removal== 89101 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #18896: <==uncertain_firing== 33649 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #19075: <==negation-removal== 33649 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #23288: <==negation-removal== 35342 (pos)
                    (not (Bc_not_checked_p8))

                    ; #30895: <==uncertain_firing== 89101 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #41705: <==negation-removal== 14798 (pos)
                    (not (not_checked_p8))

                    ; #42690: <==negation-removal== 38327 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #43007: <==negation-removal== 74837 (pos)
                    (not (Ba_not_checked_p8))

                    ; #43630: <==negation-removal== 58244 (pos)
                    (not (Pb_not_checked_p8))

                    ; #73136: <==negation-removal== 74820 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #75346: <==uncertain_firing== 74820 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #77194: <==negation-removal== 11206 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12557: origin
                    (checked_p9)

                    ; #12821: <==commonly_known== 12557 (pos)
                    (Ba_checked_p9)

                    ; #20856: <==commonly_known== 17957 (neg)
                    (Pc_checked_p9)

                    ; #22282: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #23269: <==commonly_known== 12557 (pos)
                    (Bb_checked_p9)

                    ; #30617: <==closure== 22282 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #43733: <==closure== 91230 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #46344: <==commonly_known== 12557 (pos)
                    (Bc_checked_p9)

                    ; #85929: <==commonly_known== 17957 (neg)
                    (Pa_checked_p9)

                    ; #91149: <==commonly_known== 17957 (neg)
                    (Pb_checked_p9)

                    ; #91230: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #15450: <==uncertain_firing== 22282 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #17957: <==negation-removal== 12557 (pos)
                    (not (not_checked_p9))

                    ; #20654: <==negation-removal== 43733 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #26662: <==uncertain_firing== 30617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #31846: <==negation-removal== 12821 (pos)
                    (not (Pa_not_checked_p9))

                    ; #34731: <==negation-removal== 46344 (pos)
                    (not (Pc_not_checked_p9))

                    ; #38443: <==uncertain_firing== 91230 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #38656: <==negation-removal== 30617 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #64976: <==negation-removal== 85929 (pos)
                    (not (Ba_not_checked_p9))

                    ; #65017: <==negation-removal== 20856 (pos)
                    (not (Bc_not_checked_p9))

                    ; #74567: <==negation-removal== 91230 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #75398: <==uncertain_firing== 43733 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #76756: <==negation-removal== 91149 (pos)
                    (not (Bb_not_checked_p9))

                    ; #89980: <==negation-removal== 23269 (pos)
                    (not (Pb_not_checked_p9))

                    ; #92788: <==negation-removal== 22282 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13035: <==commonly_known== 45587 (neg)
                    (Pb_checked_p1)

                    ; #22386: <==closure== 58733 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #37307: origin
                    (checked_p1)

                    ; #40404: <==closure== 86668 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #46676: <==commonly_known== 37307 (pos)
                    (Bb_checked_p1)

                    ; #58733: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #63962: <==commonly_known== 45587 (neg)
                    (Pa_checked_p1)

                    ; #70021: <==commonly_known== 37307 (pos)
                    (Ba_checked_p1)

                    ; #81154: <==commonly_known== 45587 (neg)
                    (Pc_checked_p1)

                    ; #86668: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #88154: <==commonly_known== 37307 (pos)
                    (Bc_checked_p1)

                    ; #11735: <==negation-removal== 13035 (pos)
                    (not (Bb_not_checked_p1))

                    ; #20016: <==uncertain_firing== 58733 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #20052: <==negation-removal== 63962 (pos)
                    (not (Ba_not_checked_p1))

                    ; #21419: <==uncertain_firing== 22386 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #29932: <==negation-removal== 81154 (pos)
                    (not (Bc_not_checked_p1))

                    ; #45587: <==negation-removal== 37307 (pos)
                    (not (not_checked_p1))

                    ; #63611: <==negation-removal== 58733 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #78494: <==negation-removal== 46676 (pos)
                    (not (Pb_not_checked_p1))

                    ; #82758: <==negation-removal== 86668 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #85340: <==uncertain_firing== 40404 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #85822: <==negation-removal== 70021 (pos)
                    (not (Pa_not_checked_p1))

                    ; #86100: <==uncertain_firing== 86668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #86657: <==negation-removal== 40404 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #87857: <==negation-removal== 22386 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #91094: <==negation-removal== 88154 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10369: <==commonly_known== 62509 (neg)
                    (Pc_checked_p2)

                    ; #23472: <==closure== 64810 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #33611: origin
                    (checked_p2)

                    ; #34045: <==commonly_known== 62509 (neg)
                    (Pb_checked_p2)

                    ; #57714: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #59052: <==commonly_known== 33611 (pos)
                    (Bb_checked_p2)

                    ; #64810: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #65530: <==commonly_known== 62509 (neg)
                    (Pa_checked_p2)

                    ; #81835: <==commonly_known== 33611 (pos)
                    (Bc_checked_p2)

                    ; #85943: <==closure== 57714 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #86346: <==commonly_known== 33611 (pos)
                    (Ba_checked_p2)

                    ; #13875: <==negation-removal== 57714 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #18944: <==uncertain_firing== 85943 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #46529: <==negation-removal== 65530 (pos)
                    (not (Ba_not_checked_p2))

                    ; #49284: <==negation-removal== 34045 (pos)
                    (not (Bb_not_checked_p2))

                    ; #49675: <==negation-removal== 59052 (pos)
                    (not (Pb_not_checked_p2))

                    ; #60638: <==uncertain_firing== 57714 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #62509: <==negation-removal== 33611 (pos)
                    (not (not_checked_p2))

                    ; #68086: <==negation-removal== 86346 (pos)
                    (not (Pa_not_checked_p2))

                    ; #77543: <==negation-removal== 23472 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #78200: <==negation-removal== 64810 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #79888: <==uncertain_firing== 64810 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #82405: <==uncertain_firing== 23472 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #85228: <==negation-removal== 85943 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #86638: <==negation-removal== 81835 (pos)
                    (not (Pc_not_checked_p2))

                    ; #89023: <==negation-removal== 10369 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16428: origin
                    (checked_p3)

                    ; #19788: <==commonly_known== 16428 (pos)
                    (Bc_checked_p3)

                    ; #35798: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #39211: <==closure== 40326 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #40326: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #43102: <==commonly_known== 75430 (neg)
                    (Pb_checked_p3)

                    ; #44248: <==closure== 35798 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #47222: <==commonly_known== 16428 (pos)
                    (Ba_checked_p3)

                    ; #47923: <==commonly_known== 75430 (neg)
                    (Pa_checked_p3)

                    ; #60214: <==commonly_known== 16428 (pos)
                    (Bb_checked_p3)

                    ; #75718: <==commonly_known== 75430 (neg)
                    (Pc_checked_p3)

                    ; #10169: <==negation-removal== 75718 (pos)
                    (not (Bc_not_checked_p3))

                    ; #19461: <==negation-removal== 60214 (pos)
                    (not (Pb_not_checked_p3))

                    ; #22757: <==negation-removal== 44248 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #23784: <==negation-removal== 35798 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #26742: <==negation-removal== 40326 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #32120: <==negation-removal== 43102 (pos)
                    (not (Bb_not_checked_p3))

                    ; #40641: <==uncertain_firing== 39211 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #46930: <==negation-removal== 47222 (pos)
                    (not (Pa_not_checked_p3))

                    ; #60574: <==uncertain_firing== 40326 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #66135: <==negation-removal== 47923 (pos)
                    (not (Ba_not_checked_p3))

                    ; #75430: <==negation-removal== 16428 (pos)
                    (not (not_checked_p3))

                    ; #78383: <==uncertain_firing== 44248 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #84855: <==uncertain_firing== 35798 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #86066: <==negation-removal== 39211 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #97425: <==negation-removal== 19788 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13460: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #20215: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #20569: <==closure== 20215 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #23484: <==commonly_known== 15556 (neg)
                    (Pa_checked_p4)

                    ; #34691: <==closure== 13460 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #60582: <==commonly_known== 15556 (neg)
                    (Pb_checked_p4)

                    ; #71630: <==commonly_known== 15556 (neg)
                    (Pc_checked_p4)

                    ; #77902: <==commonly_known== 89351 (pos)
                    (Bb_checked_p4)

                    ; #82092: <==commonly_known== 89351 (pos)
                    (Ba_checked_p4)

                    ; #89351: origin
                    (checked_p4)

                    ; #94169: <==commonly_known== 89351 (pos)
                    (Bc_checked_p4)

                    ; #10022: <==negation-removal== 82092 (pos)
                    (not (Pa_not_checked_p4))

                    ; #11829: <==negation-removal== 77902 (pos)
                    (not (Pb_not_checked_p4))

                    ; #12277: <==negation-removal== 94169 (pos)
                    (not (Pc_not_checked_p4))

                    ; #15556: <==negation-removal== 89351 (pos)
                    (not (not_checked_p4))

                    ; #25014: <==negation-removal== 20569 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #29808: <==negation-removal== 20215 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #42422: <==negation-removal== 71630 (pos)
                    (not (Bc_not_checked_p4))

                    ; #63389: <==uncertain_firing== 20215 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #65863: <==negation-removal== 60582 (pos)
                    (not (Bb_not_checked_p4))

                    ; #69255: <==negation-removal== 13460 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #86255: <==uncertain_firing== 34691 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #87318: <==negation-removal== 23484 (pos)
                    (not (Ba_not_checked_p4))

                    ; #88679: <==negation-removal== 34691 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #88911: <==uncertain_firing== 13460 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #89877: <==uncertain_firing== 20569 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12539: <==commonly_known== 17238 (neg)
                    (Pc_checked_p5)

                    ; #27808: origin
                    (checked_p5)

                    ; #35842: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #49008: <==commonly_known== 27808 (pos)
                    (Bb_checked_p5)

                    ; #54912: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #68935: <==closure== 35842 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #69087: <==commonly_known== 17238 (neg)
                    (Pb_checked_p5)

                    ; #72341: <==commonly_known== 27808 (pos)
                    (Bc_checked_p5)

                    ; #76639: <==commonly_known== 17238 (neg)
                    (Pa_checked_p5)

                    ; #76662: <==commonly_known== 27808 (pos)
                    (Ba_checked_p5)

                    ; #91116: <==closure== 54912 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #13616: <==uncertain_firing== 35842 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #17238: <==negation-removal== 27808 (pos)
                    (not (not_checked_p5))

                    ; #35185: <==negation-removal== 76662 (pos)
                    (not (Pa_not_checked_p5))

                    ; #39860: <==negation-removal== 76639 (pos)
                    (not (Ba_not_checked_p5))

                    ; #41929: <==uncertain_firing== 91116 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #42740: <==negation-removal== 91116 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #50418: <==uncertain_firing== 54912 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #50556: <==negation-removal== 68935 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #55927: <==negation-removal== 12539 (pos)
                    (not (Bc_not_checked_p5))

                    ; #59100: <==uncertain_firing== 68935 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #64077: <==negation-removal== 35842 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #72590: <==negation-removal== 49008 (pos)
                    (not (Pb_not_checked_p5))

                    ; #74729: <==negation-removal== 69087 (pos)
                    (not (Bb_not_checked_p5))

                    ; #77955: <==negation-removal== 72341 (pos)
                    (not (Pc_not_checked_p5))

                    ; #80167: <==negation-removal== 54912 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #20818: <==commonly_known== 28996 (neg)
                    (Pa_checked_p6)

                    ; #20915: <==commonly_known== 28996 (neg)
                    (Pb_checked_p6)

                    ; #55114: <==closure== 74119 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #60659: origin
                    (checked_p6)

                    ; #61371: <==commonly_known== 60659 (pos)
                    (Bb_checked_p6)

                    ; #67333: <==closure== 69392 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #69392: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #72702: <==commonly_known== 28996 (neg)
                    (Pc_checked_p6)

                    ; #74119: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #87291: <==commonly_known== 60659 (pos)
                    (Bc_checked_p6)

                    ; #88929: <==commonly_known== 60659 (pos)
                    (Ba_checked_p6)

                    ; #13415: <==negation-removal== 87291 (pos)
                    (not (Pc_not_checked_p6))

                    ; #22835: <==uncertain_firing== 67333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #23157: <==uncertain_firing== 55114 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #26863: <==negation-removal== 61371 (pos)
                    (not (Pb_not_checked_p6))

                    ; #28996: <==negation-removal== 60659 (pos)
                    (not (not_checked_p6))

                    ; #30998: <==negation-removal== 74119 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #32429: <==negation-removal== 69392 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #35512: <==negation-removal== 55114 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #46275: <==negation-removal== 20818 (pos)
                    (not (Ba_not_checked_p6))

                    ; #48083: <==negation-removal== 20915 (pos)
                    (not (Bb_not_checked_p6))

                    ; #61885: <==uncertain_firing== 74119 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #63690: <==negation-removal== 88929 (pos)
                    (not (Pa_not_checked_p6))

                    ; #70768: <==negation-removal== 72702 (pos)
                    (not (Bc_not_checked_p6))

                    ; #73123: <==uncertain_firing== 69392 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87239: <==negation-removal== 67333 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15040: <==closure== 27444 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #23683: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #24119: origin
                    (checked_p7)

                    ; #27444: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #30285: <==commonly_known== 24119 (pos)
                    (Ba_checked_p7)

                    ; #47544: <==commonly_known== 24119 (pos)
                    (Bb_checked_p7)

                    ; #49161: <==commonly_known== 57389 (neg)
                    (Pc_checked_p7)

                    ; #55864: <==commonly_known== 57389 (neg)
                    (Pb_checked_p7)

                    ; #56373: <==closure== 23683 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #58505: <==commonly_known== 57389 (neg)
                    (Pa_checked_p7)

                    ; #77983: <==commonly_known== 24119 (pos)
                    (Bc_checked_p7)

                    ; #11184: <==negation-removal== 27444 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #14469: <==negation-removal== 23683 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #24173: <==negation-removal== 49161 (pos)
                    (not (Bc_not_checked_p7))

                    ; #27172: <==negation-removal== 77983 (pos)
                    (not (Pc_not_checked_p7))

                    ; #43547: <==negation-removal== 47544 (pos)
                    (not (Pb_not_checked_p7))

                    ; #48301: <==negation-removal== 55864 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57389: <==negation-removal== 24119 (pos)
                    (not (not_checked_p7))

                    ; #61920: <==uncertain_firing== 56373 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #62808: <==uncertain_firing== 15040 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #72919: <==negation-removal== 15040 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #82331: <==uncertain_firing== 23683 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #82904: <==negation-removal== 58505 (pos)
                    (not (Ba_not_checked_p7))

                    ; #83483: <==uncertain_firing== 27444 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #83903: <==negation-removal== 56373 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #86349: <==negation-removal== 30285 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11206: <==commonly_known== 14798 (pos)
                    (Ba_checked_p8)

                    ; #14798: origin
                    (checked_p8)

                    ; #25653: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #29142: <==closure== 25653 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #31487: <==commonly_known== 41705 (neg)
                    (Pb_checked_p8)

                    ; #35342: <==commonly_known== 41705 (neg)
                    (Pc_checked_p8)

                    ; #58014: <==commonly_known== 14798 (pos)
                    (Bc_checked_p8)

                    ; #58244: <==commonly_known== 14798 (pos)
                    (Bb_checked_p8)

                    ; #74837: <==commonly_known== 41705 (neg)
                    (Pa_checked_p8)

                    ; #74877: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #83433: <==closure== 74877 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #11336: <==negation-removal== 58014 (pos)
                    (not (Pc_not_checked_p8))

                    ; #12393: <==negation-removal== 31487 (pos)
                    (not (Bb_not_checked_p8))

                    ; #19011: <==negation-removal== 83433 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #23288: <==negation-removal== 35342 (pos)
                    (not (Bc_not_checked_p8))

                    ; #28629: <==uncertain_firing== 83433 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #40345: <==uncertain_firing== 25653 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #41705: <==negation-removal== 14798 (pos)
                    (not (not_checked_p8))

                    ; #41916: <==negation-removal== 29142 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #43007: <==negation-removal== 74837 (pos)
                    (not (Ba_not_checked_p8))

                    ; #43630: <==negation-removal== 58244 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53330: <==negation-removal== 74877 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #55996: <==uncertain_firing== 74877 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #71028: <==uncertain_firing== 29142 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #77194: <==negation-removal== 11206 (pos)
                    (not (Pa_not_checked_p8))

                    ; #77828: <==negation-removal== 25653 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12557: origin
                    (checked_p9)

                    ; #12821: <==commonly_known== 12557 (pos)
                    (Ba_checked_p9)

                    ; #20856: <==commonly_known== 17957 (neg)
                    (Pc_checked_p9)

                    ; #23269: <==commonly_known== 12557 (pos)
                    (Bb_checked_p9)

                    ; #46344: <==commonly_known== 12557 (pos)
                    (Bc_checked_p9)

                    ; #59004: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #60925: <==closure== 79404 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #76001: <==closure== 59004 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #79404: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #85929: <==commonly_known== 17957 (neg)
                    (Pa_checked_p9)

                    ; #91149: <==commonly_known== 17957 (neg)
                    (Pb_checked_p9)

                    ; #17957: <==negation-removal== 12557 (pos)
                    (not (not_checked_p9))

                    ; #19835: <==negation-removal== 79404 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #21537: <==uncertain_firing== 79404 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #31175: <==uncertain_firing== 76001 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #31846: <==negation-removal== 12821 (pos)
                    (not (Pa_not_checked_p9))

                    ; #32613: <==negation-removal== 76001 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #34731: <==negation-removal== 46344 (pos)
                    (not (Pc_not_checked_p9))

                    ; #37070: <==negation-removal== 60925 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #42332: <==uncertain_firing== 59004 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #54104: <==uncertain_firing== 60925 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #64976: <==negation-removal== 85929 (pos)
                    (not (Ba_not_checked_p9))

                    ; #65017: <==negation-removal== 20856 (pos)
                    (not (Bc_not_checked_p9))

                    ; #65856: <==negation-removal== 59004 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #76756: <==negation-removal== 91149 (pos)
                    (not (Bb_not_checked_p9))

                    ; #89980: <==negation-removal== 23269 (pos)
                    (not (Pb_not_checked_p9))))

)