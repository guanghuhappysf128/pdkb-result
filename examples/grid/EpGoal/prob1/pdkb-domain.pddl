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

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #13794: origin
                    (Bb_survivorat_s_p1)

                    ; #60327: origin
                    (Ba_survivorat_s_p1)

                    ; #67764: origin
                    (Bc_survivorat_s_p1)

                    ; #72645: <==closure== 60327 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77171: <==closure== 13794 (pos)
                    (Pb_survivorat_s_p1)

                    ; #79896: <==closure== 67764 (pos)
                    (Pc_survivorat_s_p1)

                    ; #17081: <==negation-removal== 72645 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #20786: <==negation-removal== 60327 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #37675: <==negation-removal== 77171 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #67589: <==negation-removal== 79896 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #68967: <==negation-removal== 67764 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #89540: <==negation-removal== 13794 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #13794: origin
                    (Bb_survivorat_s_p1)

                    ; #60327: origin
                    (Ba_survivorat_s_p1)

                    ; #67764: origin
                    (Bc_survivorat_s_p1)

                    ; #72645: <==closure== 60327 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77171: <==closure== 13794 (pos)
                    (Pb_survivorat_s_p1)

                    ; #79896: <==closure== 67764 (pos)
                    (Pc_survivorat_s_p1)

                    ; #17081: <==negation-removal== 72645 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #20786: <==negation-removal== 60327 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #37675: <==negation-removal== 77171 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #67589: <==negation-removal== 79896 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #68967: <==negation-removal== 67764 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #89540: <==negation-removal== 13794 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #13794: origin
                    (Bb_survivorat_s_p1)

                    ; #60327: origin
                    (Ba_survivorat_s_p1)

                    ; #67764: origin
                    (Bc_survivorat_s_p1)

                    ; #72645: <==closure== 60327 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77171: <==closure== 13794 (pos)
                    (Pb_survivorat_s_p1)

                    ; #79896: <==closure== 67764 (pos)
                    (Pc_survivorat_s_p1)

                    ; #17081: <==negation-removal== 72645 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #20786: <==negation-removal== 60327 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #37675: <==negation-removal== 77171 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #67589: <==negation-removal== 79896 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #68967: <==negation-removal== 67764 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #89540: <==negation-removal== 13794 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #12334: origin
                    (Ba_survivorat_s_p2)

                    ; #20701: origin
                    (Bc_survivorat_s_p2)

                    ; #32210: <==closure== 12334 (pos)
                    (Pa_survivorat_s_p2)

                    ; #51437: <==closure== 89355 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70453: <==closure== 20701 (pos)
                    (Pc_survivorat_s_p2)

                    ; #89355: origin
                    (Bb_survivorat_s_p2)

                    ; #33281: <==negation-removal== 51437 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #50529: <==negation-removal== 89355 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #53202: <==negation-removal== 32210 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71899: <==negation-removal== 20701 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #83109: <==negation-removal== 70453 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #95861: <==negation-removal== 12334 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #12334: origin
                    (Ba_survivorat_s_p2)

                    ; #20701: origin
                    (Bc_survivorat_s_p2)

                    ; #32210: <==closure== 12334 (pos)
                    (Pa_survivorat_s_p2)

                    ; #51437: <==closure== 89355 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70453: <==closure== 20701 (pos)
                    (Pc_survivorat_s_p2)

                    ; #89355: origin
                    (Bb_survivorat_s_p2)

                    ; #33281: <==negation-removal== 51437 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #50529: <==negation-removal== 89355 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #53202: <==negation-removal== 32210 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71899: <==negation-removal== 20701 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #83109: <==negation-removal== 70453 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #95861: <==negation-removal== 12334 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #12334: origin
                    (Ba_survivorat_s_p2)

                    ; #20701: origin
                    (Bc_survivorat_s_p2)

                    ; #32210: <==closure== 12334 (pos)
                    (Pa_survivorat_s_p2)

                    ; #51437: <==closure== 89355 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70453: <==closure== 20701 (pos)
                    (Pc_survivorat_s_p2)

                    ; #89355: origin
                    (Bb_survivorat_s_p2)

                    ; #33281: <==negation-removal== 51437 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #50529: <==negation-removal== 89355 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #53202: <==negation-removal== 32210 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71899: <==negation-removal== 20701 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #83109: <==negation-removal== 70453 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #95861: <==negation-removal== 12334 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #21179: <==closure== 53076 (pos)
                    (Pb_survivorat_s_p3)

                    ; #35874: <==closure== 69752 (pos)
                    (Pc_survivorat_s_p3)

                    ; #53076: origin
                    (Bb_survivorat_s_p3)

                    ; #55446: <==closure== 84910 (pos)
                    (Pa_survivorat_s_p3)

                    ; #69752: origin
                    (Bc_survivorat_s_p3)

                    ; #84910: origin
                    (Ba_survivorat_s_p3)

                    ; #11097: <==negation-removal== 84910 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #39541: <==negation-removal== 35874 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #51134: <==negation-removal== 69752 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #70467: <==negation-removal== 21179 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #72098: <==negation-removal== 55446 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #72264: <==negation-removal== 53076 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #21179: <==closure== 53076 (pos)
                    (Pb_survivorat_s_p3)

                    ; #35874: <==closure== 69752 (pos)
                    (Pc_survivorat_s_p3)

                    ; #53076: origin
                    (Bb_survivorat_s_p3)

                    ; #55446: <==closure== 84910 (pos)
                    (Pa_survivorat_s_p3)

                    ; #69752: origin
                    (Bc_survivorat_s_p3)

                    ; #84910: origin
                    (Ba_survivorat_s_p3)

                    ; #11097: <==negation-removal== 84910 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #39541: <==negation-removal== 35874 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #51134: <==negation-removal== 69752 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #70467: <==negation-removal== 21179 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #72098: <==negation-removal== 55446 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #72264: <==negation-removal== 53076 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #21179: <==closure== 53076 (pos)
                    (Pb_survivorat_s_p3)

                    ; #35874: <==closure== 69752 (pos)
                    (Pc_survivorat_s_p3)

                    ; #53076: origin
                    (Bb_survivorat_s_p3)

                    ; #55446: <==closure== 84910 (pos)
                    (Pa_survivorat_s_p3)

                    ; #69752: origin
                    (Bc_survivorat_s_p3)

                    ; #84910: origin
                    (Ba_survivorat_s_p3)

                    ; #11097: <==negation-removal== 84910 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #39541: <==negation-removal== 35874 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #51134: <==negation-removal== 69752 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #70467: <==negation-removal== 21179 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #72098: <==negation-removal== 55446 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #72264: <==negation-removal== 53076 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #13491: origin
                    (Bc_survivorat_s_p4)

                    ; #24077: <==closure== 35935 (pos)
                    (Pb_survivorat_s_p4)

                    ; #31372: <==closure== 13491 (pos)
                    (Pc_survivorat_s_p4)

                    ; #34091: origin
                    (Ba_survivorat_s_p4)

                    ; #35935: origin
                    (Bb_survivorat_s_p4)

                    ; #87908: <==closure== 34091 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12414: <==negation-removal== 35935 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #14692: <==negation-removal== 24077 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #20490: <==negation-removal== 13491 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #44844: <==negation-removal== 31372 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #68019: <==negation-removal== 34091 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #75611: <==negation-removal== 87908 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #13491: origin
                    (Bc_survivorat_s_p4)

                    ; #24077: <==closure== 35935 (pos)
                    (Pb_survivorat_s_p4)

                    ; #31372: <==closure== 13491 (pos)
                    (Pc_survivorat_s_p4)

                    ; #34091: origin
                    (Ba_survivorat_s_p4)

                    ; #35935: origin
                    (Bb_survivorat_s_p4)

                    ; #87908: <==closure== 34091 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12414: <==negation-removal== 35935 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #14692: <==negation-removal== 24077 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #20490: <==negation-removal== 13491 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #44844: <==negation-removal== 31372 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #68019: <==negation-removal== 34091 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #75611: <==negation-removal== 87908 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #13491: origin
                    (Bc_survivorat_s_p4)

                    ; #24077: <==closure== 35935 (pos)
                    (Pb_survivorat_s_p4)

                    ; #31372: <==closure== 13491 (pos)
                    (Pc_survivorat_s_p4)

                    ; #34091: origin
                    (Ba_survivorat_s_p4)

                    ; #35935: origin
                    (Bb_survivorat_s_p4)

                    ; #87908: <==closure== 34091 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12414: <==negation-removal== 35935 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #14692: <==negation-removal== 24077 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #20490: <==negation-removal== 13491 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #44844: <==negation-removal== 31372 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #68019: <==negation-removal== 34091 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #75611: <==negation-removal== 87908 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #11227: <==closure== 82929 (pos)
                    (Pc_survivorat_s_p5)

                    ; #30076: <==closure== 61617 (pos)
                    (Pb_survivorat_s_p5)

                    ; #61617: origin
                    (Bb_survivorat_s_p5)

                    ; #72594: <==closure== 81007 (pos)
                    (Pa_survivorat_s_p5)

                    ; #81007: origin
                    (Ba_survivorat_s_p5)

                    ; #82929: origin
                    (Bc_survivorat_s_p5)

                    ; #18231: <==negation-removal== 72594 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #33288: <==negation-removal== 11227 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #40003: <==negation-removal== 30076 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #65223: <==negation-removal== 81007 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #77974: <==negation-removal== 82929 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #80183: <==negation-removal== 61617 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #11227: <==closure== 82929 (pos)
                    (Pc_survivorat_s_p5)

                    ; #30076: <==closure== 61617 (pos)
                    (Pb_survivorat_s_p5)

                    ; #61617: origin
                    (Bb_survivorat_s_p5)

                    ; #72594: <==closure== 81007 (pos)
                    (Pa_survivorat_s_p5)

                    ; #81007: origin
                    (Ba_survivorat_s_p5)

                    ; #82929: origin
                    (Bc_survivorat_s_p5)

                    ; #18231: <==negation-removal== 72594 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #33288: <==negation-removal== 11227 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #40003: <==negation-removal== 30076 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #65223: <==negation-removal== 81007 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #77974: <==negation-removal== 82929 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #80183: <==negation-removal== 61617 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #11227: <==closure== 82929 (pos)
                    (Pc_survivorat_s_p5)

                    ; #30076: <==closure== 61617 (pos)
                    (Pb_survivorat_s_p5)

                    ; #61617: origin
                    (Bb_survivorat_s_p5)

                    ; #72594: <==closure== 81007 (pos)
                    (Pa_survivorat_s_p5)

                    ; #81007: origin
                    (Ba_survivorat_s_p5)

                    ; #82929: origin
                    (Bc_survivorat_s_p5)

                    ; #18231: <==negation-removal== 72594 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #33288: <==negation-removal== 11227 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #40003: <==negation-removal== 30076 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #65223: <==negation-removal== 81007 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #77974: <==negation-removal== 82929 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #80183: <==negation-removal== 61617 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #15782: <==closure== 48434 (pos)
                    (Pa_survivorat_s_p6)

                    ; #29668: origin
                    (Bc_survivorat_s_p6)

                    ; #35920: origin
                    (Bb_survivorat_s_p6)

                    ; #48434: origin
                    (Ba_survivorat_s_p6)

                    ; #61769: <==closure== 29668 (pos)
                    (Pc_survivorat_s_p6)

                    ; #97447: <==closure== 35920 (pos)
                    (Pb_survivorat_s_p6)

                    ; #10292: <==negation-removal== 35920 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #29982: <==negation-removal== 97447 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31327: <==negation-removal== 15782 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #45155: <==negation-removal== 61769 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #59650: <==negation-removal== 48434 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #78037: <==negation-removal== 29668 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #15782: <==closure== 48434 (pos)
                    (Pa_survivorat_s_p6)

                    ; #29668: origin
                    (Bc_survivorat_s_p6)

                    ; #35920: origin
                    (Bb_survivorat_s_p6)

                    ; #48434: origin
                    (Ba_survivorat_s_p6)

                    ; #61769: <==closure== 29668 (pos)
                    (Pc_survivorat_s_p6)

                    ; #97447: <==closure== 35920 (pos)
                    (Pb_survivorat_s_p6)

                    ; #10292: <==negation-removal== 35920 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #29982: <==negation-removal== 97447 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31327: <==negation-removal== 15782 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #45155: <==negation-removal== 61769 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #59650: <==negation-removal== 48434 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #78037: <==negation-removal== 29668 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #15782: <==closure== 48434 (pos)
                    (Pa_survivorat_s_p6)

                    ; #29668: origin
                    (Bc_survivorat_s_p6)

                    ; #35920: origin
                    (Bb_survivorat_s_p6)

                    ; #48434: origin
                    (Ba_survivorat_s_p6)

                    ; #61769: <==closure== 29668 (pos)
                    (Pc_survivorat_s_p6)

                    ; #97447: <==closure== 35920 (pos)
                    (Pb_survivorat_s_p6)

                    ; #10292: <==negation-removal== 35920 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #29982: <==negation-removal== 97447 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31327: <==negation-removal== 15782 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #45155: <==negation-removal== 61769 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #59650: <==negation-removal== 48434 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #78037: <==negation-removal== 29668 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #16710: <==closure== 79477 (pos)
                    (Pb_survivorat_s_p7)

                    ; #69827: origin
                    (Bc_survivorat_s_p7)

                    ; #71863: <==closure== 69827 (pos)
                    (Pc_survivorat_s_p7)

                    ; #77135: <==closure== 99511 (pos)
                    (Pa_survivorat_s_p7)

                    ; #79477: origin
                    (Bb_survivorat_s_p7)

                    ; #99511: origin
                    (Ba_survivorat_s_p7)

                    ; #18701: <==negation-removal== 79477 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #28309: <==negation-removal== 71863 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #34977: <==negation-removal== 69827 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #45677: <==negation-removal== 77135 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #55499: <==negation-removal== 99511 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #95199: <==negation-removal== 16710 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #16710: <==closure== 79477 (pos)
                    (Pb_survivorat_s_p7)

                    ; #69827: origin
                    (Bc_survivorat_s_p7)

                    ; #71863: <==closure== 69827 (pos)
                    (Pc_survivorat_s_p7)

                    ; #77135: <==closure== 99511 (pos)
                    (Pa_survivorat_s_p7)

                    ; #79477: origin
                    (Bb_survivorat_s_p7)

                    ; #99511: origin
                    (Ba_survivorat_s_p7)

                    ; #18701: <==negation-removal== 79477 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #28309: <==negation-removal== 71863 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #34977: <==negation-removal== 69827 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #45677: <==negation-removal== 77135 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #55499: <==negation-removal== 99511 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #95199: <==negation-removal== 16710 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #16710: <==closure== 79477 (pos)
                    (Pb_survivorat_s_p7)

                    ; #69827: origin
                    (Bc_survivorat_s_p7)

                    ; #71863: <==closure== 69827 (pos)
                    (Pc_survivorat_s_p7)

                    ; #77135: <==closure== 99511 (pos)
                    (Pa_survivorat_s_p7)

                    ; #79477: origin
                    (Bb_survivorat_s_p7)

                    ; #99511: origin
                    (Ba_survivorat_s_p7)

                    ; #18701: <==negation-removal== 79477 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #28309: <==negation-removal== 71863 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #34977: <==negation-removal== 69827 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #45677: <==negation-removal== 77135 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #55499: <==negation-removal== 99511 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #95199: <==negation-removal== 16710 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #10933: origin
                    (Bb_survivorat_s_p8)

                    ; #12013: <==closure== 14013 (pos)
                    (Pc_survivorat_s_p8)

                    ; #14013: origin
                    (Bc_survivorat_s_p8)

                    ; #68380: origin
                    (Ba_survivorat_s_p8)

                    ; #82817: <==closure== 68380 (pos)
                    (Pa_survivorat_s_p8)

                    ; #89327: <==closure== 10933 (pos)
                    (Pb_survivorat_s_p8)

                    ; #21493: <==negation-removal== 10933 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #21820: <==negation-removal== 89327 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #37645: <==negation-removal== 14013 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #47074: <==negation-removal== 68380 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #59131: <==negation-removal== 82817 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #76874: <==negation-removal== 12013 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #10933: origin
                    (Bb_survivorat_s_p8)

                    ; #12013: <==closure== 14013 (pos)
                    (Pc_survivorat_s_p8)

                    ; #14013: origin
                    (Bc_survivorat_s_p8)

                    ; #68380: origin
                    (Ba_survivorat_s_p8)

                    ; #82817: <==closure== 68380 (pos)
                    (Pa_survivorat_s_p8)

                    ; #89327: <==closure== 10933 (pos)
                    (Pb_survivorat_s_p8)

                    ; #21493: <==negation-removal== 10933 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #21820: <==negation-removal== 89327 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #37645: <==negation-removal== 14013 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #47074: <==negation-removal== 68380 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #59131: <==negation-removal== 82817 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #76874: <==negation-removal== 12013 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #10933: origin
                    (Bb_survivorat_s_p8)

                    ; #12013: <==closure== 14013 (pos)
                    (Pc_survivorat_s_p8)

                    ; #14013: origin
                    (Bc_survivorat_s_p8)

                    ; #68380: origin
                    (Ba_survivorat_s_p8)

                    ; #82817: <==closure== 68380 (pos)
                    (Pa_survivorat_s_p8)

                    ; #89327: <==closure== 10933 (pos)
                    (Pb_survivorat_s_p8)

                    ; #21493: <==negation-removal== 10933 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #21820: <==negation-removal== 89327 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #37645: <==negation-removal== 14013 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #47074: <==negation-removal== 68380 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #59131: <==negation-removal== 82817 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #76874: <==negation-removal== 12013 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #14612: <==closure== 28880 (pos)
                    (Pa_survivorat_s_p9)

                    ; #28880: origin
                    (Ba_survivorat_s_p9)

                    ; #36368: origin
                    (Bc_survivorat_s_p9)

                    ; #52561: <==closure== 64255 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64255: origin
                    (Bb_survivorat_s_p9)

                    ; #89563: <==closure== 36368 (pos)
                    (Pc_survivorat_s_p9)

                    ; #41411: <==negation-removal== 64255 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #51145: <==negation-removal== 28880 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63805: <==negation-removal== 14612 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #70287: <==negation-removal== 36368 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #75292: <==negation-removal== 89563 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82097: <==negation-removal== 52561 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #14612: <==closure== 28880 (pos)
                    (Pa_survivorat_s_p9)

                    ; #28880: origin
                    (Ba_survivorat_s_p9)

                    ; #36368: origin
                    (Bc_survivorat_s_p9)

                    ; #52561: <==closure== 64255 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64255: origin
                    (Bb_survivorat_s_p9)

                    ; #89563: <==closure== 36368 (pos)
                    (Pc_survivorat_s_p9)

                    ; #41411: <==negation-removal== 64255 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #51145: <==negation-removal== 28880 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63805: <==negation-removal== 14612 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #70287: <==negation-removal== 36368 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #75292: <==negation-removal== 89563 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82097: <==negation-removal== 52561 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #14612: <==closure== 28880 (pos)
                    (Pa_survivorat_s_p9)

                    ; #28880: origin
                    (Ba_survivorat_s_p9)

                    ; #36368: origin
                    (Bc_survivorat_s_p9)

                    ; #52561: <==closure== 64255 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64255: origin
                    (Bb_survivorat_s_p9)

                    ; #89563: <==closure== 36368 (pos)
                    (Pc_survivorat_s_p9)

                    ; #41411: <==negation-removal== 64255 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #51145: <==negation-removal== 28880 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63805: <==negation-removal== 14612 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #70287: <==negation-removal== 36368 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #75292: <==negation-removal== 89563 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82097: <==negation-removal== 52561 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #15724: origin
                    (not_at_a_p1)

                    ; #89622: origin
                    (at_a_p1)

                    ; #15724: <==negation-removal== 89622 (pos)
                    (not (not_at_a_p1))

                    ; #89622: <==negation-removal== 15724 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #15724: origin
                    (not_at_a_p1)

                    ; #18100: origin
                    (at_a_p2)

                    ; #89622: <==negation-removal== 15724 (pos)
                    (not (at_a_p1))

                    ; #94793: <==negation-removal== 18100 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #15724: origin
                    (not_at_a_p1)

                    ; #66217: origin
                    (at_a_p3)

                    ; #18364: <==negation-removal== 66217 (pos)
                    (not (not_at_a_p3))

                    ; #89622: <==negation-removal== 15724 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #15724: origin
                    (not_at_a_p1)

                    ; #93602: origin
                    (at_a_p4)

                    ; #28473: <==negation-removal== 93602 (pos)
                    (not (not_at_a_p4))

                    ; #89622: <==negation-removal== 15724 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #15724: origin
                    (not_at_a_p1)

                    ; #37362: origin
                    (at_a_p5)

                    ; #42400: <==negation-removal== 37362 (pos)
                    (not (not_at_a_p5))

                    ; #89622: <==negation-removal== 15724 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #15724: origin
                    (not_at_a_p1)

                    ; #82707: origin
                    (at_a_p6)

                    ; #36153: <==negation-removal== 82707 (pos)
                    (not (not_at_a_p6))

                    ; #89622: <==negation-removal== 15724 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #15724: origin
                    (not_at_a_p1)

                    ; #79641: origin
                    (at_a_p7)

                    ; #63135: <==negation-removal== 79641 (pos)
                    (not (not_at_a_p7))

                    ; #89622: <==negation-removal== 15724 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #15724: origin
                    (not_at_a_p1)

                    ; #68226: origin
                    (at_a_p8)

                    ; #89622: <==negation-removal== 15724 (pos)
                    (not (at_a_p1))

                    ; #96802: <==negation-removal== 68226 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #15724: origin
                    (not_at_a_p1)

                    ; #52414: origin
                    (at_a_p9)

                    ; #83083: <==negation-removal== 52414 (pos)
                    (not (not_at_a_p9))

                    ; #89622: <==negation-removal== 15724 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #89622: origin
                    (at_a_p1)

                    ; #94793: origin
                    (not_at_a_p2)

                    ; #15724: <==negation-removal== 89622 (pos)
                    (not (not_at_a_p1))

                    ; #18100: <==negation-removal== 94793 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #18100: origin
                    (at_a_p2)

                    ; #94793: origin
                    (not_at_a_p2)

                    ; #18100: <==negation-removal== 94793 (pos)
                    (not (at_a_p2))

                    ; #94793: <==negation-removal== 18100 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #66217: origin
                    (at_a_p3)

                    ; #94793: origin
                    (not_at_a_p2)

                    ; #18100: <==negation-removal== 94793 (pos)
                    (not (at_a_p2))

                    ; #18364: <==negation-removal== 66217 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #93602: origin
                    (at_a_p4)

                    ; #94793: origin
                    (not_at_a_p2)

                    ; #18100: <==negation-removal== 94793 (pos)
                    (not (at_a_p2))

                    ; #28473: <==negation-removal== 93602 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #37362: origin
                    (at_a_p5)

                    ; #94793: origin
                    (not_at_a_p2)

                    ; #18100: <==negation-removal== 94793 (pos)
                    (not (at_a_p2))

                    ; #42400: <==negation-removal== 37362 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #82707: origin
                    (at_a_p6)

                    ; #94793: origin
                    (not_at_a_p2)

                    ; #18100: <==negation-removal== 94793 (pos)
                    (not (at_a_p2))

                    ; #36153: <==negation-removal== 82707 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #79641: origin
                    (at_a_p7)

                    ; #94793: origin
                    (not_at_a_p2)

                    ; #18100: <==negation-removal== 94793 (pos)
                    (not (at_a_p2))

                    ; #63135: <==negation-removal== 79641 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #68226: origin
                    (at_a_p8)

                    ; #94793: origin
                    (not_at_a_p2)

                    ; #18100: <==negation-removal== 94793 (pos)
                    (not (at_a_p2))

                    ; #96802: <==negation-removal== 68226 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #52414: origin
                    (at_a_p9)

                    ; #94793: origin
                    (not_at_a_p2)

                    ; #18100: <==negation-removal== 94793 (pos)
                    (not (at_a_p2))

                    ; #83083: <==negation-removal== 52414 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #18364: origin
                    (not_at_a_p3)

                    ; #89622: origin
                    (at_a_p1)

                    ; #15724: <==negation-removal== 89622 (pos)
                    (not (not_at_a_p1))

                    ; #66217: <==negation-removal== 18364 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #18100: origin
                    (at_a_p2)

                    ; #18364: origin
                    (not_at_a_p3)

                    ; #66217: <==negation-removal== 18364 (pos)
                    (not (at_a_p3))

                    ; #94793: <==negation-removal== 18100 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #18364: origin
                    (not_at_a_p3)

                    ; #66217: origin
                    (at_a_p3)

                    ; #18364: <==negation-removal== 66217 (pos)
                    (not (not_at_a_p3))

                    ; #66217: <==negation-removal== 18364 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #18364: origin
                    (not_at_a_p3)

                    ; #93602: origin
                    (at_a_p4)

                    ; #28473: <==negation-removal== 93602 (pos)
                    (not (not_at_a_p4))

                    ; #66217: <==negation-removal== 18364 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #18364: origin
                    (not_at_a_p3)

                    ; #37362: origin
                    (at_a_p5)

                    ; #42400: <==negation-removal== 37362 (pos)
                    (not (not_at_a_p5))

                    ; #66217: <==negation-removal== 18364 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #18364: origin
                    (not_at_a_p3)

                    ; #82707: origin
                    (at_a_p6)

                    ; #36153: <==negation-removal== 82707 (pos)
                    (not (not_at_a_p6))

                    ; #66217: <==negation-removal== 18364 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #18364: origin
                    (not_at_a_p3)

                    ; #79641: origin
                    (at_a_p7)

                    ; #63135: <==negation-removal== 79641 (pos)
                    (not (not_at_a_p7))

                    ; #66217: <==negation-removal== 18364 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #18364: origin
                    (not_at_a_p3)

                    ; #68226: origin
                    (at_a_p8)

                    ; #66217: <==negation-removal== 18364 (pos)
                    (not (at_a_p3))

                    ; #96802: <==negation-removal== 68226 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #18364: origin
                    (not_at_a_p3)

                    ; #52414: origin
                    (at_a_p9)

                    ; #66217: <==negation-removal== 18364 (pos)
                    (not (at_a_p3))

                    ; #83083: <==negation-removal== 52414 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #28473: origin
                    (not_at_a_p4)

                    ; #89622: origin
                    (at_a_p1)

                    ; #15724: <==negation-removal== 89622 (pos)
                    (not (not_at_a_p1))

                    ; #93602: <==negation-removal== 28473 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #18100: origin
                    (at_a_p2)

                    ; #28473: origin
                    (not_at_a_p4)

                    ; #93602: <==negation-removal== 28473 (pos)
                    (not (at_a_p4))

                    ; #94793: <==negation-removal== 18100 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #28473: origin
                    (not_at_a_p4)

                    ; #66217: origin
                    (at_a_p3)

                    ; #18364: <==negation-removal== 66217 (pos)
                    (not (not_at_a_p3))

                    ; #93602: <==negation-removal== 28473 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #28473: origin
                    (not_at_a_p4)

                    ; #93602: origin
                    (at_a_p4)

                    ; #28473: <==negation-removal== 93602 (pos)
                    (not (not_at_a_p4))

                    ; #93602: <==negation-removal== 28473 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #28473: origin
                    (not_at_a_p4)

                    ; #37362: origin
                    (at_a_p5)

                    ; #42400: <==negation-removal== 37362 (pos)
                    (not (not_at_a_p5))

                    ; #93602: <==negation-removal== 28473 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #28473: origin
                    (not_at_a_p4)

                    ; #82707: origin
                    (at_a_p6)

                    ; #36153: <==negation-removal== 82707 (pos)
                    (not (not_at_a_p6))

                    ; #93602: <==negation-removal== 28473 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #28473: origin
                    (not_at_a_p4)

                    ; #79641: origin
                    (at_a_p7)

                    ; #63135: <==negation-removal== 79641 (pos)
                    (not (not_at_a_p7))

                    ; #93602: <==negation-removal== 28473 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #28473: origin
                    (not_at_a_p4)

                    ; #68226: origin
                    (at_a_p8)

                    ; #93602: <==negation-removal== 28473 (pos)
                    (not (at_a_p4))

                    ; #96802: <==negation-removal== 68226 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #28473: origin
                    (not_at_a_p4)

                    ; #52414: origin
                    (at_a_p9)

                    ; #83083: <==negation-removal== 52414 (pos)
                    (not (not_at_a_p9))

                    ; #93602: <==negation-removal== 28473 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #42400: origin
                    (not_at_a_p5)

                    ; #89622: origin
                    (at_a_p1)

                    ; #15724: <==negation-removal== 89622 (pos)
                    (not (not_at_a_p1))

                    ; #37362: <==negation-removal== 42400 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #18100: origin
                    (at_a_p2)

                    ; #42400: origin
                    (not_at_a_p5)

                    ; #37362: <==negation-removal== 42400 (pos)
                    (not (at_a_p5))

                    ; #94793: <==negation-removal== 18100 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #42400: origin
                    (not_at_a_p5)

                    ; #66217: origin
                    (at_a_p3)

                    ; #18364: <==negation-removal== 66217 (pos)
                    (not (not_at_a_p3))

                    ; #37362: <==negation-removal== 42400 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #42400: origin
                    (not_at_a_p5)

                    ; #93602: origin
                    (at_a_p4)

                    ; #28473: <==negation-removal== 93602 (pos)
                    (not (not_at_a_p4))

                    ; #37362: <==negation-removal== 42400 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #37362: origin
                    (at_a_p5)

                    ; #42400: origin
                    (not_at_a_p5)

                    ; #37362: <==negation-removal== 42400 (pos)
                    (not (at_a_p5))

                    ; #42400: <==negation-removal== 37362 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #42400: origin
                    (not_at_a_p5)

                    ; #82707: origin
                    (at_a_p6)

                    ; #36153: <==negation-removal== 82707 (pos)
                    (not (not_at_a_p6))

                    ; #37362: <==negation-removal== 42400 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #42400: origin
                    (not_at_a_p5)

                    ; #79641: origin
                    (at_a_p7)

                    ; #37362: <==negation-removal== 42400 (pos)
                    (not (at_a_p5))

                    ; #63135: <==negation-removal== 79641 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #42400: origin
                    (not_at_a_p5)

                    ; #68226: origin
                    (at_a_p8)

                    ; #37362: <==negation-removal== 42400 (pos)
                    (not (at_a_p5))

                    ; #96802: <==negation-removal== 68226 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #42400: origin
                    (not_at_a_p5)

                    ; #52414: origin
                    (at_a_p9)

                    ; #37362: <==negation-removal== 42400 (pos)
                    (not (at_a_p5))

                    ; #83083: <==negation-removal== 52414 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #36153: origin
                    (not_at_a_p6)

                    ; #89622: origin
                    (at_a_p1)

                    ; #15724: <==negation-removal== 89622 (pos)
                    (not (not_at_a_p1))

                    ; #82707: <==negation-removal== 36153 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #18100: origin
                    (at_a_p2)

                    ; #36153: origin
                    (not_at_a_p6)

                    ; #82707: <==negation-removal== 36153 (pos)
                    (not (at_a_p6))

                    ; #94793: <==negation-removal== 18100 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #36153: origin
                    (not_at_a_p6)

                    ; #66217: origin
                    (at_a_p3)

                    ; #18364: <==negation-removal== 66217 (pos)
                    (not (not_at_a_p3))

                    ; #82707: <==negation-removal== 36153 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #36153: origin
                    (not_at_a_p6)

                    ; #93602: origin
                    (at_a_p4)

                    ; #28473: <==negation-removal== 93602 (pos)
                    (not (not_at_a_p4))

                    ; #82707: <==negation-removal== 36153 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #36153: origin
                    (not_at_a_p6)

                    ; #37362: origin
                    (at_a_p5)

                    ; #42400: <==negation-removal== 37362 (pos)
                    (not (not_at_a_p5))

                    ; #82707: <==negation-removal== 36153 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #36153: origin
                    (not_at_a_p6)

                    ; #82707: origin
                    (at_a_p6)

                    ; #36153: <==negation-removal== 82707 (pos)
                    (not (not_at_a_p6))

                    ; #82707: <==negation-removal== 36153 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #36153: origin
                    (not_at_a_p6)

                    ; #79641: origin
                    (at_a_p7)

                    ; #63135: <==negation-removal== 79641 (pos)
                    (not (not_at_a_p7))

                    ; #82707: <==negation-removal== 36153 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #36153: origin
                    (not_at_a_p6)

                    ; #68226: origin
                    (at_a_p8)

                    ; #82707: <==negation-removal== 36153 (pos)
                    (not (at_a_p6))

                    ; #96802: <==negation-removal== 68226 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #36153: origin
                    (not_at_a_p6)

                    ; #52414: origin
                    (at_a_p9)

                    ; #82707: <==negation-removal== 36153 (pos)
                    (not (at_a_p6))

                    ; #83083: <==negation-removal== 52414 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #63135: origin
                    (not_at_a_p7)

                    ; #89622: origin
                    (at_a_p1)

                    ; #15724: <==negation-removal== 89622 (pos)
                    (not (not_at_a_p1))

                    ; #79641: <==negation-removal== 63135 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #18100: origin
                    (at_a_p2)

                    ; #63135: origin
                    (not_at_a_p7)

                    ; #79641: <==negation-removal== 63135 (pos)
                    (not (at_a_p7))

                    ; #94793: <==negation-removal== 18100 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #63135: origin
                    (not_at_a_p7)

                    ; #66217: origin
                    (at_a_p3)

                    ; #18364: <==negation-removal== 66217 (pos)
                    (not (not_at_a_p3))

                    ; #79641: <==negation-removal== 63135 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #63135: origin
                    (not_at_a_p7)

                    ; #93602: origin
                    (at_a_p4)

                    ; #28473: <==negation-removal== 93602 (pos)
                    (not (not_at_a_p4))

                    ; #79641: <==negation-removal== 63135 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #37362: origin
                    (at_a_p5)

                    ; #63135: origin
                    (not_at_a_p7)

                    ; #42400: <==negation-removal== 37362 (pos)
                    (not (not_at_a_p5))

                    ; #79641: <==negation-removal== 63135 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #63135: origin
                    (not_at_a_p7)

                    ; #82707: origin
                    (at_a_p6)

                    ; #36153: <==negation-removal== 82707 (pos)
                    (not (not_at_a_p6))

                    ; #79641: <==negation-removal== 63135 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #63135: origin
                    (not_at_a_p7)

                    ; #79641: origin
                    (at_a_p7)

                    ; #63135: <==negation-removal== 79641 (pos)
                    (not (not_at_a_p7))

                    ; #79641: <==negation-removal== 63135 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #63135: origin
                    (not_at_a_p7)

                    ; #68226: origin
                    (at_a_p8)

                    ; #79641: <==negation-removal== 63135 (pos)
                    (not (at_a_p7))

                    ; #96802: <==negation-removal== 68226 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #52414: origin
                    (at_a_p9)

                    ; #63135: origin
                    (not_at_a_p7)

                    ; #79641: <==negation-removal== 63135 (pos)
                    (not (at_a_p7))

                    ; #83083: <==negation-removal== 52414 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #89622: origin
                    (at_a_p1)

                    ; #96802: origin
                    (not_at_a_p8)

                    ; #15724: <==negation-removal== 89622 (pos)
                    (not (not_at_a_p1))

                    ; #68226: <==negation-removal== 96802 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #18100: origin
                    (at_a_p2)

                    ; #96802: origin
                    (not_at_a_p8)

                    ; #68226: <==negation-removal== 96802 (pos)
                    (not (at_a_p8))

                    ; #94793: <==negation-removal== 18100 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #66217: origin
                    (at_a_p3)

                    ; #96802: origin
                    (not_at_a_p8)

                    ; #18364: <==negation-removal== 66217 (pos)
                    (not (not_at_a_p3))

                    ; #68226: <==negation-removal== 96802 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #93602: origin
                    (at_a_p4)

                    ; #96802: origin
                    (not_at_a_p8)

                    ; #28473: <==negation-removal== 93602 (pos)
                    (not (not_at_a_p4))

                    ; #68226: <==negation-removal== 96802 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #37362: origin
                    (at_a_p5)

                    ; #96802: origin
                    (not_at_a_p8)

                    ; #42400: <==negation-removal== 37362 (pos)
                    (not (not_at_a_p5))

                    ; #68226: <==negation-removal== 96802 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #82707: origin
                    (at_a_p6)

                    ; #96802: origin
                    (not_at_a_p8)

                    ; #36153: <==negation-removal== 82707 (pos)
                    (not (not_at_a_p6))

                    ; #68226: <==negation-removal== 96802 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #79641: origin
                    (at_a_p7)

                    ; #96802: origin
                    (not_at_a_p8)

                    ; #63135: <==negation-removal== 79641 (pos)
                    (not (not_at_a_p7))

                    ; #68226: <==negation-removal== 96802 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #68226: origin
                    (at_a_p8)

                    ; #96802: origin
                    (not_at_a_p8)

                    ; #68226: <==negation-removal== 96802 (pos)
                    (not (at_a_p8))

                    ; #96802: <==negation-removal== 68226 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #52414: origin
                    (at_a_p9)

                    ; #96802: origin
                    (not_at_a_p8)

                    ; #68226: <==negation-removal== 96802 (pos)
                    (not (at_a_p8))

                    ; #83083: <==negation-removal== 52414 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #83083: origin
                    (not_at_a_p9)

                    ; #89622: origin
                    (at_a_p1)

                    ; #15724: <==negation-removal== 89622 (pos)
                    (not (not_at_a_p1))

                    ; #52414: <==negation-removal== 83083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #18100: origin
                    (at_a_p2)

                    ; #83083: origin
                    (not_at_a_p9)

                    ; #52414: <==negation-removal== 83083 (pos)
                    (not (at_a_p9))

                    ; #94793: <==negation-removal== 18100 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #66217: origin
                    (at_a_p3)

                    ; #83083: origin
                    (not_at_a_p9)

                    ; #18364: <==negation-removal== 66217 (pos)
                    (not (not_at_a_p3))

                    ; #52414: <==negation-removal== 83083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #83083: origin
                    (not_at_a_p9)

                    ; #93602: origin
                    (at_a_p4)

                    ; #28473: <==negation-removal== 93602 (pos)
                    (not (not_at_a_p4))

                    ; #52414: <==negation-removal== 83083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #37362: origin
                    (at_a_p5)

                    ; #83083: origin
                    (not_at_a_p9)

                    ; #42400: <==negation-removal== 37362 (pos)
                    (not (not_at_a_p5))

                    ; #52414: <==negation-removal== 83083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #82707: origin
                    (at_a_p6)

                    ; #83083: origin
                    (not_at_a_p9)

                    ; #36153: <==negation-removal== 82707 (pos)
                    (not (not_at_a_p6))

                    ; #52414: <==negation-removal== 83083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #79641: origin
                    (at_a_p7)

                    ; #83083: origin
                    (not_at_a_p9)

                    ; #52414: <==negation-removal== 83083 (pos)
                    (not (at_a_p9))

                    ; #63135: <==negation-removal== 79641 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #68226: origin
                    (at_a_p8)

                    ; #83083: origin
                    (not_at_a_p9)

                    ; #52414: <==negation-removal== 83083 (pos)
                    (not (at_a_p9))

                    ; #96802: <==negation-removal== 68226 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #52414: origin
                    (at_a_p9)

                    ; #83083: origin
                    (not_at_a_p9)

                    ; #52414: <==negation-removal== 83083 (pos)
                    (not (at_a_p9))

                    ; #83083: <==negation-removal== 52414 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #30303: origin
                    (not_at_b_p1)

                    ; #56573: origin
                    (at_b_p1)

                    ; #30303: <==negation-removal== 56573 (pos)
                    (not (not_at_b_p1))

                    ; #56573: <==negation-removal== 30303 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #30303: origin
                    (not_at_b_p1)

                    ; #44288: origin
                    (at_b_p2)

                    ; #36125: <==negation-removal== 44288 (pos)
                    (not (not_at_b_p2))

                    ; #56573: <==negation-removal== 30303 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #30303: origin
                    (not_at_b_p1)

                    ; #77023: origin
                    (at_b_p3)

                    ; #18530: <==negation-removal== 77023 (pos)
                    (not (not_at_b_p3))

                    ; #56573: <==negation-removal== 30303 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #30303: origin
                    (not_at_b_p1)

                    ; #91192: origin
                    (at_b_p4)

                    ; #56573: <==negation-removal== 30303 (pos)
                    (not (at_b_p1))

                    ; #70181: <==negation-removal== 91192 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #30303: origin
                    (not_at_b_p1)

                    ; #38366: origin
                    (at_b_p5)

                    ; #53993: <==negation-removal== 38366 (pos)
                    (not (not_at_b_p5))

                    ; #56573: <==negation-removal== 30303 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #30303: origin
                    (not_at_b_p1)

                    ; #69233: origin
                    (at_b_p6)

                    ; #56573: <==negation-removal== 30303 (pos)
                    (not (at_b_p1))

                    ; #78818: <==negation-removal== 69233 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #30303: origin
                    (not_at_b_p1)

                    ; #73755: origin
                    (at_b_p7)

                    ; #56573: <==negation-removal== 30303 (pos)
                    (not (at_b_p1))

                    ; #78239: <==negation-removal== 73755 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #30303: origin
                    (not_at_b_p1)

                    ; #57787: origin
                    (at_b_p8)

                    ; #35182: <==negation-removal== 57787 (pos)
                    (not (not_at_b_p8))

                    ; #56573: <==negation-removal== 30303 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #19829: origin
                    (at_b_p9)

                    ; #30303: origin
                    (not_at_b_p1)

                    ; #56573: <==negation-removal== 30303 (pos)
                    (not (at_b_p1))

                    ; #67536: <==negation-removal== 19829 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #36125: origin
                    (not_at_b_p2)

                    ; #56573: origin
                    (at_b_p1)

                    ; #30303: <==negation-removal== 56573 (pos)
                    (not (not_at_b_p1))

                    ; #44288: <==negation-removal== 36125 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #36125: origin
                    (not_at_b_p2)

                    ; #44288: origin
                    (at_b_p2)

                    ; #36125: <==negation-removal== 44288 (pos)
                    (not (not_at_b_p2))

                    ; #44288: <==negation-removal== 36125 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #36125: origin
                    (not_at_b_p2)

                    ; #77023: origin
                    (at_b_p3)

                    ; #18530: <==negation-removal== 77023 (pos)
                    (not (not_at_b_p3))

                    ; #44288: <==negation-removal== 36125 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #36125: origin
                    (not_at_b_p2)

                    ; #91192: origin
                    (at_b_p4)

                    ; #44288: <==negation-removal== 36125 (pos)
                    (not (at_b_p2))

                    ; #70181: <==negation-removal== 91192 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #36125: origin
                    (not_at_b_p2)

                    ; #38366: origin
                    (at_b_p5)

                    ; #44288: <==negation-removal== 36125 (pos)
                    (not (at_b_p2))

                    ; #53993: <==negation-removal== 38366 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #36125: origin
                    (not_at_b_p2)

                    ; #69233: origin
                    (at_b_p6)

                    ; #44288: <==negation-removal== 36125 (pos)
                    (not (at_b_p2))

                    ; #78818: <==negation-removal== 69233 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #36125: origin
                    (not_at_b_p2)

                    ; #73755: origin
                    (at_b_p7)

                    ; #44288: <==negation-removal== 36125 (pos)
                    (not (at_b_p2))

                    ; #78239: <==negation-removal== 73755 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #36125: origin
                    (not_at_b_p2)

                    ; #57787: origin
                    (at_b_p8)

                    ; #35182: <==negation-removal== 57787 (pos)
                    (not (not_at_b_p8))

                    ; #44288: <==negation-removal== 36125 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #19829: origin
                    (at_b_p9)

                    ; #36125: origin
                    (not_at_b_p2)

                    ; #44288: <==negation-removal== 36125 (pos)
                    (not (at_b_p2))

                    ; #67536: <==negation-removal== 19829 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #18530: origin
                    (not_at_b_p3)

                    ; #56573: origin
                    (at_b_p1)

                    ; #30303: <==negation-removal== 56573 (pos)
                    (not (not_at_b_p1))

                    ; #77023: <==negation-removal== 18530 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #18530: origin
                    (not_at_b_p3)

                    ; #44288: origin
                    (at_b_p2)

                    ; #36125: <==negation-removal== 44288 (pos)
                    (not (not_at_b_p2))

                    ; #77023: <==negation-removal== 18530 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #18530: origin
                    (not_at_b_p3)

                    ; #77023: origin
                    (at_b_p3)

                    ; #18530: <==negation-removal== 77023 (pos)
                    (not (not_at_b_p3))

                    ; #77023: <==negation-removal== 18530 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #18530: origin
                    (not_at_b_p3)

                    ; #91192: origin
                    (at_b_p4)

                    ; #70181: <==negation-removal== 91192 (pos)
                    (not (not_at_b_p4))

                    ; #77023: <==negation-removal== 18530 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #18530: origin
                    (not_at_b_p3)

                    ; #38366: origin
                    (at_b_p5)

                    ; #53993: <==negation-removal== 38366 (pos)
                    (not (not_at_b_p5))

                    ; #77023: <==negation-removal== 18530 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #18530: origin
                    (not_at_b_p3)

                    ; #69233: origin
                    (at_b_p6)

                    ; #77023: <==negation-removal== 18530 (pos)
                    (not (at_b_p3))

                    ; #78818: <==negation-removal== 69233 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #18530: origin
                    (not_at_b_p3)

                    ; #73755: origin
                    (at_b_p7)

                    ; #77023: <==negation-removal== 18530 (pos)
                    (not (at_b_p3))

                    ; #78239: <==negation-removal== 73755 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #18530: origin
                    (not_at_b_p3)

                    ; #57787: origin
                    (at_b_p8)

                    ; #35182: <==negation-removal== 57787 (pos)
                    (not (not_at_b_p8))

                    ; #77023: <==negation-removal== 18530 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #18530: origin
                    (not_at_b_p3)

                    ; #19829: origin
                    (at_b_p9)

                    ; #67536: <==negation-removal== 19829 (pos)
                    (not (not_at_b_p9))

                    ; #77023: <==negation-removal== 18530 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #56573: origin
                    (at_b_p1)

                    ; #70181: origin
                    (not_at_b_p4)

                    ; #30303: <==negation-removal== 56573 (pos)
                    (not (not_at_b_p1))

                    ; #91192: <==negation-removal== 70181 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #44288: origin
                    (at_b_p2)

                    ; #70181: origin
                    (not_at_b_p4)

                    ; #36125: <==negation-removal== 44288 (pos)
                    (not (not_at_b_p2))

                    ; #91192: <==negation-removal== 70181 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #70181: origin
                    (not_at_b_p4)

                    ; #77023: origin
                    (at_b_p3)

                    ; #18530: <==negation-removal== 77023 (pos)
                    (not (not_at_b_p3))

                    ; #91192: <==negation-removal== 70181 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #70181: origin
                    (not_at_b_p4)

                    ; #91192: origin
                    (at_b_p4)

                    ; #70181: <==negation-removal== 91192 (pos)
                    (not (not_at_b_p4))

                    ; #91192: <==negation-removal== 70181 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #38366: origin
                    (at_b_p5)

                    ; #70181: origin
                    (not_at_b_p4)

                    ; #53993: <==negation-removal== 38366 (pos)
                    (not (not_at_b_p5))

                    ; #91192: <==negation-removal== 70181 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #69233: origin
                    (at_b_p6)

                    ; #70181: origin
                    (not_at_b_p4)

                    ; #78818: <==negation-removal== 69233 (pos)
                    (not (not_at_b_p6))

                    ; #91192: <==negation-removal== 70181 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #70181: origin
                    (not_at_b_p4)

                    ; #73755: origin
                    (at_b_p7)

                    ; #78239: <==negation-removal== 73755 (pos)
                    (not (not_at_b_p7))

                    ; #91192: <==negation-removal== 70181 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #57787: origin
                    (at_b_p8)

                    ; #70181: origin
                    (not_at_b_p4)

                    ; #35182: <==negation-removal== 57787 (pos)
                    (not (not_at_b_p8))

                    ; #91192: <==negation-removal== 70181 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #19829: origin
                    (at_b_p9)

                    ; #70181: origin
                    (not_at_b_p4)

                    ; #67536: <==negation-removal== 19829 (pos)
                    (not (not_at_b_p9))

                    ; #91192: <==negation-removal== 70181 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #53993: origin
                    (not_at_b_p5)

                    ; #56573: origin
                    (at_b_p1)

                    ; #30303: <==negation-removal== 56573 (pos)
                    (not (not_at_b_p1))

                    ; #38366: <==negation-removal== 53993 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #44288: origin
                    (at_b_p2)

                    ; #53993: origin
                    (not_at_b_p5)

                    ; #36125: <==negation-removal== 44288 (pos)
                    (not (not_at_b_p2))

                    ; #38366: <==negation-removal== 53993 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #53993: origin
                    (not_at_b_p5)

                    ; #77023: origin
                    (at_b_p3)

                    ; #18530: <==negation-removal== 77023 (pos)
                    (not (not_at_b_p3))

                    ; #38366: <==negation-removal== 53993 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #53993: origin
                    (not_at_b_p5)

                    ; #91192: origin
                    (at_b_p4)

                    ; #38366: <==negation-removal== 53993 (pos)
                    (not (at_b_p5))

                    ; #70181: <==negation-removal== 91192 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #38366: origin
                    (at_b_p5)

                    ; #53993: origin
                    (not_at_b_p5)

                    ; #38366: <==negation-removal== 53993 (pos)
                    (not (at_b_p5))

                    ; #53993: <==negation-removal== 38366 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #53993: origin
                    (not_at_b_p5)

                    ; #69233: origin
                    (at_b_p6)

                    ; #38366: <==negation-removal== 53993 (pos)
                    (not (at_b_p5))

                    ; #78818: <==negation-removal== 69233 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #53993: origin
                    (not_at_b_p5)

                    ; #73755: origin
                    (at_b_p7)

                    ; #38366: <==negation-removal== 53993 (pos)
                    (not (at_b_p5))

                    ; #78239: <==negation-removal== 73755 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #53993: origin
                    (not_at_b_p5)

                    ; #57787: origin
                    (at_b_p8)

                    ; #35182: <==negation-removal== 57787 (pos)
                    (not (not_at_b_p8))

                    ; #38366: <==negation-removal== 53993 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #19829: origin
                    (at_b_p9)

                    ; #53993: origin
                    (not_at_b_p5)

                    ; #38366: <==negation-removal== 53993 (pos)
                    (not (at_b_p5))

                    ; #67536: <==negation-removal== 19829 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #56573: origin
                    (at_b_p1)

                    ; #78818: origin
                    (not_at_b_p6)

                    ; #30303: <==negation-removal== 56573 (pos)
                    (not (not_at_b_p1))

                    ; #69233: <==negation-removal== 78818 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #44288: origin
                    (at_b_p2)

                    ; #78818: origin
                    (not_at_b_p6)

                    ; #36125: <==negation-removal== 44288 (pos)
                    (not (not_at_b_p2))

                    ; #69233: <==negation-removal== 78818 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #77023: origin
                    (at_b_p3)

                    ; #78818: origin
                    (not_at_b_p6)

                    ; #18530: <==negation-removal== 77023 (pos)
                    (not (not_at_b_p3))

                    ; #69233: <==negation-removal== 78818 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #78818: origin
                    (not_at_b_p6)

                    ; #91192: origin
                    (at_b_p4)

                    ; #69233: <==negation-removal== 78818 (pos)
                    (not (at_b_p6))

                    ; #70181: <==negation-removal== 91192 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #38366: origin
                    (at_b_p5)

                    ; #78818: origin
                    (not_at_b_p6)

                    ; #53993: <==negation-removal== 38366 (pos)
                    (not (not_at_b_p5))

                    ; #69233: <==negation-removal== 78818 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #69233: origin
                    (at_b_p6)

                    ; #78818: origin
                    (not_at_b_p6)

                    ; #69233: <==negation-removal== 78818 (pos)
                    (not (at_b_p6))

                    ; #78818: <==negation-removal== 69233 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #73755: origin
                    (at_b_p7)

                    ; #78818: origin
                    (not_at_b_p6)

                    ; #69233: <==negation-removal== 78818 (pos)
                    (not (at_b_p6))

                    ; #78239: <==negation-removal== 73755 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #57787: origin
                    (at_b_p8)

                    ; #78818: origin
                    (not_at_b_p6)

                    ; #35182: <==negation-removal== 57787 (pos)
                    (not (not_at_b_p8))

                    ; #69233: <==negation-removal== 78818 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #19829: origin
                    (at_b_p9)

                    ; #78818: origin
                    (not_at_b_p6)

                    ; #67536: <==negation-removal== 19829 (pos)
                    (not (not_at_b_p9))

                    ; #69233: <==negation-removal== 78818 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #56573: origin
                    (at_b_p1)

                    ; #78239: origin
                    (not_at_b_p7)

                    ; #30303: <==negation-removal== 56573 (pos)
                    (not (not_at_b_p1))

                    ; #73755: <==negation-removal== 78239 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #44288: origin
                    (at_b_p2)

                    ; #78239: origin
                    (not_at_b_p7)

                    ; #36125: <==negation-removal== 44288 (pos)
                    (not (not_at_b_p2))

                    ; #73755: <==negation-removal== 78239 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #77023: origin
                    (at_b_p3)

                    ; #78239: origin
                    (not_at_b_p7)

                    ; #18530: <==negation-removal== 77023 (pos)
                    (not (not_at_b_p3))

                    ; #73755: <==negation-removal== 78239 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #78239: origin
                    (not_at_b_p7)

                    ; #91192: origin
                    (at_b_p4)

                    ; #70181: <==negation-removal== 91192 (pos)
                    (not (not_at_b_p4))

                    ; #73755: <==negation-removal== 78239 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #38366: origin
                    (at_b_p5)

                    ; #78239: origin
                    (not_at_b_p7)

                    ; #53993: <==negation-removal== 38366 (pos)
                    (not (not_at_b_p5))

                    ; #73755: <==negation-removal== 78239 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #69233: origin
                    (at_b_p6)

                    ; #78239: origin
                    (not_at_b_p7)

                    ; #73755: <==negation-removal== 78239 (pos)
                    (not (at_b_p7))

                    ; #78818: <==negation-removal== 69233 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #73755: origin
                    (at_b_p7)

                    ; #78239: origin
                    (not_at_b_p7)

                    ; #73755: <==negation-removal== 78239 (pos)
                    (not (at_b_p7))

                    ; #78239: <==negation-removal== 73755 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #57787: origin
                    (at_b_p8)

                    ; #78239: origin
                    (not_at_b_p7)

                    ; #35182: <==negation-removal== 57787 (pos)
                    (not (not_at_b_p8))

                    ; #73755: <==negation-removal== 78239 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #19829: origin
                    (at_b_p9)

                    ; #78239: origin
                    (not_at_b_p7)

                    ; #67536: <==negation-removal== 19829 (pos)
                    (not (not_at_b_p9))

                    ; #73755: <==negation-removal== 78239 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #35182: origin
                    (not_at_b_p8)

                    ; #56573: origin
                    (at_b_p1)

                    ; #30303: <==negation-removal== 56573 (pos)
                    (not (not_at_b_p1))

                    ; #57787: <==negation-removal== 35182 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #35182: origin
                    (not_at_b_p8)

                    ; #44288: origin
                    (at_b_p2)

                    ; #36125: <==negation-removal== 44288 (pos)
                    (not (not_at_b_p2))

                    ; #57787: <==negation-removal== 35182 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #35182: origin
                    (not_at_b_p8)

                    ; #77023: origin
                    (at_b_p3)

                    ; #18530: <==negation-removal== 77023 (pos)
                    (not (not_at_b_p3))

                    ; #57787: <==negation-removal== 35182 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #35182: origin
                    (not_at_b_p8)

                    ; #91192: origin
                    (at_b_p4)

                    ; #57787: <==negation-removal== 35182 (pos)
                    (not (at_b_p8))

                    ; #70181: <==negation-removal== 91192 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #35182: origin
                    (not_at_b_p8)

                    ; #38366: origin
                    (at_b_p5)

                    ; #53993: <==negation-removal== 38366 (pos)
                    (not (not_at_b_p5))

                    ; #57787: <==negation-removal== 35182 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #35182: origin
                    (not_at_b_p8)

                    ; #69233: origin
                    (at_b_p6)

                    ; #57787: <==negation-removal== 35182 (pos)
                    (not (at_b_p8))

                    ; #78818: <==negation-removal== 69233 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #35182: origin
                    (not_at_b_p8)

                    ; #73755: origin
                    (at_b_p7)

                    ; #57787: <==negation-removal== 35182 (pos)
                    (not (at_b_p8))

                    ; #78239: <==negation-removal== 73755 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #35182: origin
                    (not_at_b_p8)

                    ; #57787: origin
                    (at_b_p8)

                    ; #35182: <==negation-removal== 57787 (pos)
                    (not (not_at_b_p8))

                    ; #57787: <==negation-removal== 35182 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #19829: origin
                    (at_b_p9)

                    ; #35182: origin
                    (not_at_b_p8)

                    ; #57787: <==negation-removal== 35182 (pos)
                    (not (at_b_p8))

                    ; #67536: <==negation-removal== 19829 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #56573: origin
                    (at_b_p1)

                    ; #67536: origin
                    (not_at_b_p9)

                    ; #19829: <==negation-removal== 67536 (pos)
                    (not (at_b_p9))

                    ; #30303: <==negation-removal== 56573 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #44288: origin
                    (at_b_p2)

                    ; #67536: origin
                    (not_at_b_p9)

                    ; #19829: <==negation-removal== 67536 (pos)
                    (not (at_b_p9))

                    ; #36125: <==negation-removal== 44288 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #67536: origin
                    (not_at_b_p9)

                    ; #77023: origin
                    (at_b_p3)

                    ; #18530: <==negation-removal== 77023 (pos)
                    (not (not_at_b_p3))

                    ; #19829: <==negation-removal== 67536 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #67536: origin
                    (not_at_b_p9)

                    ; #91192: origin
                    (at_b_p4)

                    ; #19829: <==negation-removal== 67536 (pos)
                    (not (at_b_p9))

                    ; #70181: <==negation-removal== 91192 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #38366: origin
                    (at_b_p5)

                    ; #67536: origin
                    (not_at_b_p9)

                    ; #19829: <==negation-removal== 67536 (pos)
                    (not (at_b_p9))

                    ; #53993: <==negation-removal== 38366 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #67536: origin
                    (not_at_b_p9)

                    ; #69233: origin
                    (at_b_p6)

                    ; #19829: <==negation-removal== 67536 (pos)
                    (not (at_b_p9))

                    ; #78818: <==negation-removal== 69233 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #67536: origin
                    (not_at_b_p9)

                    ; #73755: origin
                    (at_b_p7)

                    ; #19829: <==negation-removal== 67536 (pos)
                    (not (at_b_p9))

                    ; #78239: <==negation-removal== 73755 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #57787: origin
                    (at_b_p8)

                    ; #67536: origin
                    (not_at_b_p9)

                    ; #19829: <==negation-removal== 67536 (pos)
                    (not (at_b_p9))

                    ; #35182: <==negation-removal== 57787 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #19829: origin
                    (at_b_p9)

                    ; #67536: origin
                    (not_at_b_p9)

                    ; #19829: <==negation-removal== 67536 (pos)
                    (not (at_b_p9))

                    ; #67536: <==negation-removal== 19829 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #45890: origin
                    (not_at_c_p1)

                    ; #58041: origin
                    (at_c_p1)

                    ; #45890: <==negation-removal== 58041 (pos)
                    (not (not_at_c_p1))

                    ; #58041: <==negation-removal== 45890 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #22399: origin
                    (at_c_p2)

                    ; #45890: origin
                    (not_at_c_p1)

                    ; #35775: <==negation-removal== 22399 (pos)
                    (not (not_at_c_p2))

                    ; #58041: <==negation-removal== 45890 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #45890: origin
                    (not_at_c_p1)

                    ; #87223: origin
                    (at_c_p3)

                    ; #38935: <==negation-removal== 87223 (pos)
                    (not (not_at_c_p3))

                    ; #58041: <==negation-removal== 45890 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #19432: origin
                    (at_c_p4)

                    ; #45890: origin
                    (not_at_c_p1)

                    ; #38398: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p4))

                    ; #58041: <==negation-removal== 45890 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #41217: origin
                    (at_c_p5)

                    ; #45890: origin
                    (not_at_c_p1)

                    ; #58041: <==negation-removal== 45890 (pos)
                    (not (at_c_p1))

                    ; #85451: <==negation-removal== 41217 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #45890: origin
                    (not_at_c_p1)

                    ; #54865: origin
                    (at_c_p6)

                    ; #58041: <==negation-removal== 45890 (pos)
                    (not (at_c_p1))

                    ; #64716: <==negation-removal== 54865 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #32262: origin
                    (at_c_p7)

                    ; #45890: origin
                    (not_at_c_p1)

                    ; #20148: <==negation-removal== 32262 (pos)
                    (not (not_at_c_p7))

                    ; #58041: <==negation-removal== 45890 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #45890: origin
                    (not_at_c_p1)

                    ; #53385: origin
                    (at_c_p8)

                    ; #29045: <==negation-removal== 53385 (pos)
                    (not (not_at_c_p8))

                    ; #58041: <==negation-removal== 45890 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #45890: origin
                    (not_at_c_p1)

                    ; #81016: origin
                    (at_c_p9)

                    ; #58041: <==negation-removal== 45890 (pos)
                    (not (at_c_p1))

                    ; #65234: <==negation-removal== 81016 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #35775: origin
                    (not_at_c_p2)

                    ; #58041: origin
                    (at_c_p1)

                    ; #22399: <==negation-removal== 35775 (pos)
                    (not (at_c_p2))

                    ; #45890: <==negation-removal== 58041 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #22399: origin
                    (at_c_p2)

                    ; #35775: origin
                    (not_at_c_p2)

                    ; #22399: <==negation-removal== 35775 (pos)
                    (not (at_c_p2))

                    ; #35775: <==negation-removal== 22399 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #35775: origin
                    (not_at_c_p2)

                    ; #87223: origin
                    (at_c_p3)

                    ; #22399: <==negation-removal== 35775 (pos)
                    (not (at_c_p2))

                    ; #38935: <==negation-removal== 87223 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #19432: origin
                    (at_c_p4)

                    ; #35775: origin
                    (not_at_c_p2)

                    ; #22399: <==negation-removal== 35775 (pos)
                    (not (at_c_p2))

                    ; #38398: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #35775: origin
                    (not_at_c_p2)

                    ; #41217: origin
                    (at_c_p5)

                    ; #22399: <==negation-removal== 35775 (pos)
                    (not (at_c_p2))

                    ; #85451: <==negation-removal== 41217 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #35775: origin
                    (not_at_c_p2)

                    ; #54865: origin
                    (at_c_p6)

                    ; #22399: <==negation-removal== 35775 (pos)
                    (not (at_c_p2))

                    ; #64716: <==negation-removal== 54865 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #32262: origin
                    (at_c_p7)

                    ; #35775: origin
                    (not_at_c_p2)

                    ; #20148: <==negation-removal== 32262 (pos)
                    (not (not_at_c_p7))

                    ; #22399: <==negation-removal== 35775 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #35775: origin
                    (not_at_c_p2)

                    ; #53385: origin
                    (at_c_p8)

                    ; #22399: <==negation-removal== 35775 (pos)
                    (not (at_c_p2))

                    ; #29045: <==negation-removal== 53385 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #35775: origin
                    (not_at_c_p2)

                    ; #81016: origin
                    (at_c_p9)

                    ; #22399: <==negation-removal== 35775 (pos)
                    (not (at_c_p2))

                    ; #65234: <==negation-removal== 81016 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #38935: origin
                    (not_at_c_p3)

                    ; #58041: origin
                    (at_c_p1)

                    ; #45890: <==negation-removal== 58041 (pos)
                    (not (not_at_c_p1))

                    ; #87223: <==negation-removal== 38935 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #22399: origin
                    (at_c_p2)

                    ; #38935: origin
                    (not_at_c_p3)

                    ; #35775: <==negation-removal== 22399 (pos)
                    (not (not_at_c_p2))

                    ; #87223: <==negation-removal== 38935 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #38935: origin
                    (not_at_c_p3)

                    ; #87223: origin
                    (at_c_p3)

                    ; #38935: <==negation-removal== 87223 (pos)
                    (not (not_at_c_p3))

                    ; #87223: <==negation-removal== 38935 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #19432: origin
                    (at_c_p4)

                    ; #38935: origin
                    (not_at_c_p3)

                    ; #38398: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p4))

                    ; #87223: <==negation-removal== 38935 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #38935: origin
                    (not_at_c_p3)

                    ; #41217: origin
                    (at_c_p5)

                    ; #85451: <==negation-removal== 41217 (pos)
                    (not (not_at_c_p5))

                    ; #87223: <==negation-removal== 38935 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #38935: origin
                    (not_at_c_p3)

                    ; #54865: origin
                    (at_c_p6)

                    ; #64716: <==negation-removal== 54865 (pos)
                    (not (not_at_c_p6))

                    ; #87223: <==negation-removal== 38935 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #32262: origin
                    (at_c_p7)

                    ; #38935: origin
                    (not_at_c_p3)

                    ; #20148: <==negation-removal== 32262 (pos)
                    (not (not_at_c_p7))

                    ; #87223: <==negation-removal== 38935 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #38935: origin
                    (not_at_c_p3)

                    ; #53385: origin
                    (at_c_p8)

                    ; #29045: <==negation-removal== 53385 (pos)
                    (not (not_at_c_p8))

                    ; #87223: <==negation-removal== 38935 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #38935: origin
                    (not_at_c_p3)

                    ; #81016: origin
                    (at_c_p9)

                    ; #65234: <==negation-removal== 81016 (pos)
                    (not (not_at_c_p9))

                    ; #87223: <==negation-removal== 38935 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #38398: origin
                    (not_at_c_p4)

                    ; #58041: origin
                    (at_c_p1)

                    ; #19432: <==negation-removal== 38398 (pos)
                    (not (at_c_p4))

                    ; #45890: <==negation-removal== 58041 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #22399: origin
                    (at_c_p2)

                    ; #38398: origin
                    (not_at_c_p4)

                    ; #19432: <==negation-removal== 38398 (pos)
                    (not (at_c_p4))

                    ; #35775: <==negation-removal== 22399 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #38398: origin
                    (not_at_c_p4)

                    ; #87223: origin
                    (at_c_p3)

                    ; #19432: <==negation-removal== 38398 (pos)
                    (not (at_c_p4))

                    ; #38935: <==negation-removal== 87223 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #19432: origin
                    (at_c_p4)

                    ; #38398: origin
                    (not_at_c_p4)

                    ; #19432: <==negation-removal== 38398 (pos)
                    (not (at_c_p4))

                    ; #38398: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #38398: origin
                    (not_at_c_p4)

                    ; #41217: origin
                    (at_c_p5)

                    ; #19432: <==negation-removal== 38398 (pos)
                    (not (at_c_p4))

                    ; #85451: <==negation-removal== 41217 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #38398: origin
                    (not_at_c_p4)

                    ; #54865: origin
                    (at_c_p6)

                    ; #19432: <==negation-removal== 38398 (pos)
                    (not (at_c_p4))

                    ; #64716: <==negation-removal== 54865 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #32262: origin
                    (at_c_p7)

                    ; #38398: origin
                    (not_at_c_p4)

                    ; #19432: <==negation-removal== 38398 (pos)
                    (not (at_c_p4))

                    ; #20148: <==negation-removal== 32262 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #38398: origin
                    (not_at_c_p4)

                    ; #53385: origin
                    (at_c_p8)

                    ; #19432: <==negation-removal== 38398 (pos)
                    (not (at_c_p4))

                    ; #29045: <==negation-removal== 53385 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #38398: origin
                    (not_at_c_p4)

                    ; #81016: origin
                    (at_c_p9)

                    ; #19432: <==negation-removal== 38398 (pos)
                    (not (at_c_p4))

                    ; #65234: <==negation-removal== 81016 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #58041: origin
                    (at_c_p1)

                    ; #85451: origin
                    (not_at_c_p5)

                    ; #41217: <==negation-removal== 85451 (pos)
                    (not (at_c_p5))

                    ; #45890: <==negation-removal== 58041 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #22399: origin
                    (at_c_p2)

                    ; #85451: origin
                    (not_at_c_p5)

                    ; #35775: <==negation-removal== 22399 (pos)
                    (not (not_at_c_p2))

                    ; #41217: <==negation-removal== 85451 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #85451: origin
                    (not_at_c_p5)

                    ; #87223: origin
                    (at_c_p3)

                    ; #38935: <==negation-removal== 87223 (pos)
                    (not (not_at_c_p3))

                    ; #41217: <==negation-removal== 85451 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #19432: origin
                    (at_c_p4)

                    ; #85451: origin
                    (not_at_c_p5)

                    ; #38398: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p4))

                    ; #41217: <==negation-removal== 85451 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #41217: origin
                    (at_c_p5)

                    ; #85451: origin
                    (not_at_c_p5)

                    ; #41217: <==negation-removal== 85451 (pos)
                    (not (at_c_p5))

                    ; #85451: <==negation-removal== 41217 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #54865: origin
                    (at_c_p6)

                    ; #85451: origin
                    (not_at_c_p5)

                    ; #41217: <==negation-removal== 85451 (pos)
                    (not (at_c_p5))

                    ; #64716: <==negation-removal== 54865 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #32262: origin
                    (at_c_p7)

                    ; #85451: origin
                    (not_at_c_p5)

                    ; #20148: <==negation-removal== 32262 (pos)
                    (not (not_at_c_p7))

                    ; #41217: <==negation-removal== 85451 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #53385: origin
                    (at_c_p8)

                    ; #85451: origin
                    (not_at_c_p5)

                    ; #29045: <==negation-removal== 53385 (pos)
                    (not (not_at_c_p8))

                    ; #41217: <==negation-removal== 85451 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #81016: origin
                    (at_c_p9)

                    ; #85451: origin
                    (not_at_c_p5)

                    ; #41217: <==negation-removal== 85451 (pos)
                    (not (at_c_p5))

                    ; #65234: <==negation-removal== 81016 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #58041: origin
                    (at_c_p1)

                    ; #64716: origin
                    (not_at_c_p6)

                    ; #45890: <==negation-removal== 58041 (pos)
                    (not (not_at_c_p1))

                    ; #54865: <==negation-removal== 64716 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #22399: origin
                    (at_c_p2)

                    ; #64716: origin
                    (not_at_c_p6)

                    ; #35775: <==negation-removal== 22399 (pos)
                    (not (not_at_c_p2))

                    ; #54865: <==negation-removal== 64716 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #64716: origin
                    (not_at_c_p6)

                    ; #87223: origin
                    (at_c_p3)

                    ; #38935: <==negation-removal== 87223 (pos)
                    (not (not_at_c_p3))

                    ; #54865: <==negation-removal== 64716 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #19432: origin
                    (at_c_p4)

                    ; #64716: origin
                    (not_at_c_p6)

                    ; #38398: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p4))

                    ; #54865: <==negation-removal== 64716 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #41217: origin
                    (at_c_p5)

                    ; #64716: origin
                    (not_at_c_p6)

                    ; #54865: <==negation-removal== 64716 (pos)
                    (not (at_c_p6))

                    ; #85451: <==negation-removal== 41217 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #54865: origin
                    (at_c_p6)

                    ; #64716: origin
                    (not_at_c_p6)

                    ; #54865: <==negation-removal== 64716 (pos)
                    (not (at_c_p6))

                    ; #64716: <==negation-removal== 54865 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #32262: origin
                    (at_c_p7)

                    ; #64716: origin
                    (not_at_c_p6)

                    ; #20148: <==negation-removal== 32262 (pos)
                    (not (not_at_c_p7))

                    ; #54865: <==negation-removal== 64716 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #53385: origin
                    (at_c_p8)

                    ; #64716: origin
                    (not_at_c_p6)

                    ; #29045: <==negation-removal== 53385 (pos)
                    (not (not_at_c_p8))

                    ; #54865: <==negation-removal== 64716 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #64716: origin
                    (not_at_c_p6)

                    ; #81016: origin
                    (at_c_p9)

                    ; #54865: <==negation-removal== 64716 (pos)
                    (not (at_c_p6))

                    ; #65234: <==negation-removal== 81016 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #20148: origin
                    (not_at_c_p7)

                    ; #58041: origin
                    (at_c_p1)

                    ; #32262: <==negation-removal== 20148 (pos)
                    (not (at_c_p7))

                    ; #45890: <==negation-removal== 58041 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #20148: origin
                    (not_at_c_p7)

                    ; #22399: origin
                    (at_c_p2)

                    ; #32262: <==negation-removal== 20148 (pos)
                    (not (at_c_p7))

                    ; #35775: <==negation-removal== 22399 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #20148: origin
                    (not_at_c_p7)

                    ; #87223: origin
                    (at_c_p3)

                    ; #32262: <==negation-removal== 20148 (pos)
                    (not (at_c_p7))

                    ; #38935: <==negation-removal== 87223 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #19432: origin
                    (at_c_p4)

                    ; #20148: origin
                    (not_at_c_p7)

                    ; #32262: <==negation-removal== 20148 (pos)
                    (not (at_c_p7))

                    ; #38398: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #20148: origin
                    (not_at_c_p7)

                    ; #41217: origin
                    (at_c_p5)

                    ; #32262: <==negation-removal== 20148 (pos)
                    (not (at_c_p7))

                    ; #85451: <==negation-removal== 41217 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #20148: origin
                    (not_at_c_p7)

                    ; #54865: origin
                    (at_c_p6)

                    ; #32262: <==negation-removal== 20148 (pos)
                    (not (at_c_p7))

                    ; #64716: <==negation-removal== 54865 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #20148: origin
                    (not_at_c_p7)

                    ; #32262: origin
                    (at_c_p7)

                    ; #20148: <==negation-removal== 32262 (pos)
                    (not (not_at_c_p7))

                    ; #32262: <==negation-removal== 20148 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #20148: origin
                    (not_at_c_p7)

                    ; #53385: origin
                    (at_c_p8)

                    ; #29045: <==negation-removal== 53385 (pos)
                    (not (not_at_c_p8))

                    ; #32262: <==negation-removal== 20148 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #20148: origin
                    (not_at_c_p7)

                    ; #81016: origin
                    (at_c_p9)

                    ; #32262: <==negation-removal== 20148 (pos)
                    (not (at_c_p7))

                    ; #65234: <==negation-removal== 81016 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #29045: origin
                    (not_at_c_p8)

                    ; #58041: origin
                    (at_c_p1)

                    ; #45890: <==negation-removal== 58041 (pos)
                    (not (not_at_c_p1))

                    ; #53385: <==negation-removal== 29045 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #22399: origin
                    (at_c_p2)

                    ; #29045: origin
                    (not_at_c_p8)

                    ; #35775: <==negation-removal== 22399 (pos)
                    (not (not_at_c_p2))

                    ; #53385: <==negation-removal== 29045 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #29045: origin
                    (not_at_c_p8)

                    ; #87223: origin
                    (at_c_p3)

                    ; #38935: <==negation-removal== 87223 (pos)
                    (not (not_at_c_p3))

                    ; #53385: <==negation-removal== 29045 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #19432: origin
                    (at_c_p4)

                    ; #29045: origin
                    (not_at_c_p8)

                    ; #38398: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p4))

                    ; #53385: <==negation-removal== 29045 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #29045: origin
                    (not_at_c_p8)

                    ; #41217: origin
                    (at_c_p5)

                    ; #53385: <==negation-removal== 29045 (pos)
                    (not (at_c_p8))

                    ; #85451: <==negation-removal== 41217 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #29045: origin
                    (not_at_c_p8)

                    ; #54865: origin
                    (at_c_p6)

                    ; #53385: <==negation-removal== 29045 (pos)
                    (not (at_c_p8))

                    ; #64716: <==negation-removal== 54865 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #29045: origin
                    (not_at_c_p8)

                    ; #32262: origin
                    (at_c_p7)

                    ; #20148: <==negation-removal== 32262 (pos)
                    (not (not_at_c_p7))

                    ; #53385: <==negation-removal== 29045 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #29045: origin
                    (not_at_c_p8)

                    ; #53385: origin
                    (at_c_p8)

                    ; #29045: <==negation-removal== 53385 (pos)
                    (not (not_at_c_p8))

                    ; #53385: <==negation-removal== 29045 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #29045: origin
                    (not_at_c_p8)

                    ; #81016: origin
                    (at_c_p9)

                    ; #53385: <==negation-removal== 29045 (pos)
                    (not (at_c_p8))

                    ; #65234: <==negation-removal== 81016 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #58041: origin
                    (at_c_p1)

                    ; #65234: origin
                    (not_at_c_p9)

                    ; #45890: <==negation-removal== 58041 (pos)
                    (not (not_at_c_p1))

                    ; #81016: <==negation-removal== 65234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #22399: origin
                    (at_c_p2)

                    ; #65234: origin
                    (not_at_c_p9)

                    ; #35775: <==negation-removal== 22399 (pos)
                    (not (not_at_c_p2))

                    ; #81016: <==negation-removal== 65234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #65234: origin
                    (not_at_c_p9)

                    ; #87223: origin
                    (at_c_p3)

                    ; #38935: <==negation-removal== 87223 (pos)
                    (not (not_at_c_p3))

                    ; #81016: <==negation-removal== 65234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #19432: origin
                    (at_c_p4)

                    ; #65234: origin
                    (not_at_c_p9)

                    ; #38398: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p4))

                    ; #81016: <==negation-removal== 65234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #41217: origin
                    (at_c_p5)

                    ; #65234: origin
                    (not_at_c_p9)

                    ; #81016: <==negation-removal== 65234 (pos)
                    (not (at_c_p9))

                    ; #85451: <==negation-removal== 41217 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #54865: origin
                    (at_c_p6)

                    ; #65234: origin
                    (not_at_c_p9)

                    ; #64716: <==negation-removal== 54865 (pos)
                    (not (not_at_c_p6))

                    ; #81016: <==negation-removal== 65234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #32262: origin
                    (at_c_p7)

                    ; #65234: origin
                    (not_at_c_p9)

                    ; #20148: <==negation-removal== 32262 (pos)
                    (not (not_at_c_p7))

                    ; #81016: <==negation-removal== 65234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #53385: origin
                    (at_c_p8)

                    ; #65234: origin
                    (not_at_c_p9)

                    ; #29045: <==negation-removal== 53385 (pos)
                    (not (not_at_c_p8))

                    ; #81016: <==negation-removal== 65234 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #65234: origin
                    (not_at_c_p9)

                    ; #81016: origin
                    (at_c_p9)

                    ; #65234: <==negation-removal== 81016 (pos)
                    (not (not_at_c_p9))

                    ; #81016: <==negation-removal== 65234 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24374: <==commonly_known== 42754 (neg)
                    (Pb_checked_p1)

                    ; #30706: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #32481: <==commonly_known== 42034 (pos)
                    (Ba_checked_p1)

                    ; #35339: <==closure== 37875 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #37875: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #42034: origin
                    (checked_p1)

                    ; #52620: <==commonly_known== 42034 (pos)
                    (Bb_checked_p1)

                    ; #68253: <==commonly_known== 42754 (neg)
                    (Pa_checked_p1)

                    ; #80206: <==closure== 30706 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #83807: <==commonly_known== 42034 (pos)
                    (Bc_checked_p1)

                    ; #84499: <==commonly_known== 42754 (neg)
                    (Pc_checked_p1)

                    ; #16794: <==negation-removal== 35339 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #19522: <==uncertain_firing== 30706 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #19703: <==negation-removal== 52620 (pos)
                    (not (Pb_not_checked_p1))

                    ; #21402: <==uncertain_firing== 35339 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #26965: <==negation-removal== 37875 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #27168: <==negation-removal== 32481 (pos)
                    (not (Pa_not_checked_p1))

                    ; #39096: <==uncertain_firing== 37875 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #39551: <==negation-removal== 68253 (pos)
                    (not (Ba_not_checked_p1))

                    ; #42754: <==negation-removal== 42034 (pos)
                    (not (not_checked_p1))

                    ; #53717: <==negation-removal== 83807 (pos)
                    (not (Pc_not_checked_p1))

                    ; #59840: <==negation-removal== 84499 (pos)
                    (not (Bc_not_checked_p1))

                    ; #62092: <==uncertain_firing== 80206 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #63507: <==negation-removal== 80206 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #63781: <==negation-removal== 24374 (pos)
                    (not (Bb_not_checked_p1))

                    ; #84358: <==negation-removal== 30706 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10443: <==commonly_known== 89037 (pos)
                    (Bb_checked_p2)

                    ; #16723: <==commonly_known== 89037 (pos)
                    (Bc_checked_p2)

                    ; #20076: <==commonly_known== 59295 (neg)
                    (Pb_checked_p2)

                    ; #34835: <==commonly_known== 89037 (pos)
                    (Ba_checked_p2)

                    ; #41120: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #45060: <==commonly_known== 59295 (neg)
                    (Pc_checked_p2)

                    ; #54719: <==commonly_known== 59295 (neg)
                    (Pa_checked_p2)

                    ; #55221: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #65334: <==closure== 55221 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #86896: <==closure== 41120 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #89037: origin
                    (checked_p2)

                    ; #18052: <==uncertain_firing== 41120 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #21443: <==negation-removal== 16723 (pos)
                    (not (Pc_not_checked_p2))

                    ; #33887: <==negation-removal== 86896 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #35371: <==negation-removal== 45060 (pos)
                    (not (Bc_not_checked_p2))

                    ; #38546: <==negation-removal== 41120 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #39120: <==uncertain_firing== 65334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41397: <==negation-removal== 65334 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #54673: <==uncertain_firing== 86896 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #59295: <==negation-removal== 89037 (pos)
                    (not (not_checked_p2))

                    ; #65838: <==negation-removal== 20076 (pos)
                    (not (Bb_not_checked_p2))

                    ; #76063: <==negation-removal== 54719 (pos)
                    (not (Ba_not_checked_p2))

                    ; #81512: <==negation-removal== 55221 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #85846: <==negation-removal== 34835 (pos)
                    (not (Pa_not_checked_p2))

                    ; #88556: <==uncertain_firing== 55221 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #94588: <==negation-removal== 10443 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11736: <==commonly_known== 51412 (pos)
                    (Bb_checked_p3)

                    ; #14386: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #29829: <==commonly_known== 51412 (pos)
                    (Bc_checked_p3)

                    ; #32297: <==commonly_known== 51412 (pos)
                    (Ba_checked_p3)

                    ; #35500: <==commonly_known== 77277 (neg)
                    (Pc_checked_p3)

                    ; #35720: <==commonly_known== 77277 (neg)
                    (Pa_checked_p3)

                    ; #51412: origin
                    (checked_p3)

                    ; #66690: <==commonly_known== 77277 (neg)
                    (Pb_checked_p3)

                    ; #75848: <==closure== 14386 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #80057: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #83161: <==closure== 80057 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #13240: <==negation-removal== 14386 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #25300: <==negation-removal== 35500 (pos)
                    (not (Bc_not_checked_p3))

                    ; #25935: <==negation-removal== 75848 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #27187: <==negation-removal== 80057 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #40420: <==uncertain_firing== 80057 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #43675: <==negation-removal== 32297 (pos)
                    (not (Pa_not_checked_p3))

                    ; #44434: <==negation-removal== 11736 (pos)
                    (not (Pb_not_checked_p3))

                    ; #50716: <==uncertain_firing== 83161 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #54596: <==negation-removal== 29829 (pos)
                    (not (Pc_not_checked_p3))

                    ; #58065: <==uncertain_firing== 75848 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #64767: <==negation-removal== 66690 (pos)
                    (not (Bb_not_checked_p3))

                    ; #74367: <==negation-removal== 83161 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #77277: <==negation-removal== 51412 (pos)
                    (not (not_checked_p3))

                    ; #85093: <==uncertain_firing== 14386 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86640: <==negation-removal== 35720 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19376: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #23857: <==commonly_known== 84682 (neg)
                    (Pb_checked_p4)

                    ; #34147: <==commonly_known== 84682 (neg)
                    (Pc_checked_p4)

                    ; #40969: <==closure== 19376 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #48449: origin
                    (checked_p4)

                    ; #50445: <==closure== 60926 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #55029: <==commonly_known== 48449 (pos)
                    (Ba_checked_p4)

                    ; #60926: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #81389: <==commonly_known== 48449 (pos)
                    (Bb_checked_p4)

                    ; #84220: <==commonly_known== 84682 (neg)
                    (Pa_checked_p4)

                    ; #88239: <==commonly_known== 48449 (pos)
                    (Bc_checked_p4)

                    ; #15888: <==negation-removal== 84220 (pos)
                    (not (Ba_not_checked_p4))

                    ; #25009: <==uncertain_firing== 60926 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #27203: <==negation-removal== 40969 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #34767: <==negation-removal== 23857 (pos)
                    (not (Bb_not_checked_p4))

                    ; #35553: <==uncertain_firing== 50445 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #40294: <==uncertain_firing== 19376 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #47987: <==negation-removal== 50445 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #50842: <==negation-removal== 60926 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #55391: <==negation-removal== 88239 (pos)
                    (not (Pc_not_checked_p4))

                    ; #55920: <==negation-removal== 81389 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61338: <==negation-removal== 55029 (pos)
                    (not (Pa_not_checked_p4))

                    ; #72170: <==uncertain_firing== 40969 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #79621: <==negation-removal== 19376 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #84682: <==negation-removal== 48449 (pos)
                    (not (not_checked_p4))

                    ; #91595: <==negation-removal== 34147 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #26117: <==closure== 65454 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #26752: <==commonly_known== 62488 (pos)
                    (Bb_checked_p5)

                    ; #30417: <==commonly_known== 91909 (neg)
                    (Pa_checked_p5)

                    ; #53788: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #58797: <==commonly_known== 91909 (neg)
                    (Pb_checked_p5)

                    ; #62488: origin
                    (checked_p5)

                    ; #65454: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #70970: <==closure== 53788 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #79909: <==commonly_known== 62488 (pos)
                    (Bc_checked_p5)

                    ; #83642: <==commonly_known== 62488 (pos)
                    (Ba_checked_p5)

                    ; #84860: <==commonly_known== 91909 (neg)
                    (Pc_checked_p5)

                    ; #21524: <==negation-removal== 79909 (pos)
                    (not (Pc_not_checked_p5))

                    ; #29817: <==negation-removal== 65454 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #33229: <==uncertain_firing== 65454 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #36699: <==negation-removal== 83642 (pos)
                    (not (Pa_not_checked_p5))

                    ; #38389: <==negation-removal== 70970 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #48408: <==negation-removal== 84860 (pos)
                    (not (Bc_not_checked_p5))

                    ; #55411: <==uncertain_firing== 53788 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #57963: <==negation-removal== 30417 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58810: <==negation-removal== 53788 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #59037: <==negation-removal== 26117 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #61236: <==negation-removal== 58797 (pos)
                    (not (Bb_not_checked_p5))

                    ; #66312: <==uncertain_firing== 26117 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #86155: <==negation-removal== 26752 (pos)
                    (not (Pb_not_checked_p5))

                    ; #87443: <==uncertain_firing== 70970 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #91909: <==negation-removal== 62488 (pos)
                    (not (not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11148: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #18719: <==closure== 11148 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #27292: <==commonly_known== 33202 (neg)
                    (Pa_checked_p6)

                    ; #28264: <==commonly_known== 65218 (pos)
                    (Bc_checked_p6)

                    ; #28698: <==commonly_known== 65218 (pos)
                    (Bb_checked_p6)

                    ; #30311: <==commonly_known== 65218 (pos)
                    (Ba_checked_p6)

                    ; #65218: origin
                    (checked_p6)

                    ; #75577: <==commonly_known== 33202 (neg)
                    (Pc_checked_p6)

                    ; #79303: <==commonly_known== 33202 (neg)
                    (Pb_checked_p6)

                    ; #81270: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #83658: <==closure== 81270 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #11878: <==negation-removal== 11148 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #33202: <==negation-removal== 65218 (pos)
                    (not (not_checked_p6))

                    ; #34569: <==uncertain_firing== 11148 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #38081: <==negation-removal== 79303 (pos)
                    (not (Bb_not_checked_p6))

                    ; #38922: <==negation-removal== 75577 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39688: <==negation-removal== 27292 (pos)
                    (not (Ba_not_checked_p6))

                    ; #42666: <==negation-removal== 83658 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #45959: <==negation-removal== 28698 (pos)
                    (not (Pb_not_checked_p6))

                    ; #46503: <==negation-removal== 28264 (pos)
                    (not (Pc_not_checked_p6))

                    ; #54544: <==negation-removal== 81270 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #60671: <==uncertain_firing== 18719 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #79212: <==uncertain_firing== 81270 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #83684: <==uncertain_firing== 83658 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #87315: <==negation-removal== 30311 (pos)
                    (not (Pa_not_checked_p6))

                    ; #97014: <==negation-removal== 18719 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #27082: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #41853: origin
                    (checked_p7)

                    ; #43848: <==commonly_known== 41853 (pos)
                    (Bc_checked_p7)

                    ; #45175: <==closure== 75521 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #48151: <==commonly_known== 16974 (neg)
                    (Pb_checked_p7)

                    ; #65965: <==commonly_known== 16974 (neg)
                    (Pc_checked_p7)

                    ; #69088: <==commonly_known== 41853 (pos)
                    (Ba_checked_p7)

                    ; #75521: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #77944: <==closure== 27082 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #84741: <==commonly_known== 16974 (neg)
                    (Pa_checked_p7)

                    ; #90849: <==commonly_known== 41853 (pos)
                    (Bb_checked_p7)

                    ; #16974: <==negation-removal== 41853 (pos)
                    (not (not_checked_p7))

                    ; #22207: <==negation-removal== 77944 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #24108: <==uncertain_firing== 27082 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #25022: <==negation-removal== 45175 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #27952: <==negation-removal== 27082 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #32118: <==negation-removal== 65965 (pos)
                    (not (Bc_not_checked_p7))

                    ; #42539: <==negation-removal== 90849 (pos)
                    (not (Pb_not_checked_p7))

                    ; #51205: <==uncertain_firing== 45175 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #56543: <==negation-removal== 75521 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #78395: <==negation-removal== 43848 (pos)
                    (not (Pc_not_checked_p7))

                    ; #80887: <==negation-removal== 48151 (pos)
                    (not (Bb_not_checked_p7))

                    ; #81812: <==negation-removal== 69088 (pos)
                    (not (Pa_not_checked_p7))

                    ; #83051: <==uncertain_firing== 77944 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #91125: <==uncertain_firing== 75521 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #91514: <==negation-removal== 84741 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12949: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #28157: origin
                    (checked_p8)

                    ; #35123: <==commonly_known== 44629 (neg)
                    (Pc_checked_p8)

                    ; #37089: <==commonly_known== 28157 (pos)
                    (Bb_checked_p8)

                    ; #46540: <==commonly_known== 28157 (pos)
                    (Ba_checked_p8)

                    ; #55699: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #59962: <==commonly_known== 44629 (neg)
                    (Pb_checked_p8)

                    ; #67104: <==closure== 12949 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #69673: <==commonly_known== 28157 (pos)
                    (Bc_checked_p8)

                    ; #78389: <==closure== 55699 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #92690: <==commonly_known== 44629 (neg)
                    (Pa_checked_p8)

                    ; #10182: <==uncertain_firing== 12949 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #10818: <==negation-removal== 69673 (pos)
                    (not (Pc_not_checked_p8))

                    ; #11609: <==negation-removal== 55699 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #20883: <==negation-removal== 92690 (pos)
                    (not (Ba_not_checked_p8))

                    ; #29749: <==uncertain_firing== 78389 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #30203: <==negation-removal== 12949 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #43499: <==negation-removal== 67104 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #43503: <==negation-removal== 37089 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44629: <==negation-removal== 28157 (pos)
                    (not (not_checked_p8))

                    ; #56275: <==negation-removal== 35123 (pos)
                    (not (Bc_not_checked_p8))

                    ; #63594: <==negation-removal== 59962 (pos)
                    (not (Bb_not_checked_p8))

                    ; #68239: <==negation-removal== 78389 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #71598: <==uncertain_firing== 55699 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #83494: <==uncertain_firing== 67104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #87203: <==negation-removal== 46540 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #18407: <==commonly_known== 78269 (pos)
                    (Bc_checked_p9)

                    ; #19295: <==commonly_known== 10366 (neg)
                    (Pa_checked_p9)

                    ; #29777: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #47055: <==commonly_known== 78269 (pos)
                    (Bb_checked_p9)

                    ; #57121: <==closure== 29777 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #58221: <==commonly_known== 78269 (pos)
                    (Ba_checked_p9)

                    ; #59075: <==commonly_known== 10366 (neg)
                    (Pb_checked_p9)

                    ; #70506: <==closure== 90464 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #75290: <==commonly_known== 10366 (neg)
                    (Pc_checked_p9)

                    ; #78269: origin
                    (checked_p9)

                    ; #90464: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #10366: <==negation-removal== 78269 (pos)
                    (not (not_checked_p9))

                    ; #13772: <==negation-removal== 59075 (pos)
                    (not (Bb_not_checked_p9))

                    ; #15611: <==uncertain_firing== 90464 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #16032: <==negation-removal== 57121 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #22795: <==uncertain_firing== 70506 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #35058: <==uncertain_firing== 57121 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #63213: <==uncertain_firing== 29777 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #64427: <==negation-removal== 47055 (pos)
                    (not (Pb_not_checked_p9))

                    ; #67588: <==negation-removal== 70506 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #75647: <==negation-removal== 19295 (pos)
                    (not (Ba_not_checked_p9))

                    ; #75914: <==negation-removal== 75290 (pos)
                    (not (Bc_not_checked_p9))

                    ; #77372: <==negation-removal== 90464 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #79930: <==negation-removal== 29777 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #89437: <==negation-removal== 18407 (pos)
                    (not (Pc_not_checked_p9))

                    ; #90984: <==negation-removal== 58221 (pos)
                    (not (Pa_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24374: <==commonly_known== 42754 (neg)
                    (Pb_checked_p1)

                    ; #32481: <==commonly_known== 42034 (pos)
                    (Ba_checked_p1)

                    ; #34206: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #41308: <==closure== 34206 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #42034: origin
                    (checked_p1)

                    ; #52620: <==commonly_known== 42034 (pos)
                    (Bb_checked_p1)

                    ; #67622: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #68253: <==commonly_known== 42754 (neg)
                    (Pa_checked_p1)

                    ; #69991: <==closure== 67622 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #83807: <==commonly_known== 42034 (pos)
                    (Bc_checked_p1)

                    ; #84499: <==commonly_known== 42754 (neg)
                    (Pc_checked_p1)

                    ; #19703: <==negation-removal== 52620 (pos)
                    (not (Pb_not_checked_p1))

                    ; #23596: <==uncertain_firing== 69991 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #27168: <==negation-removal== 32481 (pos)
                    (not (Pa_not_checked_p1))

                    ; #36336: <==uncertain_firing== 41308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #39551: <==negation-removal== 68253 (pos)
                    (not (Ba_not_checked_p1))

                    ; #42754: <==negation-removal== 42034 (pos)
                    (not (not_checked_p1))

                    ; #45442: <==negation-removal== 34206 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #53717: <==negation-removal== 83807 (pos)
                    (not (Pc_not_checked_p1))

                    ; #59840: <==negation-removal== 84499 (pos)
                    (not (Bc_not_checked_p1))

                    ; #59913: <==negation-removal== 41308 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #63781: <==negation-removal== 24374 (pos)
                    (not (Bb_not_checked_p1))

                    ; #71288: <==uncertain_firing== 34206 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #73815: <==negation-removal== 67622 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #86451: <==uncertain_firing== 67622 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #91960: <==negation-removal== 69991 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10443: <==commonly_known== 89037 (pos)
                    (Bb_checked_p2)

                    ; #10932: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #16723: <==commonly_known== 89037 (pos)
                    (Bc_checked_p2)

                    ; #20076: <==commonly_known== 59295 (neg)
                    (Pb_checked_p2)

                    ; #32063: <==closure== 42515 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #34835: <==commonly_known== 89037 (pos)
                    (Ba_checked_p2)

                    ; #42515: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #45060: <==commonly_known== 59295 (neg)
                    (Pc_checked_p2)

                    ; #54719: <==commonly_known== 59295 (neg)
                    (Pa_checked_p2)

                    ; #73940: <==closure== 10932 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #89037: origin
                    (checked_p2)

                    ; #21443: <==negation-removal== 16723 (pos)
                    (not (Pc_not_checked_p2))

                    ; #21903: <==negation-removal== 32063 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #27820: <==uncertain_firing== 73940 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #35371: <==negation-removal== 45060 (pos)
                    (not (Bc_not_checked_p2))

                    ; #36834: <==uncertain_firing== 32063 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #40210: <==negation-removal== 42515 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #42838: <==uncertain_firing== 42515 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #54681: <==negation-removal== 73940 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #59295: <==negation-removal== 89037 (pos)
                    (not (not_checked_p2))

                    ; #65838: <==negation-removal== 20076 (pos)
                    (not (Bb_not_checked_p2))

                    ; #68589: <==uncertain_firing== 10932 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #70644: <==negation-removal== 10932 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #76063: <==negation-removal== 54719 (pos)
                    (not (Ba_not_checked_p2))

                    ; #85846: <==negation-removal== 34835 (pos)
                    (not (Pa_not_checked_p2))

                    ; #94588: <==negation-removal== 10443 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11736: <==commonly_known== 51412 (pos)
                    (Bb_checked_p3)

                    ; #22663: <==closure== 58973 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #26392: <==closure== 43808 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #29829: <==commonly_known== 51412 (pos)
                    (Bc_checked_p3)

                    ; #32297: <==commonly_known== 51412 (pos)
                    (Ba_checked_p3)

                    ; #35500: <==commonly_known== 77277 (neg)
                    (Pc_checked_p3)

                    ; #35720: <==commonly_known== 77277 (neg)
                    (Pa_checked_p3)

                    ; #43808: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #51412: origin
                    (checked_p3)

                    ; #58973: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #66690: <==commonly_known== 77277 (neg)
                    (Pb_checked_p3)

                    ; #18690: <==negation-removal== 43808 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #21614: <==negation-removal== 22663 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #25300: <==negation-removal== 35500 (pos)
                    (not (Bc_not_checked_p3))

                    ; #26994: <==negation-removal== 26392 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #43675: <==negation-removal== 32297 (pos)
                    (not (Pa_not_checked_p3))

                    ; #44434: <==negation-removal== 11736 (pos)
                    (not (Pb_not_checked_p3))

                    ; #54596: <==negation-removal== 29829 (pos)
                    (not (Pc_not_checked_p3))

                    ; #60606: <==uncertain_firing== 22663 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #63379: <==uncertain_firing== 43808 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #64767: <==negation-removal== 66690 (pos)
                    (not (Bb_not_checked_p3))

                    ; #74555: <==uncertain_firing== 58973 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #77277: <==negation-removal== 51412 (pos)
                    (not (not_checked_p3))

                    ; #85023: <==uncertain_firing== 26392 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #86640: <==negation-removal== 35720 (pos)
                    (not (Ba_not_checked_p3))

                    ; #95726: <==negation-removal== 58973 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #23857: <==commonly_known== 84682 (neg)
                    (Pb_checked_p4)

                    ; #34147: <==commonly_known== 84682 (neg)
                    (Pc_checked_p4)

                    ; #40970: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #43547: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #48449: origin
                    (checked_p4)

                    ; #55029: <==commonly_known== 48449 (pos)
                    (Ba_checked_p4)

                    ; #81389: <==commonly_known== 48449 (pos)
                    (Bb_checked_p4)

                    ; #84220: <==commonly_known== 84682 (neg)
                    (Pa_checked_p4)

                    ; #84845: <==closure== 40970 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #88239: <==commonly_known== 48449 (pos)
                    (Bc_checked_p4)

                    ; #89516: <==closure== 43547 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #12094: <==negation-removal== 84845 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #12765: <==negation-removal== 43547 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #15888: <==negation-removal== 84220 (pos)
                    (not (Ba_not_checked_p4))

                    ; #27207: <==negation-removal== 40970 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #34767: <==negation-removal== 23857 (pos)
                    (not (Bb_not_checked_p4))

                    ; #42882: <==uncertain_firing== 43547 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #50023: <==uncertain_firing== 84845 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #50893: <==uncertain_firing== 89516 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #55391: <==negation-removal== 88239 (pos)
                    (not (Pc_not_checked_p4))

                    ; #55920: <==negation-removal== 81389 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61338: <==negation-removal== 55029 (pos)
                    (not (Pa_not_checked_p4))

                    ; #66045: <==uncertain_firing== 40970 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #84682: <==negation-removal== 48449 (pos)
                    (not (not_checked_p4))

                    ; #91595: <==negation-removal== 34147 (pos)
                    (not (Bc_not_checked_p4))

                    ; #95364: <==negation-removal== 89516 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #26752: <==commonly_known== 62488 (pos)
                    (Bb_checked_p5)

                    ; #30417: <==commonly_known== 91909 (neg)
                    (Pa_checked_p5)

                    ; #41037: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #58797: <==commonly_known== 91909 (neg)
                    (Pb_checked_p5)

                    ; #62488: origin
                    (checked_p5)

                    ; #66393: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #79793: <==closure== 66393 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #79909: <==commonly_known== 62488 (pos)
                    (Bc_checked_p5)

                    ; #83152: <==closure== 41037 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #83642: <==commonly_known== 62488 (pos)
                    (Ba_checked_p5)

                    ; #84860: <==commonly_known== 91909 (neg)
                    (Pc_checked_p5)

                    ; #21524: <==negation-removal== 79909 (pos)
                    (not (Pc_not_checked_p5))

                    ; #36699: <==negation-removal== 83642 (pos)
                    (not (Pa_not_checked_p5))

                    ; #48084: <==negation-removal== 41037 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #48408: <==negation-removal== 84860 (pos)
                    (not (Bc_not_checked_p5))

                    ; #57963: <==negation-removal== 30417 (pos)
                    (not (Ba_not_checked_p5))

                    ; #61236: <==negation-removal== 58797 (pos)
                    (not (Bb_not_checked_p5))

                    ; #61899: <==negation-removal== 66393 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #67633: <==negation-removal== 79793 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #78110: <==uncertain_firing== 79793 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #84942: <==uncertain_firing== 41037 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #84948: <==uncertain_firing== 66393 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #86155: <==negation-removal== 26752 (pos)
                    (not (Pb_not_checked_p5))

                    ; #91709: <==uncertain_firing== 83152 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #91909: <==negation-removal== 62488 (pos)
                    (not (not_checked_p5))

                    ; #91951: <==negation-removal== 83152 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #27292: <==commonly_known== 33202 (neg)
                    (Pa_checked_p6)

                    ; #28264: <==commonly_known== 65218 (pos)
                    (Bc_checked_p6)

                    ; #28698: <==commonly_known== 65218 (pos)
                    (Bb_checked_p6)

                    ; #30287: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #30311: <==commonly_known== 65218 (pos)
                    (Ba_checked_p6)

                    ; #46086: <==closure== 87273 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #65218: origin
                    (checked_p6)

                    ; #69621: <==closure== 30287 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #75577: <==commonly_known== 33202 (neg)
                    (Pc_checked_p6)

                    ; #79303: <==commonly_known== 33202 (neg)
                    (Pb_checked_p6)

                    ; #87273: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #18551: <==negation-removal== 46086 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #28833: <==uncertain_firing== 46086 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #28943: <==uncertain_firing== 30287 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #32875: <==negation-removal== 69621 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #33202: <==negation-removal== 65218 (pos)
                    (not (not_checked_p6))

                    ; #36401: <==uncertain_firing== 69621 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #38081: <==negation-removal== 79303 (pos)
                    (not (Bb_not_checked_p6))

                    ; #38922: <==negation-removal== 75577 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39688: <==negation-removal== 27292 (pos)
                    (not (Ba_not_checked_p6))

                    ; #45959: <==negation-removal== 28698 (pos)
                    (not (Pb_not_checked_p6))

                    ; #46503: <==negation-removal== 28264 (pos)
                    (not (Pc_not_checked_p6))

                    ; #69548: <==uncertain_firing== 87273 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #70764: <==negation-removal== 30287 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #86549: <==negation-removal== 87273 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #87315: <==negation-removal== 30311 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #37550: <==closure== 64080 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #40959: <==closure== 42104 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #41853: origin
                    (checked_p7)

                    ; #42104: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #43848: <==commonly_known== 41853 (pos)
                    (Bc_checked_p7)

                    ; #48151: <==commonly_known== 16974 (neg)
                    (Pb_checked_p7)

                    ; #64080: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #65965: <==commonly_known== 16974 (neg)
                    (Pc_checked_p7)

                    ; #69088: <==commonly_known== 41853 (pos)
                    (Ba_checked_p7)

                    ; #84741: <==commonly_known== 16974 (neg)
                    (Pa_checked_p7)

                    ; #90849: <==commonly_known== 41853 (pos)
                    (Bb_checked_p7)

                    ; #15425: <==negation-removal== 40959 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #16974: <==negation-removal== 41853 (pos)
                    (not (not_checked_p7))

                    ; #18434: <==uncertain_firing== 40959 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #22191: <==negation-removal== 37550 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #32118: <==negation-removal== 65965 (pos)
                    (not (Bc_not_checked_p7))

                    ; #39563: <==uncertain_firing== 37550 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #42539: <==negation-removal== 90849 (pos)
                    (not (Pb_not_checked_p7))

                    ; #47723: <==negation-removal== 42104 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #65813: <==negation-removal== 64080 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #69988: <==uncertain_firing== 42104 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #72789: <==uncertain_firing== 64080 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #78395: <==negation-removal== 43848 (pos)
                    (not (Pc_not_checked_p7))

                    ; #80887: <==negation-removal== 48151 (pos)
                    (not (Bb_not_checked_p7))

                    ; #81812: <==negation-removal== 69088 (pos)
                    (not (Pa_not_checked_p7))

                    ; #91514: <==negation-removal== 84741 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #28157: origin
                    (checked_p8)

                    ; #29368: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #31446: <==closure== 40259 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #35123: <==commonly_known== 44629 (neg)
                    (Pc_checked_p8)

                    ; #37089: <==commonly_known== 28157 (pos)
                    (Bb_checked_p8)

                    ; #40259: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #46540: <==commonly_known== 28157 (pos)
                    (Ba_checked_p8)

                    ; #59962: <==commonly_known== 44629 (neg)
                    (Pb_checked_p8)

                    ; #67616: <==closure== 29368 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #69673: <==commonly_known== 28157 (pos)
                    (Bc_checked_p8)

                    ; #92690: <==commonly_known== 44629 (neg)
                    (Pa_checked_p8)

                    ; #10818: <==negation-removal== 69673 (pos)
                    (not (Pc_not_checked_p8))

                    ; #12340: <==uncertain_firing== 29368 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #13373: <==negation-removal== 67616 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #13650: <==uncertain_firing== 40259 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #15370: <==negation-removal== 31446 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #20883: <==negation-removal== 92690 (pos)
                    (not (Ba_not_checked_p8))

                    ; #30484: <==uncertain_firing== 31446 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #43503: <==negation-removal== 37089 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44629: <==negation-removal== 28157 (pos)
                    (not (not_checked_p8))

                    ; #53117: <==uncertain_firing== 67616 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56275: <==negation-removal== 35123 (pos)
                    (not (Bc_not_checked_p8))

                    ; #63454: <==negation-removal== 29368 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #63594: <==negation-removal== 59962 (pos)
                    (not (Bb_not_checked_p8))

                    ; #70363: <==negation-removal== 40259 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #87203: <==negation-removal== 46540 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #18407: <==commonly_known== 78269 (pos)
                    (Bc_checked_p9)

                    ; #19295: <==commonly_known== 10366 (neg)
                    (Pa_checked_p9)

                    ; #24899: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #36309: <==closure== 54774 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #47055: <==commonly_known== 78269 (pos)
                    (Bb_checked_p9)

                    ; #54774: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #58221: <==commonly_known== 78269 (pos)
                    (Ba_checked_p9)

                    ; #59075: <==commonly_known== 10366 (neg)
                    (Pb_checked_p9)

                    ; #75290: <==commonly_known== 10366 (neg)
                    (Pc_checked_p9)

                    ; #78269: origin
                    (checked_p9)

                    ; #81192: <==closure== 24899 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #10366: <==negation-removal== 78269 (pos)
                    (not (not_checked_p9))

                    ; #13772: <==negation-removal== 59075 (pos)
                    (not (Bb_not_checked_p9))

                    ; #16213: <==uncertain_firing== 36309 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #32496: <==uncertain_firing== 24899 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #59854: <==negation-removal== 24899 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #64427: <==negation-removal== 47055 (pos)
                    (not (Pb_not_checked_p9))

                    ; #66233: <==negation-removal== 36309 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #66777: <==negation-removal== 54774 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #72690: <==uncertain_firing== 81192 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #75647: <==negation-removal== 19295 (pos)
                    (not (Ba_not_checked_p9))

                    ; #75798: <==uncertain_firing== 54774 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #75914: <==negation-removal== 75290 (pos)
                    (not (Bc_not_checked_p9))

                    ; #89437: <==negation-removal== 18407 (pos)
                    (not (Pc_not_checked_p9))

                    ; #90984: <==negation-removal== 58221 (pos)
                    (not (Pa_not_checked_p9))

                    ; #91279: <==negation-removal== 81192 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12110: <==closure== 88478 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #22542: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #24374: <==commonly_known== 42754 (neg)
                    (Pb_checked_p1)

                    ; #32481: <==commonly_known== 42034 (pos)
                    (Ba_checked_p1)

                    ; #39853: <==closure== 22542 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #42034: origin
                    (checked_p1)

                    ; #52620: <==commonly_known== 42034 (pos)
                    (Bb_checked_p1)

                    ; #68253: <==commonly_known== 42754 (neg)
                    (Pa_checked_p1)

                    ; #83807: <==commonly_known== 42034 (pos)
                    (Bc_checked_p1)

                    ; #84499: <==commonly_known== 42754 (neg)
                    (Pc_checked_p1)

                    ; #88478: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #19703: <==negation-removal== 52620 (pos)
                    (not (Pb_not_checked_p1))

                    ; #23653: <==negation-removal== 12110 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #26235: <==uncertain_firing== 22542 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #27168: <==negation-removal== 32481 (pos)
                    (not (Pa_not_checked_p1))

                    ; #33239: <==negation-removal== 22542 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #39551: <==negation-removal== 68253 (pos)
                    (not (Ba_not_checked_p1))

                    ; #42754: <==negation-removal== 42034 (pos)
                    (not (not_checked_p1))

                    ; #45195: <==negation-removal== 88478 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #46780: <==uncertain_firing== 39853 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #52626: <==uncertain_firing== 88478 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #53717: <==negation-removal== 83807 (pos)
                    (not (Pc_not_checked_p1))

                    ; #58536: <==uncertain_firing== 12110 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #59840: <==negation-removal== 84499 (pos)
                    (not (Bc_not_checked_p1))

                    ; #63781: <==negation-removal== 24374 (pos)
                    (not (Bb_not_checked_p1))

                    ; #76728: <==negation-removal== 39853 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10443: <==commonly_known== 89037 (pos)
                    (Bb_checked_p2)

                    ; #10460: <==closure== 17741 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #15796: <==closure== 74441 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #16723: <==commonly_known== 89037 (pos)
                    (Bc_checked_p2)

                    ; #17741: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #20076: <==commonly_known== 59295 (neg)
                    (Pb_checked_p2)

                    ; #34835: <==commonly_known== 89037 (pos)
                    (Ba_checked_p2)

                    ; #45060: <==commonly_known== 59295 (neg)
                    (Pc_checked_p2)

                    ; #54719: <==commonly_known== 59295 (neg)
                    (Pa_checked_p2)

                    ; #74441: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #89037: origin
                    (checked_p2)

                    ; #21443: <==negation-removal== 16723 (pos)
                    (not (Pc_not_checked_p2))

                    ; #34843: <==uncertain_firing== 10460 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #35371: <==negation-removal== 45060 (pos)
                    (not (Bc_not_checked_p2))

                    ; #48356: <==negation-removal== 17741 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #55476: <==negation-removal== 10460 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #59295: <==negation-removal== 89037 (pos)
                    (not (not_checked_p2))

                    ; #59317: <==uncertain_firing== 17741 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #65838: <==negation-removal== 20076 (pos)
                    (not (Bb_not_checked_p2))

                    ; #70859: <==uncertain_firing== 15796 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #76063: <==negation-removal== 54719 (pos)
                    (not (Ba_not_checked_p2))

                    ; #76273: <==uncertain_firing== 74441 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #77562: <==negation-removal== 15796 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #77878: <==negation-removal== 74441 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #85846: <==negation-removal== 34835 (pos)
                    (not (Pa_not_checked_p2))

                    ; #94588: <==negation-removal== 10443 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11736: <==commonly_known== 51412 (pos)
                    (Bb_checked_p3)

                    ; #26808: <==closure== 78887 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #29829: <==commonly_known== 51412 (pos)
                    (Bc_checked_p3)

                    ; #32297: <==commonly_known== 51412 (pos)
                    (Ba_checked_p3)

                    ; #35500: <==commonly_known== 77277 (neg)
                    (Pc_checked_p3)

                    ; #35720: <==commonly_known== 77277 (neg)
                    (Pa_checked_p3)

                    ; #47421: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #51412: origin
                    (checked_p3)

                    ; #66690: <==commonly_known== 77277 (neg)
                    (Pb_checked_p3)

                    ; #73498: <==closure== 47421 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #78887: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #11484: <==negation-removal== 47421 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #13562: <==negation-removal== 78887 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #17202: <==uncertain_firing== 47421 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #24254: <==negation-removal== 73498 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #25300: <==negation-removal== 35500 (pos)
                    (not (Bc_not_checked_p3))

                    ; #31484: <==uncertain_firing== 26808 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #43675: <==negation-removal== 32297 (pos)
                    (not (Pa_not_checked_p3))

                    ; #44434: <==negation-removal== 11736 (pos)
                    (not (Pb_not_checked_p3))

                    ; #54596: <==negation-removal== 29829 (pos)
                    (not (Pc_not_checked_p3))

                    ; #64767: <==negation-removal== 66690 (pos)
                    (not (Bb_not_checked_p3))

                    ; #71891: <==uncertain_firing== 78887 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #77277: <==negation-removal== 51412 (pos)
                    (not (not_checked_p3))

                    ; #79004: <==negation-removal== 26808 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #85202: <==uncertain_firing== 73498 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #86640: <==negation-removal== 35720 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11068: <==closure== 22313 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #16727: <==closure== 65069 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #22313: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #23857: <==commonly_known== 84682 (neg)
                    (Pb_checked_p4)

                    ; #34147: <==commonly_known== 84682 (neg)
                    (Pc_checked_p4)

                    ; #48449: origin
                    (checked_p4)

                    ; #55029: <==commonly_known== 48449 (pos)
                    (Ba_checked_p4)

                    ; #65069: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #81389: <==commonly_known== 48449 (pos)
                    (Bb_checked_p4)

                    ; #84220: <==commonly_known== 84682 (neg)
                    (Pa_checked_p4)

                    ; #88239: <==commonly_known== 48449 (pos)
                    (Bc_checked_p4)

                    ; #14894: <==uncertain_firing== 65069 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #15888: <==negation-removal== 84220 (pos)
                    (not (Ba_not_checked_p4))

                    ; #23866: <==uncertain_firing== 11068 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #24301: <==negation-removal== 22313 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #29955: <==negation-removal== 16727 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #34767: <==negation-removal== 23857 (pos)
                    (not (Bb_not_checked_p4))

                    ; #51212: <==negation-removal== 65069 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #55391: <==negation-removal== 88239 (pos)
                    (not (Pc_not_checked_p4))

                    ; #55920: <==negation-removal== 81389 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61338: <==negation-removal== 55029 (pos)
                    (not (Pa_not_checked_p4))

                    ; #69975: <==uncertain_firing== 16727 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #71245: <==negation-removal== 11068 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #84682: <==negation-removal== 48449 (pos)
                    (not (not_checked_p4))

                    ; #88636: <==uncertain_firing== 22313 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #91595: <==negation-removal== 34147 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #26752: <==commonly_known== 62488 (pos)
                    (Bb_checked_p5)

                    ; #30417: <==commonly_known== 91909 (neg)
                    (Pa_checked_p5)

                    ; #36430: <==closure== 81837 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #58797: <==commonly_known== 91909 (neg)
                    (Pb_checked_p5)

                    ; #62488: origin
                    (checked_p5)

                    ; #77972: <==closure== 81239 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #79909: <==commonly_known== 62488 (pos)
                    (Bc_checked_p5)

                    ; #81239: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #81837: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #83642: <==commonly_known== 62488 (pos)
                    (Ba_checked_p5)

                    ; #84860: <==commonly_known== 91909 (neg)
                    (Pc_checked_p5)

                    ; #14553: <==negation-removal== 36430 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #16962: <==negation-removal== 81837 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #21524: <==negation-removal== 79909 (pos)
                    (not (Pc_not_checked_p5))

                    ; #25298: <==uncertain_firing== 81837 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #31694: <==uncertain_firing== 36430 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #32107: <==uncertain_firing== 81239 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #35743: <==uncertain_firing== 77972 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #36699: <==negation-removal== 83642 (pos)
                    (not (Pa_not_checked_p5))

                    ; #48408: <==negation-removal== 84860 (pos)
                    (not (Bc_not_checked_p5))

                    ; #57963: <==negation-removal== 30417 (pos)
                    (not (Ba_not_checked_p5))

                    ; #61236: <==negation-removal== 58797 (pos)
                    (not (Bb_not_checked_p5))

                    ; #61881: <==negation-removal== 81239 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #67690: <==negation-removal== 77972 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #86155: <==negation-removal== 26752 (pos)
                    (not (Pb_not_checked_p5))

                    ; #91909: <==negation-removal== 62488 (pos)
                    (not (not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #27292: <==commonly_known== 33202 (neg)
                    (Pa_checked_p6)

                    ; #28264: <==commonly_known== 65218 (pos)
                    (Bc_checked_p6)

                    ; #28698: <==commonly_known== 65218 (pos)
                    (Bb_checked_p6)

                    ; #30311: <==commonly_known== 65218 (pos)
                    (Ba_checked_p6)

                    ; #41414: <==closure== 55947 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #55947: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #65218: origin
                    (checked_p6)

                    ; #74806: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #75577: <==commonly_known== 33202 (neg)
                    (Pc_checked_p6)

                    ; #78553: <==closure== 74806 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #79303: <==commonly_known== 33202 (neg)
                    (Pb_checked_p6)

                    ; #13282: <==uncertain_firing== 41414 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #17171: <==negation-removal== 74806 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #20899: <==uncertain_firing== 55947 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #33201: <==uncertain_firing== 78553 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #33202: <==negation-removal== 65218 (pos)
                    (not (not_checked_p6))

                    ; #38081: <==negation-removal== 79303 (pos)
                    (not (Bb_not_checked_p6))

                    ; #38922: <==negation-removal== 75577 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39688: <==negation-removal== 27292 (pos)
                    (not (Ba_not_checked_p6))

                    ; #43319: <==negation-removal== 55947 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #45959: <==negation-removal== 28698 (pos)
                    (not (Pb_not_checked_p6))

                    ; #46503: <==negation-removal== 28264 (pos)
                    (not (Pc_not_checked_p6))

                    ; #61267: <==negation-removal== 78553 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #78047: <==uncertain_firing== 74806 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87315: <==negation-removal== 30311 (pos)
                    (not (Pa_not_checked_p6))

                    ; #87770: <==negation-removal== 41414 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #41853: origin
                    (checked_p7)

                    ; #43848: <==commonly_known== 41853 (pos)
                    (Bc_checked_p7)

                    ; #48151: <==commonly_known== 16974 (neg)
                    (Pb_checked_p7)

                    ; #57998: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #59741: <==closure== 57998 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #65965: <==commonly_known== 16974 (neg)
                    (Pc_checked_p7)

                    ; #66118: <==closure== 78745 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #69088: <==commonly_known== 41853 (pos)
                    (Ba_checked_p7)

                    ; #78745: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #84741: <==commonly_known== 16974 (neg)
                    (Pa_checked_p7)

                    ; #90849: <==commonly_known== 41853 (pos)
                    (Bb_checked_p7)

                    ; #16974: <==negation-removal== 41853 (pos)
                    (not (not_checked_p7))

                    ; #17839: <==negation-removal== 78745 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #18047: <==negation-removal== 59741 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #31685: <==uncertain_firing== 57998 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #32118: <==negation-removal== 65965 (pos)
                    (not (Bc_not_checked_p7))

                    ; #33780: <==uncertain_firing== 59741 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #42539: <==negation-removal== 90849 (pos)
                    (not (Pb_not_checked_p7))

                    ; #45783: <==negation-removal== 57998 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #55591: <==uncertain_firing== 78745 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #58494: <==negation-removal== 66118 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #78395: <==negation-removal== 43848 (pos)
                    (not (Pc_not_checked_p7))

                    ; #80887: <==negation-removal== 48151 (pos)
                    (not (Bb_not_checked_p7))

                    ; #81090: <==uncertain_firing== 66118 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #81812: <==negation-removal== 69088 (pos)
                    (not (Pa_not_checked_p7))

                    ; #91514: <==negation-removal== 84741 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #28157: origin
                    (checked_p8)

                    ; #35123: <==commonly_known== 44629 (neg)
                    (Pc_checked_p8)

                    ; #37089: <==commonly_known== 28157 (pos)
                    (Bb_checked_p8)

                    ; #46540: <==commonly_known== 28157 (pos)
                    (Ba_checked_p8)

                    ; #58519: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #59962: <==commonly_known== 44629 (neg)
                    (Pb_checked_p8)

                    ; #69673: <==commonly_known== 28157 (pos)
                    (Bc_checked_p8)

                    ; #72534: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #76614: <==closure== 58519 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #91773: <==closure== 72534 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #92690: <==commonly_known== 44629 (neg)
                    (Pa_checked_p8)

                    ; #10818: <==negation-removal== 69673 (pos)
                    (not (Pc_not_checked_p8))

                    ; #20883: <==negation-removal== 92690 (pos)
                    (not (Ba_not_checked_p8))

                    ; #28126: <==negation-removal== 72534 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #32919: <==uncertain_firing== 58519 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #43503: <==negation-removal== 37089 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44629: <==negation-removal== 28157 (pos)
                    (not (not_checked_p8))

                    ; #52652: <==uncertain_firing== 76614 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #53279: <==uncertain_firing== 72534 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #56275: <==negation-removal== 35123 (pos)
                    (not (Bc_not_checked_p8))

                    ; #63594: <==negation-removal== 59962 (pos)
                    (not (Bb_not_checked_p8))

                    ; #75114: <==negation-removal== 76614 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #77843: <==negation-removal== 58519 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #81263: <==negation-removal== 91773 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #87203: <==negation-removal== 46540 (pos)
                    (not (Pa_not_checked_p8))

                    ; #89730: <==uncertain_firing== 91773 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #18407: <==commonly_known== 78269 (pos)
                    (Bc_checked_p9)

                    ; #19295: <==commonly_known== 10366 (neg)
                    (Pa_checked_p9)

                    ; #47055: <==commonly_known== 78269 (pos)
                    (Bb_checked_p9)

                    ; #52746: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #53136: <==closure== 84819 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #58221: <==commonly_known== 78269 (pos)
                    (Ba_checked_p9)

                    ; #59075: <==commonly_known== 10366 (neg)
                    (Pb_checked_p9)

                    ; #75290: <==commonly_known== 10366 (neg)
                    (Pc_checked_p9)

                    ; #78269: origin
                    (checked_p9)

                    ; #79605: <==closure== 52746 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #84819: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #10366: <==negation-removal== 78269 (pos)
                    (not (not_checked_p9))

                    ; #13253: <==uncertain_firing== 53136 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #13772: <==negation-removal== 59075 (pos)
                    (not (Bb_not_checked_p9))

                    ; #15500: <==uncertain_firing== 84819 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #20701: <==uncertain_firing== 79605 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #29262: <==uncertain_firing== 52746 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #45925: <==negation-removal== 52746 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #48461: <==negation-removal== 53136 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #55061: <==negation-removal== 79605 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #64427: <==negation-removal== 47055 (pos)
                    (not (Pb_not_checked_p9))

                    ; #65181: <==negation-removal== 84819 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #75647: <==negation-removal== 19295 (pos)
                    (not (Ba_not_checked_p9))

                    ; #75914: <==negation-removal== 75290 (pos)
                    (not (Bc_not_checked_p9))

                    ; #89437: <==negation-removal== 18407 (pos)
                    (not (Pc_not_checked_p9))

                    ; #90984: <==negation-removal== 58221 (pos)
                    (not (Pa_not_checked_p9))))

)