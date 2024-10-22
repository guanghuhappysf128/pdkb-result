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
                    ; #36809: <==closure== 37752 (pos)
                    (Pa_survivorat_s_p1)

                    ; #37752: origin
                    (Ba_survivorat_s_p1)

                    ; #49774: origin
                    (Bc_survivorat_s_p1)

                    ; #67136: origin
                    (Bb_survivorat_s_p1)

                    ; #73629: <==closure== 67136 (pos)
                    (Pb_survivorat_s_p1)

                    ; #79337: <==closure== 49774 (pos)
                    (Pc_survivorat_s_p1)

                    ; #25834: <==negation-removal== 79337 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #26065: <==negation-removal== 36809 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #35830: <==negation-removal== 73629 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #71283: <==negation-removal== 67136 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #73497: <==negation-removal== 37752 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #82353: <==negation-removal== 49774 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #36809: <==closure== 37752 (pos)
                    (Pa_survivorat_s_p1)

                    ; #37752: origin
                    (Ba_survivorat_s_p1)

                    ; #49774: origin
                    (Bc_survivorat_s_p1)

                    ; #67136: origin
                    (Bb_survivorat_s_p1)

                    ; #73629: <==closure== 67136 (pos)
                    (Pb_survivorat_s_p1)

                    ; #79337: <==closure== 49774 (pos)
                    (Pc_survivorat_s_p1)

                    ; #25834: <==negation-removal== 79337 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #26065: <==negation-removal== 36809 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #35830: <==negation-removal== 73629 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #71283: <==negation-removal== 67136 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #73497: <==negation-removal== 37752 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #82353: <==negation-removal== 49774 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #36809: <==closure== 37752 (pos)
                    (Pa_survivorat_s_p1)

                    ; #37752: origin
                    (Ba_survivorat_s_p1)

                    ; #49774: origin
                    (Bc_survivorat_s_p1)

                    ; #67136: origin
                    (Bb_survivorat_s_p1)

                    ; #73629: <==closure== 67136 (pos)
                    (Pb_survivorat_s_p1)

                    ; #79337: <==closure== 49774 (pos)
                    (Pc_survivorat_s_p1)

                    ; #25834: <==negation-removal== 79337 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #26065: <==negation-removal== 36809 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #35830: <==negation-removal== 73629 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #71283: <==negation-removal== 67136 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #73497: <==negation-removal== 37752 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #82353: <==negation-removal== 49774 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #10345: <==closure== 87878 (pos)
                    (Pb_survivorat_s_p2)

                    ; #36715: <==closure== 73964 (pos)
                    (Pa_survivorat_s_p2)

                    ; #50479: <==closure== 83755 (pos)
                    (Pc_survivorat_s_p2)

                    ; #73964: origin
                    (Ba_survivorat_s_p2)

                    ; #83755: origin
                    (Bc_survivorat_s_p2)

                    ; #87878: origin
                    (Bb_survivorat_s_p2)

                    ; #10935: <==negation-removal== 10345 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #41474: <==negation-removal== 87878 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #44407: <==negation-removal== 36715 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #49760: <==negation-removal== 50479 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #61376: <==negation-removal== 83755 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #63253: <==negation-removal== 73964 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #10345: <==closure== 87878 (pos)
                    (Pb_survivorat_s_p2)

                    ; #36715: <==closure== 73964 (pos)
                    (Pa_survivorat_s_p2)

                    ; #50479: <==closure== 83755 (pos)
                    (Pc_survivorat_s_p2)

                    ; #73964: origin
                    (Ba_survivorat_s_p2)

                    ; #83755: origin
                    (Bc_survivorat_s_p2)

                    ; #87878: origin
                    (Bb_survivorat_s_p2)

                    ; #10935: <==negation-removal== 10345 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #41474: <==negation-removal== 87878 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #44407: <==negation-removal== 36715 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #49760: <==negation-removal== 50479 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #61376: <==negation-removal== 83755 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #63253: <==negation-removal== 73964 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #10345: <==closure== 87878 (pos)
                    (Pb_survivorat_s_p2)

                    ; #36715: <==closure== 73964 (pos)
                    (Pa_survivorat_s_p2)

                    ; #50479: <==closure== 83755 (pos)
                    (Pc_survivorat_s_p2)

                    ; #73964: origin
                    (Ba_survivorat_s_p2)

                    ; #83755: origin
                    (Bc_survivorat_s_p2)

                    ; #87878: origin
                    (Bb_survivorat_s_p2)

                    ; #10935: <==negation-removal== 10345 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #41474: <==negation-removal== 87878 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #44407: <==negation-removal== 36715 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #49760: <==negation-removal== 50479 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #61376: <==negation-removal== 83755 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #63253: <==negation-removal== 73964 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #33545: origin
                    (Bc_survivorat_s_p3)

                    ; #40496: <==closure== 62101 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46134: origin
                    (Ba_survivorat_s_p3)

                    ; #58669: <==closure== 33545 (pos)
                    (Pc_survivorat_s_p3)

                    ; #62101: origin
                    (Bb_survivorat_s_p3)

                    ; #68692: <==closure== 46134 (pos)
                    (Pa_survivorat_s_p3)

                    ; #26550: <==negation-removal== 62101 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #28990: <==negation-removal== 58669 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #38517: <==negation-removal== 46134 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #46859: <==negation-removal== 33545 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #46956: <==negation-removal== 68692 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #66829: <==negation-removal== 40496 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #33545: origin
                    (Bc_survivorat_s_p3)

                    ; #40496: <==closure== 62101 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46134: origin
                    (Ba_survivorat_s_p3)

                    ; #58669: <==closure== 33545 (pos)
                    (Pc_survivorat_s_p3)

                    ; #62101: origin
                    (Bb_survivorat_s_p3)

                    ; #68692: <==closure== 46134 (pos)
                    (Pa_survivorat_s_p3)

                    ; #26550: <==negation-removal== 62101 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #28990: <==negation-removal== 58669 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #38517: <==negation-removal== 46134 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #46859: <==negation-removal== 33545 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #46956: <==negation-removal== 68692 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #66829: <==negation-removal== 40496 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #33545: origin
                    (Bc_survivorat_s_p3)

                    ; #40496: <==closure== 62101 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46134: origin
                    (Ba_survivorat_s_p3)

                    ; #58669: <==closure== 33545 (pos)
                    (Pc_survivorat_s_p3)

                    ; #62101: origin
                    (Bb_survivorat_s_p3)

                    ; #68692: <==closure== 46134 (pos)
                    (Pa_survivorat_s_p3)

                    ; #26550: <==negation-removal== 62101 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #28990: <==negation-removal== 58669 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #38517: <==negation-removal== 46134 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #46859: <==negation-removal== 33545 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #46956: <==negation-removal== 68692 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #66829: <==negation-removal== 40496 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #10444: <==closure== 29123 (pos)
                    (Pa_survivorat_s_p4)

                    ; #10846: <==closure== 46981 (pos)
                    (Pc_survivorat_s_p4)

                    ; #15837: <==closure== 26278 (pos)
                    (Pb_survivorat_s_p4)

                    ; #26278: origin
                    (Bb_survivorat_s_p4)

                    ; #29123: origin
                    (Ba_survivorat_s_p4)

                    ; #46981: origin
                    (Bc_survivorat_s_p4)

                    ; #20313: <==negation-removal== 15837 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #27849: <==negation-removal== 26278 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #42279: <==negation-removal== 10444 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #44984: <==negation-removal== 46981 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #62291: <==negation-removal== 10846 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #97433: <==negation-removal== 29123 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #10444: <==closure== 29123 (pos)
                    (Pa_survivorat_s_p4)

                    ; #10846: <==closure== 46981 (pos)
                    (Pc_survivorat_s_p4)

                    ; #15837: <==closure== 26278 (pos)
                    (Pb_survivorat_s_p4)

                    ; #26278: origin
                    (Bb_survivorat_s_p4)

                    ; #29123: origin
                    (Ba_survivorat_s_p4)

                    ; #46981: origin
                    (Bc_survivorat_s_p4)

                    ; #20313: <==negation-removal== 15837 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #27849: <==negation-removal== 26278 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #42279: <==negation-removal== 10444 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #44984: <==negation-removal== 46981 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #62291: <==negation-removal== 10846 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #97433: <==negation-removal== 29123 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #10444: <==closure== 29123 (pos)
                    (Pa_survivorat_s_p4)

                    ; #10846: <==closure== 46981 (pos)
                    (Pc_survivorat_s_p4)

                    ; #15837: <==closure== 26278 (pos)
                    (Pb_survivorat_s_p4)

                    ; #26278: origin
                    (Bb_survivorat_s_p4)

                    ; #29123: origin
                    (Ba_survivorat_s_p4)

                    ; #46981: origin
                    (Bc_survivorat_s_p4)

                    ; #20313: <==negation-removal== 15837 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #27849: <==negation-removal== 26278 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #42279: <==negation-removal== 10444 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #44984: <==negation-removal== 46981 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #62291: <==negation-removal== 10846 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #97433: <==negation-removal== 29123 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #16326: origin
                    (Ba_survivorat_s_p5)

                    ; #17098: <==closure== 16326 (pos)
                    (Pa_survivorat_s_p5)

                    ; #56317: origin
                    (Bb_survivorat_s_p5)

                    ; #57024: <==closure== 61820 (pos)
                    (Pc_survivorat_s_p5)

                    ; #61820: origin
                    (Bc_survivorat_s_p5)

                    ; #67973: <==closure== 56317 (pos)
                    (Pb_survivorat_s_p5)

                    ; #18882: <==negation-removal== 16326 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #37933: <==negation-removal== 57024 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46877: <==negation-removal== 61820 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #66731: <==negation-removal== 17098 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #83356: <==negation-removal== 56317 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #91625: <==negation-removal== 67973 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #16326: origin
                    (Ba_survivorat_s_p5)

                    ; #17098: <==closure== 16326 (pos)
                    (Pa_survivorat_s_p5)

                    ; #56317: origin
                    (Bb_survivorat_s_p5)

                    ; #57024: <==closure== 61820 (pos)
                    (Pc_survivorat_s_p5)

                    ; #61820: origin
                    (Bc_survivorat_s_p5)

                    ; #67973: <==closure== 56317 (pos)
                    (Pb_survivorat_s_p5)

                    ; #18882: <==negation-removal== 16326 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #37933: <==negation-removal== 57024 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46877: <==negation-removal== 61820 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #66731: <==negation-removal== 17098 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #83356: <==negation-removal== 56317 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #91625: <==negation-removal== 67973 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #16326: origin
                    (Ba_survivorat_s_p5)

                    ; #17098: <==closure== 16326 (pos)
                    (Pa_survivorat_s_p5)

                    ; #56317: origin
                    (Bb_survivorat_s_p5)

                    ; #57024: <==closure== 61820 (pos)
                    (Pc_survivorat_s_p5)

                    ; #61820: origin
                    (Bc_survivorat_s_p5)

                    ; #67973: <==closure== 56317 (pos)
                    (Pb_survivorat_s_p5)

                    ; #18882: <==negation-removal== 16326 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #37933: <==negation-removal== 57024 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46877: <==negation-removal== 61820 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #66731: <==negation-removal== 17098 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #83356: <==negation-removal== 56317 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #91625: <==negation-removal== 67973 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #11767: origin
                    (Bc_survivorat_s_p6)

                    ; #22919: <==closure== 46114 (pos)
                    (Pb_survivorat_s_p6)

                    ; #37136: <==closure== 11767 (pos)
                    (Pc_survivorat_s_p6)

                    ; #37604: <==closure== 87327 (pos)
                    (Pa_survivorat_s_p6)

                    ; #46114: origin
                    (Bb_survivorat_s_p6)

                    ; #87327: origin
                    (Ba_survivorat_s_p6)

                    ; #24692: <==negation-removal== 87327 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #37970: <==negation-removal== 37604 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #46877: <==negation-removal== 11767 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #58002: <==negation-removal== 37136 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74255: <==negation-removal== 22919 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #80893: <==negation-removal== 46114 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #11767: origin
                    (Bc_survivorat_s_p6)

                    ; #22919: <==closure== 46114 (pos)
                    (Pb_survivorat_s_p6)

                    ; #37136: <==closure== 11767 (pos)
                    (Pc_survivorat_s_p6)

                    ; #37604: <==closure== 87327 (pos)
                    (Pa_survivorat_s_p6)

                    ; #46114: origin
                    (Bb_survivorat_s_p6)

                    ; #87327: origin
                    (Ba_survivorat_s_p6)

                    ; #24692: <==negation-removal== 87327 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #37970: <==negation-removal== 37604 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #46877: <==negation-removal== 11767 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #58002: <==negation-removal== 37136 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74255: <==negation-removal== 22919 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #80893: <==negation-removal== 46114 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #11767: origin
                    (Bc_survivorat_s_p6)

                    ; #22919: <==closure== 46114 (pos)
                    (Pb_survivorat_s_p6)

                    ; #37136: <==closure== 11767 (pos)
                    (Pc_survivorat_s_p6)

                    ; #37604: <==closure== 87327 (pos)
                    (Pa_survivorat_s_p6)

                    ; #46114: origin
                    (Bb_survivorat_s_p6)

                    ; #87327: origin
                    (Ba_survivorat_s_p6)

                    ; #24692: <==negation-removal== 87327 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #37970: <==negation-removal== 37604 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #46877: <==negation-removal== 11767 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #58002: <==negation-removal== 37136 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74255: <==negation-removal== 22919 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #80893: <==negation-removal== 46114 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #11857: <==closure== 23624 (pos)
                    (Pb_survivorat_s_p7)

                    ; #19893: <==closure== 40498 (pos)
                    (Pa_survivorat_s_p7)

                    ; #22664: origin
                    (Bc_survivorat_s_p7)

                    ; #23624: origin
                    (Bb_survivorat_s_p7)

                    ; #40498: origin
                    (Ba_survivorat_s_p7)

                    ; #88730: <==closure== 22664 (pos)
                    (Pc_survivorat_s_p7)

                    ; #10075: <==negation-removal== 88730 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #31804: <==negation-removal== 23624 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #32471: <==negation-removal== 40498 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #58929: <==negation-removal== 19893 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69247: <==negation-removal== 22664 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #90713: <==negation-removal== 11857 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #11857: <==closure== 23624 (pos)
                    (Pb_survivorat_s_p7)

                    ; #19893: <==closure== 40498 (pos)
                    (Pa_survivorat_s_p7)

                    ; #22664: origin
                    (Bc_survivorat_s_p7)

                    ; #23624: origin
                    (Bb_survivorat_s_p7)

                    ; #40498: origin
                    (Ba_survivorat_s_p7)

                    ; #88730: <==closure== 22664 (pos)
                    (Pc_survivorat_s_p7)

                    ; #10075: <==negation-removal== 88730 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #31804: <==negation-removal== 23624 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #32471: <==negation-removal== 40498 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #58929: <==negation-removal== 19893 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69247: <==negation-removal== 22664 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #90713: <==negation-removal== 11857 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #11857: <==closure== 23624 (pos)
                    (Pb_survivorat_s_p7)

                    ; #19893: <==closure== 40498 (pos)
                    (Pa_survivorat_s_p7)

                    ; #22664: origin
                    (Bc_survivorat_s_p7)

                    ; #23624: origin
                    (Bb_survivorat_s_p7)

                    ; #40498: origin
                    (Ba_survivorat_s_p7)

                    ; #88730: <==closure== 22664 (pos)
                    (Pc_survivorat_s_p7)

                    ; #10075: <==negation-removal== 88730 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #31804: <==negation-removal== 23624 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #32471: <==negation-removal== 40498 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #58929: <==negation-removal== 19893 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69247: <==negation-removal== 22664 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #90713: <==negation-removal== 11857 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #17410: <==closure== 88014 (pos)
                    (Pc_survivorat_s_p8)

                    ; #25436: <==closure== 84039 (pos)
                    (Pa_survivorat_s_p8)

                    ; #30962: origin
                    (Bb_survivorat_s_p8)

                    ; #45463: <==closure== 30962 (pos)
                    (Pb_survivorat_s_p8)

                    ; #84039: origin
                    (Ba_survivorat_s_p8)

                    ; #88014: origin
                    (Bc_survivorat_s_p8)

                    ; #20556: <==negation-removal== 25436 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #28972: <==negation-removal== 84039 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #31200: <==negation-removal== 30962 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #60006: <==negation-removal== 88014 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #77761: <==negation-removal== 17410 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #88484: <==negation-removal== 45463 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #17410: <==closure== 88014 (pos)
                    (Pc_survivorat_s_p8)

                    ; #25436: <==closure== 84039 (pos)
                    (Pa_survivorat_s_p8)

                    ; #30962: origin
                    (Bb_survivorat_s_p8)

                    ; #45463: <==closure== 30962 (pos)
                    (Pb_survivorat_s_p8)

                    ; #84039: origin
                    (Ba_survivorat_s_p8)

                    ; #88014: origin
                    (Bc_survivorat_s_p8)

                    ; #20556: <==negation-removal== 25436 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #28972: <==negation-removal== 84039 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #31200: <==negation-removal== 30962 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #60006: <==negation-removal== 88014 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #77761: <==negation-removal== 17410 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #88484: <==negation-removal== 45463 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #17410: <==closure== 88014 (pos)
                    (Pc_survivorat_s_p8)

                    ; #25436: <==closure== 84039 (pos)
                    (Pa_survivorat_s_p8)

                    ; #30962: origin
                    (Bb_survivorat_s_p8)

                    ; #45463: <==closure== 30962 (pos)
                    (Pb_survivorat_s_p8)

                    ; #84039: origin
                    (Ba_survivorat_s_p8)

                    ; #88014: origin
                    (Bc_survivorat_s_p8)

                    ; #20556: <==negation-removal== 25436 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #28972: <==negation-removal== 84039 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #31200: <==negation-removal== 30962 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #60006: <==negation-removal== 88014 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #77761: <==negation-removal== 17410 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #88484: <==negation-removal== 45463 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #10428: origin
                    (Bc_survivorat_s_p9)

                    ; #15000: origin
                    (Bb_survivorat_s_p9)

                    ; #17538: <==closure== 18693 (pos)
                    (Pa_survivorat_s_p9)

                    ; #18693: origin
                    (Ba_survivorat_s_p9)

                    ; #24503: <==closure== 10428 (pos)
                    (Pc_survivorat_s_p9)

                    ; #72305: <==closure== 15000 (pos)
                    (Pb_survivorat_s_p9)

                    ; #17516: <==negation-removal== 72305 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #21759: <==negation-removal== 17538 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #33110: <==negation-removal== 24503 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #45848: <==negation-removal== 15000 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #55237: <==negation-removal== 10428 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #61851: <==negation-removal== 18693 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #10428: origin
                    (Bc_survivorat_s_p9)

                    ; #15000: origin
                    (Bb_survivorat_s_p9)

                    ; #17538: <==closure== 18693 (pos)
                    (Pa_survivorat_s_p9)

                    ; #18693: origin
                    (Ba_survivorat_s_p9)

                    ; #24503: <==closure== 10428 (pos)
                    (Pc_survivorat_s_p9)

                    ; #72305: <==closure== 15000 (pos)
                    (Pb_survivorat_s_p9)

                    ; #17516: <==negation-removal== 72305 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #21759: <==negation-removal== 17538 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #33110: <==negation-removal== 24503 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #45848: <==negation-removal== 15000 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #55237: <==negation-removal== 10428 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #61851: <==negation-removal== 18693 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #10428: origin
                    (Bc_survivorat_s_p9)

                    ; #15000: origin
                    (Bb_survivorat_s_p9)

                    ; #17538: <==closure== 18693 (pos)
                    (Pa_survivorat_s_p9)

                    ; #18693: origin
                    (Ba_survivorat_s_p9)

                    ; #24503: <==closure== 10428 (pos)
                    (Pc_survivorat_s_p9)

                    ; #72305: <==closure== 15000 (pos)
                    (Pb_survivorat_s_p9)

                    ; #17516: <==negation-removal== 72305 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #21759: <==negation-removal== 17538 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #33110: <==negation-removal== 24503 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #45848: <==negation-removal== 15000 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #55237: <==negation-removal== 10428 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #61851: <==negation-removal== 18693 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #19667: origin
                    (not_at_a_p1)

                    ; #72421: origin
                    (at_a_p1)

                    ; #19667: <==negation-removal== 72421 (pos)
                    (not (not_at_a_p1))

                    ; #72421: <==negation-removal== 19667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #19667: origin
                    (not_at_a_p1)

                    ; #37164: origin
                    (at_a_p2)

                    ; #66473: <==negation-removal== 37164 (pos)
                    (not (not_at_a_p2))

                    ; #72421: <==negation-removal== 19667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #19667: origin
                    (not_at_a_p1)

                    ; #86693: origin
                    (at_a_p3)

                    ; #31223: <==negation-removal== 86693 (pos)
                    (not (not_at_a_p3))

                    ; #72421: <==negation-removal== 19667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #19667: origin
                    (not_at_a_p1)

                    ; #73929: origin
                    (at_a_p4)

                    ; #27888: <==negation-removal== 73929 (pos)
                    (not (not_at_a_p4))

                    ; #72421: <==negation-removal== 19667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #19667: origin
                    (not_at_a_p1)

                    ; #90746: origin
                    (at_a_p5)

                    ; #63418: <==negation-removal== 90746 (pos)
                    (not (not_at_a_p5))

                    ; #72421: <==negation-removal== 19667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #19667: origin
                    (not_at_a_p1)

                    ; #36519: origin
                    (at_a_p6)

                    ; #26415: <==negation-removal== 36519 (pos)
                    (not (not_at_a_p6))

                    ; #72421: <==negation-removal== 19667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #19667: origin
                    (not_at_a_p1)

                    ; #31299: origin
                    (at_a_p7)

                    ; #42752: <==negation-removal== 31299 (pos)
                    (not (not_at_a_p7))

                    ; #72421: <==negation-removal== 19667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #10550: origin
                    (at_a_p8)

                    ; #19667: origin
                    (not_at_a_p1)

                    ; #33450: <==negation-removal== 10550 (pos)
                    (not (not_at_a_p8))

                    ; #72421: <==negation-removal== 19667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #18255: origin
                    (at_a_p9)

                    ; #19667: origin
                    (not_at_a_p1)

                    ; #52208: <==negation-removal== 18255 (pos)
                    (not (not_at_a_p9))

                    ; #72421: <==negation-removal== 19667 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #66473: origin
                    (not_at_a_p2)

                    ; #72421: origin
                    (at_a_p1)

                    ; #19667: <==negation-removal== 72421 (pos)
                    (not (not_at_a_p1))

                    ; #37164: <==negation-removal== 66473 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #37164: origin
                    (at_a_p2)

                    ; #66473: origin
                    (not_at_a_p2)

                    ; #37164: <==negation-removal== 66473 (pos)
                    (not (at_a_p2))

                    ; #66473: <==negation-removal== 37164 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #66473: origin
                    (not_at_a_p2)

                    ; #86693: origin
                    (at_a_p3)

                    ; #31223: <==negation-removal== 86693 (pos)
                    (not (not_at_a_p3))

                    ; #37164: <==negation-removal== 66473 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #66473: origin
                    (not_at_a_p2)

                    ; #73929: origin
                    (at_a_p4)

                    ; #27888: <==negation-removal== 73929 (pos)
                    (not (not_at_a_p4))

                    ; #37164: <==negation-removal== 66473 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #66473: origin
                    (not_at_a_p2)

                    ; #90746: origin
                    (at_a_p5)

                    ; #37164: <==negation-removal== 66473 (pos)
                    (not (at_a_p2))

                    ; #63418: <==negation-removal== 90746 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #36519: origin
                    (at_a_p6)

                    ; #66473: origin
                    (not_at_a_p2)

                    ; #26415: <==negation-removal== 36519 (pos)
                    (not (not_at_a_p6))

                    ; #37164: <==negation-removal== 66473 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #31299: origin
                    (at_a_p7)

                    ; #66473: origin
                    (not_at_a_p2)

                    ; #37164: <==negation-removal== 66473 (pos)
                    (not (at_a_p2))

                    ; #42752: <==negation-removal== 31299 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #10550: origin
                    (at_a_p8)

                    ; #66473: origin
                    (not_at_a_p2)

                    ; #33450: <==negation-removal== 10550 (pos)
                    (not (not_at_a_p8))

                    ; #37164: <==negation-removal== 66473 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #18255: origin
                    (at_a_p9)

                    ; #66473: origin
                    (not_at_a_p2)

                    ; #37164: <==negation-removal== 66473 (pos)
                    (not (at_a_p2))

                    ; #52208: <==negation-removal== 18255 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #31223: origin
                    (not_at_a_p3)

                    ; #72421: origin
                    (at_a_p1)

                    ; #19667: <==negation-removal== 72421 (pos)
                    (not (not_at_a_p1))

                    ; #86693: <==negation-removal== 31223 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #31223: origin
                    (not_at_a_p3)

                    ; #37164: origin
                    (at_a_p2)

                    ; #66473: <==negation-removal== 37164 (pos)
                    (not (not_at_a_p2))

                    ; #86693: <==negation-removal== 31223 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #31223: origin
                    (not_at_a_p3)

                    ; #86693: origin
                    (at_a_p3)

                    ; #31223: <==negation-removal== 86693 (pos)
                    (not (not_at_a_p3))

                    ; #86693: <==negation-removal== 31223 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #31223: origin
                    (not_at_a_p3)

                    ; #73929: origin
                    (at_a_p4)

                    ; #27888: <==negation-removal== 73929 (pos)
                    (not (not_at_a_p4))

                    ; #86693: <==negation-removal== 31223 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #31223: origin
                    (not_at_a_p3)

                    ; #90746: origin
                    (at_a_p5)

                    ; #63418: <==negation-removal== 90746 (pos)
                    (not (not_at_a_p5))

                    ; #86693: <==negation-removal== 31223 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #31223: origin
                    (not_at_a_p3)

                    ; #36519: origin
                    (at_a_p6)

                    ; #26415: <==negation-removal== 36519 (pos)
                    (not (not_at_a_p6))

                    ; #86693: <==negation-removal== 31223 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #31223: origin
                    (not_at_a_p3)

                    ; #31299: origin
                    (at_a_p7)

                    ; #42752: <==negation-removal== 31299 (pos)
                    (not (not_at_a_p7))

                    ; #86693: <==negation-removal== 31223 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #10550: origin
                    (at_a_p8)

                    ; #31223: origin
                    (not_at_a_p3)

                    ; #33450: <==negation-removal== 10550 (pos)
                    (not (not_at_a_p8))

                    ; #86693: <==negation-removal== 31223 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #18255: origin
                    (at_a_p9)

                    ; #31223: origin
                    (not_at_a_p3)

                    ; #52208: <==negation-removal== 18255 (pos)
                    (not (not_at_a_p9))

                    ; #86693: <==negation-removal== 31223 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #27888: origin
                    (not_at_a_p4)

                    ; #72421: origin
                    (at_a_p1)

                    ; #19667: <==negation-removal== 72421 (pos)
                    (not (not_at_a_p1))

                    ; #73929: <==negation-removal== 27888 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #27888: origin
                    (not_at_a_p4)

                    ; #37164: origin
                    (at_a_p2)

                    ; #66473: <==negation-removal== 37164 (pos)
                    (not (not_at_a_p2))

                    ; #73929: <==negation-removal== 27888 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #27888: origin
                    (not_at_a_p4)

                    ; #86693: origin
                    (at_a_p3)

                    ; #31223: <==negation-removal== 86693 (pos)
                    (not (not_at_a_p3))

                    ; #73929: <==negation-removal== 27888 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #27888: origin
                    (not_at_a_p4)

                    ; #73929: origin
                    (at_a_p4)

                    ; #27888: <==negation-removal== 73929 (pos)
                    (not (not_at_a_p4))

                    ; #73929: <==negation-removal== 27888 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #27888: origin
                    (not_at_a_p4)

                    ; #90746: origin
                    (at_a_p5)

                    ; #63418: <==negation-removal== 90746 (pos)
                    (not (not_at_a_p5))

                    ; #73929: <==negation-removal== 27888 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #27888: origin
                    (not_at_a_p4)

                    ; #36519: origin
                    (at_a_p6)

                    ; #26415: <==negation-removal== 36519 (pos)
                    (not (not_at_a_p6))

                    ; #73929: <==negation-removal== 27888 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #27888: origin
                    (not_at_a_p4)

                    ; #31299: origin
                    (at_a_p7)

                    ; #42752: <==negation-removal== 31299 (pos)
                    (not (not_at_a_p7))

                    ; #73929: <==negation-removal== 27888 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #10550: origin
                    (at_a_p8)

                    ; #27888: origin
                    (not_at_a_p4)

                    ; #33450: <==negation-removal== 10550 (pos)
                    (not (not_at_a_p8))

                    ; #73929: <==negation-removal== 27888 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #18255: origin
                    (at_a_p9)

                    ; #27888: origin
                    (not_at_a_p4)

                    ; #52208: <==negation-removal== 18255 (pos)
                    (not (not_at_a_p9))

                    ; #73929: <==negation-removal== 27888 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #63418: origin
                    (not_at_a_p5)

                    ; #72421: origin
                    (at_a_p1)

                    ; #19667: <==negation-removal== 72421 (pos)
                    (not (not_at_a_p1))

                    ; #90746: <==negation-removal== 63418 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #37164: origin
                    (at_a_p2)

                    ; #63418: origin
                    (not_at_a_p5)

                    ; #66473: <==negation-removal== 37164 (pos)
                    (not (not_at_a_p2))

                    ; #90746: <==negation-removal== 63418 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #63418: origin
                    (not_at_a_p5)

                    ; #86693: origin
                    (at_a_p3)

                    ; #31223: <==negation-removal== 86693 (pos)
                    (not (not_at_a_p3))

                    ; #90746: <==negation-removal== 63418 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #63418: origin
                    (not_at_a_p5)

                    ; #73929: origin
                    (at_a_p4)

                    ; #27888: <==negation-removal== 73929 (pos)
                    (not (not_at_a_p4))

                    ; #90746: <==negation-removal== 63418 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #63418: origin
                    (not_at_a_p5)

                    ; #90746: origin
                    (at_a_p5)

                    ; #63418: <==negation-removal== 90746 (pos)
                    (not (not_at_a_p5))

                    ; #90746: <==negation-removal== 63418 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #36519: origin
                    (at_a_p6)

                    ; #63418: origin
                    (not_at_a_p5)

                    ; #26415: <==negation-removal== 36519 (pos)
                    (not (not_at_a_p6))

                    ; #90746: <==negation-removal== 63418 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #31299: origin
                    (at_a_p7)

                    ; #63418: origin
                    (not_at_a_p5)

                    ; #42752: <==negation-removal== 31299 (pos)
                    (not (not_at_a_p7))

                    ; #90746: <==negation-removal== 63418 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #10550: origin
                    (at_a_p8)

                    ; #63418: origin
                    (not_at_a_p5)

                    ; #33450: <==negation-removal== 10550 (pos)
                    (not (not_at_a_p8))

                    ; #90746: <==negation-removal== 63418 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #18255: origin
                    (at_a_p9)

                    ; #63418: origin
                    (not_at_a_p5)

                    ; #52208: <==negation-removal== 18255 (pos)
                    (not (not_at_a_p9))

                    ; #90746: <==negation-removal== 63418 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #26415: origin
                    (not_at_a_p6)

                    ; #72421: origin
                    (at_a_p1)

                    ; #19667: <==negation-removal== 72421 (pos)
                    (not (not_at_a_p1))

                    ; #36519: <==negation-removal== 26415 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #26415: origin
                    (not_at_a_p6)

                    ; #37164: origin
                    (at_a_p2)

                    ; #36519: <==negation-removal== 26415 (pos)
                    (not (at_a_p6))

                    ; #66473: <==negation-removal== 37164 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #26415: origin
                    (not_at_a_p6)

                    ; #86693: origin
                    (at_a_p3)

                    ; #31223: <==negation-removal== 86693 (pos)
                    (not (not_at_a_p3))

                    ; #36519: <==negation-removal== 26415 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #26415: origin
                    (not_at_a_p6)

                    ; #73929: origin
                    (at_a_p4)

                    ; #27888: <==negation-removal== 73929 (pos)
                    (not (not_at_a_p4))

                    ; #36519: <==negation-removal== 26415 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #26415: origin
                    (not_at_a_p6)

                    ; #90746: origin
                    (at_a_p5)

                    ; #36519: <==negation-removal== 26415 (pos)
                    (not (at_a_p6))

                    ; #63418: <==negation-removal== 90746 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #26415: origin
                    (not_at_a_p6)

                    ; #36519: origin
                    (at_a_p6)

                    ; #26415: <==negation-removal== 36519 (pos)
                    (not (not_at_a_p6))

                    ; #36519: <==negation-removal== 26415 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #26415: origin
                    (not_at_a_p6)

                    ; #31299: origin
                    (at_a_p7)

                    ; #36519: <==negation-removal== 26415 (pos)
                    (not (at_a_p6))

                    ; #42752: <==negation-removal== 31299 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #10550: origin
                    (at_a_p8)

                    ; #26415: origin
                    (not_at_a_p6)

                    ; #33450: <==negation-removal== 10550 (pos)
                    (not (not_at_a_p8))

                    ; #36519: <==negation-removal== 26415 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #18255: origin
                    (at_a_p9)

                    ; #26415: origin
                    (not_at_a_p6)

                    ; #36519: <==negation-removal== 26415 (pos)
                    (not (at_a_p6))

                    ; #52208: <==negation-removal== 18255 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #42752: origin
                    (not_at_a_p7)

                    ; #72421: origin
                    (at_a_p1)

                    ; #19667: <==negation-removal== 72421 (pos)
                    (not (not_at_a_p1))

                    ; #31299: <==negation-removal== 42752 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #37164: origin
                    (at_a_p2)

                    ; #42752: origin
                    (not_at_a_p7)

                    ; #31299: <==negation-removal== 42752 (pos)
                    (not (at_a_p7))

                    ; #66473: <==negation-removal== 37164 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #42752: origin
                    (not_at_a_p7)

                    ; #86693: origin
                    (at_a_p3)

                    ; #31223: <==negation-removal== 86693 (pos)
                    (not (not_at_a_p3))

                    ; #31299: <==negation-removal== 42752 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #42752: origin
                    (not_at_a_p7)

                    ; #73929: origin
                    (at_a_p4)

                    ; #27888: <==negation-removal== 73929 (pos)
                    (not (not_at_a_p4))

                    ; #31299: <==negation-removal== 42752 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #42752: origin
                    (not_at_a_p7)

                    ; #90746: origin
                    (at_a_p5)

                    ; #31299: <==negation-removal== 42752 (pos)
                    (not (at_a_p7))

                    ; #63418: <==negation-removal== 90746 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #36519: origin
                    (at_a_p6)

                    ; #42752: origin
                    (not_at_a_p7)

                    ; #26415: <==negation-removal== 36519 (pos)
                    (not (not_at_a_p6))

                    ; #31299: <==negation-removal== 42752 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #31299: origin
                    (at_a_p7)

                    ; #42752: origin
                    (not_at_a_p7)

                    ; #31299: <==negation-removal== 42752 (pos)
                    (not (at_a_p7))

                    ; #42752: <==negation-removal== 31299 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #10550: origin
                    (at_a_p8)

                    ; #42752: origin
                    (not_at_a_p7)

                    ; #31299: <==negation-removal== 42752 (pos)
                    (not (at_a_p7))

                    ; #33450: <==negation-removal== 10550 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #18255: origin
                    (at_a_p9)

                    ; #42752: origin
                    (not_at_a_p7)

                    ; #31299: <==negation-removal== 42752 (pos)
                    (not (at_a_p7))

                    ; #52208: <==negation-removal== 18255 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #33450: origin
                    (not_at_a_p8)

                    ; #72421: origin
                    (at_a_p1)

                    ; #10550: <==negation-removal== 33450 (pos)
                    (not (at_a_p8))

                    ; #19667: <==negation-removal== 72421 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #33450: origin
                    (not_at_a_p8)

                    ; #37164: origin
                    (at_a_p2)

                    ; #10550: <==negation-removal== 33450 (pos)
                    (not (at_a_p8))

                    ; #66473: <==negation-removal== 37164 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #33450: origin
                    (not_at_a_p8)

                    ; #86693: origin
                    (at_a_p3)

                    ; #10550: <==negation-removal== 33450 (pos)
                    (not (at_a_p8))

                    ; #31223: <==negation-removal== 86693 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #33450: origin
                    (not_at_a_p8)

                    ; #73929: origin
                    (at_a_p4)

                    ; #10550: <==negation-removal== 33450 (pos)
                    (not (at_a_p8))

                    ; #27888: <==negation-removal== 73929 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #33450: origin
                    (not_at_a_p8)

                    ; #90746: origin
                    (at_a_p5)

                    ; #10550: <==negation-removal== 33450 (pos)
                    (not (at_a_p8))

                    ; #63418: <==negation-removal== 90746 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #33450: origin
                    (not_at_a_p8)

                    ; #36519: origin
                    (at_a_p6)

                    ; #10550: <==negation-removal== 33450 (pos)
                    (not (at_a_p8))

                    ; #26415: <==negation-removal== 36519 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #31299: origin
                    (at_a_p7)

                    ; #33450: origin
                    (not_at_a_p8)

                    ; #10550: <==negation-removal== 33450 (pos)
                    (not (at_a_p8))

                    ; #42752: <==negation-removal== 31299 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #10550: origin
                    (at_a_p8)

                    ; #33450: origin
                    (not_at_a_p8)

                    ; #10550: <==negation-removal== 33450 (pos)
                    (not (at_a_p8))

                    ; #33450: <==negation-removal== 10550 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #18255: origin
                    (at_a_p9)

                    ; #33450: origin
                    (not_at_a_p8)

                    ; #10550: <==negation-removal== 33450 (pos)
                    (not (at_a_p8))

                    ; #52208: <==negation-removal== 18255 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #52208: origin
                    (not_at_a_p9)

                    ; #72421: origin
                    (at_a_p1)

                    ; #18255: <==negation-removal== 52208 (pos)
                    (not (at_a_p9))

                    ; #19667: <==negation-removal== 72421 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #37164: origin
                    (at_a_p2)

                    ; #52208: origin
                    (not_at_a_p9)

                    ; #18255: <==negation-removal== 52208 (pos)
                    (not (at_a_p9))

                    ; #66473: <==negation-removal== 37164 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #52208: origin
                    (not_at_a_p9)

                    ; #86693: origin
                    (at_a_p3)

                    ; #18255: <==negation-removal== 52208 (pos)
                    (not (at_a_p9))

                    ; #31223: <==negation-removal== 86693 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #52208: origin
                    (not_at_a_p9)

                    ; #73929: origin
                    (at_a_p4)

                    ; #18255: <==negation-removal== 52208 (pos)
                    (not (at_a_p9))

                    ; #27888: <==negation-removal== 73929 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #52208: origin
                    (not_at_a_p9)

                    ; #90746: origin
                    (at_a_p5)

                    ; #18255: <==negation-removal== 52208 (pos)
                    (not (at_a_p9))

                    ; #63418: <==negation-removal== 90746 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #36519: origin
                    (at_a_p6)

                    ; #52208: origin
                    (not_at_a_p9)

                    ; #18255: <==negation-removal== 52208 (pos)
                    (not (at_a_p9))

                    ; #26415: <==negation-removal== 36519 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #31299: origin
                    (at_a_p7)

                    ; #52208: origin
                    (not_at_a_p9)

                    ; #18255: <==negation-removal== 52208 (pos)
                    (not (at_a_p9))

                    ; #42752: <==negation-removal== 31299 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #10550: origin
                    (at_a_p8)

                    ; #52208: origin
                    (not_at_a_p9)

                    ; #18255: <==negation-removal== 52208 (pos)
                    (not (at_a_p9))

                    ; #33450: <==negation-removal== 10550 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #18255: origin
                    (at_a_p9)

                    ; #52208: origin
                    (not_at_a_p9)

                    ; #18255: <==negation-removal== 52208 (pos)
                    (not (at_a_p9))

                    ; #52208: <==negation-removal== 18255 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #82312: origin
                    (at_b_p1)

                    ; #85330: origin
                    (not_at_b_p1)

                    ; #82312: <==negation-removal== 85330 (pos)
                    (not (at_b_p1))

                    ; #85330: <==negation-removal== 82312 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #16868: origin
                    (at_b_p2)

                    ; #85330: origin
                    (not_at_b_p1)

                    ; #41998: <==negation-removal== 16868 (pos)
                    (not (not_at_b_p2))

                    ; #82312: <==negation-removal== 85330 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #83256: origin
                    (at_b_p3)

                    ; #85330: origin
                    (not_at_b_p1)

                    ; #13254: <==negation-removal== 83256 (pos)
                    (not (not_at_b_p3))

                    ; #82312: <==negation-removal== 85330 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #85330: origin
                    (not_at_b_p1)

                    ; #95675: origin
                    (at_b_p4)

                    ; #82312: <==negation-removal== 85330 (pos)
                    (not (at_b_p1))

                    ; #85642: <==negation-removal== 95675 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #35799: origin
                    (at_b_p5)

                    ; #85330: origin
                    (not_at_b_p1)

                    ; #53861: <==negation-removal== 35799 (pos)
                    (not (not_at_b_p5))

                    ; #82312: <==negation-removal== 85330 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #74721: origin
                    (at_b_p6)

                    ; #85330: origin
                    (not_at_b_p1)

                    ; #75941: <==negation-removal== 74721 (pos)
                    (not (not_at_b_p6))

                    ; #82312: <==negation-removal== 85330 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #20001: origin
                    (at_b_p7)

                    ; #85330: origin
                    (not_at_b_p1)

                    ; #23731: <==negation-removal== 20001 (pos)
                    (not (not_at_b_p7))

                    ; #82312: <==negation-removal== 85330 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #69022: origin
                    (at_b_p8)

                    ; #85330: origin
                    (not_at_b_p1)

                    ; #81885: <==negation-removal== 69022 (pos)
                    (not (not_at_b_p8))

                    ; #82312: <==negation-removal== 85330 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #64349: origin
                    (at_b_p9)

                    ; #85330: origin
                    (not_at_b_p1)

                    ; #77022: <==negation-removal== 64349 (pos)
                    (not (not_at_b_p9))

                    ; #82312: <==negation-removal== 85330 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #41998: origin
                    (not_at_b_p2)

                    ; #82312: origin
                    (at_b_p1)

                    ; #16868: <==negation-removal== 41998 (pos)
                    (not (at_b_p2))

                    ; #85330: <==negation-removal== 82312 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #16868: origin
                    (at_b_p2)

                    ; #41998: origin
                    (not_at_b_p2)

                    ; #16868: <==negation-removal== 41998 (pos)
                    (not (at_b_p2))

                    ; #41998: <==negation-removal== 16868 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #41998: origin
                    (not_at_b_p2)

                    ; #83256: origin
                    (at_b_p3)

                    ; #13254: <==negation-removal== 83256 (pos)
                    (not (not_at_b_p3))

                    ; #16868: <==negation-removal== 41998 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #41998: origin
                    (not_at_b_p2)

                    ; #95675: origin
                    (at_b_p4)

                    ; #16868: <==negation-removal== 41998 (pos)
                    (not (at_b_p2))

                    ; #85642: <==negation-removal== 95675 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #35799: origin
                    (at_b_p5)

                    ; #41998: origin
                    (not_at_b_p2)

                    ; #16868: <==negation-removal== 41998 (pos)
                    (not (at_b_p2))

                    ; #53861: <==negation-removal== 35799 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #41998: origin
                    (not_at_b_p2)

                    ; #74721: origin
                    (at_b_p6)

                    ; #16868: <==negation-removal== 41998 (pos)
                    (not (at_b_p2))

                    ; #75941: <==negation-removal== 74721 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #20001: origin
                    (at_b_p7)

                    ; #41998: origin
                    (not_at_b_p2)

                    ; #16868: <==negation-removal== 41998 (pos)
                    (not (at_b_p2))

                    ; #23731: <==negation-removal== 20001 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #41998: origin
                    (not_at_b_p2)

                    ; #69022: origin
                    (at_b_p8)

                    ; #16868: <==negation-removal== 41998 (pos)
                    (not (at_b_p2))

                    ; #81885: <==negation-removal== 69022 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #41998: origin
                    (not_at_b_p2)

                    ; #64349: origin
                    (at_b_p9)

                    ; #16868: <==negation-removal== 41998 (pos)
                    (not (at_b_p2))

                    ; #77022: <==negation-removal== 64349 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #13254: origin
                    (not_at_b_p3)

                    ; #82312: origin
                    (at_b_p1)

                    ; #83256: <==negation-removal== 13254 (pos)
                    (not (at_b_p3))

                    ; #85330: <==negation-removal== 82312 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #13254: origin
                    (not_at_b_p3)

                    ; #16868: origin
                    (at_b_p2)

                    ; #41998: <==negation-removal== 16868 (pos)
                    (not (not_at_b_p2))

                    ; #83256: <==negation-removal== 13254 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #13254: origin
                    (not_at_b_p3)

                    ; #83256: origin
                    (at_b_p3)

                    ; #13254: <==negation-removal== 83256 (pos)
                    (not (not_at_b_p3))

                    ; #83256: <==negation-removal== 13254 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #13254: origin
                    (not_at_b_p3)

                    ; #95675: origin
                    (at_b_p4)

                    ; #83256: <==negation-removal== 13254 (pos)
                    (not (at_b_p3))

                    ; #85642: <==negation-removal== 95675 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #13254: origin
                    (not_at_b_p3)

                    ; #35799: origin
                    (at_b_p5)

                    ; #53861: <==negation-removal== 35799 (pos)
                    (not (not_at_b_p5))

                    ; #83256: <==negation-removal== 13254 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #13254: origin
                    (not_at_b_p3)

                    ; #74721: origin
                    (at_b_p6)

                    ; #75941: <==negation-removal== 74721 (pos)
                    (not (not_at_b_p6))

                    ; #83256: <==negation-removal== 13254 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #13254: origin
                    (not_at_b_p3)

                    ; #20001: origin
                    (at_b_p7)

                    ; #23731: <==negation-removal== 20001 (pos)
                    (not (not_at_b_p7))

                    ; #83256: <==negation-removal== 13254 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #13254: origin
                    (not_at_b_p3)

                    ; #69022: origin
                    (at_b_p8)

                    ; #81885: <==negation-removal== 69022 (pos)
                    (not (not_at_b_p8))

                    ; #83256: <==negation-removal== 13254 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #13254: origin
                    (not_at_b_p3)

                    ; #64349: origin
                    (at_b_p9)

                    ; #77022: <==negation-removal== 64349 (pos)
                    (not (not_at_b_p9))

                    ; #83256: <==negation-removal== 13254 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #82312: origin
                    (at_b_p1)

                    ; #85642: origin
                    (not_at_b_p4)

                    ; #85330: <==negation-removal== 82312 (pos)
                    (not (not_at_b_p1))

                    ; #95675: <==negation-removal== 85642 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #16868: origin
                    (at_b_p2)

                    ; #85642: origin
                    (not_at_b_p4)

                    ; #41998: <==negation-removal== 16868 (pos)
                    (not (not_at_b_p2))

                    ; #95675: <==negation-removal== 85642 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #83256: origin
                    (at_b_p3)

                    ; #85642: origin
                    (not_at_b_p4)

                    ; #13254: <==negation-removal== 83256 (pos)
                    (not (not_at_b_p3))

                    ; #95675: <==negation-removal== 85642 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #85642: origin
                    (not_at_b_p4)

                    ; #95675: origin
                    (at_b_p4)

                    ; #85642: <==negation-removal== 95675 (pos)
                    (not (not_at_b_p4))

                    ; #95675: <==negation-removal== 85642 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #35799: origin
                    (at_b_p5)

                    ; #85642: origin
                    (not_at_b_p4)

                    ; #53861: <==negation-removal== 35799 (pos)
                    (not (not_at_b_p5))

                    ; #95675: <==negation-removal== 85642 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #74721: origin
                    (at_b_p6)

                    ; #85642: origin
                    (not_at_b_p4)

                    ; #75941: <==negation-removal== 74721 (pos)
                    (not (not_at_b_p6))

                    ; #95675: <==negation-removal== 85642 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #20001: origin
                    (at_b_p7)

                    ; #85642: origin
                    (not_at_b_p4)

                    ; #23731: <==negation-removal== 20001 (pos)
                    (not (not_at_b_p7))

                    ; #95675: <==negation-removal== 85642 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #69022: origin
                    (at_b_p8)

                    ; #85642: origin
                    (not_at_b_p4)

                    ; #81885: <==negation-removal== 69022 (pos)
                    (not (not_at_b_p8))

                    ; #95675: <==negation-removal== 85642 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #64349: origin
                    (at_b_p9)

                    ; #85642: origin
                    (not_at_b_p4)

                    ; #77022: <==negation-removal== 64349 (pos)
                    (not (not_at_b_p9))

                    ; #95675: <==negation-removal== 85642 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #53861: origin
                    (not_at_b_p5)

                    ; #82312: origin
                    (at_b_p1)

                    ; #35799: <==negation-removal== 53861 (pos)
                    (not (at_b_p5))

                    ; #85330: <==negation-removal== 82312 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #16868: origin
                    (at_b_p2)

                    ; #53861: origin
                    (not_at_b_p5)

                    ; #35799: <==negation-removal== 53861 (pos)
                    (not (at_b_p5))

                    ; #41998: <==negation-removal== 16868 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #53861: origin
                    (not_at_b_p5)

                    ; #83256: origin
                    (at_b_p3)

                    ; #13254: <==negation-removal== 83256 (pos)
                    (not (not_at_b_p3))

                    ; #35799: <==negation-removal== 53861 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #53861: origin
                    (not_at_b_p5)

                    ; #95675: origin
                    (at_b_p4)

                    ; #35799: <==negation-removal== 53861 (pos)
                    (not (at_b_p5))

                    ; #85642: <==negation-removal== 95675 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #35799: origin
                    (at_b_p5)

                    ; #53861: origin
                    (not_at_b_p5)

                    ; #35799: <==negation-removal== 53861 (pos)
                    (not (at_b_p5))

                    ; #53861: <==negation-removal== 35799 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #53861: origin
                    (not_at_b_p5)

                    ; #74721: origin
                    (at_b_p6)

                    ; #35799: <==negation-removal== 53861 (pos)
                    (not (at_b_p5))

                    ; #75941: <==negation-removal== 74721 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #20001: origin
                    (at_b_p7)

                    ; #53861: origin
                    (not_at_b_p5)

                    ; #23731: <==negation-removal== 20001 (pos)
                    (not (not_at_b_p7))

                    ; #35799: <==negation-removal== 53861 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #53861: origin
                    (not_at_b_p5)

                    ; #69022: origin
                    (at_b_p8)

                    ; #35799: <==negation-removal== 53861 (pos)
                    (not (at_b_p5))

                    ; #81885: <==negation-removal== 69022 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #53861: origin
                    (not_at_b_p5)

                    ; #64349: origin
                    (at_b_p9)

                    ; #35799: <==negation-removal== 53861 (pos)
                    (not (at_b_p5))

                    ; #77022: <==negation-removal== 64349 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #75941: origin
                    (not_at_b_p6)

                    ; #82312: origin
                    (at_b_p1)

                    ; #74721: <==negation-removal== 75941 (pos)
                    (not (at_b_p6))

                    ; #85330: <==negation-removal== 82312 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #16868: origin
                    (at_b_p2)

                    ; #75941: origin
                    (not_at_b_p6)

                    ; #41998: <==negation-removal== 16868 (pos)
                    (not (not_at_b_p2))

                    ; #74721: <==negation-removal== 75941 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #75941: origin
                    (not_at_b_p6)

                    ; #83256: origin
                    (at_b_p3)

                    ; #13254: <==negation-removal== 83256 (pos)
                    (not (not_at_b_p3))

                    ; #74721: <==negation-removal== 75941 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #75941: origin
                    (not_at_b_p6)

                    ; #95675: origin
                    (at_b_p4)

                    ; #74721: <==negation-removal== 75941 (pos)
                    (not (at_b_p6))

                    ; #85642: <==negation-removal== 95675 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #35799: origin
                    (at_b_p5)

                    ; #75941: origin
                    (not_at_b_p6)

                    ; #53861: <==negation-removal== 35799 (pos)
                    (not (not_at_b_p5))

                    ; #74721: <==negation-removal== 75941 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #74721: origin
                    (at_b_p6)

                    ; #75941: origin
                    (not_at_b_p6)

                    ; #74721: <==negation-removal== 75941 (pos)
                    (not (at_b_p6))

                    ; #75941: <==negation-removal== 74721 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #20001: origin
                    (at_b_p7)

                    ; #75941: origin
                    (not_at_b_p6)

                    ; #23731: <==negation-removal== 20001 (pos)
                    (not (not_at_b_p7))

                    ; #74721: <==negation-removal== 75941 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #69022: origin
                    (at_b_p8)

                    ; #75941: origin
                    (not_at_b_p6)

                    ; #74721: <==negation-removal== 75941 (pos)
                    (not (at_b_p6))

                    ; #81885: <==negation-removal== 69022 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #64349: origin
                    (at_b_p9)

                    ; #75941: origin
                    (not_at_b_p6)

                    ; #74721: <==negation-removal== 75941 (pos)
                    (not (at_b_p6))

                    ; #77022: <==negation-removal== 64349 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #23731: origin
                    (not_at_b_p7)

                    ; #82312: origin
                    (at_b_p1)

                    ; #20001: <==negation-removal== 23731 (pos)
                    (not (at_b_p7))

                    ; #85330: <==negation-removal== 82312 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #16868: origin
                    (at_b_p2)

                    ; #23731: origin
                    (not_at_b_p7)

                    ; #20001: <==negation-removal== 23731 (pos)
                    (not (at_b_p7))

                    ; #41998: <==negation-removal== 16868 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #23731: origin
                    (not_at_b_p7)

                    ; #83256: origin
                    (at_b_p3)

                    ; #13254: <==negation-removal== 83256 (pos)
                    (not (not_at_b_p3))

                    ; #20001: <==negation-removal== 23731 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #23731: origin
                    (not_at_b_p7)

                    ; #95675: origin
                    (at_b_p4)

                    ; #20001: <==negation-removal== 23731 (pos)
                    (not (at_b_p7))

                    ; #85642: <==negation-removal== 95675 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #23731: origin
                    (not_at_b_p7)

                    ; #35799: origin
                    (at_b_p5)

                    ; #20001: <==negation-removal== 23731 (pos)
                    (not (at_b_p7))

                    ; #53861: <==negation-removal== 35799 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #23731: origin
                    (not_at_b_p7)

                    ; #74721: origin
                    (at_b_p6)

                    ; #20001: <==negation-removal== 23731 (pos)
                    (not (at_b_p7))

                    ; #75941: <==negation-removal== 74721 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #20001: origin
                    (at_b_p7)

                    ; #23731: origin
                    (not_at_b_p7)

                    ; #20001: <==negation-removal== 23731 (pos)
                    (not (at_b_p7))

                    ; #23731: <==negation-removal== 20001 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #23731: origin
                    (not_at_b_p7)

                    ; #69022: origin
                    (at_b_p8)

                    ; #20001: <==negation-removal== 23731 (pos)
                    (not (at_b_p7))

                    ; #81885: <==negation-removal== 69022 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #23731: origin
                    (not_at_b_p7)

                    ; #64349: origin
                    (at_b_p9)

                    ; #20001: <==negation-removal== 23731 (pos)
                    (not (at_b_p7))

                    ; #77022: <==negation-removal== 64349 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #81885: origin
                    (not_at_b_p8)

                    ; #82312: origin
                    (at_b_p1)

                    ; #69022: <==negation-removal== 81885 (pos)
                    (not (at_b_p8))

                    ; #85330: <==negation-removal== 82312 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #16868: origin
                    (at_b_p2)

                    ; #81885: origin
                    (not_at_b_p8)

                    ; #41998: <==negation-removal== 16868 (pos)
                    (not (not_at_b_p2))

                    ; #69022: <==negation-removal== 81885 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #81885: origin
                    (not_at_b_p8)

                    ; #83256: origin
                    (at_b_p3)

                    ; #13254: <==negation-removal== 83256 (pos)
                    (not (not_at_b_p3))

                    ; #69022: <==negation-removal== 81885 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #81885: origin
                    (not_at_b_p8)

                    ; #95675: origin
                    (at_b_p4)

                    ; #69022: <==negation-removal== 81885 (pos)
                    (not (at_b_p8))

                    ; #85642: <==negation-removal== 95675 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #35799: origin
                    (at_b_p5)

                    ; #81885: origin
                    (not_at_b_p8)

                    ; #53861: <==negation-removal== 35799 (pos)
                    (not (not_at_b_p5))

                    ; #69022: <==negation-removal== 81885 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #74721: origin
                    (at_b_p6)

                    ; #81885: origin
                    (not_at_b_p8)

                    ; #69022: <==negation-removal== 81885 (pos)
                    (not (at_b_p8))

                    ; #75941: <==negation-removal== 74721 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #20001: origin
                    (at_b_p7)

                    ; #81885: origin
                    (not_at_b_p8)

                    ; #23731: <==negation-removal== 20001 (pos)
                    (not (not_at_b_p7))

                    ; #69022: <==negation-removal== 81885 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #69022: origin
                    (at_b_p8)

                    ; #81885: origin
                    (not_at_b_p8)

                    ; #69022: <==negation-removal== 81885 (pos)
                    (not (at_b_p8))

                    ; #81885: <==negation-removal== 69022 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #64349: origin
                    (at_b_p9)

                    ; #81885: origin
                    (not_at_b_p8)

                    ; #69022: <==negation-removal== 81885 (pos)
                    (not (at_b_p8))

                    ; #77022: <==negation-removal== 64349 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #77022: origin
                    (not_at_b_p9)

                    ; #82312: origin
                    (at_b_p1)

                    ; #64349: <==negation-removal== 77022 (pos)
                    (not (at_b_p9))

                    ; #85330: <==negation-removal== 82312 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #16868: origin
                    (at_b_p2)

                    ; #77022: origin
                    (not_at_b_p9)

                    ; #41998: <==negation-removal== 16868 (pos)
                    (not (not_at_b_p2))

                    ; #64349: <==negation-removal== 77022 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #77022: origin
                    (not_at_b_p9)

                    ; #83256: origin
                    (at_b_p3)

                    ; #13254: <==negation-removal== 83256 (pos)
                    (not (not_at_b_p3))

                    ; #64349: <==negation-removal== 77022 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #77022: origin
                    (not_at_b_p9)

                    ; #95675: origin
                    (at_b_p4)

                    ; #64349: <==negation-removal== 77022 (pos)
                    (not (at_b_p9))

                    ; #85642: <==negation-removal== 95675 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #35799: origin
                    (at_b_p5)

                    ; #77022: origin
                    (not_at_b_p9)

                    ; #53861: <==negation-removal== 35799 (pos)
                    (not (not_at_b_p5))

                    ; #64349: <==negation-removal== 77022 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #74721: origin
                    (at_b_p6)

                    ; #77022: origin
                    (not_at_b_p9)

                    ; #64349: <==negation-removal== 77022 (pos)
                    (not (at_b_p9))

                    ; #75941: <==negation-removal== 74721 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #20001: origin
                    (at_b_p7)

                    ; #77022: origin
                    (not_at_b_p9)

                    ; #23731: <==negation-removal== 20001 (pos)
                    (not (not_at_b_p7))

                    ; #64349: <==negation-removal== 77022 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #69022: origin
                    (at_b_p8)

                    ; #77022: origin
                    (not_at_b_p9)

                    ; #64349: <==negation-removal== 77022 (pos)
                    (not (at_b_p9))

                    ; #81885: <==negation-removal== 69022 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #64349: origin
                    (at_b_p9)

                    ; #77022: origin
                    (not_at_b_p9)

                    ; #64349: <==negation-removal== 77022 (pos)
                    (not (at_b_p9))

                    ; #77022: <==negation-removal== 64349 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #21967: origin
                    (not_at_c_p1)

                    ; #98668: origin
                    (at_c_p1)

                    ; #21967: <==negation-removal== 98668 (pos)
                    (not (not_at_c_p1))

                    ; #98668: <==negation-removal== 21967 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #21967: origin
                    (not_at_c_p1)

                    ; #26486: origin
                    (at_c_p2)

                    ; #79193: <==negation-removal== 26486 (pos)
                    (not (not_at_c_p2))

                    ; #98668: <==negation-removal== 21967 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #21967: origin
                    (not_at_c_p1)

                    ; #60952: origin
                    (at_c_p3)

                    ; #54006: <==negation-removal== 60952 (pos)
                    (not (not_at_c_p3))

                    ; #98668: <==negation-removal== 21967 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #21967: origin
                    (not_at_c_p1)

                    ; #48391: origin
                    (at_c_p4)

                    ; #48365: <==negation-removal== 48391 (pos)
                    (not (not_at_c_p4))

                    ; #98668: <==negation-removal== 21967 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #21967: origin
                    (not_at_c_p1)

                    ; #78704: origin
                    (at_c_p5)

                    ; #76842: <==negation-removal== 78704 (pos)
                    (not (not_at_c_p5))

                    ; #98668: <==negation-removal== 21967 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #21967: origin
                    (not_at_c_p1)

                    ; #23041: origin
                    (at_c_p6)

                    ; #70659: <==negation-removal== 23041 (pos)
                    (not (not_at_c_p6))

                    ; #98668: <==negation-removal== 21967 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #14683: origin
                    (at_c_p7)

                    ; #21967: origin
                    (not_at_c_p1)

                    ; #87381: <==negation-removal== 14683 (pos)
                    (not (not_at_c_p7))

                    ; #98668: <==negation-removal== 21967 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #21967: origin
                    (not_at_c_p1)

                    ; #76742: origin
                    (at_c_p8)

                    ; #45946: <==negation-removal== 76742 (pos)
                    (not (not_at_c_p8))

                    ; #98668: <==negation-removal== 21967 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #10353: origin
                    (at_c_p9)

                    ; #21967: origin
                    (not_at_c_p1)

                    ; #25312: <==negation-removal== 10353 (pos)
                    (not (not_at_c_p9))

                    ; #98668: <==negation-removal== 21967 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #79193: origin
                    (not_at_c_p2)

                    ; #98668: origin
                    (at_c_p1)

                    ; #21967: <==negation-removal== 98668 (pos)
                    (not (not_at_c_p1))

                    ; #26486: <==negation-removal== 79193 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #26486: origin
                    (at_c_p2)

                    ; #79193: origin
                    (not_at_c_p2)

                    ; #26486: <==negation-removal== 79193 (pos)
                    (not (at_c_p2))

                    ; #79193: <==negation-removal== 26486 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #60952: origin
                    (at_c_p3)

                    ; #79193: origin
                    (not_at_c_p2)

                    ; #26486: <==negation-removal== 79193 (pos)
                    (not (at_c_p2))

                    ; #54006: <==negation-removal== 60952 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #48391: origin
                    (at_c_p4)

                    ; #79193: origin
                    (not_at_c_p2)

                    ; #26486: <==negation-removal== 79193 (pos)
                    (not (at_c_p2))

                    ; #48365: <==negation-removal== 48391 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #78704: origin
                    (at_c_p5)

                    ; #79193: origin
                    (not_at_c_p2)

                    ; #26486: <==negation-removal== 79193 (pos)
                    (not (at_c_p2))

                    ; #76842: <==negation-removal== 78704 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #23041: origin
                    (at_c_p6)

                    ; #79193: origin
                    (not_at_c_p2)

                    ; #26486: <==negation-removal== 79193 (pos)
                    (not (at_c_p2))

                    ; #70659: <==negation-removal== 23041 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #14683: origin
                    (at_c_p7)

                    ; #79193: origin
                    (not_at_c_p2)

                    ; #26486: <==negation-removal== 79193 (pos)
                    (not (at_c_p2))

                    ; #87381: <==negation-removal== 14683 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #76742: origin
                    (at_c_p8)

                    ; #79193: origin
                    (not_at_c_p2)

                    ; #26486: <==negation-removal== 79193 (pos)
                    (not (at_c_p2))

                    ; #45946: <==negation-removal== 76742 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #10353: origin
                    (at_c_p9)

                    ; #79193: origin
                    (not_at_c_p2)

                    ; #25312: <==negation-removal== 10353 (pos)
                    (not (not_at_c_p9))

                    ; #26486: <==negation-removal== 79193 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #54006: origin
                    (not_at_c_p3)

                    ; #98668: origin
                    (at_c_p1)

                    ; #21967: <==negation-removal== 98668 (pos)
                    (not (not_at_c_p1))

                    ; #60952: <==negation-removal== 54006 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #26486: origin
                    (at_c_p2)

                    ; #54006: origin
                    (not_at_c_p3)

                    ; #60952: <==negation-removal== 54006 (pos)
                    (not (at_c_p3))

                    ; #79193: <==negation-removal== 26486 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #54006: origin
                    (not_at_c_p3)

                    ; #60952: origin
                    (at_c_p3)

                    ; #54006: <==negation-removal== 60952 (pos)
                    (not (not_at_c_p3))

                    ; #60952: <==negation-removal== 54006 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #48391: origin
                    (at_c_p4)

                    ; #54006: origin
                    (not_at_c_p3)

                    ; #48365: <==negation-removal== 48391 (pos)
                    (not (not_at_c_p4))

                    ; #60952: <==negation-removal== 54006 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #54006: origin
                    (not_at_c_p3)

                    ; #78704: origin
                    (at_c_p5)

                    ; #60952: <==negation-removal== 54006 (pos)
                    (not (at_c_p3))

                    ; #76842: <==negation-removal== 78704 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #23041: origin
                    (at_c_p6)

                    ; #54006: origin
                    (not_at_c_p3)

                    ; #60952: <==negation-removal== 54006 (pos)
                    (not (at_c_p3))

                    ; #70659: <==negation-removal== 23041 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #14683: origin
                    (at_c_p7)

                    ; #54006: origin
                    (not_at_c_p3)

                    ; #60952: <==negation-removal== 54006 (pos)
                    (not (at_c_p3))

                    ; #87381: <==negation-removal== 14683 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #54006: origin
                    (not_at_c_p3)

                    ; #76742: origin
                    (at_c_p8)

                    ; #45946: <==negation-removal== 76742 (pos)
                    (not (not_at_c_p8))

                    ; #60952: <==negation-removal== 54006 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #10353: origin
                    (at_c_p9)

                    ; #54006: origin
                    (not_at_c_p3)

                    ; #25312: <==negation-removal== 10353 (pos)
                    (not (not_at_c_p9))

                    ; #60952: <==negation-removal== 54006 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #48365: origin
                    (not_at_c_p4)

                    ; #98668: origin
                    (at_c_p1)

                    ; #21967: <==negation-removal== 98668 (pos)
                    (not (not_at_c_p1))

                    ; #48391: <==negation-removal== 48365 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #26486: origin
                    (at_c_p2)

                    ; #48365: origin
                    (not_at_c_p4)

                    ; #48391: <==negation-removal== 48365 (pos)
                    (not (at_c_p4))

                    ; #79193: <==negation-removal== 26486 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #48365: origin
                    (not_at_c_p4)

                    ; #60952: origin
                    (at_c_p3)

                    ; #48391: <==negation-removal== 48365 (pos)
                    (not (at_c_p4))

                    ; #54006: <==negation-removal== 60952 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #48365: origin
                    (not_at_c_p4)

                    ; #48391: origin
                    (at_c_p4)

                    ; #48365: <==negation-removal== 48391 (pos)
                    (not (not_at_c_p4))

                    ; #48391: <==negation-removal== 48365 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #48365: origin
                    (not_at_c_p4)

                    ; #78704: origin
                    (at_c_p5)

                    ; #48391: <==negation-removal== 48365 (pos)
                    (not (at_c_p4))

                    ; #76842: <==negation-removal== 78704 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #23041: origin
                    (at_c_p6)

                    ; #48365: origin
                    (not_at_c_p4)

                    ; #48391: <==negation-removal== 48365 (pos)
                    (not (at_c_p4))

                    ; #70659: <==negation-removal== 23041 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #14683: origin
                    (at_c_p7)

                    ; #48365: origin
                    (not_at_c_p4)

                    ; #48391: <==negation-removal== 48365 (pos)
                    (not (at_c_p4))

                    ; #87381: <==negation-removal== 14683 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #48365: origin
                    (not_at_c_p4)

                    ; #76742: origin
                    (at_c_p8)

                    ; #45946: <==negation-removal== 76742 (pos)
                    (not (not_at_c_p8))

                    ; #48391: <==negation-removal== 48365 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #10353: origin
                    (at_c_p9)

                    ; #48365: origin
                    (not_at_c_p4)

                    ; #25312: <==negation-removal== 10353 (pos)
                    (not (not_at_c_p9))

                    ; #48391: <==negation-removal== 48365 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #76842: origin
                    (not_at_c_p5)

                    ; #98668: origin
                    (at_c_p1)

                    ; #21967: <==negation-removal== 98668 (pos)
                    (not (not_at_c_p1))

                    ; #78704: <==negation-removal== 76842 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #26486: origin
                    (at_c_p2)

                    ; #76842: origin
                    (not_at_c_p5)

                    ; #78704: <==negation-removal== 76842 (pos)
                    (not (at_c_p5))

                    ; #79193: <==negation-removal== 26486 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #60952: origin
                    (at_c_p3)

                    ; #76842: origin
                    (not_at_c_p5)

                    ; #54006: <==negation-removal== 60952 (pos)
                    (not (not_at_c_p3))

                    ; #78704: <==negation-removal== 76842 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #48391: origin
                    (at_c_p4)

                    ; #76842: origin
                    (not_at_c_p5)

                    ; #48365: <==negation-removal== 48391 (pos)
                    (not (not_at_c_p4))

                    ; #78704: <==negation-removal== 76842 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #76842: origin
                    (not_at_c_p5)

                    ; #78704: origin
                    (at_c_p5)

                    ; #76842: <==negation-removal== 78704 (pos)
                    (not (not_at_c_p5))

                    ; #78704: <==negation-removal== 76842 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #23041: origin
                    (at_c_p6)

                    ; #76842: origin
                    (not_at_c_p5)

                    ; #70659: <==negation-removal== 23041 (pos)
                    (not (not_at_c_p6))

                    ; #78704: <==negation-removal== 76842 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #14683: origin
                    (at_c_p7)

                    ; #76842: origin
                    (not_at_c_p5)

                    ; #78704: <==negation-removal== 76842 (pos)
                    (not (at_c_p5))

                    ; #87381: <==negation-removal== 14683 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #76742: origin
                    (at_c_p8)

                    ; #76842: origin
                    (not_at_c_p5)

                    ; #45946: <==negation-removal== 76742 (pos)
                    (not (not_at_c_p8))

                    ; #78704: <==negation-removal== 76842 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #10353: origin
                    (at_c_p9)

                    ; #76842: origin
                    (not_at_c_p5)

                    ; #25312: <==negation-removal== 10353 (pos)
                    (not (not_at_c_p9))

                    ; #78704: <==negation-removal== 76842 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #70659: origin
                    (not_at_c_p6)

                    ; #98668: origin
                    (at_c_p1)

                    ; #21967: <==negation-removal== 98668 (pos)
                    (not (not_at_c_p1))

                    ; #23041: <==negation-removal== 70659 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #26486: origin
                    (at_c_p2)

                    ; #70659: origin
                    (not_at_c_p6)

                    ; #23041: <==negation-removal== 70659 (pos)
                    (not (at_c_p6))

                    ; #79193: <==negation-removal== 26486 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #60952: origin
                    (at_c_p3)

                    ; #70659: origin
                    (not_at_c_p6)

                    ; #23041: <==negation-removal== 70659 (pos)
                    (not (at_c_p6))

                    ; #54006: <==negation-removal== 60952 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #48391: origin
                    (at_c_p4)

                    ; #70659: origin
                    (not_at_c_p6)

                    ; #23041: <==negation-removal== 70659 (pos)
                    (not (at_c_p6))

                    ; #48365: <==negation-removal== 48391 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #70659: origin
                    (not_at_c_p6)

                    ; #78704: origin
                    (at_c_p5)

                    ; #23041: <==negation-removal== 70659 (pos)
                    (not (at_c_p6))

                    ; #76842: <==negation-removal== 78704 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #23041: origin
                    (at_c_p6)

                    ; #70659: origin
                    (not_at_c_p6)

                    ; #23041: <==negation-removal== 70659 (pos)
                    (not (at_c_p6))

                    ; #70659: <==negation-removal== 23041 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #14683: origin
                    (at_c_p7)

                    ; #70659: origin
                    (not_at_c_p6)

                    ; #23041: <==negation-removal== 70659 (pos)
                    (not (at_c_p6))

                    ; #87381: <==negation-removal== 14683 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #70659: origin
                    (not_at_c_p6)

                    ; #76742: origin
                    (at_c_p8)

                    ; #23041: <==negation-removal== 70659 (pos)
                    (not (at_c_p6))

                    ; #45946: <==negation-removal== 76742 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #10353: origin
                    (at_c_p9)

                    ; #70659: origin
                    (not_at_c_p6)

                    ; #23041: <==negation-removal== 70659 (pos)
                    (not (at_c_p6))

                    ; #25312: <==negation-removal== 10353 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #87381: origin
                    (not_at_c_p7)

                    ; #98668: origin
                    (at_c_p1)

                    ; #14683: <==negation-removal== 87381 (pos)
                    (not (at_c_p7))

                    ; #21967: <==negation-removal== 98668 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #26486: origin
                    (at_c_p2)

                    ; #87381: origin
                    (not_at_c_p7)

                    ; #14683: <==negation-removal== 87381 (pos)
                    (not (at_c_p7))

                    ; #79193: <==negation-removal== 26486 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #60952: origin
                    (at_c_p3)

                    ; #87381: origin
                    (not_at_c_p7)

                    ; #14683: <==negation-removal== 87381 (pos)
                    (not (at_c_p7))

                    ; #54006: <==negation-removal== 60952 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #48391: origin
                    (at_c_p4)

                    ; #87381: origin
                    (not_at_c_p7)

                    ; #14683: <==negation-removal== 87381 (pos)
                    (not (at_c_p7))

                    ; #48365: <==negation-removal== 48391 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #78704: origin
                    (at_c_p5)

                    ; #87381: origin
                    (not_at_c_p7)

                    ; #14683: <==negation-removal== 87381 (pos)
                    (not (at_c_p7))

                    ; #76842: <==negation-removal== 78704 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #23041: origin
                    (at_c_p6)

                    ; #87381: origin
                    (not_at_c_p7)

                    ; #14683: <==negation-removal== 87381 (pos)
                    (not (at_c_p7))

                    ; #70659: <==negation-removal== 23041 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #14683: origin
                    (at_c_p7)

                    ; #87381: origin
                    (not_at_c_p7)

                    ; #14683: <==negation-removal== 87381 (pos)
                    (not (at_c_p7))

                    ; #87381: <==negation-removal== 14683 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #76742: origin
                    (at_c_p8)

                    ; #87381: origin
                    (not_at_c_p7)

                    ; #14683: <==negation-removal== 87381 (pos)
                    (not (at_c_p7))

                    ; #45946: <==negation-removal== 76742 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #10353: origin
                    (at_c_p9)

                    ; #87381: origin
                    (not_at_c_p7)

                    ; #14683: <==negation-removal== 87381 (pos)
                    (not (at_c_p7))

                    ; #25312: <==negation-removal== 10353 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #45946: origin
                    (not_at_c_p8)

                    ; #98668: origin
                    (at_c_p1)

                    ; #21967: <==negation-removal== 98668 (pos)
                    (not (not_at_c_p1))

                    ; #76742: <==negation-removal== 45946 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #26486: origin
                    (at_c_p2)

                    ; #45946: origin
                    (not_at_c_p8)

                    ; #76742: <==negation-removal== 45946 (pos)
                    (not (at_c_p8))

                    ; #79193: <==negation-removal== 26486 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #45946: origin
                    (not_at_c_p8)

                    ; #60952: origin
                    (at_c_p3)

                    ; #54006: <==negation-removal== 60952 (pos)
                    (not (not_at_c_p3))

                    ; #76742: <==negation-removal== 45946 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #45946: origin
                    (not_at_c_p8)

                    ; #48391: origin
                    (at_c_p4)

                    ; #48365: <==negation-removal== 48391 (pos)
                    (not (not_at_c_p4))

                    ; #76742: <==negation-removal== 45946 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #45946: origin
                    (not_at_c_p8)

                    ; #78704: origin
                    (at_c_p5)

                    ; #76742: <==negation-removal== 45946 (pos)
                    (not (at_c_p8))

                    ; #76842: <==negation-removal== 78704 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #23041: origin
                    (at_c_p6)

                    ; #45946: origin
                    (not_at_c_p8)

                    ; #70659: <==negation-removal== 23041 (pos)
                    (not (not_at_c_p6))

                    ; #76742: <==negation-removal== 45946 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #14683: origin
                    (at_c_p7)

                    ; #45946: origin
                    (not_at_c_p8)

                    ; #76742: <==negation-removal== 45946 (pos)
                    (not (at_c_p8))

                    ; #87381: <==negation-removal== 14683 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #45946: origin
                    (not_at_c_p8)

                    ; #76742: origin
                    (at_c_p8)

                    ; #45946: <==negation-removal== 76742 (pos)
                    (not (not_at_c_p8))

                    ; #76742: <==negation-removal== 45946 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #10353: origin
                    (at_c_p9)

                    ; #45946: origin
                    (not_at_c_p8)

                    ; #25312: <==negation-removal== 10353 (pos)
                    (not (not_at_c_p9))

                    ; #76742: <==negation-removal== 45946 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #25312: origin
                    (not_at_c_p9)

                    ; #98668: origin
                    (at_c_p1)

                    ; #10353: <==negation-removal== 25312 (pos)
                    (not (at_c_p9))

                    ; #21967: <==negation-removal== 98668 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #25312: origin
                    (not_at_c_p9)

                    ; #26486: origin
                    (at_c_p2)

                    ; #10353: <==negation-removal== 25312 (pos)
                    (not (at_c_p9))

                    ; #79193: <==negation-removal== 26486 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #25312: origin
                    (not_at_c_p9)

                    ; #60952: origin
                    (at_c_p3)

                    ; #10353: <==negation-removal== 25312 (pos)
                    (not (at_c_p9))

                    ; #54006: <==negation-removal== 60952 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #25312: origin
                    (not_at_c_p9)

                    ; #48391: origin
                    (at_c_p4)

                    ; #10353: <==negation-removal== 25312 (pos)
                    (not (at_c_p9))

                    ; #48365: <==negation-removal== 48391 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #25312: origin
                    (not_at_c_p9)

                    ; #78704: origin
                    (at_c_p5)

                    ; #10353: <==negation-removal== 25312 (pos)
                    (not (at_c_p9))

                    ; #76842: <==negation-removal== 78704 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #23041: origin
                    (at_c_p6)

                    ; #25312: origin
                    (not_at_c_p9)

                    ; #10353: <==negation-removal== 25312 (pos)
                    (not (at_c_p9))

                    ; #70659: <==negation-removal== 23041 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #14683: origin
                    (at_c_p7)

                    ; #25312: origin
                    (not_at_c_p9)

                    ; #10353: <==negation-removal== 25312 (pos)
                    (not (at_c_p9))

                    ; #87381: <==negation-removal== 14683 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #25312: origin
                    (not_at_c_p9)

                    ; #76742: origin
                    (at_c_p8)

                    ; #10353: <==negation-removal== 25312 (pos)
                    (not (at_c_p9))

                    ; #45946: <==negation-removal== 76742 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #10353: origin
                    (at_c_p9)

                    ; #25312: origin
                    (not_at_c_p9)

                    ; #10353: <==negation-removal== 25312 (pos)
                    (not (at_c_p9))

                    ; #25312: <==negation-removal== 10353 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11326: <==commonly_known== 34282 (neg)
                    (Pa_checked_p1)

                    ; #12334: <==closure== 55050 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #28280: origin
                    (checked_p1)

                    ; #42481: <==commonly_known== 28280 (pos)
                    (Bb_checked_p1)

                    ; #43421: <==closure== 79345 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #49654: <==commonly_known== 34282 (neg)
                    (Pc_checked_p1)

                    ; #55050: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #74632: <==commonly_known== 28280 (pos)
                    (Ba_checked_p1)

                    ; #79345: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #79876: <==commonly_known== 28280 (pos)
                    (Bc_checked_p1)

                    ; #85699: <==commonly_known== 34282 (neg)
                    (Pb_checked_p1)

                    ; #18620: <==uncertain_firing== 79345 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #20172: <==negation-removal== 79345 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #21405: <==uncertain_firing== 12334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #22705: <==negation-removal== 43421 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #26141: <==negation-removal== 12334 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #26580: <==negation-removal== 11326 (pos)
                    (not (Ba_not_checked_p1))

                    ; #28583: <==negation-removal== 55050 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #34282: <==negation-removal== 28280 (pos)
                    (not (not_checked_p1))

                    ; #37074: <==negation-removal== 42481 (pos)
                    (not (Pb_not_checked_p1))

                    ; #40605: <==uncertain_firing== 55050 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #42978: <==uncertain_firing== 43421 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #58713: <==negation-removal== 74632 (pos)
                    (not (Pa_not_checked_p1))

                    ; #66483: <==negation-removal== 79876 (pos)
                    (not (Pc_not_checked_p1))

                    ; #66752: <==negation-removal== 49654 (pos)
                    (not (Bc_not_checked_p1))

                    ; #81653: <==negation-removal== 85699 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10147: <==commonly_known== 67077 (neg)
                    (Pa_checked_p2)

                    ; #12784: <==commonly_known== 82997 (pos)
                    (Bb_checked_p2)

                    ; #22194: <==commonly_known== 67077 (neg)
                    (Pc_checked_p2)

                    ; #44520: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #45574: <==closure== 44520 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #52461: <==commonly_known== 67077 (neg)
                    (Pb_checked_p2)

                    ; #56511: <==commonly_known== 82997 (pos)
                    (Ba_checked_p2)

                    ; #80884: <==closure== 92710 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #82105: <==commonly_known== 82997 (pos)
                    (Bc_checked_p2)

                    ; #82997: origin
                    (checked_p2)

                    ; #92710: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #21452: <==uncertain_firing== 44520 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #28647: <==negation-removal== 82105 (pos)
                    (not (Pc_not_checked_p2))

                    ; #29602: <==negation-removal== 52461 (pos)
                    (not (Bb_not_checked_p2))

                    ; #30743: <==negation-removal== 44520 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #48863: <==negation-removal== 92710 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #62135: <==uncertain_firing== 45574 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #66034: <==negation-removal== 56511 (pos)
                    (not (Pa_not_checked_p2))

                    ; #67077: <==negation-removal== 82997 (pos)
                    (not (not_checked_p2))

                    ; #75382: <==negation-removal== 45574 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #76236: <==negation-removal== 10147 (pos)
                    (not (Ba_not_checked_p2))

                    ; #78078: <==uncertain_firing== 80884 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #81458: <==negation-removal== 12784 (pos)
                    (not (Pb_not_checked_p2))

                    ; #84595: <==negation-removal== 80884 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #91370: <==uncertain_firing== 92710 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #91828: <==negation-removal== 22194 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16768: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #16870: <==commonly_known== 49920 (pos)
                    (Bb_checked_p3)

                    ; #21488: <==commonly_known== 21213 (neg)
                    (Pb_checked_p3)

                    ; #24349: <==commonly_known== 21213 (neg)
                    (Pa_checked_p3)

                    ; #24674: <==commonly_known== 21213 (neg)
                    (Pc_checked_p3)

                    ; #49230: <==closure== 16768 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #49920: origin
                    (checked_p3)

                    ; #52268: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #82152: <==commonly_known== 49920 (pos)
                    (Bc_checked_p3)

                    ; #82194: <==closure== 52268 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #87314: <==commonly_known== 49920 (pos)
                    (Ba_checked_p3)

                    ; #18593: <==uncertain_firing== 82194 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #21213: <==negation-removal== 49920 (pos)
                    (not (not_checked_p3))

                    ; #27453: <==negation-removal== 49230 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #32524: <==uncertain_firing== 49230 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #35725: <==negation-removal== 16768 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #38036: <==negation-removal== 24349 (pos)
                    (not (Ba_not_checked_p3))

                    ; #39970: <==negation-removal== 87314 (pos)
                    (not (Pa_not_checked_p3))

                    ; #47948: <==negation-removal== 52268 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #52627: <==negation-removal== 82152 (pos)
                    (not (Pc_not_checked_p3))

                    ; #54644: <==negation-removal== 21488 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56359: <==negation-removal== 16870 (pos)
                    (not (Pb_not_checked_p3))

                    ; #62359: <==uncertain_firing== 52268 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #63401: <==negation-removal== 82194 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #63518: <==uncertain_firing== 16768 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #79270: <==negation-removal== 24674 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #14538: <==closure== 65419 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #26390: <==commonly_known== 83313 (pos)
                    (Bb_checked_p4)

                    ; #33506: <==commonly_known== 83313 (pos)
                    (Ba_checked_p4)

                    ; #35570: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #46005: <==commonly_known== 77976 (neg)
                    (Pb_checked_p4)

                    ; #55151: <==commonly_known== 77976 (neg)
                    (Pc_checked_p4)

                    ; #56893: <==closure== 35570 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #65419: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #71388: <==commonly_known== 83313 (pos)
                    (Bc_checked_p4)

                    ; #83313: origin
                    (checked_p4)

                    ; #85962: <==commonly_known== 77976 (neg)
                    (Pa_checked_p4)

                    ; #28919: <==uncertain_firing== 65419 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #33414: <==negation-removal== 14538 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #34359: <==uncertain_firing== 14538 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #38135: <==negation-removal== 26390 (pos)
                    (not (Pb_not_checked_p4))

                    ; #47580: <==negation-removal== 85962 (pos)
                    (not (Ba_not_checked_p4))

                    ; #51246: <==negation-removal== 55151 (pos)
                    (not (Bc_not_checked_p4))

                    ; #52320: <==negation-removal== 65419 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #61318: <==negation-removal== 71388 (pos)
                    (not (Pc_not_checked_p4))

                    ; #62296: <==uncertain_firing== 56893 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #72445: <==uncertain_firing== 35570 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #74197: <==negation-removal== 56893 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #77976: <==negation-removal== 83313 (pos)
                    (not (not_checked_p4))

                    ; #82121: <==negation-removal== 46005 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86804: <==negation-removal== 33506 (pos)
                    (not (Pa_not_checked_p4))

                    ; #88080: <==negation-removal== 35570 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #24611: <==commonly_known== 38549 (pos)
                    (Ba_checked_p5)

                    ; #30556: <==commonly_known== 12470 (neg)
                    (Pb_checked_p5)

                    ; #38549: origin
                    (checked_p5)

                    ; #41390: <==commonly_known== 12470 (neg)
                    (Pa_checked_p5)

                    ; #41918: <==commonly_known== 38549 (pos)
                    (Bb_checked_p5)

                    ; #42662: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #68625: <==commonly_known== 38549 (pos)
                    (Bc_checked_p5)

                    ; #81539: <==closure== 42662 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #81924: <==closure== 81991 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #81991: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #84035: <==commonly_known== 12470 (neg)
                    (Pc_checked_p5)

                    ; #12470: <==negation-removal== 38549 (pos)
                    (not (not_checked_p5))

                    ; #18153: <==negation-removal== 30556 (pos)
                    (not (Bb_not_checked_p5))

                    ; #20065: <==negation-removal== 84035 (pos)
                    (not (Bc_not_checked_p5))

                    ; #36872: <==negation-removal== 81539 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #47543: <==uncertain_firing== 81539 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #48680: <==negation-removal== 81924 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #52251: <==negation-removal== 81991 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #53937: <==negation-removal== 42662 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #57951: <==negation-removal== 24611 (pos)
                    (not (Pa_not_checked_p5))

                    ; #64120: <==negation-removal== 41390 (pos)
                    (not (Ba_not_checked_p5))

                    ; #65760: <==negation-removal== 68625 (pos)
                    (not (Pc_not_checked_p5))

                    ; #74390: <==uncertain_firing== 42662 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #75788: <==uncertain_firing== 81991 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #83010: <==negation-removal== 41918 (pos)
                    (not (Pb_not_checked_p5))

                    ; #86358: <==uncertain_firing== 81924 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #20739: <==commonly_known== 36857 (neg)
                    (Pc_checked_p6)

                    ; #21844: <==commonly_known== 36857 (neg)
                    (Pb_checked_p6)

                    ; #21865: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #22305: <==closure== 21865 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #31150: origin
                    (checked_p6)

                    ; #33414: <==commonly_known== 31150 (pos)
                    (Bc_checked_p6)

                    ; #35248: <==commonly_known== 31150 (pos)
                    (Ba_checked_p6)

                    ; #49215: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #52470: <==commonly_known== 36857 (neg)
                    (Pa_checked_p6)

                    ; #68549: <==commonly_known== 31150 (pos)
                    (Bb_checked_p6)

                    ; #92231: <==closure== 49215 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #11619: <==uncertain_firing== 21865 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #13184: <==negation-removal== 49215 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #25036: <==negation-removal== 33414 (pos)
                    (not (Pc_not_checked_p6))

                    ; #27793: <==negation-removal== 68549 (pos)
                    (not (Pb_not_checked_p6))

                    ; #35935: <==uncertain_firing== 49215 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #36857: <==negation-removal== 31150 (pos)
                    (not (not_checked_p6))

                    ; #41109: <==negation-removal== 21865 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #42479: <==negation-removal== 92231 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #43193: <==negation-removal== 22305 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #48192: <==negation-removal== 52470 (pos)
                    (not (Ba_not_checked_p6))

                    ; #53899: <==uncertain_firing== 92231 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #63543: <==negation-removal== 20739 (pos)
                    (not (Bc_not_checked_p6))

                    ; #69986: <==negation-removal== 35248 (pos)
                    (not (Pa_not_checked_p6))

                    ; #82891: <==uncertain_firing== 22305 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #89219: <==negation-removal== 21844 (pos)
                    (not (Bb_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10560: <==commonly_known== 89208 (pos)
                    (Ba_checked_p7)

                    ; #14032: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #16606: <==commonly_known== 89208 (pos)
                    (Bb_checked_p7)

                    ; #18550: <==commonly_known== 78741 (neg)
                    (Pb_checked_p7)

                    ; #27791: <==commonly_known== 78741 (neg)
                    (Pc_checked_p7)

                    ; #47575: <==closure== 92306 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #71665: <==commonly_known== 89208 (pos)
                    (Bc_checked_p7)

                    ; #77258: <==commonly_known== 78741 (neg)
                    (Pa_checked_p7)

                    ; #80080: <==closure== 14032 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #89208: origin
                    (checked_p7)

                    ; #92306: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #20159: <==uncertain_firing== 14032 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #20175: <==negation-removal== 80080 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #21965: <==negation-removal== 14032 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #22819: <==negation-removal== 27791 (pos)
                    (not (Bc_not_checked_p7))

                    ; #40594: <==negation-removal== 71665 (pos)
                    (not (Pc_not_checked_p7))

                    ; #47482: <==negation-removal== 47575 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #50024: <==negation-removal== 10560 (pos)
                    (not (Pa_not_checked_p7))

                    ; #52225: <==uncertain_firing== 80080 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #54043: <==uncertain_firing== 47575 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #55458: <==negation-removal== 77258 (pos)
                    (not (Ba_not_checked_p7))

                    ; #56570: <==uncertain_firing== 92306 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #68081: <==negation-removal== 16606 (pos)
                    (not (Pb_not_checked_p7))

                    ; #73628: <==negation-removal== 92306 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #78741: <==negation-removal== 89208 (pos)
                    (not (not_checked_p7))

                    ; #97771: <==negation-removal== 18550 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15907: <==commonly_known== 72814 (neg)
                    (Pc_checked_p8)

                    ; #16162: <==commonly_known== 72814 (neg)
                    (Pb_checked_p8)

                    ; #21232: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #36104: <==commonly_known== 72814 (neg)
                    (Pa_checked_p8)

                    ; #50098: origin
                    (checked_p8)

                    ; #51055: <==closure== 21232 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #52591: <==commonly_known== 50098 (pos)
                    (Bb_checked_p8)

                    ; #60415: <==closure== 83605 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #82526: <==commonly_known== 50098 (pos)
                    (Bc_checked_p8)

                    ; #83605: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #88156: <==commonly_known== 50098 (pos)
                    (Ba_checked_p8)

                    ; #13288: <==uncertain_firing== 51055 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #16535: <==negation-removal== 21232 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #21028: <==negation-removal== 83605 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #21260: <==negation-removal== 51055 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #31409: <==negation-removal== 52591 (pos)
                    (not (Pb_not_checked_p8))

                    ; #36941: <==negation-removal== 36104 (pos)
                    (not (Ba_not_checked_p8))

                    ; #40570: <==negation-removal== 60415 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #41576: <==negation-removal== 88156 (pos)
                    (not (Pa_not_checked_p8))

                    ; #43632: <==uncertain_firing== 60415 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #44715: <==negation-removal== 82526 (pos)
                    (not (Pc_not_checked_p8))

                    ; #45529: <==uncertain_firing== 21232 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #54182: <==negation-removal== 16162 (pos)
                    (not (Bb_not_checked_p8))

                    ; #72814: <==negation-removal== 50098 (pos)
                    (not (not_checked_p8))

                    ; #89058: <==negation-removal== 15907 (pos)
                    (not (Bc_not_checked_p8))

                    ; #91933: <==uncertain_firing== 83605 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #26255: <==commonly_known== 56103 (pos)
                    (Bc_checked_p9)

                    ; #30362: <==closure== 50562 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #46724: <==commonly_known== 41007 (neg)
                    (Pa_checked_p9)

                    ; #50562: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #56103: origin
                    (checked_p9)

                    ; #63080: <==commonly_known== 56103 (pos)
                    (Ba_checked_p9)

                    ; #72798: <==closure== 79109 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #79109: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #83461: <==commonly_known== 41007 (neg)
                    (Pc_checked_p9)

                    ; #83680: <==commonly_known== 41007 (neg)
                    (Pb_checked_p9)

                    ; #90272: <==commonly_known== 56103 (pos)
                    (Bb_checked_p9)

                    ; #12133: <==negation-removal== 83680 (pos)
                    (not (Bb_not_checked_p9))

                    ; #25595: <==negation-removal== 26255 (pos)
                    (not (Pc_not_checked_p9))

                    ; #31736: <==negation-removal== 50562 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #32855: <==uncertain_firing== 72798 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #36440: <==uncertain_firing== 79109 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #37380: <==negation-removal== 46724 (pos)
                    (not (Ba_not_checked_p9))

                    ; #41007: <==negation-removal== 56103 (pos)
                    (not (not_checked_p9))

                    ; #41561: <==uncertain_firing== 50562 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #51789: <==negation-removal== 79109 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #53387: <==negation-removal== 83461 (pos)
                    (not (Bc_not_checked_p9))

                    ; #55977: <==uncertain_firing== 30362 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #63435: <==negation-removal== 30362 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #74377: <==negation-removal== 72798 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #77579: <==negation-removal== 63080 (pos)
                    (not (Pa_not_checked_p9))

                    ; #97430: <==negation-removal== 90272 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10372: <==closure== 66272 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11326: <==commonly_known== 34282 (neg)
                    (Pa_checked_p1)

                    ; #28280: origin
                    (checked_p1)

                    ; #42481: <==commonly_known== 28280 (pos)
                    (Bb_checked_p1)

                    ; #49654: <==commonly_known== 34282 (neg)
                    (Pc_checked_p1)

                    ; #66272: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #68132: <==closure== 68406 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #68406: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #74632: <==commonly_known== 28280 (pos)
                    (Ba_checked_p1)

                    ; #79876: <==commonly_known== 28280 (pos)
                    (Bc_checked_p1)

                    ; #85699: <==commonly_known== 34282 (neg)
                    (Pb_checked_p1)

                    ; #26043: <==uncertain_firing== 10372 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #26239: <==negation-removal== 68132 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #26580: <==negation-removal== 11326 (pos)
                    (not (Ba_not_checked_p1))

                    ; #34282: <==negation-removal== 28280 (pos)
                    (not (not_checked_p1))

                    ; #36074: <==uncertain_firing== 66272 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #37074: <==negation-removal== 42481 (pos)
                    (not (Pb_not_checked_p1))

                    ; #54092: <==negation-removal== 68406 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #58713: <==negation-removal== 74632 (pos)
                    (not (Pa_not_checked_p1))

                    ; #66483: <==negation-removal== 79876 (pos)
                    (not (Pc_not_checked_p1))

                    ; #66752: <==negation-removal== 49654 (pos)
                    (not (Bc_not_checked_p1))

                    ; #69091: <==uncertain_firing== 68406 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81653: <==negation-removal== 85699 (pos)
                    (not (Bb_not_checked_p1))

                    ; #84539: <==negation-removal== 66272 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #85267: <==uncertain_firing== 68132 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #95084: <==negation-removal== 10372 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10147: <==commonly_known== 67077 (neg)
                    (Pa_checked_p2)

                    ; #12784: <==commonly_known== 82997 (pos)
                    (Bb_checked_p2)

                    ; #21235: <==closure== 76134 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #22194: <==commonly_known== 67077 (neg)
                    (Pc_checked_p2)

                    ; #44570: <==closure== 90074 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #52461: <==commonly_known== 67077 (neg)
                    (Pb_checked_p2)

                    ; #56511: <==commonly_known== 82997 (pos)
                    (Ba_checked_p2)

                    ; #76134: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #82105: <==commonly_known== 82997 (pos)
                    (Bc_checked_p2)

                    ; #82997: origin
                    (checked_p2)

                    ; #90074: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #16605: <==uncertain_firing== 21235 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #25679: <==uncertain_firing== 90074 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #28647: <==negation-removal== 82105 (pos)
                    (not (Pc_not_checked_p2))

                    ; #29602: <==negation-removal== 52461 (pos)
                    (not (Bb_not_checked_p2))

                    ; #32954: <==negation-removal== 21235 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #33431: <==negation-removal== 44570 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #51407: <==uncertain_firing== 76134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #57757: <==negation-removal== 76134 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #66034: <==negation-removal== 56511 (pos)
                    (not (Pa_not_checked_p2))

                    ; #66703: <==negation-removal== 90074 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #67077: <==negation-removal== 82997 (pos)
                    (not (not_checked_p2))

                    ; #76236: <==negation-removal== 10147 (pos)
                    (not (Ba_not_checked_p2))

                    ; #81458: <==negation-removal== 12784 (pos)
                    (not (Pb_not_checked_p2))

                    ; #88582: <==uncertain_firing== 44570 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #91828: <==negation-removal== 22194 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16870: <==commonly_known== 49920 (pos)
                    (Bb_checked_p3)

                    ; #20682: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #21488: <==commonly_known== 21213 (neg)
                    (Pb_checked_p3)

                    ; #24349: <==commonly_known== 21213 (neg)
                    (Pa_checked_p3)

                    ; #24674: <==commonly_known== 21213 (neg)
                    (Pc_checked_p3)

                    ; #34631: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #42463: <==closure== 34631 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #49920: origin
                    (checked_p3)

                    ; #71065: <==closure== 20682 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #82152: <==commonly_known== 49920 (pos)
                    (Bc_checked_p3)

                    ; #87314: <==commonly_known== 49920 (pos)
                    (Ba_checked_p3)

                    ; #11643: <==uncertain_firing== 34631 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #21213: <==negation-removal== 49920 (pos)
                    (not (not_checked_p3))

                    ; #31558: <==uncertain_firing== 71065 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #34167: <==negation-removal== 42463 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #38036: <==negation-removal== 24349 (pos)
                    (not (Ba_not_checked_p3))

                    ; #39970: <==negation-removal== 87314 (pos)
                    (not (Pa_not_checked_p3))

                    ; #52627: <==negation-removal== 82152 (pos)
                    (not (Pc_not_checked_p3))

                    ; #54221: <==negation-removal== 20682 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #54644: <==negation-removal== 21488 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56057: <==negation-removal== 71065 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #56359: <==negation-removal== 16870 (pos)
                    (not (Pb_not_checked_p3))

                    ; #61044: <==uncertain_firing== 20682 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #61913: <==negation-removal== 34631 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #79270: <==negation-removal== 24674 (pos)
                    (not (Bc_not_checked_p3))

                    ; #95825: <==uncertain_firing== 42463 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #26390: <==commonly_known== 83313 (pos)
                    (Bb_checked_p4)

                    ; #28690: <==closure== 87776 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #33506: <==commonly_known== 83313 (pos)
                    (Ba_checked_p4)

                    ; #37535: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #46005: <==commonly_known== 77976 (neg)
                    (Pb_checked_p4)

                    ; #55151: <==commonly_known== 77976 (neg)
                    (Pc_checked_p4)

                    ; #71388: <==commonly_known== 83313 (pos)
                    (Bc_checked_p4)

                    ; #76001: <==closure== 37535 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #83313: origin
                    (checked_p4)

                    ; #85962: <==commonly_known== 77976 (neg)
                    (Pa_checked_p4)

                    ; #87776: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #11439: <==negation-removal== 28690 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #26417: <==uncertain_firing== 76001 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #35710: <==negation-removal== 87776 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #38135: <==negation-removal== 26390 (pos)
                    (not (Pb_not_checked_p4))

                    ; #40520: <==uncertain_firing== 37535 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #41580: <==negation-removal== 37535 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #47580: <==negation-removal== 85962 (pos)
                    (not (Ba_not_checked_p4))

                    ; #51246: <==negation-removal== 55151 (pos)
                    (not (Bc_not_checked_p4))

                    ; #54018: <==uncertain_firing== 28690 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #61318: <==negation-removal== 71388 (pos)
                    (not (Pc_not_checked_p4))

                    ; #74802: <==negation-removal== 76001 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #77976: <==negation-removal== 83313 (pos)
                    (not (not_checked_p4))

                    ; #82121: <==negation-removal== 46005 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86804: <==negation-removal== 33506 (pos)
                    (not (Pa_not_checked_p4))

                    ; #86957: <==uncertain_firing== 87776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #15989: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #24611: <==commonly_known== 38549 (pos)
                    (Ba_checked_p5)

                    ; #30556: <==commonly_known== 12470 (neg)
                    (Pb_checked_p5)

                    ; #32991: <==closure== 40226 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #38549: origin
                    (checked_p5)

                    ; #40226: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #41390: <==commonly_known== 12470 (neg)
                    (Pa_checked_p5)

                    ; #41918: <==commonly_known== 38549 (pos)
                    (Bb_checked_p5)

                    ; #68625: <==commonly_known== 38549 (pos)
                    (Bc_checked_p5)

                    ; #84035: <==commonly_known== 12470 (neg)
                    (Pc_checked_p5)

                    ; #85599: <==closure== 15989 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #12470: <==negation-removal== 38549 (pos)
                    (not (not_checked_p5))

                    ; #13082: <==negation-removal== 85599 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #17803: <==negation-removal== 40226 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #18153: <==negation-removal== 30556 (pos)
                    (not (Bb_not_checked_p5))

                    ; #20065: <==negation-removal== 84035 (pos)
                    (not (Bc_not_checked_p5))

                    ; #34994: <==uncertain_firing== 40226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #54901: <==uncertain_firing== 32991 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #56653: <==uncertain_firing== 85599 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #57951: <==negation-removal== 24611 (pos)
                    (not (Pa_not_checked_p5))

                    ; #61064: <==negation-removal== 32991 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #64120: <==negation-removal== 41390 (pos)
                    (not (Ba_not_checked_p5))

                    ; #65518: <==uncertain_firing== 15989 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #65760: <==negation-removal== 68625 (pos)
                    (not (Pc_not_checked_p5))

                    ; #83010: <==negation-removal== 41918 (pos)
                    (not (Pb_not_checked_p5))

                    ; #85626: <==negation-removal== 15989 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #20739: <==commonly_known== 36857 (neg)
                    (Pc_checked_p6)

                    ; #21844: <==commonly_known== 36857 (neg)
                    (Pb_checked_p6)

                    ; #26030: <==closure== 37357 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #31150: origin
                    (checked_p6)

                    ; #33414: <==commonly_known== 31150 (pos)
                    (Bc_checked_p6)

                    ; #35248: <==commonly_known== 31150 (pos)
                    (Ba_checked_p6)

                    ; #37357: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #52470: <==commonly_known== 36857 (neg)
                    (Pa_checked_p6)

                    ; #57368: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #68549: <==commonly_known== 31150 (pos)
                    (Bb_checked_p6)

                    ; #81212: <==closure== 57368 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #24128: <==negation-removal== 57368 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #25036: <==negation-removal== 33414 (pos)
                    (not (Pc_not_checked_p6))

                    ; #27793: <==negation-removal== 68549 (pos)
                    (not (Pb_not_checked_p6))

                    ; #32619: <==uncertain_firing== 37357 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #32698: <==negation-removal== 81212 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #36857: <==negation-removal== 31150 (pos)
                    (not (not_checked_p6))

                    ; #37205: <==uncertain_firing== 26030 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #42147: <==negation-removal== 26030 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #48192: <==negation-removal== 52470 (pos)
                    (not (Ba_not_checked_p6))

                    ; #49859: <==uncertain_firing== 81212 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #63543: <==negation-removal== 20739 (pos)
                    (not (Bc_not_checked_p6))

                    ; #69844: <==uncertain_firing== 57368 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #69986: <==negation-removal== 35248 (pos)
                    (not (Pa_not_checked_p6))

                    ; #80854: <==negation-removal== 37357 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #89219: <==negation-removal== 21844 (pos)
                    (not (Bb_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10560: <==commonly_known== 89208 (pos)
                    (Ba_checked_p7)

                    ; #16606: <==commonly_known== 89208 (pos)
                    (Bb_checked_p7)

                    ; #18550: <==commonly_known== 78741 (neg)
                    (Pb_checked_p7)

                    ; #19370: <==closure== 70308 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #27791: <==commonly_known== 78741 (neg)
                    (Pc_checked_p7)

                    ; #29153: <==closure== 82381 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #70308: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #71665: <==commonly_known== 89208 (pos)
                    (Bc_checked_p7)

                    ; #77258: <==commonly_known== 78741 (neg)
                    (Pa_checked_p7)

                    ; #82381: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #89208: origin
                    (checked_p7)

                    ; #12664: <==negation-removal== 29153 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #18674: <==uncertain_firing== 19370 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #22819: <==negation-removal== 27791 (pos)
                    (not (Bc_not_checked_p7))

                    ; #23032: <==uncertain_firing== 82381 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #40594: <==negation-removal== 71665 (pos)
                    (not (Pc_not_checked_p7))

                    ; #50024: <==negation-removal== 10560 (pos)
                    (not (Pa_not_checked_p7))

                    ; #55458: <==negation-removal== 77258 (pos)
                    (not (Ba_not_checked_p7))

                    ; #58744: <==uncertain_firing== 29153 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #68081: <==negation-removal== 16606 (pos)
                    (not (Pb_not_checked_p7))

                    ; #68236: <==negation-removal== 82381 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #68337: <==negation-removal== 19370 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #69176: <==uncertain_firing== 70308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #78741: <==negation-removal== 89208 (pos)
                    (not (not_checked_p7))

                    ; #81075: <==negation-removal== 70308 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #97771: <==negation-removal== 18550 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15907: <==commonly_known== 72814 (neg)
                    (Pc_checked_p8)

                    ; #16162: <==commonly_known== 72814 (neg)
                    (Pb_checked_p8)

                    ; #32725: <==closure== 39408 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #36104: <==commonly_known== 72814 (neg)
                    (Pa_checked_p8)

                    ; #39408: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #49900: <==closure== 79041 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #50098: origin
                    (checked_p8)

                    ; #52591: <==commonly_known== 50098 (pos)
                    (Bb_checked_p8)

                    ; #79041: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #82526: <==commonly_known== 50098 (pos)
                    (Bc_checked_p8)

                    ; #88156: <==commonly_known== 50098 (pos)
                    (Ba_checked_p8)

                    ; #12929: <==uncertain_firing== 32725 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #23154: <==uncertain_firing== 79041 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #24006: <==negation-removal== 49900 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #31409: <==negation-removal== 52591 (pos)
                    (not (Pb_not_checked_p8))

                    ; #33319: <==uncertain_firing== 49900 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #36941: <==negation-removal== 36104 (pos)
                    (not (Ba_not_checked_p8))

                    ; #41576: <==negation-removal== 88156 (pos)
                    (not (Pa_not_checked_p8))

                    ; #44234: <==negation-removal== 32725 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #44715: <==negation-removal== 82526 (pos)
                    (not (Pc_not_checked_p8))

                    ; #50601: <==negation-removal== 39408 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #54182: <==negation-removal== 16162 (pos)
                    (not (Bb_not_checked_p8))

                    ; #59861: <==uncertain_firing== 39408 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #72814: <==negation-removal== 50098 (pos)
                    (not (not_checked_p8))

                    ; #77088: <==negation-removal== 79041 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #89058: <==negation-removal== 15907 (pos)
                    (not (Bc_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #26255: <==commonly_known== 56103 (pos)
                    (Bc_checked_p9)

                    ; #35903: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #41871: <==closure== 35903 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #46724: <==commonly_known== 41007 (neg)
                    (Pa_checked_p9)

                    ; #47206: <==closure== 54207 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #54207: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #56103: origin
                    (checked_p9)

                    ; #63080: <==commonly_known== 56103 (pos)
                    (Ba_checked_p9)

                    ; #83461: <==commonly_known== 41007 (neg)
                    (Pc_checked_p9)

                    ; #83680: <==commonly_known== 41007 (neg)
                    (Pb_checked_p9)

                    ; #90272: <==commonly_known== 56103 (pos)
                    (Bb_checked_p9)

                    ; #12133: <==negation-removal== 83680 (pos)
                    (not (Bb_not_checked_p9))

                    ; #25595: <==negation-removal== 26255 (pos)
                    (not (Pc_not_checked_p9))

                    ; #26530: <==negation-removal== 54207 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #37380: <==negation-removal== 46724 (pos)
                    (not (Ba_not_checked_p9))

                    ; #38307: <==uncertain_firing== 41871 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #41007: <==negation-removal== 56103 (pos)
                    (not (not_checked_p9))

                    ; #41179: <==uncertain_firing== 54207 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #47663: <==negation-removal== 41871 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #53387: <==negation-removal== 83461 (pos)
                    (not (Bc_not_checked_p9))

                    ; #56920: <==negation-removal== 35903 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #75019: <==uncertain_firing== 35903 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #77579: <==negation-removal== 63080 (pos)
                    (not (Pa_not_checked_p9))

                    ; #88623: <==negation-removal== 47206 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #91117: <==uncertain_firing== 47206 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #97430: <==negation-removal== 90272 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11326: <==commonly_known== 34282 (neg)
                    (Pa_checked_p1)

                    ; #22040: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #28280: origin
                    (checked_p1)

                    ; #42481: <==commonly_known== 28280 (pos)
                    (Bb_checked_p1)

                    ; #49654: <==commonly_known== 34282 (neg)
                    (Pc_checked_p1)

                    ; #49857: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #53990: <==closure== 22040 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #71470: <==closure== 49857 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #74632: <==commonly_known== 28280 (pos)
                    (Ba_checked_p1)

                    ; #79876: <==commonly_known== 28280 (pos)
                    (Bc_checked_p1)

                    ; #85699: <==commonly_known== 34282 (neg)
                    (Pb_checked_p1)

                    ; #12181: <==negation-removal== 49857 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #15497: <==uncertain_firing== 22040 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #16385: <==negation-removal== 22040 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #26580: <==negation-removal== 11326 (pos)
                    (not (Ba_not_checked_p1))

                    ; #27729: <==uncertain_firing== 71470 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #34282: <==negation-removal== 28280 (pos)
                    (not (not_checked_p1))

                    ; #37074: <==negation-removal== 42481 (pos)
                    (not (Pb_not_checked_p1))

                    ; #38292: <==uncertain_firing== 53990 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #58713: <==negation-removal== 74632 (pos)
                    (not (Pa_not_checked_p1))

                    ; #61520: <==negation-removal== 53990 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #66483: <==negation-removal== 79876 (pos)
                    (not (Pc_not_checked_p1))

                    ; #66752: <==negation-removal== 49654 (pos)
                    (not (Bc_not_checked_p1))

                    ; #81653: <==negation-removal== 85699 (pos)
                    (not (Bb_not_checked_p1))

                    ; #87095: <==uncertain_firing== 49857 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #87970: <==negation-removal== 71470 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10147: <==commonly_known== 67077 (neg)
                    (Pa_checked_p2)

                    ; #12784: <==commonly_known== 82997 (pos)
                    (Bb_checked_p2)

                    ; #18202: <==closure== 46516 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #22194: <==commonly_known== 67077 (neg)
                    (Pc_checked_p2)

                    ; #29497: <==closure== 32676 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #32676: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #46516: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #52461: <==commonly_known== 67077 (neg)
                    (Pb_checked_p2)

                    ; #56511: <==commonly_known== 82997 (pos)
                    (Ba_checked_p2)

                    ; #82105: <==commonly_known== 82997 (pos)
                    (Bc_checked_p2)

                    ; #82997: origin
                    (checked_p2)

                    ; #15781: <==uncertain_firing== 32676 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #27076: <==uncertain_firing== 29497 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #28647: <==negation-removal== 82105 (pos)
                    (not (Pc_not_checked_p2))

                    ; #28890: <==negation-removal== 32676 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #29602: <==negation-removal== 52461 (pos)
                    (not (Bb_not_checked_p2))

                    ; #33124: <==negation-removal== 46516 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #57358: <==uncertain_firing== 18202 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #62749: <==negation-removal== 29497 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #66034: <==negation-removal== 56511 (pos)
                    (not (Pa_not_checked_p2))

                    ; #67077: <==negation-removal== 82997 (pos)
                    (not (not_checked_p2))

                    ; #69994: <==negation-removal== 18202 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #76236: <==negation-removal== 10147 (pos)
                    (not (Ba_not_checked_p2))

                    ; #81458: <==negation-removal== 12784 (pos)
                    (not (Pb_not_checked_p2))

                    ; #85267: <==uncertain_firing== 46516 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #91828: <==negation-removal== 22194 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16870: <==commonly_known== 49920 (pos)
                    (Bb_checked_p3)

                    ; #21488: <==commonly_known== 21213 (neg)
                    (Pb_checked_p3)

                    ; #24349: <==commonly_known== 21213 (neg)
                    (Pa_checked_p3)

                    ; #24674: <==commonly_known== 21213 (neg)
                    (Pc_checked_p3)

                    ; #25452: <==closure== 66109 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #49920: origin
                    (checked_p3)

                    ; #52450: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #60551: <==closure== 52450 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #66109: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #82152: <==commonly_known== 49920 (pos)
                    (Bc_checked_p3)

                    ; #87314: <==commonly_known== 49920 (pos)
                    (Ba_checked_p3)

                    ; #16577: <==uncertain_firing== 60551 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #21213: <==negation-removal== 49920 (pos)
                    (not (not_checked_p3))

                    ; #26618: <==uncertain_firing== 25452 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #38036: <==negation-removal== 24349 (pos)
                    (not (Ba_not_checked_p3))

                    ; #39970: <==negation-removal== 87314 (pos)
                    (not (Pa_not_checked_p3))

                    ; #52627: <==negation-removal== 82152 (pos)
                    (not (Pc_not_checked_p3))

                    ; #53256: <==negation-removal== 25452 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #54644: <==negation-removal== 21488 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56359: <==negation-removal== 16870 (pos)
                    (not (Pb_not_checked_p3))

                    ; #67309: <==uncertain_firing== 52450 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #68161: <==uncertain_firing== 66109 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #72500: <==negation-removal== 60551 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #75581: <==negation-removal== 66109 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #79270: <==negation-removal== 24674 (pos)
                    (not (Bc_not_checked_p3))

                    ; #86096: <==negation-removal== 52450 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #24873: <==closure== 27648 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #26390: <==commonly_known== 83313 (pos)
                    (Bb_checked_p4)

                    ; #27648: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #33506: <==commonly_known== 83313 (pos)
                    (Ba_checked_p4)

                    ; #41894: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #46005: <==commonly_known== 77976 (neg)
                    (Pb_checked_p4)

                    ; #55151: <==commonly_known== 77976 (neg)
                    (Pc_checked_p4)

                    ; #68008: <==closure== 41894 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #71388: <==commonly_known== 83313 (pos)
                    (Bc_checked_p4)

                    ; #83313: origin
                    (checked_p4)

                    ; #85962: <==commonly_known== 77976 (neg)
                    (Pa_checked_p4)

                    ; #25804: <==negation-removal== 41894 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #31433: <==uncertain_firing== 24873 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #35597: <==negation-removal== 27648 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #36416: <==uncertain_firing== 68008 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #38135: <==negation-removal== 26390 (pos)
                    (not (Pb_not_checked_p4))

                    ; #39282: <==uncertain_firing== 41894 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #47580: <==negation-removal== 85962 (pos)
                    (not (Ba_not_checked_p4))

                    ; #51246: <==negation-removal== 55151 (pos)
                    (not (Bc_not_checked_p4))

                    ; #61318: <==negation-removal== 71388 (pos)
                    (not (Pc_not_checked_p4))

                    ; #63714: <==negation-removal== 68008 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #73888: <==negation-removal== 24873 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #76645: <==uncertain_firing== 27648 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #77976: <==negation-removal== 83313 (pos)
                    (not (not_checked_p4))

                    ; #82121: <==negation-removal== 46005 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86804: <==negation-removal== 33506 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #24611: <==commonly_known== 38549 (pos)
                    (Ba_checked_p5)

                    ; #30556: <==commonly_known== 12470 (neg)
                    (Pb_checked_p5)

                    ; #38549: origin
                    (checked_p5)

                    ; #41390: <==commonly_known== 12470 (neg)
                    (Pa_checked_p5)

                    ; #41918: <==commonly_known== 38549 (pos)
                    (Bb_checked_p5)

                    ; #51662: <==closure== 83015 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #53877: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #68625: <==commonly_known== 38549 (pos)
                    (Bc_checked_p5)

                    ; #81529: <==closure== 53877 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #83015: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #84035: <==commonly_known== 12470 (neg)
                    (Pc_checked_p5)

                    ; #12470: <==negation-removal== 38549 (pos)
                    (not (not_checked_p5))

                    ; #18153: <==negation-removal== 30556 (pos)
                    (not (Bb_not_checked_p5))

                    ; #20065: <==negation-removal== 84035 (pos)
                    (not (Bc_not_checked_p5))

                    ; #22660: <==negation-removal== 83015 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #26227: <==uncertain_firing== 81529 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #51898: <==negation-removal== 81529 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #54216: <==negation-removal== 51662 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #57781: <==uncertain_firing== 51662 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #57951: <==negation-removal== 24611 (pos)
                    (not (Pa_not_checked_p5))

                    ; #58208: <==uncertain_firing== 53877 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #64120: <==negation-removal== 41390 (pos)
                    (not (Ba_not_checked_p5))

                    ; #65760: <==negation-removal== 68625 (pos)
                    (not (Pc_not_checked_p5))

                    ; #68309: <==negation-removal== 53877 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #70241: <==uncertain_firing== 83015 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #83010: <==negation-removal== 41918 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #20739: <==commonly_known== 36857 (neg)
                    (Pc_checked_p6)

                    ; #21844: <==commonly_known== 36857 (neg)
                    (Pb_checked_p6)

                    ; #31150: origin
                    (checked_p6)

                    ; #32146: <==closure== 90875 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #33414: <==commonly_known== 31150 (pos)
                    (Bc_checked_p6)

                    ; #35248: <==commonly_known== 31150 (pos)
                    (Ba_checked_p6)

                    ; #45134: <==closure== 71376 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #52470: <==commonly_known== 36857 (neg)
                    (Pa_checked_p6)

                    ; #68549: <==commonly_known== 31150 (pos)
                    (Bb_checked_p6)

                    ; #71376: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #90875: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #15858: <==negation-removal== 45134 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #16677: <==uncertain_firing== 90875 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #18631: <==uncertain_firing== 71376 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #25036: <==negation-removal== 33414 (pos)
                    (not (Pc_not_checked_p6))

                    ; #27793: <==negation-removal== 68549 (pos)
                    (not (Pb_not_checked_p6))

                    ; #34032: <==negation-removal== 90875 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #36857: <==negation-removal== 31150 (pos)
                    (not (not_checked_p6))

                    ; #45355: <==uncertain_firing== 45134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #48192: <==negation-removal== 52470 (pos)
                    (not (Ba_not_checked_p6))

                    ; #63543: <==negation-removal== 20739 (pos)
                    (not (Bc_not_checked_p6))

                    ; #67522: <==negation-removal== 32146 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #69986: <==negation-removal== 35248 (pos)
                    (not (Pa_not_checked_p6))

                    ; #75018: <==uncertain_firing== 32146 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #89219: <==negation-removal== 21844 (pos)
                    (not (Bb_not_checked_p6))

                    ; #91520: <==negation-removal== 71376 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10560: <==commonly_known== 89208 (pos)
                    (Ba_checked_p7)

                    ; #16606: <==commonly_known== 89208 (pos)
                    (Bb_checked_p7)

                    ; #18550: <==commonly_known== 78741 (neg)
                    (Pb_checked_p7)

                    ; #26472: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #26793: <==closure== 48855 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #27791: <==commonly_known== 78741 (neg)
                    (Pc_checked_p7)

                    ; #48855: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #70580: <==closure== 26472 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #71665: <==commonly_known== 89208 (pos)
                    (Bc_checked_p7)

                    ; #77258: <==commonly_known== 78741 (neg)
                    (Pa_checked_p7)

                    ; #89208: origin
                    (checked_p7)

                    ; #22819: <==negation-removal== 27791 (pos)
                    (not (Bc_not_checked_p7))

                    ; #25363: <==uncertain_firing== 70580 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #34562: <==uncertain_firing== 48855 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #40594: <==negation-removal== 71665 (pos)
                    (not (Pc_not_checked_p7))

                    ; #46532: <==negation-removal== 70580 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #48201: <==negation-removal== 26472 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #50024: <==negation-removal== 10560 (pos)
                    (not (Pa_not_checked_p7))

                    ; #52874: <==negation-removal== 26793 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #55458: <==negation-removal== 77258 (pos)
                    (not (Ba_not_checked_p7))

                    ; #59582: <==uncertain_firing== 26793 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #67650: <==negation-removal== 48855 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #68081: <==negation-removal== 16606 (pos)
                    (not (Pb_not_checked_p7))

                    ; #78741: <==negation-removal== 89208 (pos)
                    (not (not_checked_p7))

                    ; #80231: <==uncertain_firing== 26472 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #97771: <==negation-removal== 18550 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15907: <==commonly_known== 72814 (neg)
                    (Pc_checked_p8)

                    ; #16162: <==commonly_known== 72814 (neg)
                    (Pb_checked_p8)

                    ; #16231: <==closure== 86943 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #36104: <==commonly_known== 72814 (neg)
                    (Pa_checked_p8)

                    ; #38891: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #50098: origin
                    (checked_p8)

                    ; #52591: <==commonly_known== 50098 (pos)
                    (Bb_checked_p8)

                    ; #82526: <==commonly_known== 50098 (pos)
                    (Bc_checked_p8)

                    ; #86943: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #87835: <==closure== 38891 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #88156: <==commonly_known== 50098 (pos)
                    (Ba_checked_p8)

                    ; #15687: <==negation-removal== 38891 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #25604: <==uncertain_firing== 86943 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #31409: <==negation-removal== 52591 (pos)
                    (not (Pb_not_checked_p8))

                    ; #32251: <==negation-removal== 87835 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #36941: <==negation-removal== 36104 (pos)
                    (not (Ba_not_checked_p8))

                    ; #41576: <==negation-removal== 88156 (pos)
                    (not (Pa_not_checked_p8))

                    ; #44715: <==negation-removal== 82526 (pos)
                    (not (Pc_not_checked_p8))

                    ; #44899: <==uncertain_firing== 38891 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #48715: <==negation-removal== 16231 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #54182: <==negation-removal== 16162 (pos)
                    (not (Bb_not_checked_p8))

                    ; #62396: <==negation-removal== 86943 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #72814: <==negation-removal== 50098 (pos)
                    (not (not_checked_p8))

                    ; #89058: <==negation-removal== 15907 (pos)
                    (not (Bc_not_checked_p8))

                    ; #89489: <==uncertain_firing== 16231 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #89987: <==uncertain_firing== 87835 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17535: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #26255: <==commonly_known== 56103 (pos)
                    (Bc_checked_p9)

                    ; #43146: <==closure== 17535 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #46724: <==commonly_known== 41007 (neg)
                    (Pa_checked_p9)

                    ; #56103: origin
                    (checked_p9)

                    ; #63080: <==commonly_known== 56103 (pos)
                    (Ba_checked_p9)

                    ; #82293: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #83461: <==commonly_known== 41007 (neg)
                    (Pc_checked_p9)

                    ; #83680: <==commonly_known== 41007 (neg)
                    (Pb_checked_p9)

                    ; #87210: <==closure== 82293 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #90272: <==commonly_known== 56103 (pos)
                    (Bb_checked_p9)

                    ; #10288: <==uncertain_firing== 17535 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #12133: <==negation-removal== 83680 (pos)
                    (not (Bb_not_checked_p9))

                    ; #14586: <==negation-removal== 43146 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #25595: <==negation-removal== 26255 (pos)
                    (not (Pc_not_checked_p9))

                    ; #29502: <==uncertain_firing== 43146 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36887: <==negation-removal== 17535 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #37380: <==negation-removal== 46724 (pos)
                    (not (Ba_not_checked_p9))

                    ; #40358: <==negation-removal== 82293 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #41007: <==negation-removal== 56103 (pos)
                    (not (not_checked_p9))

                    ; #49835: <==negation-removal== 87210 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #53387: <==negation-removal== 83461 (pos)
                    (not (Bc_not_checked_p9))

                    ; #55950: <==uncertain_firing== 82293 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #57972: <==uncertain_firing== 87210 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #77579: <==negation-removal== 63080 (pos)
                    (not (Pa_not_checked_p9))

                    ; #97430: <==negation-removal== 90272 (pos)
                    (not (Pb_not_checked_p9))))

)