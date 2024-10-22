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
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #21223: origin
                    (Ba_survivorat_s_p1)

                    ; #27168: <==closure== 80651 (pos)
                    (Pc_survivorat_s_p1)

                    ; #30535: origin
                    (Bb_survivorat_s_p1)

                    ; #52977: <==closure== 21223 (pos)
                    (Pa_survivorat_s_p1)

                    ; #66005: <==closure== 30535 (pos)
                    (Pb_survivorat_s_p1)

                    ; #80651: origin
                    (Bc_survivorat_s_p1)

                    ; #27887: <==negation-removal== 80651 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #45131: <==negation-removal== 21223 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #45272: <==negation-removal== 52977 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #66176: <==negation-removal== 30535 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #67159: <==negation-removal== 27168 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #85509: <==negation-removal== 66005 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #21223: origin
                    (Ba_survivorat_s_p1)

                    ; #27168: <==closure== 80651 (pos)
                    (Pc_survivorat_s_p1)

                    ; #30535: origin
                    (Bb_survivorat_s_p1)

                    ; #52977: <==closure== 21223 (pos)
                    (Pa_survivorat_s_p1)

                    ; #66005: <==closure== 30535 (pos)
                    (Pb_survivorat_s_p1)

                    ; #80651: origin
                    (Bc_survivorat_s_p1)

                    ; #27887: <==negation-removal== 80651 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #45131: <==negation-removal== 21223 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #45272: <==negation-removal== 52977 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #66176: <==negation-removal== 30535 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #67159: <==negation-removal== 27168 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #85509: <==negation-removal== 66005 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #21223: origin
                    (Ba_survivorat_s_p1)

                    ; #27168: <==closure== 80651 (pos)
                    (Pc_survivorat_s_p1)

                    ; #30535: origin
                    (Bb_survivorat_s_p1)

                    ; #52977: <==closure== 21223 (pos)
                    (Pa_survivorat_s_p1)

                    ; #66005: <==closure== 30535 (pos)
                    (Pb_survivorat_s_p1)

                    ; #80651: origin
                    (Bc_survivorat_s_p1)

                    ; #27887: <==negation-removal== 80651 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #45131: <==negation-removal== 21223 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #45272: <==negation-removal== 52977 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #66176: <==negation-removal== 30535 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #67159: <==negation-removal== 27168 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #85509: <==negation-removal== 66005 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #16596: <==closure== 23163 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18132: <==closure== 27922 (pos)
                    (Pa_survivorat_s_p2)

                    ; #23163: origin
                    (Bc_survivorat_s_p2)

                    ; #27922: origin
                    (Ba_survivorat_s_p2)

                    ; #28073: origin
                    (Bb_survivorat_s_p2)

                    ; #70769: <==closure== 28073 (pos)
                    (Pb_survivorat_s_p2)

                    ; #20112: <==negation-removal== 28073 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #37269: <==negation-removal== 70769 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #37332: <==negation-removal== 27922 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #43723: <==negation-removal== 23163 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #75727: <==negation-removal== 16596 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #88439: <==negation-removal== 18132 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #16596: <==closure== 23163 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18132: <==closure== 27922 (pos)
                    (Pa_survivorat_s_p2)

                    ; #23163: origin
                    (Bc_survivorat_s_p2)

                    ; #27922: origin
                    (Ba_survivorat_s_p2)

                    ; #28073: origin
                    (Bb_survivorat_s_p2)

                    ; #70769: <==closure== 28073 (pos)
                    (Pb_survivorat_s_p2)

                    ; #20112: <==negation-removal== 28073 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #37269: <==negation-removal== 70769 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #37332: <==negation-removal== 27922 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #43723: <==negation-removal== 23163 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #75727: <==negation-removal== 16596 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #88439: <==negation-removal== 18132 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #16596: <==closure== 23163 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18132: <==closure== 27922 (pos)
                    (Pa_survivorat_s_p2)

                    ; #23163: origin
                    (Bc_survivorat_s_p2)

                    ; #27922: origin
                    (Ba_survivorat_s_p2)

                    ; #28073: origin
                    (Bb_survivorat_s_p2)

                    ; #70769: <==closure== 28073 (pos)
                    (Pb_survivorat_s_p2)

                    ; #20112: <==negation-removal== 28073 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #37269: <==negation-removal== 70769 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #37332: <==negation-removal== 27922 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #43723: <==negation-removal== 23163 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #75727: <==negation-removal== 16596 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #88439: <==negation-removal== 18132 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #38663: origin
                    (Bb_survivorat_s_p3)

                    ; #45113: origin
                    (Bc_survivorat_s_p3)

                    ; #54397: <==closure== 45113 (pos)
                    (Pc_survivorat_s_p3)

                    ; #68195: origin
                    (Ba_survivorat_s_p3)

                    ; #78493: <==closure== 68195 (pos)
                    (Pa_survivorat_s_p3)

                    ; #81109: <==closure== 38663 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41923: <==negation-removal== 45113 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #59666: <==negation-removal== 38663 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #75114: <==negation-removal== 54397 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81284: <==negation-removal== 81109 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #82540: <==negation-removal== 78493 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88706: <==negation-removal== 68195 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #38663: origin
                    (Bb_survivorat_s_p3)

                    ; #45113: origin
                    (Bc_survivorat_s_p3)

                    ; #54397: <==closure== 45113 (pos)
                    (Pc_survivorat_s_p3)

                    ; #68195: origin
                    (Ba_survivorat_s_p3)

                    ; #78493: <==closure== 68195 (pos)
                    (Pa_survivorat_s_p3)

                    ; #81109: <==closure== 38663 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41923: <==negation-removal== 45113 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #59666: <==negation-removal== 38663 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #75114: <==negation-removal== 54397 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81284: <==negation-removal== 81109 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #82540: <==negation-removal== 78493 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88706: <==negation-removal== 68195 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #38663: origin
                    (Bb_survivorat_s_p3)

                    ; #45113: origin
                    (Bc_survivorat_s_p3)

                    ; #54397: <==closure== 45113 (pos)
                    (Pc_survivorat_s_p3)

                    ; #68195: origin
                    (Ba_survivorat_s_p3)

                    ; #78493: <==closure== 68195 (pos)
                    (Pa_survivorat_s_p3)

                    ; #81109: <==closure== 38663 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41923: <==negation-removal== 45113 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #59666: <==negation-removal== 38663 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #75114: <==negation-removal== 54397 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81284: <==negation-removal== 81109 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #82540: <==negation-removal== 78493 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88706: <==negation-removal== 68195 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #20594: <==closure== 22087 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22087: origin
                    (Bb_survivorat_s_p4)

                    ; #38982: <==closure== 56126 (pos)
                    (Pc_survivorat_s_p4)

                    ; #40470: origin
                    (Ba_survivorat_s_p4)

                    ; #56126: origin
                    (Bc_survivorat_s_p4)

                    ; #88313: <==closure== 40470 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12115: <==negation-removal== 20594 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #23567: <==negation-removal== 38982 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #30052: <==negation-removal== 88313 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #34561: <==negation-removal== 56126 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #38918: <==negation-removal== 22087 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #71918: <==negation-removal== 40470 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #20594: <==closure== 22087 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22087: origin
                    (Bb_survivorat_s_p4)

                    ; #38982: <==closure== 56126 (pos)
                    (Pc_survivorat_s_p4)

                    ; #40470: origin
                    (Ba_survivorat_s_p4)

                    ; #56126: origin
                    (Bc_survivorat_s_p4)

                    ; #88313: <==closure== 40470 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12115: <==negation-removal== 20594 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #23567: <==negation-removal== 38982 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #30052: <==negation-removal== 88313 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #34561: <==negation-removal== 56126 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #38918: <==negation-removal== 22087 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #71918: <==negation-removal== 40470 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #20594: <==closure== 22087 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22087: origin
                    (Bb_survivorat_s_p4)

                    ; #38982: <==closure== 56126 (pos)
                    (Pc_survivorat_s_p4)

                    ; #40470: origin
                    (Ba_survivorat_s_p4)

                    ; #56126: origin
                    (Bc_survivorat_s_p4)

                    ; #88313: <==closure== 40470 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12115: <==negation-removal== 20594 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #23567: <==negation-removal== 38982 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #30052: <==negation-removal== 88313 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #34561: <==negation-removal== 56126 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #38918: <==negation-removal== 22087 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #71918: <==negation-removal== 40470 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #33904: origin
                    (Ba_survivorat_s_p5)

                    ; #34103: <==closure== 37264 (pos)
                    (Pb_survivorat_s_p5)

                    ; #34145: <==closure== 33904 (pos)
                    (Pa_survivorat_s_p5)

                    ; #37264: origin
                    (Bb_survivorat_s_p5)

                    ; #62417: origin
                    (Bc_survivorat_s_p5)

                    ; #74574: <==closure== 62417 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29261: <==negation-removal== 33904 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #40750: <==negation-removal== 37264 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #57871: <==negation-removal== 34145 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #73485: <==negation-removal== 62417 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #75021: <==negation-removal== 34103 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #77229: <==negation-removal== 74574 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #33904: origin
                    (Ba_survivorat_s_p5)

                    ; #34103: <==closure== 37264 (pos)
                    (Pb_survivorat_s_p5)

                    ; #34145: <==closure== 33904 (pos)
                    (Pa_survivorat_s_p5)

                    ; #37264: origin
                    (Bb_survivorat_s_p5)

                    ; #62417: origin
                    (Bc_survivorat_s_p5)

                    ; #74574: <==closure== 62417 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29261: <==negation-removal== 33904 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #40750: <==negation-removal== 37264 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #57871: <==negation-removal== 34145 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #73485: <==negation-removal== 62417 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #75021: <==negation-removal== 34103 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #77229: <==negation-removal== 74574 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #33904: origin
                    (Ba_survivorat_s_p5)

                    ; #34103: <==closure== 37264 (pos)
                    (Pb_survivorat_s_p5)

                    ; #34145: <==closure== 33904 (pos)
                    (Pa_survivorat_s_p5)

                    ; #37264: origin
                    (Bb_survivorat_s_p5)

                    ; #62417: origin
                    (Bc_survivorat_s_p5)

                    ; #74574: <==closure== 62417 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29261: <==negation-removal== 33904 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #40750: <==negation-removal== 37264 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #57871: <==negation-removal== 34145 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #73485: <==negation-removal== 62417 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #75021: <==negation-removal== 34103 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #77229: <==negation-removal== 74574 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #22009: <==closure== 39249 (pos)
                    (Pb_survivorat_s_p6)

                    ; #27642: origin
                    (Ba_survivorat_s_p6)

                    ; #39249: origin
                    (Bb_survivorat_s_p6)

                    ; #47171: <==closure== 84170 (pos)
                    (Pc_survivorat_s_p6)

                    ; #57675: <==closure== 27642 (pos)
                    (Pa_survivorat_s_p6)

                    ; #84170: origin
                    (Bc_survivorat_s_p6)

                    ; #15229: <==negation-removal== 47171 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #15900: <==negation-removal== 22009 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #16767: <==negation-removal== 84170 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #18023: <==negation-removal== 57675 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #31941: <==negation-removal== 39249 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #62450: <==negation-removal== 27642 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #22009: <==closure== 39249 (pos)
                    (Pb_survivorat_s_p6)

                    ; #27642: origin
                    (Ba_survivorat_s_p6)

                    ; #39249: origin
                    (Bb_survivorat_s_p6)

                    ; #47171: <==closure== 84170 (pos)
                    (Pc_survivorat_s_p6)

                    ; #57675: <==closure== 27642 (pos)
                    (Pa_survivorat_s_p6)

                    ; #84170: origin
                    (Bc_survivorat_s_p6)

                    ; #15229: <==negation-removal== 47171 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #15900: <==negation-removal== 22009 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #16767: <==negation-removal== 84170 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #18023: <==negation-removal== 57675 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #31941: <==negation-removal== 39249 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #62450: <==negation-removal== 27642 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #22009: <==closure== 39249 (pos)
                    (Pb_survivorat_s_p6)

                    ; #27642: origin
                    (Ba_survivorat_s_p6)

                    ; #39249: origin
                    (Bb_survivorat_s_p6)

                    ; #47171: <==closure== 84170 (pos)
                    (Pc_survivorat_s_p6)

                    ; #57675: <==closure== 27642 (pos)
                    (Pa_survivorat_s_p6)

                    ; #84170: origin
                    (Bc_survivorat_s_p6)

                    ; #15229: <==negation-removal== 47171 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #15900: <==negation-removal== 22009 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #16767: <==negation-removal== 84170 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #18023: <==negation-removal== 57675 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #31941: <==negation-removal== 39249 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #62450: <==negation-removal== 27642 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #42961: origin
                    (Bc_survivorat_s_p7)

                    ; #43036: <==closure== 42961 (pos)
                    (Pc_survivorat_s_p7)

                    ; #53791: <==closure== 71128 (pos)
                    (Pb_survivorat_s_p7)

                    ; #66481: origin
                    (Ba_survivorat_s_p7)

                    ; #71128: origin
                    (Bb_survivorat_s_p7)

                    ; #82374: <==closure== 66481 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14054: <==negation-removal== 71128 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #43737: <==negation-removal== 42961 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #45788: <==negation-removal== 82374 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #59263: <==negation-removal== 43036 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #67621: <==negation-removal== 66481 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #69634: <==negation-removal== 53791 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #42961: origin
                    (Bc_survivorat_s_p7)

                    ; #43036: <==closure== 42961 (pos)
                    (Pc_survivorat_s_p7)

                    ; #53791: <==closure== 71128 (pos)
                    (Pb_survivorat_s_p7)

                    ; #66481: origin
                    (Ba_survivorat_s_p7)

                    ; #71128: origin
                    (Bb_survivorat_s_p7)

                    ; #82374: <==closure== 66481 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14054: <==negation-removal== 71128 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #43737: <==negation-removal== 42961 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #45788: <==negation-removal== 82374 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #59263: <==negation-removal== 43036 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #67621: <==negation-removal== 66481 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #69634: <==negation-removal== 53791 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #42961: origin
                    (Bc_survivorat_s_p7)

                    ; #43036: <==closure== 42961 (pos)
                    (Pc_survivorat_s_p7)

                    ; #53791: <==closure== 71128 (pos)
                    (Pb_survivorat_s_p7)

                    ; #66481: origin
                    (Ba_survivorat_s_p7)

                    ; #71128: origin
                    (Bb_survivorat_s_p7)

                    ; #82374: <==closure== 66481 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14054: <==negation-removal== 71128 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #43737: <==negation-removal== 42961 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #45788: <==negation-removal== 82374 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #59263: <==negation-removal== 43036 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #67621: <==negation-removal== 66481 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #69634: <==negation-removal== 53791 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #31255: origin
                    (Bc_survivorat_s_p8)

                    ; #54470: <==closure== 84237 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55369: <==closure== 76440 (pos)
                    (Pb_survivorat_s_p8)

                    ; #56782: <==closure== 31255 (pos)
                    (Pc_survivorat_s_p8)

                    ; #76440: origin
                    (Bb_survivorat_s_p8)

                    ; #84237: origin
                    (Ba_survivorat_s_p8)

                    ; #31954: <==negation-removal== 76440 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #35880: <==negation-removal== 55369 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43892: <==negation-removal== 84237 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #46112: <==negation-removal== 54470 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #75184: <==negation-removal== 31255 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #89445: <==negation-removal== 56782 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #31255: origin
                    (Bc_survivorat_s_p8)

                    ; #54470: <==closure== 84237 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55369: <==closure== 76440 (pos)
                    (Pb_survivorat_s_p8)

                    ; #56782: <==closure== 31255 (pos)
                    (Pc_survivorat_s_p8)

                    ; #76440: origin
                    (Bb_survivorat_s_p8)

                    ; #84237: origin
                    (Ba_survivorat_s_p8)

                    ; #31954: <==negation-removal== 76440 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #35880: <==negation-removal== 55369 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43892: <==negation-removal== 84237 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #46112: <==negation-removal== 54470 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #75184: <==negation-removal== 31255 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #89445: <==negation-removal== 56782 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #31255: origin
                    (Bc_survivorat_s_p8)

                    ; #54470: <==closure== 84237 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55369: <==closure== 76440 (pos)
                    (Pb_survivorat_s_p8)

                    ; #56782: <==closure== 31255 (pos)
                    (Pc_survivorat_s_p8)

                    ; #76440: origin
                    (Bb_survivorat_s_p8)

                    ; #84237: origin
                    (Ba_survivorat_s_p8)

                    ; #31954: <==negation-removal== 76440 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #35880: <==negation-removal== 55369 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43892: <==negation-removal== 84237 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #46112: <==negation-removal== 54470 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #75184: <==negation-removal== 31255 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #89445: <==negation-removal== 56782 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #10923: <==closure== 47852 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12077: <==closure== 13187 (pos)
                    (Pa_survivorat_s_p9)

                    ; #13187: origin
                    (Ba_survivorat_s_p9)

                    ; #47852: origin
                    (Bb_survivorat_s_p9)

                    ; #62425: origin
                    (Bc_survivorat_s_p9)

                    ; #80131: <==closure== 62425 (pos)
                    (Pc_survivorat_s_p9)

                    ; #10660: <==negation-removal== 80131 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #17923: <==negation-removal== 12077 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42388: <==negation-removal== 62425 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #55910: <==negation-removal== 13187 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #68639: <==negation-removal== 47852 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #82253: <==negation-removal== 10923 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #10923: <==closure== 47852 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12077: <==closure== 13187 (pos)
                    (Pa_survivorat_s_p9)

                    ; #13187: origin
                    (Ba_survivorat_s_p9)

                    ; #47852: origin
                    (Bb_survivorat_s_p9)

                    ; #62425: origin
                    (Bc_survivorat_s_p9)

                    ; #80131: <==closure== 62425 (pos)
                    (Pc_survivorat_s_p9)

                    ; #10660: <==negation-removal== 80131 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #17923: <==negation-removal== 12077 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42388: <==negation-removal== 62425 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #55910: <==negation-removal== 13187 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #68639: <==negation-removal== 47852 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #82253: <==negation-removal== 10923 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #10923: <==closure== 47852 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12077: <==closure== 13187 (pos)
                    (Pa_survivorat_s_p9)

                    ; #13187: origin
                    (Ba_survivorat_s_p9)

                    ; #47852: origin
                    (Bb_survivorat_s_p9)

                    ; #62425: origin
                    (Bc_survivorat_s_p9)

                    ; #80131: <==closure== 62425 (pos)
                    (Pc_survivorat_s_p9)

                    ; #10660: <==negation-removal== 80131 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #17923: <==negation-removal== 12077 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42388: <==negation-removal== 62425 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #55910: <==negation-removal== 13187 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #68639: <==negation-removal== 47852 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #82253: <==negation-removal== 10923 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #51029: origin
                    (not_at_a_p1)

                    ; #88711: origin
                    (at_a_p1)

                    ; #51029: <==negation-removal== 88711 (pos)
                    (not (not_at_a_p1))

                    ; #88711: <==negation-removal== 51029 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #35828: origin
                    (at_a_p2)

                    ; #51029: origin
                    (not_at_a_p1)

                    ; #86426: <==negation-removal== 35828 (pos)
                    (not (not_at_a_p2))

                    ; #88711: <==negation-removal== 51029 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #51029: origin
                    (not_at_a_p1)

                    ; #90710: origin
                    (at_a_p3)

                    ; #88711: <==negation-removal== 51029 (pos)
                    (not (at_a_p1))

                    ; #89894: <==negation-removal== 90710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #51029: origin
                    (not_at_a_p1)

                    ; #73210: origin
                    (at_a_p4)

                    ; #32982: <==negation-removal== 73210 (pos)
                    (not (not_at_a_p4))

                    ; #88711: <==negation-removal== 51029 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #51029: origin
                    (not_at_a_p1)

                    ; #69308: origin
                    (at_a_p5)

                    ; #16798: <==negation-removal== 69308 (pos)
                    (not (not_at_a_p5))

                    ; #88711: <==negation-removal== 51029 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #26464: origin
                    (at_a_p6)

                    ; #51029: origin
                    (not_at_a_p1)

                    ; #10122: <==negation-removal== 26464 (pos)
                    (not (not_at_a_p6))

                    ; #88711: <==negation-removal== 51029 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #51029: origin
                    (not_at_a_p1)

                    ; #58824: origin
                    (at_a_p7)

                    ; #28600: <==negation-removal== 58824 (pos)
                    (not (not_at_a_p7))

                    ; #88711: <==negation-removal== 51029 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #17340: origin
                    (at_a_p8)

                    ; #51029: origin
                    (not_at_a_p1)

                    ; #15879: <==negation-removal== 17340 (pos)
                    (not (not_at_a_p8))

                    ; #88711: <==negation-removal== 51029 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #51029: origin
                    (not_at_a_p1)

                    ; #54641: origin
                    (at_a_p9)

                    ; #67272: <==negation-removal== 54641 (pos)
                    (not (not_at_a_p9))

                    ; #88711: <==negation-removal== 51029 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #86426: origin
                    (not_at_a_p2)

                    ; #88711: origin
                    (at_a_p1)

                    ; #35828: <==negation-removal== 86426 (pos)
                    (not (at_a_p2))

                    ; #51029: <==negation-removal== 88711 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #35828: origin
                    (at_a_p2)

                    ; #86426: origin
                    (not_at_a_p2)

                    ; #35828: <==negation-removal== 86426 (pos)
                    (not (at_a_p2))

                    ; #86426: <==negation-removal== 35828 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #86426: origin
                    (not_at_a_p2)

                    ; #90710: origin
                    (at_a_p3)

                    ; #35828: <==negation-removal== 86426 (pos)
                    (not (at_a_p2))

                    ; #89894: <==negation-removal== 90710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #73210: origin
                    (at_a_p4)

                    ; #86426: origin
                    (not_at_a_p2)

                    ; #32982: <==negation-removal== 73210 (pos)
                    (not (not_at_a_p4))

                    ; #35828: <==negation-removal== 86426 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #69308: origin
                    (at_a_p5)

                    ; #86426: origin
                    (not_at_a_p2)

                    ; #16798: <==negation-removal== 69308 (pos)
                    (not (not_at_a_p5))

                    ; #35828: <==negation-removal== 86426 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #26464: origin
                    (at_a_p6)

                    ; #86426: origin
                    (not_at_a_p2)

                    ; #10122: <==negation-removal== 26464 (pos)
                    (not (not_at_a_p6))

                    ; #35828: <==negation-removal== 86426 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #58824: origin
                    (at_a_p7)

                    ; #86426: origin
                    (not_at_a_p2)

                    ; #28600: <==negation-removal== 58824 (pos)
                    (not (not_at_a_p7))

                    ; #35828: <==negation-removal== 86426 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #17340: origin
                    (at_a_p8)

                    ; #86426: origin
                    (not_at_a_p2)

                    ; #15879: <==negation-removal== 17340 (pos)
                    (not (not_at_a_p8))

                    ; #35828: <==negation-removal== 86426 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #54641: origin
                    (at_a_p9)

                    ; #86426: origin
                    (not_at_a_p2)

                    ; #35828: <==negation-removal== 86426 (pos)
                    (not (at_a_p2))

                    ; #67272: <==negation-removal== 54641 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #88711: origin
                    (at_a_p1)

                    ; #89894: origin
                    (not_at_a_p3)

                    ; #51029: <==negation-removal== 88711 (pos)
                    (not (not_at_a_p1))

                    ; #90710: <==negation-removal== 89894 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #35828: origin
                    (at_a_p2)

                    ; #89894: origin
                    (not_at_a_p3)

                    ; #86426: <==negation-removal== 35828 (pos)
                    (not (not_at_a_p2))

                    ; #90710: <==negation-removal== 89894 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #89894: origin
                    (not_at_a_p3)

                    ; #90710: origin
                    (at_a_p3)

                    ; #89894: <==negation-removal== 90710 (pos)
                    (not (not_at_a_p3))

                    ; #90710: <==negation-removal== 89894 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #73210: origin
                    (at_a_p4)

                    ; #89894: origin
                    (not_at_a_p3)

                    ; #32982: <==negation-removal== 73210 (pos)
                    (not (not_at_a_p4))

                    ; #90710: <==negation-removal== 89894 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #69308: origin
                    (at_a_p5)

                    ; #89894: origin
                    (not_at_a_p3)

                    ; #16798: <==negation-removal== 69308 (pos)
                    (not (not_at_a_p5))

                    ; #90710: <==negation-removal== 89894 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #26464: origin
                    (at_a_p6)

                    ; #89894: origin
                    (not_at_a_p3)

                    ; #10122: <==negation-removal== 26464 (pos)
                    (not (not_at_a_p6))

                    ; #90710: <==negation-removal== 89894 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #58824: origin
                    (at_a_p7)

                    ; #89894: origin
                    (not_at_a_p3)

                    ; #28600: <==negation-removal== 58824 (pos)
                    (not (not_at_a_p7))

                    ; #90710: <==negation-removal== 89894 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #17340: origin
                    (at_a_p8)

                    ; #89894: origin
                    (not_at_a_p3)

                    ; #15879: <==negation-removal== 17340 (pos)
                    (not (not_at_a_p8))

                    ; #90710: <==negation-removal== 89894 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #54641: origin
                    (at_a_p9)

                    ; #89894: origin
                    (not_at_a_p3)

                    ; #67272: <==negation-removal== 54641 (pos)
                    (not (not_at_a_p9))

                    ; #90710: <==negation-removal== 89894 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #32982: origin
                    (not_at_a_p4)

                    ; #88711: origin
                    (at_a_p1)

                    ; #51029: <==negation-removal== 88711 (pos)
                    (not (not_at_a_p1))

                    ; #73210: <==negation-removal== 32982 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #32982: origin
                    (not_at_a_p4)

                    ; #35828: origin
                    (at_a_p2)

                    ; #73210: <==negation-removal== 32982 (pos)
                    (not (at_a_p4))

                    ; #86426: <==negation-removal== 35828 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #32982: origin
                    (not_at_a_p4)

                    ; #90710: origin
                    (at_a_p3)

                    ; #73210: <==negation-removal== 32982 (pos)
                    (not (at_a_p4))

                    ; #89894: <==negation-removal== 90710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #32982: origin
                    (not_at_a_p4)

                    ; #73210: origin
                    (at_a_p4)

                    ; #32982: <==negation-removal== 73210 (pos)
                    (not (not_at_a_p4))

                    ; #73210: <==negation-removal== 32982 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #32982: origin
                    (not_at_a_p4)

                    ; #69308: origin
                    (at_a_p5)

                    ; #16798: <==negation-removal== 69308 (pos)
                    (not (not_at_a_p5))

                    ; #73210: <==negation-removal== 32982 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #26464: origin
                    (at_a_p6)

                    ; #32982: origin
                    (not_at_a_p4)

                    ; #10122: <==negation-removal== 26464 (pos)
                    (not (not_at_a_p6))

                    ; #73210: <==negation-removal== 32982 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #32982: origin
                    (not_at_a_p4)

                    ; #58824: origin
                    (at_a_p7)

                    ; #28600: <==negation-removal== 58824 (pos)
                    (not (not_at_a_p7))

                    ; #73210: <==negation-removal== 32982 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #17340: origin
                    (at_a_p8)

                    ; #32982: origin
                    (not_at_a_p4)

                    ; #15879: <==negation-removal== 17340 (pos)
                    (not (not_at_a_p8))

                    ; #73210: <==negation-removal== 32982 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #32982: origin
                    (not_at_a_p4)

                    ; #54641: origin
                    (at_a_p9)

                    ; #67272: <==negation-removal== 54641 (pos)
                    (not (not_at_a_p9))

                    ; #73210: <==negation-removal== 32982 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #16798: origin
                    (not_at_a_p5)

                    ; #88711: origin
                    (at_a_p1)

                    ; #51029: <==negation-removal== 88711 (pos)
                    (not (not_at_a_p1))

                    ; #69308: <==negation-removal== 16798 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #16798: origin
                    (not_at_a_p5)

                    ; #35828: origin
                    (at_a_p2)

                    ; #69308: <==negation-removal== 16798 (pos)
                    (not (at_a_p5))

                    ; #86426: <==negation-removal== 35828 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #16798: origin
                    (not_at_a_p5)

                    ; #90710: origin
                    (at_a_p3)

                    ; #69308: <==negation-removal== 16798 (pos)
                    (not (at_a_p5))

                    ; #89894: <==negation-removal== 90710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #16798: origin
                    (not_at_a_p5)

                    ; #73210: origin
                    (at_a_p4)

                    ; #32982: <==negation-removal== 73210 (pos)
                    (not (not_at_a_p4))

                    ; #69308: <==negation-removal== 16798 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #16798: origin
                    (not_at_a_p5)

                    ; #69308: origin
                    (at_a_p5)

                    ; #16798: <==negation-removal== 69308 (pos)
                    (not (not_at_a_p5))

                    ; #69308: <==negation-removal== 16798 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #16798: origin
                    (not_at_a_p5)

                    ; #26464: origin
                    (at_a_p6)

                    ; #10122: <==negation-removal== 26464 (pos)
                    (not (not_at_a_p6))

                    ; #69308: <==negation-removal== 16798 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #16798: origin
                    (not_at_a_p5)

                    ; #58824: origin
                    (at_a_p7)

                    ; #28600: <==negation-removal== 58824 (pos)
                    (not (not_at_a_p7))

                    ; #69308: <==negation-removal== 16798 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #16798: origin
                    (not_at_a_p5)

                    ; #17340: origin
                    (at_a_p8)

                    ; #15879: <==negation-removal== 17340 (pos)
                    (not (not_at_a_p8))

                    ; #69308: <==negation-removal== 16798 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #16798: origin
                    (not_at_a_p5)

                    ; #54641: origin
                    (at_a_p9)

                    ; #67272: <==negation-removal== 54641 (pos)
                    (not (not_at_a_p9))

                    ; #69308: <==negation-removal== 16798 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #10122: origin
                    (not_at_a_p6)

                    ; #88711: origin
                    (at_a_p1)

                    ; #26464: <==negation-removal== 10122 (pos)
                    (not (at_a_p6))

                    ; #51029: <==negation-removal== 88711 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #10122: origin
                    (not_at_a_p6)

                    ; #35828: origin
                    (at_a_p2)

                    ; #26464: <==negation-removal== 10122 (pos)
                    (not (at_a_p6))

                    ; #86426: <==negation-removal== 35828 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #10122: origin
                    (not_at_a_p6)

                    ; #90710: origin
                    (at_a_p3)

                    ; #26464: <==negation-removal== 10122 (pos)
                    (not (at_a_p6))

                    ; #89894: <==negation-removal== 90710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #10122: origin
                    (not_at_a_p6)

                    ; #73210: origin
                    (at_a_p4)

                    ; #26464: <==negation-removal== 10122 (pos)
                    (not (at_a_p6))

                    ; #32982: <==negation-removal== 73210 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #10122: origin
                    (not_at_a_p6)

                    ; #69308: origin
                    (at_a_p5)

                    ; #16798: <==negation-removal== 69308 (pos)
                    (not (not_at_a_p5))

                    ; #26464: <==negation-removal== 10122 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #10122: origin
                    (not_at_a_p6)

                    ; #26464: origin
                    (at_a_p6)

                    ; #10122: <==negation-removal== 26464 (pos)
                    (not (not_at_a_p6))

                    ; #26464: <==negation-removal== 10122 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #10122: origin
                    (not_at_a_p6)

                    ; #58824: origin
                    (at_a_p7)

                    ; #26464: <==negation-removal== 10122 (pos)
                    (not (at_a_p6))

                    ; #28600: <==negation-removal== 58824 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #10122: origin
                    (not_at_a_p6)

                    ; #17340: origin
                    (at_a_p8)

                    ; #15879: <==negation-removal== 17340 (pos)
                    (not (not_at_a_p8))

                    ; #26464: <==negation-removal== 10122 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #10122: origin
                    (not_at_a_p6)

                    ; #54641: origin
                    (at_a_p9)

                    ; #26464: <==negation-removal== 10122 (pos)
                    (not (at_a_p6))

                    ; #67272: <==negation-removal== 54641 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #28600: origin
                    (not_at_a_p7)

                    ; #88711: origin
                    (at_a_p1)

                    ; #51029: <==negation-removal== 88711 (pos)
                    (not (not_at_a_p1))

                    ; #58824: <==negation-removal== 28600 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #28600: origin
                    (not_at_a_p7)

                    ; #35828: origin
                    (at_a_p2)

                    ; #58824: <==negation-removal== 28600 (pos)
                    (not (at_a_p7))

                    ; #86426: <==negation-removal== 35828 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #28600: origin
                    (not_at_a_p7)

                    ; #90710: origin
                    (at_a_p3)

                    ; #58824: <==negation-removal== 28600 (pos)
                    (not (at_a_p7))

                    ; #89894: <==negation-removal== 90710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #28600: origin
                    (not_at_a_p7)

                    ; #73210: origin
                    (at_a_p4)

                    ; #32982: <==negation-removal== 73210 (pos)
                    (not (not_at_a_p4))

                    ; #58824: <==negation-removal== 28600 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #28600: origin
                    (not_at_a_p7)

                    ; #69308: origin
                    (at_a_p5)

                    ; #16798: <==negation-removal== 69308 (pos)
                    (not (not_at_a_p5))

                    ; #58824: <==negation-removal== 28600 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #26464: origin
                    (at_a_p6)

                    ; #28600: origin
                    (not_at_a_p7)

                    ; #10122: <==negation-removal== 26464 (pos)
                    (not (not_at_a_p6))

                    ; #58824: <==negation-removal== 28600 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #28600: origin
                    (not_at_a_p7)

                    ; #58824: origin
                    (at_a_p7)

                    ; #28600: <==negation-removal== 58824 (pos)
                    (not (not_at_a_p7))

                    ; #58824: <==negation-removal== 28600 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #17340: origin
                    (at_a_p8)

                    ; #28600: origin
                    (not_at_a_p7)

                    ; #15879: <==negation-removal== 17340 (pos)
                    (not (not_at_a_p8))

                    ; #58824: <==negation-removal== 28600 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #28600: origin
                    (not_at_a_p7)

                    ; #54641: origin
                    (at_a_p9)

                    ; #58824: <==negation-removal== 28600 (pos)
                    (not (at_a_p7))

                    ; #67272: <==negation-removal== 54641 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #15879: origin
                    (not_at_a_p8)

                    ; #88711: origin
                    (at_a_p1)

                    ; #17340: <==negation-removal== 15879 (pos)
                    (not (at_a_p8))

                    ; #51029: <==negation-removal== 88711 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #15879: origin
                    (not_at_a_p8)

                    ; #35828: origin
                    (at_a_p2)

                    ; #17340: <==negation-removal== 15879 (pos)
                    (not (at_a_p8))

                    ; #86426: <==negation-removal== 35828 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #15879: origin
                    (not_at_a_p8)

                    ; #90710: origin
                    (at_a_p3)

                    ; #17340: <==negation-removal== 15879 (pos)
                    (not (at_a_p8))

                    ; #89894: <==negation-removal== 90710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #15879: origin
                    (not_at_a_p8)

                    ; #73210: origin
                    (at_a_p4)

                    ; #17340: <==negation-removal== 15879 (pos)
                    (not (at_a_p8))

                    ; #32982: <==negation-removal== 73210 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #15879: origin
                    (not_at_a_p8)

                    ; #69308: origin
                    (at_a_p5)

                    ; #16798: <==negation-removal== 69308 (pos)
                    (not (not_at_a_p5))

                    ; #17340: <==negation-removal== 15879 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #15879: origin
                    (not_at_a_p8)

                    ; #26464: origin
                    (at_a_p6)

                    ; #10122: <==negation-removal== 26464 (pos)
                    (not (not_at_a_p6))

                    ; #17340: <==negation-removal== 15879 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #15879: origin
                    (not_at_a_p8)

                    ; #58824: origin
                    (at_a_p7)

                    ; #17340: <==negation-removal== 15879 (pos)
                    (not (at_a_p8))

                    ; #28600: <==negation-removal== 58824 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #15879: origin
                    (not_at_a_p8)

                    ; #17340: origin
                    (at_a_p8)

                    ; #15879: <==negation-removal== 17340 (pos)
                    (not (not_at_a_p8))

                    ; #17340: <==negation-removal== 15879 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #15879: origin
                    (not_at_a_p8)

                    ; #54641: origin
                    (at_a_p9)

                    ; #17340: <==negation-removal== 15879 (pos)
                    (not (at_a_p8))

                    ; #67272: <==negation-removal== 54641 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #67272: origin
                    (not_at_a_p9)

                    ; #88711: origin
                    (at_a_p1)

                    ; #51029: <==negation-removal== 88711 (pos)
                    (not (not_at_a_p1))

                    ; #54641: <==negation-removal== 67272 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #35828: origin
                    (at_a_p2)

                    ; #67272: origin
                    (not_at_a_p9)

                    ; #54641: <==negation-removal== 67272 (pos)
                    (not (at_a_p9))

                    ; #86426: <==negation-removal== 35828 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #67272: origin
                    (not_at_a_p9)

                    ; #90710: origin
                    (at_a_p3)

                    ; #54641: <==negation-removal== 67272 (pos)
                    (not (at_a_p9))

                    ; #89894: <==negation-removal== 90710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #67272: origin
                    (not_at_a_p9)

                    ; #73210: origin
                    (at_a_p4)

                    ; #32982: <==negation-removal== 73210 (pos)
                    (not (not_at_a_p4))

                    ; #54641: <==negation-removal== 67272 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #67272: origin
                    (not_at_a_p9)

                    ; #69308: origin
                    (at_a_p5)

                    ; #16798: <==negation-removal== 69308 (pos)
                    (not (not_at_a_p5))

                    ; #54641: <==negation-removal== 67272 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #26464: origin
                    (at_a_p6)

                    ; #67272: origin
                    (not_at_a_p9)

                    ; #10122: <==negation-removal== 26464 (pos)
                    (not (not_at_a_p6))

                    ; #54641: <==negation-removal== 67272 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #58824: origin
                    (at_a_p7)

                    ; #67272: origin
                    (not_at_a_p9)

                    ; #28600: <==negation-removal== 58824 (pos)
                    (not (not_at_a_p7))

                    ; #54641: <==negation-removal== 67272 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #17340: origin
                    (at_a_p8)

                    ; #67272: origin
                    (not_at_a_p9)

                    ; #15879: <==negation-removal== 17340 (pos)
                    (not (not_at_a_p8))

                    ; #54641: <==negation-removal== 67272 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #54641: origin
                    (at_a_p9)

                    ; #67272: origin
                    (not_at_a_p9)

                    ; #54641: <==negation-removal== 67272 (pos)
                    (not (at_a_p9))

                    ; #67272: <==negation-removal== 54641 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #17408: origin
                    (at_b_p1)

                    ; #65126: origin
                    (not_at_b_p1)

                    ; #17408: <==negation-removal== 65126 (pos)
                    (not (at_b_p1))

                    ; #65126: <==negation-removal== 17408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #59964: origin
                    (at_b_p2)

                    ; #65126: origin
                    (not_at_b_p1)

                    ; #17408: <==negation-removal== 65126 (pos)
                    (not (at_b_p1))

                    ; #22595: <==negation-removal== 59964 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #19520: origin
                    (at_b_p3)

                    ; #65126: origin
                    (not_at_b_p1)

                    ; #17408: <==negation-removal== 65126 (pos)
                    (not (at_b_p1))

                    ; #84936: <==negation-removal== 19520 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #12432: origin
                    (at_b_p4)

                    ; #65126: origin
                    (not_at_b_p1)

                    ; #10262: <==negation-removal== 12432 (pos)
                    (not (not_at_b_p4))

                    ; #17408: <==negation-removal== 65126 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #63480: origin
                    (at_b_p5)

                    ; #65126: origin
                    (not_at_b_p1)

                    ; #17408: <==negation-removal== 65126 (pos)
                    (not (at_b_p1))

                    ; #28344: <==negation-removal== 63480 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #65126: origin
                    (not_at_b_p1)

                    ; #90794: origin
                    (at_b_p6)

                    ; #17408: <==negation-removal== 65126 (pos)
                    (not (at_b_p1))

                    ; #89813: <==negation-removal== 90794 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #13609: origin
                    (at_b_p7)

                    ; #65126: origin
                    (not_at_b_p1)

                    ; #17408: <==negation-removal== 65126 (pos)
                    (not (at_b_p1))

                    ; #73810: <==negation-removal== 13609 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #45237: origin
                    (at_b_p8)

                    ; #65126: origin
                    (not_at_b_p1)

                    ; #17408: <==negation-removal== 65126 (pos)
                    (not (at_b_p1))

                    ; #60070: <==negation-removal== 45237 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #65126: origin
                    (not_at_b_p1)

                    ; #78610: origin
                    (at_b_p9)

                    ; #17408: <==negation-removal== 65126 (pos)
                    (not (at_b_p1))

                    ; #64909: <==negation-removal== 78610 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #17408: origin
                    (at_b_p1)

                    ; #22595: origin
                    (not_at_b_p2)

                    ; #59964: <==negation-removal== 22595 (pos)
                    (not (at_b_p2))

                    ; #65126: <==negation-removal== 17408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #22595: origin
                    (not_at_b_p2)

                    ; #59964: origin
                    (at_b_p2)

                    ; #22595: <==negation-removal== 59964 (pos)
                    (not (not_at_b_p2))

                    ; #59964: <==negation-removal== 22595 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #19520: origin
                    (at_b_p3)

                    ; #22595: origin
                    (not_at_b_p2)

                    ; #59964: <==negation-removal== 22595 (pos)
                    (not (at_b_p2))

                    ; #84936: <==negation-removal== 19520 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #12432: origin
                    (at_b_p4)

                    ; #22595: origin
                    (not_at_b_p2)

                    ; #10262: <==negation-removal== 12432 (pos)
                    (not (not_at_b_p4))

                    ; #59964: <==negation-removal== 22595 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #22595: origin
                    (not_at_b_p2)

                    ; #63480: origin
                    (at_b_p5)

                    ; #28344: <==negation-removal== 63480 (pos)
                    (not (not_at_b_p5))

                    ; #59964: <==negation-removal== 22595 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #22595: origin
                    (not_at_b_p2)

                    ; #90794: origin
                    (at_b_p6)

                    ; #59964: <==negation-removal== 22595 (pos)
                    (not (at_b_p2))

                    ; #89813: <==negation-removal== 90794 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #13609: origin
                    (at_b_p7)

                    ; #22595: origin
                    (not_at_b_p2)

                    ; #59964: <==negation-removal== 22595 (pos)
                    (not (at_b_p2))

                    ; #73810: <==negation-removal== 13609 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #22595: origin
                    (not_at_b_p2)

                    ; #45237: origin
                    (at_b_p8)

                    ; #59964: <==negation-removal== 22595 (pos)
                    (not (at_b_p2))

                    ; #60070: <==negation-removal== 45237 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #22595: origin
                    (not_at_b_p2)

                    ; #78610: origin
                    (at_b_p9)

                    ; #59964: <==negation-removal== 22595 (pos)
                    (not (at_b_p2))

                    ; #64909: <==negation-removal== 78610 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #17408: origin
                    (at_b_p1)

                    ; #84936: origin
                    (not_at_b_p3)

                    ; #19520: <==negation-removal== 84936 (pos)
                    (not (at_b_p3))

                    ; #65126: <==negation-removal== 17408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #59964: origin
                    (at_b_p2)

                    ; #84936: origin
                    (not_at_b_p3)

                    ; #19520: <==negation-removal== 84936 (pos)
                    (not (at_b_p3))

                    ; #22595: <==negation-removal== 59964 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #19520: origin
                    (at_b_p3)

                    ; #84936: origin
                    (not_at_b_p3)

                    ; #19520: <==negation-removal== 84936 (pos)
                    (not (at_b_p3))

                    ; #84936: <==negation-removal== 19520 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #12432: origin
                    (at_b_p4)

                    ; #84936: origin
                    (not_at_b_p3)

                    ; #10262: <==negation-removal== 12432 (pos)
                    (not (not_at_b_p4))

                    ; #19520: <==negation-removal== 84936 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #63480: origin
                    (at_b_p5)

                    ; #84936: origin
                    (not_at_b_p3)

                    ; #19520: <==negation-removal== 84936 (pos)
                    (not (at_b_p3))

                    ; #28344: <==negation-removal== 63480 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #84936: origin
                    (not_at_b_p3)

                    ; #90794: origin
                    (at_b_p6)

                    ; #19520: <==negation-removal== 84936 (pos)
                    (not (at_b_p3))

                    ; #89813: <==negation-removal== 90794 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #13609: origin
                    (at_b_p7)

                    ; #84936: origin
                    (not_at_b_p3)

                    ; #19520: <==negation-removal== 84936 (pos)
                    (not (at_b_p3))

                    ; #73810: <==negation-removal== 13609 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #45237: origin
                    (at_b_p8)

                    ; #84936: origin
                    (not_at_b_p3)

                    ; #19520: <==negation-removal== 84936 (pos)
                    (not (at_b_p3))

                    ; #60070: <==negation-removal== 45237 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #78610: origin
                    (at_b_p9)

                    ; #84936: origin
                    (not_at_b_p3)

                    ; #19520: <==negation-removal== 84936 (pos)
                    (not (at_b_p3))

                    ; #64909: <==negation-removal== 78610 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #10262: origin
                    (not_at_b_p4)

                    ; #17408: origin
                    (at_b_p1)

                    ; #12432: <==negation-removal== 10262 (pos)
                    (not (at_b_p4))

                    ; #65126: <==negation-removal== 17408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #10262: origin
                    (not_at_b_p4)

                    ; #59964: origin
                    (at_b_p2)

                    ; #12432: <==negation-removal== 10262 (pos)
                    (not (at_b_p4))

                    ; #22595: <==negation-removal== 59964 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #10262: origin
                    (not_at_b_p4)

                    ; #19520: origin
                    (at_b_p3)

                    ; #12432: <==negation-removal== 10262 (pos)
                    (not (at_b_p4))

                    ; #84936: <==negation-removal== 19520 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #10262: origin
                    (not_at_b_p4)

                    ; #12432: origin
                    (at_b_p4)

                    ; #10262: <==negation-removal== 12432 (pos)
                    (not (not_at_b_p4))

                    ; #12432: <==negation-removal== 10262 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #10262: origin
                    (not_at_b_p4)

                    ; #63480: origin
                    (at_b_p5)

                    ; #12432: <==negation-removal== 10262 (pos)
                    (not (at_b_p4))

                    ; #28344: <==negation-removal== 63480 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #10262: origin
                    (not_at_b_p4)

                    ; #90794: origin
                    (at_b_p6)

                    ; #12432: <==negation-removal== 10262 (pos)
                    (not (at_b_p4))

                    ; #89813: <==negation-removal== 90794 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #10262: origin
                    (not_at_b_p4)

                    ; #13609: origin
                    (at_b_p7)

                    ; #12432: <==negation-removal== 10262 (pos)
                    (not (at_b_p4))

                    ; #73810: <==negation-removal== 13609 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #10262: origin
                    (not_at_b_p4)

                    ; #45237: origin
                    (at_b_p8)

                    ; #12432: <==negation-removal== 10262 (pos)
                    (not (at_b_p4))

                    ; #60070: <==negation-removal== 45237 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #10262: origin
                    (not_at_b_p4)

                    ; #78610: origin
                    (at_b_p9)

                    ; #12432: <==negation-removal== 10262 (pos)
                    (not (at_b_p4))

                    ; #64909: <==negation-removal== 78610 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #17408: origin
                    (at_b_p1)

                    ; #28344: origin
                    (not_at_b_p5)

                    ; #63480: <==negation-removal== 28344 (pos)
                    (not (at_b_p5))

                    ; #65126: <==negation-removal== 17408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #28344: origin
                    (not_at_b_p5)

                    ; #59964: origin
                    (at_b_p2)

                    ; #22595: <==negation-removal== 59964 (pos)
                    (not (not_at_b_p2))

                    ; #63480: <==negation-removal== 28344 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #19520: origin
                    (at_b_p3)

                    ; #28344: origin
                    (not_at_b_p5)

                    ; #63480: <==negation-removal== 28344 (pos)
                    (not (at_b_p5))

                    ; #84936: <==negation-removal== 19520 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #12432: origin
                    (at_b_p4)

                    ; #28344: origin
                    (not_at_b_p5)

                    ; #10262: <==negation-removal== 12432 (pos)
                    (not (not_at_b_p4))

                    ; #63480: <==negation-removal== 28344 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #28344: origin
                    (not_at_b_p5)

                    ; #63480: origin
                    (at_b_p5)

                    ; #28344: <==negation-removal== 63480 (pos)
                    (not (not_at_b_p5))

                    ; #63480: <==negation-removal== 28344 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #28344: origin
                    (not_at_b_p5)

                    ; #90794: origin
                    (at_b_p6)

                    ; #63480: <==negation-removal== 28344 (pos)
                    (not (at_b_p5))

                    ; #89813: <==negation-removal== 90794 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #13609: origin
                    (at_b_p7)

                    ; #28344: origin
                    (not_at_b_p5)

                    ; #63480: <==negation-removal== 28344 (pos)
                    (not (at_b_p5))

                    ; #73810: <==negation-removal== 13609 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #28344: origin
                    (not_at_b_p5)

                    ; #45237: origin
                    (at_b_p8)

                    ; #60070: <==negation-removal== 45237 (pos)
                    (not (not_at_b_p8))

                    ; #63480: <==negation-removal== 28344 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #28344: origin
                    (not_at_b_p5)

                    ; #78610: origin
                    (at_b_p9)

                    ; #63480: <==negation-removal== 28344 (pos)
                    (not (at_b_p5))

                    ; #64909: <==negation-removal== 78610 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #17408: origin
                    (at_b_p1)

                    ; #89813: origin
                    (not_at_b_p6)

                    ; #65126: <==negation-removal== 17408 (pos)
                    (not (not_at_b_p1))

                    ; #90794: <==negation-removal== 89813 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #59964: origin
                    (at_b_p2)

                    ; #89813: origin
                    (not_at_b_p6)

                    ; #22595: <==negation-removal== 59964 (pos)
                    (not (not_at_b_p2))

                    ; #90794: <==negation-removal== 89813 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #19520: origin
                    (at_b_p3)

                    ; #89813: origin
                    (not_at_b_p6)

                    ; #84936: <==negation-removal== 19520 (pos)
                    (not (not_at_b_p3))

                    ; #90794: <==negation-removal== 89813 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #12432: origin
                    (at_b_p4)

                    ; #89813: origin
                    (not_at_b_p6)

                    ; #10262: <==negation-removal== 12432 (pos)
                    (not (not_at_b_p4))

                    ; #90794: <==negation-removal== 89813 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #63480: origin
                    (at_b_p5)

                    ; #89813: origin
                    (not_at_b_p6)

                    ; #28344: <==negation-removal== 63480 (pos)
                    (not (not_at_b_p5))

                    ; #90794: <==negation-removal== 89813 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #89813: origin
                    (not_at_b_p6)

                    ; #90794: origin
                    (at_b_p6)

                    ; #89813: <==negation-removal== 90794 (pos)
                    (not (not_at_b_p6))

                    ; #90794: <==negation-removal== 89813 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #13609: origin
                    (at_b_p7)

                    ; #89813: origin
                    (not_at_b_p6)

                    ; #73810: <==negation-removal== 13609 (pos)
                    (not (not_at_b_p7))

                    ; #90794: <==negation-removal== 89813 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #45237: origin
                    (at_b_p8)

                    ; #89813: origin
                    (not_at_b_p6)

                    ; #60070: <==negation-removal== 45237 (pos)
                    (not (not_at_b_p8))

                    ; #90794: <==negation-removal== 89813 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #78610: origin
                    (at_b_p9)

                    ; #89813: origin
                    (not_at_b_p6)

                    ; #64909: <==negation-removal== 78610 (pos)
                    (not (not_at_b_p9))

                    ; #90794: <==negation-removal== 89813 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #17408: origin
                    (at_b_p1)

                    ; #73810: origin
                    (not_at_b_p7)

                    ; #13609: <==negation-removal== 73810 (pos)
                    (not (at_b_p7))

                    ; #65126: <==negation-removal== 17408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #59964: origin
                    (at_b_p2)

                    ; #73810: origin
                    (not_at_b_p7)

                    ; #13609: <==negation-removal== 73810 (pos)
                    (not (at_b_p7))

                    ; #22595: <==negation-removal== 59964 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #19520: origin
                    (at_b_p3)

                    ; #73810: origin
                    (not_at_b_p7)

                    ; #13609: <==negation-removal== 73810 (pos)
                    (not (at_b_p7))

                    ; #84936: <==negation-removal== 19520 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #12432: origin
                    (at_b_p4)

                    ; #73810: origin
                    (not_at_b_p7)

                    ; #10262: <==negation-removal== 12432 (pos)
                    (not (not_at_b_p4))

                    ; #13609: <==negation-removal== 73810 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #63480: origin
                    (at_b_p5)

                    ; #73810: origin
                    (not_at_b_p7)

                    ; #13609: <==negation-removal== 73810 (pos)
                    (not (at_b_p7))

                    ; #28344: <==negation-removal== 63480 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #73810: origin
                    (not_at_b_p7)

                    ; #90794: origin
                    (at_b_p6)

                    ; #13609: <==negation-removal== 73810 (pos)
                    (not (at_b_p7))

                    ; #89813: <==negation-removal== 90794 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #13609: origin
                    (at_b_p7)

                    ; #73810: origin
                    (not_at_b_p7)

                    ; #13609: <==negation-removal== 73810 (pos)
                    (not (at_b_p7))

                    ; #73810: <==negation-removal== 13609 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #45237: origin
                    (at_b_p8)

                    ; #73810: origin
                    (not_at_b_p7)

                    ; #13609: <==negation-removal== 73810 (pos)
                    (not (at_b_p7))

                    ; #60070: <==negation-removal== 45237 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #73810: origin
                    (not_at_b_p7)

                    ; #78610: origin
                    (at_b_p9)

                    ; #13609: <==negation-removal== 73810 (pos)
                    (not (at_b_p7))

                    ; #64909: <==negation-removal== 78610 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #17408: origin
                    (at_b_p1)

                    ; #60070: origin
                    (not_at_b_p8)

                    ; #45237: <==negation-removal== 60070 (pos)
                    (not (at_b_p8))

                    ; #65126: <==negation-removal== 17408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #59964: origin
                    (at_b_p2)

                    ; #60070: origin
                    (not_at_b_p8)

                    ; #22595: <==negation-removal== 59964 (pos)
                    (not (not_at_b_p2))

                    ; #45237: <==negation-removal== 60070 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #19520: origin
                    (at_b_p3)

                    ; #60070: origin
                    (not_at_b_p8)

                    ; #45237: <==negation-removal== 60070 (pos)
                    (not (at_b_p8))

                    ; #84936: <==negation-removal== 19520 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #12432: origin
                    (at_b_p4)

                    ; #60070: origin
                    (not_at_b_p8)

                    ; #10262: <==negation-removal== 12432 (pos)
                    (not (not_at_b_p4))

                    ; #45237: <==negation-removal== 60070 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #60070: origin
                    (not_at_b_p8)

                    ; #63480: origin
                    (at_b_p5)

                    ; #28344: <==negation-removal== 63480 (pos)
                    (not (not_at_b_p5))

                    ; #45237: <==negation-removal== 60070 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #60070: origin
                    (not_at_b_p8)

                    ; #90794: origin
                    (at_b_p6)

                    ; #45237: <==negation-removal== 60070 (pos)
                    (not (at_b_p8))

                    ; #89813: <==negation-removal== 90794 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #13609: origin
                    (at_b_p7)

                    ; #60070: origin
                    (not_at_b_p8)

                    ; #45237: <==negation-removal== 60070 (pos)
                    (not (at_b_p8))

                    ; #73810: <==negation-removal== 13609 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #45237: origin
                    (at_b_p8)

                    ; #60070: origin
                    (not_at_b_p8)

                    ; #45237: <==negation-removal== 60070 (pos)
                    (not (at_b_p8))

                    ; #60070: <==negation-removal== 45237 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #60070: origin
                    (not_at_b_p8)

                    ; #78610: origin
                    (at_b_p9)

                    ; #45237: <==negation-removal== 60070 (pos)
                    (not (at_b_p8))

                    ; #64909: <==negation-removal== 78610 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #17408: origin
                    (at_b_p1)

                    ; #64909: origin
                    (not_at_b_p9)

                    ; #65126: <==negation-removal== 17408 (pos)
                    (not (not_at_b_p1))

                    ; #78610: <==negation-removal== 64909 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #59964: origin
                    (at_b_p2)

                    ; #64909: origin
                    (not_at_b_p9)

                    ; #22595: <==negation-removal== 59964 (pos)
                    (not (not_at_b_p2))

                    ; #78610: <==negation-removal== 64909 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #19520: origin
                    (at_b_p3)

                    ; #64909: origin
                    (not_at_b_p9)

                    ; #78610: <==negation-removal== 64909 (pos)
                    (not (at_b_p9))

                    ; #84936: <==negation-removal== 19520 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #12432: origin
                    (at_b_p4)

                    ; #64909: origin
                    (not_at_b_p9)

                    ; #10262: <==negation-removal== 12432 (pos)
                    (not (not_at_b_p4))

                    ; #78610: <==negation-removal== 64909 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #63480: origin
                    (at_b_p5)

                    ; #64909: origin
                    (not_at_b_p9)

                    ; #28344: <==negation-removal== 63480 (pos)
                    (not (not_at_b_p5))

                    ; #78610: <==negation-removal== 64909 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #64909: origin
                    (not_at_b_p9)

                    ; #90794: origin
                    (at_b_p6)

                    ; #78610: <==negation-removal== 64909 (pos)
                    (not (at_b_p9))

                    ; #89813: <==negation-removal== 90794 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #13609: origin
                    (at_b_p7)

                    ; #64909: origin
                    (not_at_b_p9)

                    ; #73810: <==negation-removal== 13609 (pos)
                    (not (not_at_b_p7))

                    ; #78610: <==negation-removal== 64909 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #45237: origin
                    (at_b_p8)

                    ; #64909: origin
                    (not_at_b_p9)

                    ; #60070: <==negation-removal== 45237 (pos)
                    (not (not_at_b_p8))

                    ; #78610: <==negation-removal== 64909 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #64909: origin
                    (not_at_b_p9)

                    ; #78610: origin
                    (at_b_p9)

                    ; #64909: <==negation-removal== 78610 (pos)
                    (not (not_at_b_p9))

                    ; #78610: <==negation-removal== 64909 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #77576: origin
                    (not_at_c_p1)

                    ; #89227: origin
                    (at_c_p1)

                    ; #77576: <==negation-removal== 89227 (pos)
                    (not (not_at_c_p1))

                    ; #89227: <==negation-removal== 77576 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #54631: origin
                    (at_c_p2)

                    ; #77576: origin
                    (not_at_c_p1)

                    ; #10182: <==negation-removal== 54631 (pos)
                    (not (not_at_c_p2))

                    ; #89227: <==negation-removal== 77576 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #35792: origin
                    (at_c_p3)

                    ; #77576: origin
                    (not_at_c_p1)

                    ; #75578: <==negation-removal== 35792 (pos)
                    (not (not_at_c_p3))

                    ; #89227: <==negation-removal== 77576 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #77576: origin
                    (not_at_c_p1)

                    ; #80707: origin
                    (at_c_p4)

                    ; #65098: <==negation-removal== 80707 (pos)
                    (not (not_at_c_p4))

                    ; #89227: <==negation-removal== 77576 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #77576: origin
                    (not_at_c_p1)

                    ; #84565: origin
                    (at_c_p5)

                    ; #89227: <==negation-removal== 77576 (pos)
                    (not (at_c_p1))

                    ; #96206: <==negation-removal== 84565 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #41030: origin
                    (at_c_p6)

                    ; #77576: origin
                    (not_at_c_p1)

                    ; #73289: <==negation-removal== 41030 (pos)
                    (not (not_at_c_p6))

                    ; #89227: <==negation-removal== 77576 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #22616: origin
                    (at_c_p7)

                    ; #77576: origin
                    (not_at_c_p1)

                    ; #68465: <==negation-removal== 22616 (pos)
                    (not (not_at_c_p7))

                    ; #89227: <==negation-removal== 77576 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #77576: origin
                    (not_at_c_p1)

                    ; #78307: origin
                    (at_c_p8)

                    ; #44428: <==negation-removal== 78307 (pos)
                    (not (not_at_c_p8))

                    ; #89227: <==negation-removal== 77576 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #32608: origin
                    (at_c_p9)

                    ; #77576: origin
                    (not_at_c_p1)

                    ; #27830: <==negation-removal== 32608 (pos)
                    (not (not_at_c_p9))

                    ; #89227: <==negation-removal== 77576 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #10182: origin
                    (not_at_c_p2)

                    ; #89227: origin
                    (at_c_p1)

                    ; #54631: <==negation-removal== 10182 (pos)
                    (not (at_c_p2))

                    ; #77576: <==negation-removal== 89227 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #10182: origin
                    (not_at_c_p2)

                    ; #54631: origin
                    (at_c_p2)

                    ; #10182: <==negation-removal== 54631 (pos)
                    (not (not_at_c_p2))

                    ; #54631: <==negation-removal== 10182 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #10182: origin
                    (not_at_c_p2)

                    ; #35792: origin
                    (at_c_p3)

                    ; #54631: <==negation-removal== 10182 (pos)
                    (not (at_c_p2))

                    ; #75578: <==negation-removal== 35792 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #10182: origin
                    (not_at_c_p2)

                    ; #80707: origin
                    (at_c_p4)

                    ; #54631: <==negation-removal== 10182 (pos)
                    (not (at_c_p2))

                    ; #65098: <==negation-removal== 80707 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #10182: origin
                    (not_at_c_p2)

                    ; #84565: origin
                    (at_c_p5)

                    ; #54631: <==negation-removal== 10182 (pos)
                    (not (at_c_p2))

                    ; #96206: <==negation-removal== 84565 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #10182: origin
                    (not_at_c_p2)

                    ; #41030: origin
                    (at_c_p6)

                    ; #54631: <==negation-removal== 10182 (pos)
                    (not (at_c_p2))

                    ; #73289: <==negation-removal== 41030 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #10182: origin
                    (not_at_c_p2)

                    ; #22616: origin
                    (at_c_p7)

                    ; #54631: <==negation-removal== 10182 (pos)
                    (not (at_c_p2))

                    ; #68465: <==negation-removal== 22616 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #10182: origin
                    (not_at_c_p2)

                    ; #78307: origin
                    (at_c_p8)

                    ; #44428: <==negation-removal== 78307 (pos)
                    (not (not_at_c_p8))

                    ; #54631: <==negation-removal== 10182 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #10182: origin
                    (not_at_c_p2)

                    ; #32608: origin
                    (at_c_p9)

                    ; #27830: <==negation-removal== 32608 (pos)
                    (not (not_at_c_p9))

                    ; #54631: <==negation-removal== 10182 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #75578: origin
                    (not_at_c_p3)

                    ; #89227: origin
                    (at_c_p1)

                    ; #35792: <==negation-removal== 75578 (pos)
                    (not (at_c_p3))

                    ; #77576: <==negation-removal== 89227 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #54631: origin
                    (at_c_p2)

                    ; #75578: origin
                    (not_at_c_p3)

                    ; #10182: <==negation-removal== 54631 (pos)
                    (not (not_at_c_p2))

                    ; #35792: <==negation-removal== 75578 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #35792: origin
                    (at_c_p3)

                    ; #75578: origin
                    (not_at_c_p3)

                    ; #35792: <==negation-removal== 75578 (pos)
                    (not (at_c_p3))

                    ; #75578: <==negation-removal== 35792 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #75578: origin
                    (not_at_c_p3)

                    ; #80707: origin
                    (at_c_p4)

                    ; #35792: <==negation-removal== 75578 (pos)
                    (not (at_c_p3))

                    ; #65098: <==negation-removal== 80707 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #75578: origin
                    (not_at_c_p3)

                    ; #84565: origin
                    (at_c_p5)

                    ; #35792: <==negation-removal== 75578 (pos)
                    (not (at_c_p3))

                    ; #96206: <==negation-removal== 84565 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #41030: origin
                    (at_c_p6)

                    ; #75578: origin
                    (not_at_c_p3)

                    ; #35792: <==negation-removal== 75578 (pos)
                    (not (at_c_p3))

                    ; #73289: <==negation-removal== 41030 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #22616: origin
                    (at_c_p7)

                    ; #75578: origin
                    (not_at_c_p3)

                    ; #35792: <==negation-removal== 75578 (pos)
                    (not (at_c_p3))

                    ; #68465: <==negation-removal== 22616 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #75578: origin
                    (not_at_c_p3)

                    ; #78307: origin
                    (at_c_p8)

                    ; #35792: <==negation-removal== 75578 (pos)
                    (not (at_c_p3))

                    ; #44428: <==negation-removal== 78307 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #32608: origin
                    (at_c_p9)

                    ; #75578: origin
                    (not_at_c_p3)

                    ; #27830: <==negation-removal== 32608 (pos)
                    (not (not_at_c_p9))

                    ; #35792: <==negation-removal== 75578 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #65098: origin
                    (not_at_c_p4)

                    ; #89227: origin
                    (at_c_p1)

                    ; #77576: <==negation-removal== 89227 (pos)
                    (not (not_at_c_p1))

                    ; #80707: <==negation-removal== 65098 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #54631: origin
                    (at_c_p2)

                    ; #65098: origin
                    (not_at_c_p4)

                    ; #10182: <==negation-removal== 54631 (pos)
                    (not (not_at_c_p2))

                    ; #80707: <==negation-removal== 65098 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #35792: origin
                    (at_c_p3)

                    ; #65098: origin
                    (not_at_c_p4)

                    ; #75578: <==negation-removal== 35792 (pos)
                    (not (not_at_c_p3))

                    ; #80707: <==negation-removal== 65098 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #65098: origin
                    (not_at_c_p4)

                    ; #80707: origin
                    (at_c_p4)

                    ; #65098: <==negation-removal== 80707 (pos)
                    (not (not_at_c_p4))

                    ; #80707: <==negation-removal== 65098 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #65098: origin
                    (not_at_c_p4)

                    ; #84565: origin
                    (at_c_p5)

                    ; #80707: <==negation-removal== 65098 (pos)
                    (not (at_c_p4))

                    ; #96206: <==negation-removal== 84565 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #41030: origin
                    (at_c_p6)

                    ; #65098: origin
                    (not_at_c_p4)

                    ; #73289: <==negation-removal== 41030 (pos)
                    (not (not_at_c_p6))

                    ; #80707: <==negation-removal== 65098 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #22616: origin
                    (at_c_p7)

                    ; #65098: origin
                    (not_at_c_p4)

                    ; #68465: <==negation-removal== 22616 (pos)
                    (not (not_at_c_p7))

                    ; #80707: <==negation-removal== 65098 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #65098: origin
                    (not_at_c_p4)

                    ; #78307: origin
                    (at_c_p8)

                    ; #44428: <==negation-removal== 78307 (pos)
                    (not (not_at_c_p8))

                    ; #80707: <==negation-removal== 65098 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #32608: origin
                    (at_c_p9)

                    ; #65098: origin
                    (not_at_c_p4)

                    ; #27830: <==negation-removal== 32608 (pos)
                    (not (not_at_c_p9))

                    ; #80707: <==negation-removal== 65098 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #89227: origin
                    (at_c_p1)

                    ; #96206: origin
                    (not_at_c_p5)

                    ; #77576: <==negation-removal== 89227 (pos)
                    (not (not_at_c_p1))

                    ; #84565: <==negation-removal== 96206 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #54631: origin
                    (at_c_p2)

                    ; #96206: origin
                    (not_at_c_p5)

                    ; #10182: <==negation-removal== 54631 (pos)
                    (not (not_at_c_p2))

                    ; #84565: <==negation-removal== 96206 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #35792: origin
                    (at_c_p3)

                    ; #96206: origin
                    (not_at_c_p5)

                    ; #75578: <==negation-removal== 35792 (pos)
                    (not (not_at_c_p3))

                    ; #84565: <==negation-removal== 96206 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #80707: origin
                    (at_c_p4)

                    ; #96206: origin
                    (not_at_c_p5)

                    ; #65098: <==negation-removal== 80707 (pos)
                    (not (not_at_c_p4))

                    ; #84565: <==negation-removal== 96206 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #84565: origin
                    (at_c_p5)

                    ; #96206: origin
                    (not_at_c_p5)

                    ; #84565: <==negation-removal== 96206 (pos)
                    (not (at_c_p5))

                    ; #96206: <==negation-removal== 84565 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #41030: origin
                    (at_c_p6)

                    ; #96206: origin
                    (not_at_c_p5)

                    ; #73289: <==negation-removal== 41030 (pos)
                    (not (not_at_c_p6))

                    ; #84565: <==negation-removal== 96206 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #22616: origin
                    (at_c_p7)

                    ; #96206: origin
                    (not_at_c_p5)

                    ; #68465: <==negation-removal== 22616 (pos)
                    (not (not_at_c_p7))

                    ; #84565: <==negation-removal== 96206 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #78307: origin
                    (at_c_p8)

                    ; #96206: origin
                    (not_at_c_p5)

                    ; #44428: <==negation-removal== 78307 (pos)
                    (not (not_at_c_p8))

                    ; #84565: <==negation-removal== 96206 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #32608: origin
                    (at_c_p9)

                    ; #96206: origin
                    (not_at_c_p5)

                    ; #27830: <==negation-removal== 32608 (pos)
                    (not (not_at_c_p9))

                    ; #84565: <==negation-removal== 96206 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #73289: origin
                    (not_at_c_p6)

                    ; #89227: origin
                    (at_c_p1)

                    ; #41030: <==negation-removal== 73289 (pos)
                    (not (at_c_p6))

                    ; #77576: <==negation-removal== 89227 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #54631: origin
                    (at_c_p2)

                    ; #73289: origin
                    (not_at_c_p6)

                    ; #10182: <==negation-removal== 54631 (pos)
                    (not (not_at_c_p2))

                    ; #41030: <==negation-removal== 73289 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #35792: origin
                    (at_c_p3)

                    ; #73289: origin
                    (not_at_c_p6)

                    ; #41030: <==negation-removal== 73289 (pos)
                    (not (at_c_p6))

                    ; #75578: <==negation-removal== 35792 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #73289: origin
                    (not_at_c_p6)

                    ; #80707: origin
                    (at_c_p4)

                    ; #41030: <==negation-removal== 73289 (pos)
                    (not (at_c_p6))

                    ; #65098: <==negation-removal== 80707 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #73289: origin
                    (not_at_c_p6)

                    ; #84565: origin
                    (at_c_p5)

                    ; #41030: <==negation-removal== 73289 (pos)
                    (not (at_c_p6))

                    ; #96206: <==negation-removal== 84565 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #41030: origin
                    (at_c_p6)

                    ; #73289: origin
                    (not_at_c_p6)

                    ; #41030: <==negation-removal== 73289 (pos)
                    (not (at_c_p6))

                    ; #73289: <==negation-removal== 41030 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #22616: origin
                    (at_c_p7)

                    ; #73289: origin
                    (not_at_c_p6)

                    ; #41030: <==negation-removal== 73289 (pos)
                    (not (at_c_p6))

                    ; #68465: <==negation-removal== 22616 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #73289: origin
                    (not_at_c_p6)

                    ; #78307: origin
                    (at_c_p8)

                    ; #41030: <==negation-removal== 73289 (pos)
                    (not (at_c_p6))

                    ; #44428: <==negation-removal== 78307 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #32608: origin
                    (at_c_p9)

                    ; #73289: origin
                    (not_at_c_p6)

                    ; #27830: <==negation-removal== 32608 (pos)
                    (not (not_at_c_p9))

                    ; #41030: <==negation-removal== 73289 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #68465: origin
                    (not_at_c_p7)

                    ; #89227: origin
                    (at_c_p1)

                    ; #22616: <==negation-removal== 68465 (pos)
                    (not (at_c_p7))

                    ; #77576: <==negation-removal== 89227 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #54631: origin
                    (at_c_p2)

                    ; #68465: origin
                    (not_at_c_p7)

                    ; #10182: <==negation-removal== 54631 (pos)
                    (not (not_at_c_p2))

                    ; #22616: <==negation-removal== 68465 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #35792: origin
                    (at_c_p3)

                    ; #68465: origin
                    (not_at_c_p7)

                    ; #22616: <==negation-removal== 68465 (pos)
                    (not (at_c_p7))

                    ; #75578: <==negation-removal== 35792 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #68465: origin
                    (not_at_c_p7)

                    ; #80707: origin
                    (at_c_p4)

                    ; #22616: <==negation-removal== 68465 (pos)
                    (not (at_c_p7))

                    ; #65098: <==negation-removal== 80707 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #68465: origin
                    (not_at_c_p7)

                    ; #84565: origin
                    (at_c_p5)

                    ; #22616: <==negation-removal== 68465 (pos)
                    (not (at_c_p7))

                    ; #96206: <==negation-removal== 84565 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #41030: origin
                    (at_c_p6)

                    ; #68465: origin
                    (not_at_c_p7)

                    ; #22616: <==negation-removal== 68465 (pos)
                    (not (at_c_p7))

                    ; #73289: <==negation-removal== 41030 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #22616: origin
                    (at_c_p7)

                    ; #68465: origin
                    (not_at_c_p7)

                    ; #22616: <==negation-removal== 68465 (pos)
                    (not (at_c_p7))

                    ; #68465: <==negation-removal== 22616 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #68465: origin
                    (not_at_c_p7)

                    ; #78307: origin
                    (at_c_p8)

                    ; #22616: <==negation-removal== 68465 (pos)
                    (not (at_c_p7))

                    ; #44428: <==negation-removal== 78307 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #32608: origin
                    (at_c_p9)

                    ; #68465: origin
                    (not_at_c_p7)

                    ; #22616: <==negation-removal== 68465 (pos)
                    (not (at_c_p7))

                    ; #27830: <==negation-removal== 32608 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #44428: origin
                    (not_at_c_p8)

                    ; #89227: origin
                    (at_c_p1)

                    ; #77576: <==negation-removal== 89227 (pos)
                    (not (not_at_c_p1))

                    ; #78307: <==negation-removal== 44428 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #44428: origin
                    (not_at_c_p8)

                    ; #54631: origin
                    (at_c_p2)

                    ; #10182: <==negation-removal== 54631 (pos)
                    (not (not_at_c_p2))

                    ; #78307: <==negation-removal== 44428 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #35792: origin
                    (at_c_p3)

                    ; #44428: origin
                    (not_at_c_p8)

                    ; #75578: <==negation-removal== 35792 (pos)
                    (not (not_at_c_p3))

                    ; #78307: <==negation-removal== 44428 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #44428: origin
                    (not_at_c_p8)

                    ; #80707: origin
                    (at_c_p4)

                    ; #65098: <==negation-removal== 80707 (pos)
                    (not (not_at_c_p4))

                    ; #78307: <==negation-removal== 44428 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #44428: origin
                    (not_at_c_p8)

                    ; #84565: origin
                    (at_c_p5)

                    ; #78307: <==negation-removal== 44428 (pos)
                    (not (at_c_p8))

                    ; #96206: <==negation-removal== 84565 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #41030: origin
                    (at_c_p6)

                    ; #44428: origin
                    (not_at_c_p8)

                    ; #73289: <==negation-removal== 41030 (pos)
                    (not (not_at_c_p6))

                    ; #78307: <==negation-removal== 44428 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #22616: origin
                    (at_c_p7)

                    ; #44428: origin
                    (not_at_c_p8)

                    ; #68465: <==negation-removal== 22616 (pos)
                    (not (not_at_c_p7))

                    ; #78307: <==negation-removal== 44428 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #44428: origin
                    (not_at_c_p8)

                    ; #78307: origin
                    (at_c_p8)

                    ; #44428: <==negation-removal== 78307 (pos)
                    (not (not_at_c_p8))

                    ; #78307: <==negation-removal== 44428 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #32608: origin
                    (at_c_p9)

                    ; #44428: origin
                    (not_at_c_p8)

                    ; #27830: <==negation-removal== 32608 (pos)
                    (not (not_at_c_p9))

                    ; #78307: <==negation-removal== 44428 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #27830: origin
                    (not_at_c_p9)

                    ; #89227: origin
                    (at_c_p1)

                    ; #32608: <==negation-removal== 27830 (pos)
                    (not (at_c_p9))

                    ; #77576: <==negation-removal== 89227 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #27830: origin
                    (not_at_c_p9)

                    ; #54631: origin
                    (at_c_p2)

                    ; #10182: <==negation-removal== 54631 (pos)
                    (not (not_at_c_p2))

                    ; #32608: <==negation-removal== 27830 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #27830: origin
                    (not_at_c_p9)

                    ; #35792: origin
                    (at_c_p3)

                    ; #32608: <==negation-removal== 27830 (pos)
                    (not (at_c_p9))

                    ; #75578: <==negation-removal== 35792 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #27830: origin
                    (not_at_c_p9)

                    ; #80707: origin
                    (at_c_p4)

                    ; #32608: <==negation-removal== 27830 (pos)
                    (not (at_c_p9))

                    ; #65098: <==negation-removal== 80707 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #27830: origin
                    (not_at_c_p9)

                    ; #84565: origin
                    (at_c_p5)

                    ; #32608: <==negation-removal== 27830 (pos)
                    (not (at_c_p9))

                    ; #96206: <==negation-removal== 84565 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #27830: origin
                    (not_at_c_p9)

                    ; #41030: origin
                    (at_c_p6)

                    ; #32608: <==negation-removal== 27830 (pos)
                    (not (at_c_p9))

                    ; #73289: <==negation-removal== 41030 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #22616: origin
                    (at_c_p7)

                    ; #27830: origin
                    (not_at_c_p9)

                    ; #32608: <==negation-removal== 27830 (pos)
                    (not (at_c_p9))

                    ; #68465: <==negation-removal== 22616 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #27830: origin
                    (not_at_c_p9)

                    ; #78307: origin
                    (at_c_p8)

                    ; #32608: <==negation-removal== 27830 (pos)
                    (not (at_c_p9))

                    ; #44428: <==negation-removal== 78307 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #27830: origin
                    (not_at_c_p9)

                    ; #32608: origin
                    (at_c_p9)

                    ; #27830: <==negation-removal== 32608 (pos)
                    (not (not_at_c_p9))

                    ; #32608: <==negation-removal== 27830 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13154: <==commonly_known== 26339 (pos)
                    (Bc_checked_p1)

                    ; #21618: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #21713: <==closure== 21618 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #24470: <==commonly_known== 26339 (pos)
                    (Ba_checked_p1)

                    ; #26339: origin
                    (checked_p1)

                    ; #32891: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #39000: <==commonly_known== 87341 (neg)
                    (Pc_checked_p1)

                    ; #50919: <==commonly_known== 87341 (neg)
                    (Pb_checked_p1)

                    ; #68950: <==commonly_known== 87341 (neg)
                    (Pa_checked_p1)

                    ; #69822: <==closure== 32891 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #86288: <==commonly_known== 26339 (pos)
                    (Bb_checked_p1)

                    ; #14843: <==negation-removal== 21618 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #20871: <==negation-removal== 21713 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #24641: <==negation-removal== 13154 (pos)
                    (not (Pc_not_checked_p1))

                    ; #48798: <==uncertain_firing== 32891 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #53284: <==negation-removal== 24470 (pos)
                    (not (Pa_not_checked_p1))

                    ; #56658: <==uncertain_firing== 21713 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #56984: <==negation-removal== 68950 (pos)
                    (not (Ba_not_checked_p1))

                    ; #57827: <==negation-removal== 69822 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #61812: <==uncertain_firing== 69822 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #68464: <==negation-removal== 50919 (pos)
                    (not (Bb_not_checked_p1))

                    ; #75108: <==negation-removal== 86288 (pos)
                    (not (Pb_not_checked_p1))

                    ; #83453: <==uncertain_firing== 21618 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #87341: <==negation-removal== 26339 (pos)
                    (not (not_checked_p1))

                    ; #89252: <==negation-removal== 39000 (pos)
                    (not (Bc_not_checked_p1))

                    ; #91021: <==negation-removal== 32891 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10944: <==commonly_known== 86313 (neg)
                    (Pb_checked_p2)

                    ; #11385: <==commonly_known== 64292 (pos)
                    (Bc_checked_p2)

                    ; #32981: <==commonly_known== 64292 (pos)
                    (Bb_checked_p2)

                    ; #42343: <==closure== 88434 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #56949: <==commonly_known== 86313 (neg)
                    (Pa_checked_p2)

                    ; #59788: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #64292: origin
                    (checked_p2)

                    ; #68728: <==commonly_known== 86313 (neg)
                    (Pc_checked_p2)

                    ; #73159: <==commonly_known== 64292 (pos)
                    (Ba_checked_p2)

                    ; #73470: <==closure== 59788 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #88434: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #12331: <==negation-removal== 42343 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #13781: <==negation-removal== 88434 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #17008: <==uncertain_firing== 59788 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #18419: <==negation-removal== 32981 (pos)
                    (not (Pb_not_checked_p2))

                    ; #40157: <==negation-removal== 56949 (pos)
                    (not (Ba_not_checked_p2))

                    ; #43905: <==uncertain_firing== 73470 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #47183: <==negation-removal== 10944 (pos)
                    (not (Bb_not_checked_p2))

                    ; #48440: <==negation-removal== 68728 (pos)
                    (not (Bc_not_checked_p2))

                    ; #50929: <==negation-removal== 11385 (pos)
                    (not (Pc_not_checked_p2))

                    ; #57024: <==uncertain_firing== 88434 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #67731: <==uncertain_firing== 42343 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #69053: <==negation-removal== 73159 (pos)
                    (not (Pa_not_checked_p2))

                    ; #70798: <==negation-removal== 73470 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #82228: <==negation-removal== 59788 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #86313: <==negation-removal== 64292 (pos)
                    (not (not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14435: <==closure== 84591 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #20902: <==commonly_known== 70653 (neg)
                    (Pc_checked_p3)

                    ; #25040: <==commonly_known== 48931 (pos)
                    (Bc_checked_p3)

                    ; #34715: <==commonly_known== 48931 (pos)
                    (Bb_checked_p3)

                    ; #48931: origin
                    (checked_p3)

                    ; #49367: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54742: <==closure== 49367 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #57848: <==commonly_known== 48931 (pos)
                    (Ba_checked_p3)

                    ; #59684: <==commonly_known== 70653 (neg)
                    (Pa_checked_p3)

                    ; #79016: <==commonly_known== 70653 (neg)
                    (Pb_checked_p3)

                    ; #84591: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #15041: <==uncertain_firing== 84591 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #17885: <==uncertain_firing== 49367 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #21757: <==negation-removal== 84591 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #28129: <==uncertain_firing== 54742 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #32453: <==negation-removal== 57848 (pos)
                    (not (Pa_not_checked_p3))

                    ; #42639: <==uncertain_firing== 14435 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #49923: <==negation-removal== 20902 (pos)
                    (not (Bc_not_checked_p3))

                    ; #70653: <==negation-removal== 48931 (pos)
                    (not (not_checked_p3))

                    ; #80121: <==negation-removal== 54742 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #83686: <==negation-removal== 14435 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #83975: <==negation-removal== 34715 (pos)
                    (not (Pb_not_checked_p3))

                    ; #86967: <==negation-removal== 79016 (pos)
                    (not (Bb_not_checked_p3))

                    ; #87245: <==negation-removal== 59684 (pos)
                    (not (Ba_not_checked_p3))

                    ; #87558: <==negation-removal== 25040 (pos)
                    (not (Pc_not_checked_p3))

                    ; #89118: <==negation-removal== 49367 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #15122: <==closure== 17828 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #17828: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #27170: <==commonly_known== 86142 (neg)
                    (Pa_checked_p4)

                    ; #28191: <==commonly_known== 86142 (neg)
                    (Pc_checked_p4)

                    ; #34814: <==commonly_known== 86142 (neg)
                    (Pb_checked_p4)

                    ; #40111: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #46214: <==commonly_known== 76605 (pos)
                    (Ba_checked_p4)

                    ; #51129: <==closure== 40111 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #76605: origin
                    (checked_p4)

                    ; #81741: <==commonly_known== 76605 (pos)
                    (Bc_checked_p4)

                    ; #95488: <==commonly_known== 76605 (pos)
                    (Bb_checked_p4)

                    ; #27201: <==negation-removal== 34814 (pos)
                    (not (Bb_not_checked_p4))

                    ; #31992: <==uncertain_firing== 17828 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #32567: <==uncertain_firing== 15122 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #32793: <==negation-removal== 81741 (pos)
                    (not (Pc_not_checked_p4))

                    ; #32858: <==negation-removal== 40111 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #51158: <==negation-removal== 46214 (pos)
                    (not (Pa_not_checked_p4))

                    ; #57285: <==negation-removal== 17828 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #75585: <==negation-removal== 95488 (pos)
                    (not (Pb_not_checked_p4))

                    ; #76125: <==negation-removal== 28191 (pos)
                    (not (Bc_not_checked_p4))

                    ; #78940: <==uncertain_firing== 51129 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #79819: <==negation-removal== 27170 (pos)
                    (not (Ba_not_checked_p4))

                    ; #82218: <==negation-removal== 15122 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #85028: <==negation-removal== 51129 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #86142: <==negation-removal== 76605 (pos)
                    (not (not_checked_p4))

                    ; #89682: <==uncertain_firing== 40111 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12644: <==commonly_known== 81796 (neg)
                    (Pb_checked_p5)

                    ; #13378: <==commonly_known== 52307 (pos)
                    (Bc_checked_p5)

                    ; #21231: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #21814: <==commonly_known== 52307 (pos)
                    (Ba_checked_p5)

                    ; #52307: origin
                    (checked_p5)

                    ; #53080: <==closure== 84485 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #78034: <==closure== 21231 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #81009: <==commonly_known== 81796 (neg)
                    (Pa_checked_p5)

                    ; #84485: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #88158: <==commonly_known== 81796 (neg)
                    (Pc_checked_p5)

                    ; #95471: <==commonly_known== 52307 (pos)
                    (Bb_checked_p5)

                    ; #17532: <==uncertain_firing== 21231 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #29579: <==negation-removal== 21814 (pos)
                    (not (Pa_not_checked_p5))

                    ; #32752: <==uncertain_firing== 53080 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #36138: <==negation-removal== 21231 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #38772: <==negation-removal== 81009 (pos)
                    (not (Ba_not_checked_p5))

                    ; #39624: <==uncertain_firing== 84485 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #44758: <==negation-removal== 12644 (pos)
                    (not (Bb_not_checked_p5))

                    ; #44839: <==uncertain_firing== 78034 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #47701: <==negation-removal== 88158 (pos)
                    (not (Bc_not_checked_p5))

                    ; #51709: <==negation-removal== 13378 (pos)
                    (not (Pc_not_checked_p5))

                    ; #54145: <==negation-removal== 53080 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63653: <==negation-removal== 84485 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #64000: <==negation-removal== 78034 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #72358: <==negation-removal== 95471 (pos)
                    (not (Pb_not_checked_p5))

                    ; #81796: <==negation-removal== 52307 (pos)
                    (not (not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10167: <==commonly_known== 29534 (neg)
                    (Pc_checked_p6)

                    ; #22949: <==commonly_known== 59388 (pos)
                    (Bb_checked_p6)

                    ; #29213: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #36566: <==commonly_known== 29534 (neg)
                    (Pb_checked_p6)

                    ; #43989: <==commonly_known== 59388 (pos)
                    (Bc_checked_p6)

                    ; #50589: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #59388: origin
                    (checked_p6)

                    ; #64580: <==closure== 29213 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #65415: <==commonly_known== 29534 (neg)
                    (Pa_checked_p6)

                    ; #82982: <==commonly_known== 59388 (pos)
                    (Ba_checked_p6)

                    ; #84787: <==closure== 50589 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #11625: <==uncertain_firing== 29213 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #11634: <==uncertain_firing== 50589 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #12881: <==negation-removal== 22949 (pos)
                    (not (Pb_not_checked_p6))

                    ; #16688: <==negation-removal== 10167 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29534: <==negation-removal== 59388 (pos)
                    (not (not_checked_p6))

                    ; #31070: <==negation-removal== 82982 (pos)
                    (not (Pa_not_checked_p6))

                    ; #36774: <==negation-removal== 29213 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #43452: <==negation-removal== 43989 (pos)
                    (not (Pc_not_checked_p6))

                    ; #43620: <==uncertain_firing== 64580 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #43842: <==negation-removal== 65415 (pos)
                    (not (Ba_not_checked_p6))

                    ; #47537: <==negation-removal== 64580 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #57257: <==negation-removal== 36566 (pos)
                    (not (Bb_not_checked_p6))

                    ; #78700: <==uncertain_firing== 84787 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #81577: <==negation-removal== 84787 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85942: <==negation-removal== 50589 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #17144: <==commonly_known== 40610 (pos)
                    (Ba_checked_p7)

                    ; #27972: <==commonly_known== 48239 (neg)
                    (Pa_checked_p7)

                    ; #30809: <==commonly_known== 40610 (pos)
                    (Bc_checked_p7)

                    ; #40610: origin
                    (checked_p7)

                    ; #42179: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #43685: <==closure== 80292 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #47009: <==commonly_known== 48239 (neg)
                    (Pc_checked_p7)

                    ; #66450: <==closure== 42179 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #75551: <==commonly_known== 48239 (neg)
                    (Pb_checked_p7)

                    ; #80292: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #91617: <==commonly_known== 40610 (pos)
                    (Bb_checked_p7)

                    ; #13962: <==negation-removal== 30809 (pos)
                    (not (Pc_not_checked_p7))

                    ; #15275: <==negation-removal== 17144 (pos)
                    (not (Pa_not_checked_p7))

                    ; #22328: <==uncertain_firing== 42179 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #26976: <==negation-removal== 75551 (pos)
                    (not (Bb_not_checked_p7))

                    ; #28836: <==negation-removal== 80292 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #47423: <==negation-removal== 66450 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #47496: <==negation-removal== 91617 (pos)
                    (not (Pb_not_checked_p7))

                    ; #48239: <==negation-removal== 40610 (pos)
                    (not (not_checked_p7))

                    ; #51478: <==negation-removal== 27972 (pos)
                    (not (Ba_not_checked_p7))

                    ; #55106: <==negation-removal== 47009 (pos)
                    (not (Bc_not_checked_p7))

                    ; #62374: <==negation-removal== 42179 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #68023: <==uncertain_firing== 80292 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #85945: <==negation-removal== 43685 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #87431: <==uncertain_firing== 43685 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #91987: <==uncertain_firing== 66450 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14218: <==commonly_known== 64740 (pos)
                    (Ba_checked_p8)

                    ; #17244: <==commonly_known== 10572 (neg)
                    (Pa_checked_p8)

                    ; #24522: <==closure== 80612 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #24686: <==commonly_known== 64740 (pos)
                    (Bc_checked_p8)

                    ; #43511: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #64740: origin
                    (checked_p8)

                    ; #76484: <==commonly_known== 64740 (pos)
                    (Bb_checked_p8)

                    ; #78098: <==commonly_known== 10572 (neg)
                    (Pc_checked_p8)

                    ; #80612: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #85663: <==commonly_known== 10572 (neg)
                    (Pb_checked_p8)

                    ; #86333: <==closure== 43511 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #10572: <==negation-removal== 64740 (pos)
                    (not (not_checked_p8))

                    ; #15159: <==negation-removal== 76484 (pos)
                    (not (Pb_not_checked_p8))

                    ; #20590: <==negation-removal== 24522 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #25370: <==negation-removal== 80612 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #27009: <==negation-removal== 17244 (pos)
                    (not (Ba_not_checked_p8))

                    ; #28898: <==negation-removal== 43511 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #39339: <==negation-removal== 78098 (pos)
                    (not (Bc_not_checked_p8))

                    ; #40219: <==negation-removal== 85663 (pos)
                    (not (Bb_not_checked_p8))

                    ; #53696: <==uncertain_firing== 43511 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #59924: <==negation-removal== 86333 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #73864: <==negation-removal== 24686 (pos)
                    (not (Pc_not_checked_p8))

                    ; #75883: <==uncertain_firing== 80612 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #84151: <==negation-removal== 14218 (pos)
                    (not (Pa_not_checked_p8))

                    ; #87649: <==uncertain_firing== 86333 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #91385: <==uncertain_firing== 24522 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17836: <==commonly_known== 64957 (neg)
                    (Pa_checked_p9)

                    ; #36921: <==commonly_known== 64957 (neg)
                    (Pc_checked_p9)

                    ; #37984: <==commonly_known== 84865 (pos)
                    (Bc_checked_p9)

                    ; #49975: <==commonly_known== 84865 (pos)
                    (Bb_checked_p9)

                    ; #50280: <==commonly_known== 84865 (pos)
                    (Ba_checked_p9)

                    ; #74591: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #74786: <==commonly_known== 64957 (neg)
                    (Pb_checked_p9)

                    ; #75714: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #75960: <==closure== 75714 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #81237: <==closure== 74591 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #84865: origin
                    (checked_p9)

                    ; #16861: <==negation-removal== 49975 (pos)
                    (not (Pb_not_checked_p9))

                    ; #18283: <==uncertain_firing== 74591 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #21242: <==negation-removal== 36921 (pos)
                    (not (Bc_not_checked_p9))

                    ; #22242: <==negation-removal== 81237 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #23184: <==negation-removal== 74591 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #32362: <==negation-removal== 17836 (pos)
                    (not (Ba_not_checked_p9))

                    ; #33613: <==uncertain_firing== 75960 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #37258: <==negation-removal== 74786 (pos)
                    (not (Bb_not_checked_p9))

                    ; #48659: <==uncertain_firing== 81237 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #64957: <==negation-removal== 84865 (pos)
                    (not (not_checked_p9))

                    ; #66227: <==negation-removal== 50280 (pos)
                    (not (Pa_not_checked_p9))

                    ; #67482: <==negation-removal== 75960 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #69182: <==negation-removal== 75714 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #85678: <==uncertain_firing== 75714 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #86903: <==negation-removal== 37984 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13154: <==commonly_known== 26339 (pos)
                    (Bc_checked_p1)

                    ; #18343: <==closure== 54654 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #24470: <==commonly_known== 26339 (pos)
                    (Ba_checked_p1)

                    ; #26339: origin
                    (checked_p1)

                    ; #27101: <==closure== 38596 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #38596: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #39000: <==commonly_known== 87341 (neg)
                    (Pc_checked_p1)

                    ; #50919: <==commonly_known== 87341 (neg)
                    (Pb_checked_p1)

                    ; #54654: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #68950: <==commonly_known== 87341 (neg)
                    (Pa_checked_p1)

                    ; #86288: <==commonly_known== 26339 (pos)
                    (Bb_checked_p1)

                    ; #15048: <==negation-removal== 38596 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #20854: <==negation-removal== 18343 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #23622: <==uncertain_firing== 18343 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #24641: <==negation-removal== 13154 (pos)
                    (not (Pc_not_checked_p1))

                    ; #53284: <==negation-removal== 24470 (pos)
                    (not (Pa_not_checked_p1))

                    ; #56984: <==negation-removal== 68950 (pos)
                    (not (Ba_not_checked_p1))

                    ; #65854: <==negation-removal== 54654 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #66458: <==uncertain_firing== 54654 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #68464: <==negation-removal== 50919 (pos)
                    (not (Bb_not_checked_p1))

                    ; #75108: <==negation-removal== 86288 (pos)
                    (not (Pb_not_checked_p1))

                    ; #78839: <==negation-removal== 27101 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #80745: <==uncertain_firing== 38596 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #83043: <==uncertain_firing== 27101 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #87341: <==negation-removal== 26339 (pos)
                    (not (not_checked_p1))

                    ; #89252: <==negation-removal== 39000 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10024: <==closure== 30036 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #10944: <==commonly_known== 86313 (neg)
                    (Pb_checked_p2)

                    ; #11385: <==commonly_known== 64292 (pos)
                    (Bc_checked_p2)

                    ; #30036: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #32981: <==commonly_known== 64292 (pos)
                    (Bb_checked_p2)

                    ; #44084: <==closure== 79083 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #56949: <==commonly_known== 86313 (neg)
                    (Pa_checked_p2)

                    ; #64292: origin
                    (checked_p2)

                    ; #68728: <==commonly_known== 86313 (neg)
                    (Pc_checked_p2)

                    ; #73159: <==commonly_known== 64292 (pos)
                    (Ba_checked_p2)

                    ; #79083: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #15771: <==negation-removal== 44084 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #18419: <==negation-removal== 32981 (pos)
                    (not (Pb_not_checked_p2))

                    ; #37041: <==uncertain_firing== 44084 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #39136: <==uncertain_firing== 10024 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #40157: <==negation-removal== 56949 (pos)
                    (not (Ba_not_checked_p2))

                    ; #47183: <==negation-removal== 10944 (pos)
                    (not (Bb_not_checked_p2))

                    ; #48440: <==negation-removal== 68728 (pos)
                    (not (Bc_not_checked_p2))

                    ; #49821: <==negation-removal== 79083 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #50929: <==negation-removal== 11385 (pos)
                    (not (Pc_not_checked_p2))

                    ; #53566: <==negation-removal== 10024 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #57337: <==negation-removal== 30036 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #67473: <==uncertain_firing== 30036 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69053: <==negation-removal== 73159 (pos)
                    (not (Pa_not_checked_p2))

                    ; #85374: <==uncertain_firing== 79083 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #86313: <==negation-removal== 64292 (pos)
                    (not (not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16466: <==closure== 26264 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #20902: <==commonly_known== 70653 (neg)
                    (Pc_checked_p3)

                    ; #25040: <==commonly_known== 48931 (pos)
                    (Bc_checked_p3)

                    ; #26264: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #34715: <==commonly_known== 48931 (pos)
                    (Bb_checked_p3)

                    ; #48931: origin
                    (checked_p3)

                    ; #52294: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #57848: <==commonly_known== 48931 (pos)
                    (Ba_checked_p3)

                    ; #59684: <==commonly_known== 70653 (neg)
                    (Pa_checked_p3)

                    ; #78312: <==closure== 52294 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #79016: <==commonly_known== 70653 (neg)
                    (Pb_checked_p3)

                    ; #18283: <==negation-removal== 16466 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #26623: <==uncertain_firing== 52294 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #32453: <==negation-removal== 57848 (pos)
                    (not (Pa_not_checked_p3))

                    ; #33131: <==negation-removal== 78312 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #41868: <==negation-removal== 52294 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49923: <==negation-removal== 20902 (pos)
                    (not (Bc_not_checked_p3))

                    ; #50949: <==uncertain_firing== 16466 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #70653: <==negation-removal== 48931 (pos)
                    (not (not_checked_p3))

                    ; #81086: <==uncertain_firing== 78312 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #83975: <==negation-removal== 34715 (pos)
                    (not (Pb_not_checked_p3))

                    ; #84383: <==negation-removal== 26264 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #86967: <==negation-removal== 79016 (pos)
                    (not (Bb_not_checked_p3))

                    ; #87245: <==negation-removal== 59684 (pos)
                    (not (Ba_not_checked_p3))

                    ; #87558: <==negation-removal== 25040 (pos)
                    (not (Pc_not_checked_p3))

                    ; #89838: <==uncertain_firing== 26264 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10064: <==closure== 35806 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #27170: <==commonly_known== 86142 (neg)
                    (Pa_checked_p4)

                    ; #28191: <==commonly_known== 86142 (neg)
                    (Pc_checked_p4)

                    ; #34814: <==commonly_known== 86142 (neg)
                    (Pb_checked_p4)

                    ; #35806: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #46214: <==commonly_known== 76605 (pos)
                    (Ba_checked_p4)

                    ; #53034: <==closure== 70401 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #70401: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #76605: origin
                    (checked_p4)

                    ; #81741: <==commonly_known== 76605 (pos)
                    (Bc_checked_p4)

                    ; #95488: <==commonly_known== 76605 (pos)
                    (Bb_checked_p4)

                    ; #17708: <==uncertain_firing== 53034 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #25626: <==negation-removal== 53034 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #27201: <==negation-removal== 34814 (pos)
                    (not (Bb_not_checked_p4))

                    ; #27622: <==negation-removal== 70401 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #29712: <==uncertain_firing== 10064 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #32793: <==negation-removal== 81741 (pos)
                    (not (Pc_not_checked_p4))

                    ; #41809: <==negation-removal== 10064 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #51158: <==negation-removal== 46214 (pos)
                    (not (Pa_not_checked_p4))

                    ; #65903: <==negation-removal== 35806 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #75585: <==negation-removal== 95488 (pos)
                    (not (Pb_not_checked_p4))

                    ; #76125: <==negation-removal== 28191 (pos)
                    (not (Bc_not_checked_p4))

                    ; #76642: <==uncertain_firing== 70401 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #79819: <==negation-removal== 27170 (pos)
                    (not (Ba_not_checked_p4))

                    ; #86142: <==negation-removal== 76605 (pos)
                    (not (not_checked_p4))

                    ; #89235: <==uncertain_firing== 35806 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12644: <==commonly_known== 81796 (neg)
                    (Pb_checked_p5)

                    ; #13378: <==commonly_known== 52307 (pos)
                    (Bc_checked_p5)

                    ; #15443: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #20468: <==closure== 77184 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #21814: <==commonly_known== 52307 (pos)
                    (Ba_checked_p5)

                    ; #52307: origin
                    (checked_p5)

                    ; #70268: <==closure== 15443 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #77184: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #81009: <==commonly_known== 81796 (neg)
                    (Pa_checked_p5)

                    ; #88158: <==commonly_known== 81796 (neg)
                    (Pc_checked_p5)

                    ; #95471: <==commonly_known== 52307 (pos)
                    (Bb_checked_p5)

                    ; #29344: <==uncertain_firing== 70268 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #29579: <==negation-removal== 21814 (pos)
                    (not (Pa_not_checked_p5))

                    ; #30175: <==uncertain_firing== 20468 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #34680: <==negation-removal== 77184 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #38772: <==negation-removal== 81009 (pos)
                    (not (Ba_not_checked_p5))

                    ; #42554: <==negation-removal== 70268 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #44758: <==negation-removal== 12644 (pos)
                    (not (Bb_not_checked_p5))

                    ; #47701: <==negation-removal== 88158 (pos)
                    (not (Bc_not_checked_p5))

                    ; #51709: <==negation-removal== 13378 (pos)
                    (not (Pc_not_checked_p5))

                    ; #62408: <==negation-removal== 15443 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #72358: <==negation-removal== 95471 (pos)
                    (not (Pb_not_checked_p5))

                    ; #81796: <==negation-removal== 52307 (pos)
                    (not (not_checked_p5))

                    ; #82167: <==negation-removal== 20468 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #84010: <==uncertain_firing== 77184 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #87897: <==uncertain_firing== 15443 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10167: <==commonly_known== 29534 (neg)
                    (Pc_checked_p6)

                    ; #14280: <==closure== 38095 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #22949: <==commonly_known== 59388 (pos)
                    (Bb_checked_p6)

                    ; #27713: <==closure== 73805 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #36566: <==commonly_known== 29534 (neg)
                    (Pb_checked_p6)

                    ; #38095: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #43989: <==commonly_known== 59388 (pos)
                    (Bc_checked_p6)

                    ; #59388: origin
                    (checked_p6)

                    ; #65415: <==commonly_known== 29534 (neg)
                    (Pa_checked_p6)

                    ; #73805: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #82982: <==commonly_known== 59388 (pos)
                    (Ba_checked_p6)

                    ; #12122: <==negation-removal== 73805 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #12881: <==negation-removal== 22949 (pos)
                    (not (Pb_not_checked_p6))

                    ; #16688: <==negation-removal== 10167 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29534: <==negation-removal== 59388 (pos)
                    (not (not_checked_p6))

                    ; #31070: <==negation-removal== 82982 (pos)
                    (not (Pa_not_checked_p6))

                    ; #43452: <==negation-removal== 43989 (pos)
                    (not (Pc_not_checked_p6))

                    ; #43842: <==negation-removal== 65415 (pos)
                    (not (Ba_not_checked_p6))

                    ; #55433: <==negation-removal== 14280 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #57257: <==negation-removal== 36566 (pos)
                    (not (Bb_not_checked_p6))

                    ; #62350: <==negation-removal== 38095 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62819: <==uncertain_firing== 38095 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #73222: <==uncertain_firing== 14280 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #82842: <==uncertain_firing== 73805 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #89979: <==uncertain_firing== 27713 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #90377: <==negation-removal== 27713 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11125: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #17144: <==commonly_known== 40610 (pos)
                    (Ba_checked_p7)

                    ; #21283: <==closure== 11125 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #27972: <==commonly_known== 48239 (neg)
                    (Pa_checked_p7)

                    ; #30809: <==commonly_known== 40610 (pos)
                    (Bc_checked_p7)

                    ; #40610: origin
                    (checked_p7)

                    ; #47009: <==commonly_known== 48239 (neg)
                    (Pc_checked_p7)

                    ; #57311: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #75551: <==commonly_known== 48239 (neg)
                    (Pb_checked_p7)

                    ; #90247: <==closure== 57311 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #91617: <==commonly_known== 40610 (pos)
                    (Bb_checked_p7)

                    ; #13962: <==negation-removal== 30809 (pos)
                    (not (Pc_not_checked_p7))

                    ; #15275: <==negation-removal== 17144 (pos)
                    (not (Pa_not_checked_p7))

                    ; #21151: <==negation-removal== 57311 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #26976: <==negation-removal== 75551 (pos)
                    (not (Bb_not_checked_p7))

                    ; #40651: <==uncertain_firing== 57311 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #44003: <==negation-removal== 11125 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #47496: <==negation-removal== 91617 (pos)
                    (not (Pb_not_checked_p7))

                    ; #48239: <==negation-removal== 40610 (pos)
                    (not (not_checked_p7))

                    ; #51478: <==negation-removal== 27972 (pos)
                    (not (Ba_not_checked_p7))

                    ; #52594: <==uncertain_firing== 11125 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #55002: <==uncertain_firing== 90247 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #55106: <==negation-removal== 47009 (pos)
                    (not (Bc_not_checked_p7))

                    ; #57216: <==negation-removal== 21283 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #72837: <==negation-removal== 90247 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #81253: <==uncertain_firing== 21283 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14218: <==commonly_known== 64740 (pos)
                    (Ba_checked_p8)

                    ; #17244: <==commonly_known== 10572 (neg)
                    (Pa_checked_p8)

                    ; #23305: <==closure== 71648 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #24686: <==commonly_known== 64740 (pos)
                    (Bc_checked_p8)

                    ; #41473: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #61299: <==closure== 41473 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #64740: origin
                    (checked_p8)

                    ; #71648: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #76484: <==commonly_known== 64740 (pos)
                    (Bb_checked_p8)

                    ; #78098: <==commonly_known== 10572 (neg)
                    (Pc_checked_p8)

                    ; #85663: <==commonly_known== 10572 (neg)
                    (Pb_checked_p8)

                    ; #10572: <==negation-removal== 64740 (pos)
                    (not (not_checked_p8))

                    ; #15159: <==negation-removal== 76484 (pos)
                    (not (Pb_not_checked_p8))

                    ; #17158: <==negation-removal== 23305 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #24546: <==negation-removal== 61299 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #27009: <==negation-removal== 17244 (pos)
                    (not (Ba_not_checked_p8))

                    ; #31282: <==uncertain_firing== 61299 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #36945: <==uncertain_firing== 41473 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #39339: <==negation-removal== 78098 (pos)
                    (not (Bc_not_checked_p8))

                    ; #40219: <==negation-removal== 85663 (pos)
                    (not (Bb_not_checked_p8))

                    ; #47480: <==uncertain_firing== 23305 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #48305: <==negation-removal== 41473 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #73864: <==negation-removal== 24686 (pos)
                    (not (Pc_not_checked_p8))

                    ; #80829: <==negation-removal== 71648 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #84151: <==negation-removal== 14218 (pos)
                    (not (Pa_not_checked_p8))

                    ; #94859: <==uncertain_firing== 71648 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17836: <==commonly_known== 64957 (neg)
                    (Pa_checked_p9)

                    ; #20142: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #32816: <==closure== 56023 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #36921: <==commonly_known== 64957 (neg)
                    (Pc_checked_p9)

                    ; #37984: <==commonly_known== 84865 (pos)
                    (Bc_checked_p9)

                    ; #49975: <==commonly_known== 84865 (pos)
                    (Bb_checked_p9)

                    ; #50280: <==commonly_known== 84865 (pos)
                    (Ba_checked_p9)

                    ; #56023: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #74786: <==commonly_known== 64957 (neg)
                    (Pb_checked_p9)

                    ; #84865: origin
                    (checked_p9)

                    ; #86061: <==closure== 20142 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #16861: <==negation-removal== 49975 (pos)
                    (not (Pb_not_checked_p9))

                    ; #21242: <==negation-removal== 36921 (pos)
                    (not (Bc_not_checked_p9))

                    ; #26919: <==uncertain_firing== 86061 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #28002: <==uncertain_firing== 32816 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #32362: <==negation-removal== 17836 (pos)
                    (not (Ba_not_checked_p9))

                    ; #32649: <==negation-removal== 32816 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #37258: <==negation-removal== 74786 (pos)
                    (not (Bb_not_checked_p9))

                    ; #39018: <==negation-removal== 20142 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #39443: <==uncertain_firing== 56023 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #64957: <==negation-removal== 84865 (pos)
                    (not (not_checked_p9))

                    ; #66227: <==negation-removal== 50280 (pos)
                    (not (Pa_not_checked_p9))

                    ; #74689: <==negation-removal== 56023 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #78451: <==uncertain_firing== 20142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #86903: <==negation-removal== 37984 (pos)
                    (not (Pc_not_checked_p9))

                    ; #87067: <==negation-removal== 86061 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13154: <==commonly_known== 26339 (pos)
                    (Bc_checked_p1)

                    ; #15758: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #24470: <==commonly_known== 26339 (pos)
                    (Ba_checked_p1)

                    ; #26339: origin
                    (checked_p1)

                    ; #34408: <==closure== 15758 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #39000: <==commonly_known== 87341 (neg)
                    (Pc_checked_p1)

                    ; #50919: <==commonly_known== 87341 (neg)
                    (Pb_checked_p1)

                    ; #68950: <==commonly_known== 87341 (neg)
                    (Pa_checked_p1)

                    ; #72049: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #79616: <==closure== 72049 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #86288: <==commonly_known== 26339 (pos)
                    (Bb_checked_p1)

                    ; #10672: <==uncertain_firing== 34408 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #10803: <==uncertain_firing== 79616 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #11438: <==negation-removal== 34408 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #15841: <==negation-removal== 15758 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #24641: <==negation-removal== 13154 (pos)
                    (not (Pc_not_checked_p1))

                    ; #32377: <==uncertain_firing== 15758 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #34581: <==negation-removal== 79616 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #53284: <==negation-removal== 24470 (pos)
                    (not (Pa_not_checked_p1))

                    ; #56984: <==negation-removal== 68950 (pos)
                    (not (Ba_not_checked_p1))

                    ; #68464: <==negation-removal== 50919 (pos)
                    (not (Bb_not_checked_p1))

                    ; #75108: <==negation-removal== 86288 (pos)
                    (not (Pb_not_checked_p1))

                    ; #84648: <==uncertain_firing== 72049 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #87341: <==negation-removal== 26339 (pos)
                    (not (not_checked_p1))

                    ; #89252: <==negation-removal== 39000 (pos)
                    (not (Bc_not_checked_p1))

                    ; #90845: <==negation-removal== 72049 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10944: <==commonly_known== 86313 (neg)
                    (Pb_checked_p2)

                    ; #11385: <==commonly_known== 64292 (pos)
                    (Bc_checked_p2)

                    ; #30101: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #32981: <==commonly_known== 64292 (pos)
                    (Bb_checked_p2)

                    ; #33972: <==closure== 30101 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #47498: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #56949: <==commonly_known== 86313 (neg)
                    (Pa_checked_p2)

                    ; #61261: <==closure== 47498 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #64292: origin
                    (checked_p2)

                    ; #68728: <==commonly_known== 86313 (neg)
                    (Pc_checked_p2)

                    ; #73159: <==commonly_known== 64292 (pos)
                    (Ba_checked_p2)

                    ; #18419: <==negation-removal== 32981 (pos)
                    (not (Pb_not_checked_p2))

                    ; #40157: <==negation-removal== 56949 (pos)
                    (not (Ba_not_checked_p2))

                    ; #46053: <==negation-removal== 61261 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #46180: <==uncertain_firing== 33972 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #47183: <==negation-removal== 10944 (pos)
                    (not (Bb_not_checked_p2))

                    ; #48440: <==negation-removal== 68728 (pos)
                    (not (Bc_not_checked_p2))

                    ; #50929: <==negation-removal== 11385 (pos)
                    (not (Pc_not_checked_p2))

                    ; #66629: <==negation-removal== 33972 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #69053: <==negation-removal== 73159 (pos)
                    (not (Pa_not_checked_p2))

                    ; #80912: <==uncertain_firing== 30101 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #84817: <==negation-removal== 30101 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #86313: <==negation-removal== 64292 (pos)
                    (not (not_checked_p2))

                    ; #87133: <==uncertain_firing== 61261 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #87157: <==uncertain_firing== 47498 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #89421: <==negation-removal== 47498 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12913: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #20902: <==commonly_known== 70653 (neg)
                    (Pc_checked_p3)

                    ; #25040: <==commonly_known== 48931 (pos)
                    (Bc_checked_p3)

                    ; #31819: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #34715: <==commonly_known== 48931 (pos)
                    (Bb_checked_p3)

                    ; #48931: origin
                    (checked_p3)

                    ; #57848: <==commonly_known== 48931 (pos)
                    (Ba_checked_p3)

                    ; #59684: <==commonly_known== 70653 (neg)
                    (Pa_checked_p3)

                    ; #65893: <==closure== 31819 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #79016: <==commonly_known== 70653 (neg)
                    (Pb_checked_p3)

                    ; #87666: <==closure== 12913 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #12510: <==negation-removal== 12913 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #20063: <==negation-removal== 87666 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #23232: <==uncertain_firing== 87666 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #28888: <==uncertain_firing== 65893 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #32453: <==negation-removal== 57848 (pos)
                    (not (Pa_not_checked_p3))

                    ; #44185: <==uncertain_firing== 31819 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #47105: <==negation-removal== 65893 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #49923: <==negation-removal== 20902 (pos)
                    (not (Bc_not_checked_p3))

                    ; #70653: <==negation-removal== 48931 (pos)
                    (not (not_checked_p3))

                    ; #83975: <==negation-removal== 34715 (pos)
                    (not (Pb_not_checked_p3))

                    ; #84111: <==uncertain_firing== 12913 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #86967: <==negation-removal== 79016 (pos)
                    (not (Bb_not_checked_p3))

                    ; #87245: <==negation-removal== 59684 (pos)
                    (not (Ba_not_checked_p3))

                    ; #87558: <==negation-removal== 25040 (pos)
                    (not (Pc_not_checked_p3))

                    ; #91326: <==negation-removal== 31819 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10602: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #23893: <==closure== 10602 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #27170: <==commonly_known== 86142 (neg)
                    (Pa_checked_p4)

                    ; #28191: <==commonly_known== 86142 (neg)
                    (Pc_checked_p4)

                    ; #34814: <==commonly_known== 86142 (neg)
                    (Pb_checked_p4)

                    ; #46214: <==commonly_known== 76605 (pos)
                    (Ba_checked_p4)

                    ; #66892: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #72096: <==closure== 66892 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #76605: origin
                    (checked_p4)

                    ; #81741: <==commonly_known== 76605 (pos)
                    (Bc_checked_p4)

                    ; #95488: <==commonly_known== 76605 (pos)
                    (Bb_checked_p4)

                    ; #10031: <==negation-removal== 72096 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #12418: <==uncertain_firing== 72096 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #27201: <==negation-removal== 34814 (pos)
                    (not (Bb_not_checked_p4))

                    ; #30072: <==uncertain_firing== 66892 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #31700: <==negation-removal== 23893 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #32793: <==negation-removal== 81741 (pos)
                    (not (Pc_not_checked_p4))

                    ; #36504: <==negation-removal== 66892 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #51158: <==negation-removal== 46214 (pos)
                    (not (Pa_not_checked_p4))

                    ; #57175: <==uncertain_firing== 10602 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #75585: <==negation-removal== 95488 (pos)
                    (not (Pb_not_checked_p4))

                    ; #75839: <==uncertain_firing== 23893 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #76125: <==negation-removal== 28191 (pos)
                    (not (Bc_not_checked_p4))

                    ; #79819: <==negation-removal== 27170 (pos)
                    (not (Ba_not_checked_p4))

                    ; #81945: <==negation-removal== 10602 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #86142: <==negation-removal== 76605 (pos)
                    (not (not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12644: <==commonly_known== 81796 (neg)
                    (Pb_checked_p5)

                    ; #13378: <==commonly_known== 52307 (pos)
                    (Bc_checked_p5)

                    ; #21814: <==commonly_known== 52307 (pos)
                    (Ba_checked_p5)

                    ; #28369: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #38911: <==closure== 63688 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #52307: origin
                    (checked_p5)

                    ; #63688: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #72308: <==closure== 28369 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #81009: <==commonly_known== 81796 (neg)
                    (Pa_checked_p5)

                    ; #88158: <==commonly_known== 81796 (neg)
                    (Pc_checked_p5)

                    ; #95471: <==commonly_known== 52307 (pos)
                    (Bb_checked_p5)

                    ; #13421: <==negation-removal== 38911 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #14771: <==uncertain_firing== 72308 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #27796: <==negation-removal== 28369 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #29579: <==negation-removal== 21814 (pos)
                    (not (Pa_not_checked_p5))

                    ; #34621: <==negation-removal== 63688 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #35590: <==uncertain_firing== 28369 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #38772: <==negation-removal== 81009 (pos)
                    (not (Ba_not_checked_p5))

                    ; #44758: <==negation-removal== 12644 (pos)
                    (not (Bb_not_checked_p5))

                    ; #47701: <==negation-removal== 88158 (pos)
                    (not (Bc_not_checked_p5))

                    ; #51709: <==negation-removal== 13378 (pos)
                    (not (Pc_not_checked_p5))

                    ; #57191: <==negation-removal== 72308 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #62689: <==uncertain_firing== 38911 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #64380: <==uncertain_firing== 63688 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #72358: <==negation-removal== 95471 (pos)
                    (not (Pb_not_checked_p5))

                    ; #81796: <==negation-removal== 52307 (pos)
                    (not (not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10167: <==commonly_known== 29534 (neg)
                    (Pc_checked_p6)

                    ; #10794: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #16535: <==closure== 66443 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #22949: <==commonly_known== 59388 (pos)
                    (Bb_checked_p6)

                    ; #36566: <==commonly_known== 29534 (neg)
                    (Pb_checked_p6)

                    ; #43989: <==commonly_known== 59388 (pos)
                    (Bc_checked_p6)

                    ; #59388: origin
                    (checked_p6)

                    ; #61679: <==closure== 10794 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #65415: <==commonly_known== 29534 (neg)
                    (Pa_checked_p6)

                    ; #66443: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #82982: <==commonly_known== 59388 (pos)
                    (Ba_checked_p6)

                    ; #11492: <==uncertain_firing== 10794 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #12881: <==negation-removal== 22949 (pos)
                    (not (Pb_not_checked_p6))

                    ; #16688: <==negation-removal== 10167 (pos)
                    (not (Bc_not_checked_p6))

                    ; #20939: <==uncertain_firing== 61679 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #29534: <==negation-removal== 59388 (pos)
                    (not (not_checked_p6))

                    ; #30668: <==negation-removal== 66443 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #31070: <==negation-removal== 82982 (pos)
                    (not (Pa_not_checked_p6))

                    ; #43452: <==negation-removal== 43989 (pos)
                    (not (Pc_not_checked_p6))

                    ; #43842: <==negation-removal== 65415 (pos)
                    (not (Ba_not_checked_p6))

                    ; #50059: <==negation-removal== 61679 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #57257: <==negation-removal== 36566 (pos)
                    (not (Bb_not_checked_p6))

                    ; #60142: <==uncertain_firing== 66443 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #62455: <==negation-removal== 10794 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #80695: <==uncertain_firing== 16535 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #89773: <==negation-removal== 16535 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #17144: <==commonly_known== 40610 (pos)
                    (Ba_checked_p7)

                    ; #25851: <==closure== 54318 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #27972: <==commonly_known== 48239 (neg)
                    (Pa_checked_p7)

                    ; #30809: <==commonly_known== 40610 (pos)
                    (Bc_checked_p7)

                    ; #40610: origin
                    (checked_p7)

                    ; #47009: <==commonly_known== 48239 (neg)
                    (Pc_checked_p7)

                    ; #54318: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #75551: <==commonly_known== 48239 (neg)
                    (Pb_checked_p7)

                    ; #89650: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #91617: <==commonly_known== 40610 (pos)
                    (Bb_checked_p7)

                    ; #92769: <==closure== 89650 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #13962: <==negation-removal== 30809 (pos)
                    (not (Pc_not_checked_p7))

                    ; #14035: <==uncertain_firing== 89650 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #15275: <==negation-removal== 17144 (pos)
                    (not (Pa_not_checked_p7))

                    ; #21273: <==negation-removal== 54318 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #26976: <==negation-removal== 75551 (pos)
                    (not (Bb_not_checked_p7))

                    ; #30918: <==negation-removal== 89650 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #38128: <==uncertain_firing== 25851 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #41727: <==negation-removal== 92769 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #47496: <==negation-removal== 91617 (pos)
                    (not (Pb_not_checked_p7))

                    ; #48239: <==negation-removal== 40610 (pos)
                    (not (not_checked_p7))

                    ; #50801: <==negation-removal== 25851 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #51478: <==negation-removal== 27972 (pos)
                    (not (Ba_not_checked_p7))

                    ; #55106: <==negation-removal== 47009 (pos)
                    (not (Bc_not_checked_p7))

                    ; #63272: <==uncertain_firing== 54318 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #89032: <==uncertain_firing== 92769 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10347: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #14218: <==commonly_known== 64740 (pos)
                    (Ba_checked_p8)

                    ; #17244: <==commonly_known== 10572 (neg)
                    (Pa_checked_p8)

                    ; #24686: <==commonly_known== 64740 (pos)
                    (Bc_checked_p8)

                    ; #27716: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #48811: <==closure== 10347 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #53352: <==closure== 27716 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64740: origin
                    (checked_p8)

                    ; #76484: <==commonly_known== 64740 (pos)
                    (Bb_checked_p8)

                    ; #78098: <==commonly_known== 10572 (neg)
                    (Pc_checked_p8)

                    ; #85663: <==commonly_known== 10572 (neg)
                    (Pb_checked_p8)

                    ; #10572: <==negation-removal== 64740 (pos)
                    (not (not_checked_p8))

                    ; #13173: <==negation-removal== 53352 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #14544: <==negation-removal== 10347 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #15159: <==negation-removal== 76484 (pos)
                    (not (Pb_not_checked_p8))

                    ; #16227: <==uncertain_firing== 53352 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #17635: <==uncertain_firing== 48811 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #27009: <==negation-removal== 17244 (pos)
                    (not (Ba_not_checked_p8))

                    ; #30634: <==negation-removal== 27716 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #33630: <==uncertain_firing== 27716 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #39339: <==negation-removal== 78098 (pos)
                    (not (Bc_not_checked_p8))

                    ; #40219: <==negation-removal== 85663 (pos)
                    (not (Bb_not_checked_p8))

                    ; #71748: <==uncertain_firing== 10347 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #73864: <==negation-removal== 24686 (pos)
                    (not (Pc_not_checked_p8))

                    ; #80806: <==negation-removal== 48811 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #84151: <==negation-removal== 14218 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17836: <==commonly_known== 64957 (neg)
                    (Pa_checked_p9)

                    ; #36921: <==commonly_known== 64957 (neg)
                    (Pc_checked_p9)

                    ; #37984: <==commonly_known== 84865 (pos)
                    (Bc_checked_p9)

                    ; #49975: <==commonly_known== 84865 (pos)
                    (Bb_checked_p9)

                    ; #50280: <==commonly_known== 84865 (pos)
                    (Ba_checked_p9)

                    ; #74058: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #74786: <==commonly_known== 64957 (neg)
                    (Pb_checked_p9)

                    ; #74970: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #79404: <==closure== 74058 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #84294: <==closure== 74970 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #84865: origin
                    (checked_p9)

                    ; #16861: <==negation-removal== 49975 (pos)
                    (not (Pb_not_checked_p9))

                    ; #21242: <==negation-removal== 36921 (pos)
                    (not (Bc_not_checked_p9))

                    ; #26797: <==uncertain_firing== 74970 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #32362: <==negation-removal== 17836 (pos)
                    (not (Ba_not_checked_p9))

                    ; #37258: <==negation-removal== 74786 (pos)
                    (not (Bb_not_checked_p9))

                    ; #44877: <==uncertain_firing== 84294 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #51668: <==negation-removal== 74970 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #55993: <==negation-removal== 79404 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #64421: <==negation-removal== 84294 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #64957: <==negation-removal== 84865 (pos)
                    (not (not_checked_p9))

                    ; #65300: <==uncertain_firing== 74058 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #66227: <==negation-removal== 50280 (pos)
                    (not (Pa_not_checked_p9))

                    ; #69321: <==uncertain_firing== 79404 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #70383: <==negation-removal== 74058 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #86903: <==negation-removal== 37984 (pos)
                    (not (Pc_not_checked_p9))))

)