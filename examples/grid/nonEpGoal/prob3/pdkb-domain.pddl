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
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #19584: origin
                    (Bc_survivorat_s_p1)

                    ; #23430: origin
                    (Bb_survivorat_s_p1)

                    ; #65089: <==closure== 75883 (pos)
                    (Pa_survivorat_s_p1)

                    ; #69247: <==closure== 19584 (pos)
                    (Pc_survivorat_s_p1)

                    ; #75883: origin
                    (Ba_survivorat_s_p1)

                    ; #96651: <==closure== 23430 (pos)
                    (Pb_survivorat_s_p1)

                    ; #29676: <==negation-removal== 96651 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #39710: <==negation-removal== 23430 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #66310: <==negation-removal== 65089 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #66787: <==negation-removal== 75883 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #76706: <==negation-removal== 69247 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #88994: <==negation-removal== 19584 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #19584: origin
                    (Bc_survivorat_s_p1)

                    ; #23430: origin
                    (Bb_survivorat_s_p1)

                    ; #65089: <==closure== 75883 (pos)
                    (Pa_survivorat_s_p1)

                    ; #69247: <==closure== 19584 (pos)
                    (Pc_survivorat_s_p1)

                    ; #75883: origin
                    (Ba_survivorat_s_p1)

                    ; #96651: <==closure== 23430 (pos)
                    (Pb_survivorat_s_p1)

                    ; #29676: <==negation-removal== 96651 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #39710: <==negation-removal== 23430 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #66310: <==negation-removal== 65089 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #66787: <==negation-removal== 75883 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #76706: <==negation-removal== 69247 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #88994: <==negation-removal== 19584 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #19584: origin
                    (Bc_survivorat_s_p1)

                    ; #23430: origin
                    (Bb_survivorat_s_p1)

                    ; #65089: <==closure== 75883 (pos)
                    (Pa_survivorat_s_p1)

                    ; #69247: <==closure== 19584 (pos)
                    (Pc_survivorat_s_p1)

                    ; #75883: origin
                    (Ba_survivorat_s_p1)

                    ; #96651: <==closure== 23430 (pos)
                    (Pb_survivorat_s_p1)

                    ; #29676: <==negation-removal== 96651 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #39710: <==negation-removal== 23430 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #66310: <==negation-removal== 65089 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #66787: <==negation-removal== 75883 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #76706: <==negation-removal== 69247 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #88994: <==negation-removal== 19584 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #18886: <==closure== 86711 (pos)
                    (Pc_survivorat_s_p2)

                    ; #32695: origin
                    (Ba_survivorat_s_p2)

                    ; #60609: <==closure== 80752 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70375: <==closure== 32695 (pos)
                    (Pa_survivorat_s_p2)

                    ; #80752: origin
                    (Bb_survivorat_s_p2)

                    ; #86711: origin
                    (Bc_survivorat_s_p2)

                    ; #12770: <==negation-removal== 70375 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #18229: <==negation-removal== 80752 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #23133: <==negation-removal== 18886 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #44555: <==negation-removal== 60609 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #83428: <==negation-removal== 86711 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #89984: <==negation-removal== 32695 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #18886: <==closure== 86711 (pos)
                    (Pc_survivorat_s_p2)

                    ; #32695: origin
                    (Ba_survivorat_s_p2)

                    ; #60609: <==closure== 80752 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70375: <==closure== 32695 (pos)
                    (Pa_survivorat_s_p2)

                    ; #80752: origin
                    (Bb_survivorat_s_p2)

                    ; #86711: origin
                    (Bc_survivorat_s_p2)

                    ; #12770: <==negation-removal== 70375 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #18229: <==negation-removal== 80752 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #23133: <==negation-removal== 18886 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #44555: <==negation-removal== 60609 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #83428: <==negation-removal== 86711 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #89984: <==negation-removal== 32695 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #18886: <==closure== 86711 (pos)
                    (Pc_survivorat_s_p2)

                    ; #32695: origin
                    (Ba_survivorat_s_p2)

                    ; #60609: <==closure== 80752 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70375: <==closure== 32695 (pos)
                    (Pa_survivorat_s_p2)

                    ; #80752: origin
                    (Bb_survivorat_s_p2)

                    ; #86711: origin
                    (Bc_survivorat_s_p2)

                    ; #12770: <==negation-removal== 70375 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #18229: <==negation-removal== 80752 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #23133: <==negation-removal== 18886 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #44555: <==negation-removal== 60609 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #83428: <==negation-removal== 86711 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #89984: <==negation-removal== 32695 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #27311: origin
                    (Bc_survivorat_s_p3)

                    ; #43397: origin
                    (Bb_survivorat_s_p3)

                    ; #45635: origin
                    (Ba_survivorat_s_p3)

                    ; #55621: <==closure== 45635 (pos)
                    (Pa_survivorat_s_p3)

                    ; #71238: <==closure== 27311 (pos)
                    (Pc_survivorat_s_p3)

                    ; #87301: <==closure== 43397 (pos)
                    (Pb_survivorat_s_p3)

                    ; #36005: <==negation-removal== 43397 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #51484: <==negation-removal== 87301 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #51665: <==negation-removal== 27311 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #65725: <==negation-removal== 71238 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #75823: <==negation-removal== 55621 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81934: <==negation-removal== 45635 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #27311: origin
                    (Bc_survivorat_s_p3)

                    ; #43397: origin
                    (Bb_survivorat_s_p3)

                    ; #45635: origin
                    (Ba_survivorat_s_p3)

                    ; #55621: <==closure== 45635 (pos)
                    (Pa_survivorat_s_p3)

                    ; #71238: <==closure== 27311 (pos)
                    (Pc_survivorat_s_p3)

                    ; #87301: <==closure== 43397 (pos)
                    (Pb_survivorat_s_p3)

                    ; #36005: <==negation-removal== 43397 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #51484: <==negation-removal== 87301 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #51665: <==negation-removal== 27311 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #65725: <==negation-removal== 71238 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #75823: <==negation-removal== 55621 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81934: <==negation-removal== 45635 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #27311: origin
                    (Bc_survivorat_s_p3)

                    ; #43397: origin
                    (Bb_survivorat_s_p3)

                    ; #45635: origin
                    (Ba_survivorat_s_p3)

                    ; #55621: <==closure== 45635 (pos)
                    (Pa_survivorat_s_p3)

                    ; #71238: <==closure== 27311 (pos)
                    (Pc_survivorat_s_p3)

                    ; #87301: <==closure== 43397 (pos)
                    (Pb_survivorat_s_p3)

                    ; #36005: <==negation-removal== 43397 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #51484: <==negation-removal== 87301 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #51665: <==negation-removal== 27311 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #65725: <==negation-removal== 71238 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #75823: <==negation-removal== 55621 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81934: <==negation-removal== 45635 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #27401: <==closure== 86139 (pos)
                    (Pb_survivorat_s_p4)

                    ; #44809: origin
                    (Bc_survivorat_s_p4)

                    ; #47241: <==closure== 44809 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78183: <==closure== 84667 (pos)
                    (Pa_survivorat_s_p4)

                    ; #84667: origin
                    (Ba_survivorat_s_p4)

                    ; #86139: origin
                    (Bb_survivorat_s_p4)

                    ; #12143: <==negation-removal== 27401 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #24021: <==negation-removal== 44809 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #55682: <==negation-removal== 78183 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #57323: <==negation-removal== 47241 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #60999: <==negation-removal== 86139 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #67973: <==negation-removal== 84667 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #27401: <==closure== 86139 (pos)
                    (Pb_survivorat_s_p4)

                    ; #44809: origin
                    (Bc_survivorat_s_p4)

                    ; #47241: <==closure== 44809 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78183: <==closure== 84667 (pos)
                    (Pa_survivorat_s_p4)

                    ; #84667: origin
                    (Ba_survivorat_s_p4)

                    ; #86139: origin
                    (Bb_survivorat_s_p4)

                    ; #12143: <==negation-removal== 27401 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #24021: <==negation-removal== 44809 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #55682: <==negation-removal== 78183 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #57323: <==negation-removal== 47241 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #60999: <==negation-removal== 86139 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #67973: <==negation-removal== 84667 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #27401: <==closure== 86139 (pos)
                    (Pb_survivorat_s_p4)

                    ; #44809: origin
                    (Bc_survivorat_s_p4)

                    ; #47241: <==closure== 44809 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78183: <==closure== 84667 (pos)
                    (Pa_survivorat_s_p4)

                    ; #84667: origin
                    (Ba_survivorat_s_p4)

                    ; #86139: origin
                    (Bb_survivorat_s_p4)

                    ; #12143: <==negation-removal== 27401 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #24021: <==negation-removal== 44809 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #55682: <==negation-removal== 78183 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #57323: <==negation-removal== 47241 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #60999: <==negation-removal== 86139 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #67973: <==negation-removal== 84667 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #22732: origin
                    (Bc_survivorat_s_p5)

                    ; #52684: origin
                    (Ba_survivorat_s_p5)

                    ; #68072: <==closure== 22732 (pos)
                    (Pc_survivorat_s_p5)

                    ; #73803: <==closure== 86770 (pos)
                    (Pb_survivorat_s_p5)

                    ; #84003: <==closure== 52684 (pos)
                    (Pa_survivorat_s_p5)

                    ; #86770: origin
                    (Bb_survivorat_s_p5)

                    ; #14047: <==negation-removal== 22732 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #17206: <==negation-removal== 84003 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #52072: <==negation-removal== 52684 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88494: <==negation-removal== 73803 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #90556: <==negation-removal== 86770 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #91659: <==negation-removal== 68072 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #22732: origin
                    (Bc_survivorat_s_p5)

                    ; #52684: origin
                    (Ba_survivorat_s_p5)

                    ; #68072: <==closure== 22732 (pos)
                    (Pc_survivorat_s_p5)

                    ; #73803: <==closure== 86770 (pos)
                    (Pb_survivorat_s_p5)

                    ; #84003: <==closure== 52684 (pos)
                    (Pa_survivorat_s_p5)

                    ; #86770: origin
                    (Bb_survivorat_s_p5)

                    ; #14047: <==negation-removal== 22732 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #17206: <==negation-removal== 84003 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #52072: <==negation-removal== 52684 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88494: <==negation-removal== 73803 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #90556: <==negation-removal== 86770 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #91659: <==negation-removal== 68072 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #22732: origin
                    (Bc_survivorat_s_p5)

                    ; #52684: origin
                    (Ba_survivorat_s_p5)

                    ; #68072: <==closure== 22732 (pos)
                    (Pc_survivorat_s_p5)

                    ; #73803: <==closure== 86770 (pos)
                    (Pb_survivorat_s_p5)

                    ; #84003: <==closure== 52684 (pos)
                    (Pa_survivorat_s_p5)

                    ; #86770: origin
                    (Bb_survivorat_s_p5)

                    ; #14047: <==negation-removal== 22732 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #17206: <==negation-removal== 84003 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #52072: <==negation-removal== 52684 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88494: <==negation-removal== 73803 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #90556: <==negation-removal== 86770 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #91659: <==negation-removal== 68072 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #43415: <==closure== 48363 (pos)
                    (Pb_survivorat_s_p6)

                    ; #43960: origin
                    (Ba_survivorat_s_p6)

                    ; #48363: origin
                    (Bb_survivorat_s_p6)

                    ; #52510: <==closure== 67991 (pos)
                    (Pc_survivorat_s_p6)

                    ; #67991: origin
                    (Bc_survivorat_s_p6)

                    ; #80219: <==closure== 43960 (pos)
                    (Pa_survivorat_s_p6)

                    ; #23862: <==negation-removal== 52510 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #49561: <==negation-removal== 80219 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #52968: <==negation-removal== 43960 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #73751: <==negation-removal== 43415 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #79866: <==negation-removal== 67991 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #88330: <==negation-removal== 48363 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #43415: <==closure== 48363 (pos)
                    (Pb_survivorat_s_p6)

                    ; #43960: origin
                    (Ba_survivorat_s_p6)

                    ; #48363: origin
                    (Bb_survivorat_s_p6)

                    ; #52510: <==closure== 67991 (pos)
                    (Pc_survivorat_s_p6)

                    ; #67991: origin
                    (Bc_survivorat_s_p6)

                    ; #80219: <==closure== 43960 (pos)
                    (Pa_survivorat_s_p6)

                    ; #23862: <==negation-removal== 52510 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #49561: <==negation-removal== 80219 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #52968: <==negation-removal== 43960 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #73751: <==negation-removal== 43415 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #79866: <==negation-removal== 67991 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #88330: <==negation-removal== 48363 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #43415: <==closure== 48363 (pos)
                    (Pb_survivorat_s_p6)

                    ; #43960: origin
                    (Ba_survivorat_s_p6)

                    ; #48363: origin
                    (Bb_survivorat_s_p6)

                    ; #52510: <==closure== 67991 (pos)
                    (Pc_survivorat_s_p6)

                    ; #67991: origin
                    (Bc_survivorat_s_p6)

                    ; #80219: <==closure== 43960 (pos)
                    (Pa_survivorat_s_p6)

                    ; #23862: <==negation-removal== 52510 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #49561: <==negation-removal== 80219 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #52968: <==negation-removal== 43960 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #73751: <==negation-removal== 43415 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #79866: <==negation-removal== 67991 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #88330: <==negation-removal== 48363 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #14426: origin
                    (Bb_survivorat_s_p7)

                    ; #26035: <==closure== 63837 (pos)
                    (Pc_survivorat_s_p7)

                    ; #37051: origin
                    (Ba_survivorat_s_p7)

                    ; #39710: <==closure== 37051 (pos)
                    (Pa_survivorat_s_p7)

                    ; #52148: <==closure== 14426 (pos)
                    (Pb_survivorat_s_p7)

                    ; #63837: origin
                    (Bc_survivorat_s_p7)

                    ; #10449: <==negation-removal== 37051 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27662: <==negation-removal== 26035 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #29837: <==negation-removal== 39710 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45585: <==negation-removal== 63837 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #54842: <==negation-removal== 14426 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #56335: <==negation-removal== 52148 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #14426: origin
                    (Bb_survivorat_s_p7)

                    ; #26035: <==closure== 63837 (pos)
                    (Pc_survivorat_s_p7)

                    ; #37051: origin
                    (Ba_survivorat_s_p7)

                    ; #39710: <==closure== 37051 (pos)
                    (Pa_survivorat_s_p7)

                    ; #52148: <==closure== 14426 (pos)
                    (Pb_survivorat_s_p7)

                    ; #63837: origin
                    (Bc_survivorat_s_p7)

                    ; #10449: <==negation-removal== 37051 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27662: <==negation-removal== 26035 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #29837: <==negation-removal== 39710 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45585: <==negation-removal== 63837 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #54842: <==negation-removal== 14426 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #56335: <==negation-removal== 52148 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #14426: origin
                    (Bb_survivorat_s_p7)

                    ; #26035: <==closure== 63837 (pos)
                    (Pc_survivorat_s_p7)

                    ; #37051: origin
                    (Ba_survivorat_s_p7)

                    ; #39710: <==closure== 37051 (pos)
                    (Pa_survivorat_s_p7)

                    ; #52148: <==closure== 14426 (pos)
                    (Pb_survivorat_s_p7)

                    ; #63837: origin
                    (Bc_survivorat_s_p7)

                    ; #10449: <==negation-removal== 37051 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27662: <==negation-removal== 26035 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #29837: <==negation-removal== 39710 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45585: <==negation-removal== 63837 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #54842: <==negation-removal== 14426 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #56335: <==negation-removal== 52148 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #10572: origin
                    (Bb_survivorat_s_p8)

                    ; #22318: origin
                    (Ba_survivorat_s_p8)

                    ; #44617: <==closure== 22318 (pos)
                    (Pa_survivorat_s_p8)

                    ; #68591: <==closure== 87474 (pos)
                    (Pc_survivorat_s_p8)

                    ; #69951: <==closure== 10572 (pos)
                    (Pb_survivorat_s_p8)

                    ; #87474: origin
                    (Bc_survivorat_s_p8)

                    ; #10053: <==negation-removal== 44617 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #23688: <==negation-removal== 22318 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #40854: <==negation-removal== 68591 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #47782: <==negation-removal== 87474 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #65297: <==negation-removal== 10572 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #91418: <==negation-removal== 69951 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #10572: origin
                    (Bb_survivorat_s_p8)

                    ; #22318: origin
                    (Ba_survivorat_s_p8)

                    ; #44617: <==closure== 22318 (pos)
                    (Pa_survivorat_s_p8)

                    ; #68591: <==closure== 87474 (pos)
                    (Pc_survivorat_s_p8)

                    ; #69951: <==closure== 10572 (pos)
                    (Pb_survivorat_s_p8)

                    ; #87474: origin
                    (Bc_survivorat_s_p8)

                    ; #10053: <==negation-removal== 44617 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #23688: <==negation-removal== 22318 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #40854: <==negation-removal== 68591 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #47782: <==negation-removal== 87474 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #65297: <==negation-removal== 10572 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #91418: <==negation-removal== 69951 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #10572: origin
                    (Bb_survivorat_s_p8)

                    ; #22318: origin
                    (Ba_survivorat_s_p8)

                    ; #44617: <==closure== 22318 (pos)
                    (Pa_survivorat_s_p8)

                    ; #68591: <==closure== 87474 (pos)
                    (Pc_survivorat_s_p8)

                    ; #69951: <==closure== 10572 (pos)
                    (Pb_survivorat_s_p8)

                    ; #87474: origin
                    (Bc_survivorat_s_p8)

                    ; #10053: <==negation-removal== 44617 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #23688: <==negation-removal== 22318 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #40854: <==negation-removal== 68591 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #47782: <==negation-removal== 87474 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #65297: <==negation-removal== 10572 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #91418: <==negation-removal== 69951 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #32154: <==closure== 45409 (pos)
                    (Pc_survivorat_s_p9)

                    ; #40730: <==closure== 65159 (pos)
                    (Pa_survivorat_s_p9)

                    ; #45409: origin
                    (Bc_survivorat_s_p9)

                    ; #57546: <==closure== 61592 (pos)
                    (Pb_survivorat_s_p9)

                    ; #61592: origin
                    (Bb_survivorat_s_p9)

                    ; #65159: origin
                    (Ba_survivorat_s_p9)

                    ; #11117: <==negation-removal== 32154 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #42271: <==negation-removal== 40730 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #52192: <==negation-removal== 65159 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #54209: <==negation-removal== 57546 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #63821: <==negation-removal== 61592 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #79001: <==negation-removal== 45409 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #32154: <==closure== 45409 (pos)
                    (Pc_survivorat_s_p9)

                    ; #40730: <==closure== 65159 (pos)
                    (Pa_survivorat_s_p9)

                    ; #45409: origin
                    (Bc_survivorat_s_p9)

                    ; #57546: <==closure== 61592 (pos)
                    (Pb_survivorat_s_p9)

                    ; #61592: origin
                    (Bb_survivorat_s_p9)

                    ; #65159: origin
                    (Ba_survivorat_s_p9)

                    ; #11117: <==negation-removal== 32154 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #42271: <==negation-removal== 40730 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #52192: <==negation-removal== 65159 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #54209: <==negation-removal== 57546 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #63821: <==negation-removal== 61592 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #79001: <==negation-removal== 45409 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #32154: <==closure== 45409 (pos)
                    (Pc_survivorat_s_p9)

                    ; #40730: <==closure== 65159 (pos)
                    (Pa_survivorat_s_p9)

                    ; #45409: origin
                    (Bc_survivorat_s_p9)

                    ; #57546: <==closure== 61592 (pos)
                    (Pb_survivorat_s_p9)

                    ; #61592: origin
                    (Bb_survivorat_s_p9)

                    ; #65159: origin
                    (Ba_survivorat_s_p9)

                    ; #11117: <==negation-removal== 32154 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #42271: <==negation-removal== 40730 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #52192: <==negation-removal== 65159 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #54209: <==negation-removal== 57546 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #63821: <==negation-removal== 61592 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #79001: <==negation-removal== 45409 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #60606: origin
                    (at_a_p1)

                    ; #66373: origin
                    (not_at_a_p1)

                    ; #60606: <==negation-removal== 66373 (pos)
                    (not (at_a_p1))

                    ; #66373: <==negation-removal== 60606 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #66373: origin
                    (not_at_a_p1)

                    ; #70461: origin
                    (at_a_p2)

                    ; #37276: <==negation-removal== 70461 (pos)
                    (not (not_at_a_p2))

                    ; #60606: <==negation-removal== 66373 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #22970: origin
                    (at_a_p3)

                    ; #66373: origin
                    (not_at_a_p1)

                    ; #55757: <==negation-removal== 22970 (pos)
                    (not (not_at_a_p3))

                    ; #60606: <==negation-removal== 66373 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #42422: origin
                    (at_a_p4)

                    ; #66373: origin
                    (not_at_a_p1)

                    ; #22118: <==negation-removal== 42422 (pos)
                    (not (not_at_a_p4))

                    ; #60606: <==negation-removal== 66373 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #15376: origin
                    (at_a_p5)

                    ; #66373: origin
                    (not_at_a_p1)

                    ; #42144: <==negation-removal== 15376 (pos)
                    (not (not_at_a_p5))

                    ; #60606: <==negation-removal== 66373 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #40569: origin
                    (at_a_p6)

                    ; #66373: origin
                    (not_at_a_p1)

                    ; #18715: <==negation-removal== 40569 (pos)
                    (not (not_at_a_p6))

                    ; #60606: <==negation-removal== 66373 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #44331: origin
                    (at_a_p7)

                    ; #66373: origin
                    (not_at_a_p1)

                    ; #36673: <==negation-removal== 44331 (pos)
                    (not (not_at_a_p7))

                    ; #60606: <==negation-removal== 66373 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #51245: origin
                    (at_a_p8)

                    ; #66373: origin
                    (not_at_a_p1)

                    ; #60606: <==negation-removal== 66373 (pos)
                    (not (at_a_p1))

                    ; #89786: <==negation-removal== 51245 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #10173: origin
                    (at_a_p9)

                    ; #66373: origin
                    (not_at_a_p1)

                    ; #11278: <==negation-removal== 10173 (pos)
                    (not (not_at_a_p9))

                    ; #60606: <==negation-removal== 66373 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #37276: origin
                    (not_at_a_p2)

                    ; #60606: origin
                    (at_a_p1)

                    ; #66373: <==negation-removal== 60606 (pos)
                    (not (not_at_a_p1))

                    ; #70461: <==negation-removal== 37276 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #37276: origin
                    (not_at_a_p2)

                    ; #70461: origin
                    (at_a_p2)

                    ; #37276: <==negation-removal== 70461 (pos)
                    (not (not_at_a_p2))

                    ; #70461: <==negation-removal== 37276 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #22970: origin
                    (at_a_p3)

                    ; #37276: origin
                    (not_at_a_p2)

                    ; #55757: <==negation-removal== 22970 (pos)
                    (not (not_at_a_p3))

                    ; #70461: <==negation-removal== 37276 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #37276: origin
                    (not_at_a_p2)

                    ; #42422: origin
                    (at_a_p4)

                    ; #22118: <==negation-removal== 42422 (pos)
                    (not (not_at_a_p4))

                    ; #70461: <==negation-removal== 37276 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #15376: origin
                    (at_a_p5)

                    ; #37276: origin
                    (not_at_a_p2)

                    ; #42144: <==negation-removal== 15376 (pos)
                    (not (not_at_a_p5))

                    ; #70461: <==negation-removal== 37276 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #37276: origin
                    (not_at_a_p2)

                    ; #40569: origin
                    (at_a_p6)

                    ; #18715: <==negation-removal== 40569 (pos)
                    (not (not_at_a_p6))

                    ; #70461: <==negation-removal== 37276 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #37276: origin
                    (not_at_a_p2)

                    ; #44331: origin
                    (at_a_p7)

                    ; #36673: <==negation-removal== 44331 (pos)
                    (not (not_at_a_p7))

                    ; #70461: <==negation-removal== 37276 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #37276: origin
                    (not_at_a_p2)

                    ; #51245: origin
                    (at_a_p8)

                    ; #70461: <==negation-removal== 37276 (pos)
                    (not (at_a_p2))

                    ; #89786: <==negation-removal== 51245 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #10173: origin
                    (at_a_p9)

                    ; #37276: origin
                    (not_at_a_p2)

                    ; #11278: <==negation-removal== 10173 (pos)
                    (not (not_at_a_p9))

                    ; #70461: <==negation-removal== 37276 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #55757: origin
                    (not_at_a_p3)

                    ; #60606: origin
                    (at_a_p1)

                    ; #22970: <==negation-removal== 55757 (pos)
                    (not (at_a_p3))

                    ; #66373: <==negation-removal== 60606 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #55757: origin
                    (not_at_a_p3)

                    ; #70461: origin
                    (at_a_p2)

                    ; #22970: <==negation-removal== 55757 (pos)
                    (not (at_a_p3))

                    ; #37276: <==negation-removal== 70461 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #22970: origin
                    (at_a_p3)

                    ; #55757: origin
                    (not_at_a_p3)

                    ; #22970: <==negation-removal== 55757 (pos)
                    (not (at_a_p3))

                    ; #55757: <==negation-removal== 22970 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #42422: origin
                    (at_a_p4)

                    ; #55757: origin
                    (not_at_a_p3)

                    ; #22118: <==negation-removal== 42422 (pos)
                    (not (not_at_a_p4))

                    ; #22970: <==negation-removal== 55757 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #15376: origin
                    (at_a_p5)

                    ; #55757: origin
                    (not_at_a_p3)

                    ; #22970: <==negation-removal== 55757 (pos)
                    (not (at_a_p3))

                    ; #42144: <==negation-removal== 15376 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #40569: origin
                    (at_a_p6)

                    ; #55757: origin
                    (not_at_a_p3)

                    ; #18715: <==negation-removal== 40569 (pos)
                    (not (not_at_a_p6))

                    ; #22970: <==negation-removal== 55757 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #44331: origin
                    (at_a_p7)

                    ; #55757: origin
                    (not_at_a_p3)

                    ; #22970: <==negation-removal== 55757 (pos)
                    (not (at_a_p3))

                    ; #36673: <==negation-removal== 44331 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #51245: origin
                    (at_a_p8)

                    ; #55757: origin
                    (not_at_a_p3)

                    ; #22970: <==negation-removal== 55757 (pos)
                    (not (at_a_p3))

                    ; #89786: <==negation-removal== 51245 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #10173: origin
                    (at_a_p9)

                    ; #55757: origin
                    (not_at_a_p3)

                    ; #11278: <==negation-removal== 10173 (pos)
                    (not (not_at_a_p9))

                    ; #22970: <==negation-removal== 55757 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #22118: origin
                    (not_at_a_p4)

                    ; #60606: origin
                    (at_a_p1)

                    ; #42422: <==negation-removal== 22118 (pos)
                    (not (at_a_p4))

                    ; #66373: <==negation-removal== 60606 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #22118: origin
                    (not_at_a_p4)

                    ; #70461: origin
                    (at_a_p2)

                    ; #37276: <==negation-removal== 70461 (pos)
                    (not (not_at_a_p2))

                    ; #42422: <==negation-removal== 22118 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #22118: origin
                    (not_at_a_p4)

                    ; #22970: origin
                    (at_a_p3)

                    ; #42422: <==negation-removal== 22118 (pos)
                    (not (at_a_p4))

                    ; #55757: <==negation-removal== 22970 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #22118: origin
                    (not_at_a_p4)

                    ; #42422: origin
                    (at_a_p4)

                    ; #22118: <==negation-removal== 42422 (pos)
                    (not (not_at_a_p4))

                    ; #42422: <==negation-removal== 22118 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #15376: origin
                    (at_a_p5)

                    ; #22118: origin
                    (not_at_a_p4)

                    ; #42144: <==negation-removal== 15376 (pos)
                    (not (not_at_a_p5))

                    ; #42422: <==negation-removal== 22118 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #22118: origin
                    (not_at_a_p4)

                    ; #40569: origin
                    (at_a_p6)

                    ; #18715: <==negation-removal== 40569 (pos)
                    (not (not_at_a_p6))

                    ; #42422: <==negation-removal== 22118 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #22118: origin
                    (not_at_a_p4)

                    ; #44331: origin
                    (at_a_p7)

                    ; #36673: <==negation-removal== 44331 (pos)
                    (not (not_at_a_p7))

                    ; #42422: <==negation-removal== 22118 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #22118: origin
                    (not_at_a_p4)

                    ; #51245: origin
                    (at_a_p8)

                    ; #42422: <==negation-removal== 22118 (pos)
                    (not (at_a_p4))

                    ; #89786: <==negation-removal== 51245 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #10173: origin
                    (at_a_p9)

                    ; #22118: origin
                    (not_at_a_p4)

                    ; #11278: <==negation-removal== 10173 (pos)
                    (not (not_at_a_p9))

                    ; #42422: <==negation-removal== 22118 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #42144: origin
                    (not_at_a_p5)

                    ; #60606: origin
                    (at_a_p1)

                    ; #15376: <==negation-removal== 42144 (pos)
                    (not (at_a_p5))

                    ; #66373: <==negation-removal== 60606 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #42144: origin
                    (not_at_a_p5)

                    ; #70461: origin
                    (at_a_p2)

                    ; #15376: <==negation-removal== 42144 (pos)
                    (not (at_a_p5))

                    ; #37276: <==negation-removal== 70461 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #22970: origin
                    (at_a_p3)

                    ; #42144: origin
                    (not_at_a_p5)

                    ; #15376: <==negation-removal== 42144 (pos)
                    (not (at_a_p5))

                    ; #55757: <==negation-removal== 22970 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #42144: origin
                    (not_at_a_p5)

                    ; #42422: origin
                    (at_a_p4)

                    ; #15376: <==negation-removal== 42144 (pos)
                    (not (at_a_p5))

                    ; #22118: <==negation-removal== 42422 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #15376: origin
                    (at_a_p5)

                    ; #42144: origin
                    (not_at_a_p5)

                    ; #15376: <==negation-removal== 42144 (pos)
                    (not (at_a_p5))

                    ; #42144: <==negation-removal== 15376 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #40569: origin
                    (at_a_p6)

                    ; #42144: origin
                    (not_at_a_p5)

                    ; #15376: <==negation-removal== 42144 (pos)
                    (not (at_a_p5))

                    ; #18715: <==negation-removal== 40569 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #42144: origin
                    (not_at_a_p5)

                    ; #44331: origin
                    (at_a_p7)

                    ; #15376: <==negation-removal== 42144 (pos)
                    (not (at_a_p5))

                    ; #36673: <==negation-removal== 44331 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #42144: origin
                    (not_at_a_p5)

                    ; #51245: origin
                    (at_a_p8)

                    ; #15376: <==negation-removal== 42144 (pos)
                    (not (at_a_p5))

                    ; #89786: <==negation-removal== 51245 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #10173: origin
                    (at_a_p9)

                    ; #42144: origin
                    (not_at_a_p5)

                    ; #11278: <==negation-removal== 10173 (pos)
                    (not (not_at_a_p9))

                    ; #15376: <==negation-removal== 42144 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #18715: origin
                    (not_at_a_p6)

                    ; #60606: origin
                    (at_a_p1)

                    ; #40569: <==negation-removal== 18715 (pos)
                    (not (at_a_p6))

                    ; #66373: <==negation-removal== 60606 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #18715: origin
                    (not_at_a_p6)

                    ; #70461: origin
                    (at_a_p2)

                    ; #37276: <==negation-removal== 70461 (pos)
                    (not (not_at_a_p2))

                    ; #40569: <==negation-removal== 18715 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #18715: origin
                    (not_at_a_p6)

                    ; #22970: origin
                    (at_a_p3)

                    ; #40569: <==negation-removal== 18715 (pos)
                    (not (at_a_p6))

                    ; #55757: <==negation-removal== 22970 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #18715: origin
                    (not_at_a_p6)

                    ; #42422: origin
                    (at_a_p4)

                    ; #22118: <==negation-removal== 42422 (pos)
                    (not (not_at_a_p4))

                    ; #40569: <==negation-removal== 18715 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #15376: origin
                    (at_a_p5)

                    ; #18715: origin
                    (not_at_a_p6)

                    ; #40569: <==negation-removal== 18715 (pos)
                    (not (at_a_p6))

                    ; #42144: <==negation-removal== 15376 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #18715: origin
                    (not_at_a_p6)

                    ; #40569: origin
                    (at_a_p6)

                    ; #18715: <==negation-removal== 40569 (pos)
                    (not (not_at_a_p6))

                    ; #40569: <==negation-removal== 18715 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #18715: origin
                    (not_at_a_p6)

                    ; #44331: origin
                    (at_a_p7)

                    ; #36673: <==negation-removal== 44331 (pos)
                    (not (not_at_a_p7))

                    ; #40569: <==negation-removal== 18715 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #18715: origin
                    (not_at_a_p6)

                    ; #51245: origin
                    (at_a_p8)

                    ; #40569: <==negation-removal== 18715 (pos)
                    (not (at_a_p6))

                    ; #89786: <==negation-removal== 51245 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #10173: origin
                    (at_a_p9)

                    ; #18715: origin
                    (not_at_a_p6)

                    ; #11278: <==negation-removal== 10173 (pos)
                    (not (not_at_a_p9))

                    ; #40569: <==negation-removal== 18715 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #36673: origin
                    (not_at_a_p7)

                    ; #60606: origin
                    (at_a_p1)

                    ; #44331: <==negation-removal== 36673 (pos)
                    (not (at_a_p7))

                    ; #66373: <==negation-removal== 60606 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #36673: origin
                    (not_at_a_p7)

                    ; #70461: origin
                    (at_a_p2)

                    ; #37276: <==negation-removal== 70461 (pos)
                    (not (not_at_a_p2))

                    ; #44331: <==negation-removal== 36673 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #22970: origin
                    (at_a_p3)

                    ; #36673: origin
                    (not_at_a_p7)

                    ; #44331: <==negation-removal== 36673 (pos)
                    (not (at_a_p7))

                    ; #55757: <==negation-removal== 22970 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #36673: origin
                    (not_at_a_p7)

                    ; #42422: origin
                    (at_a_p4)

                    ; #22118: <==negation-removal== 42422 (pos)
                    (not (not_at_a_p4))

                    ; #44331: <==negation-removal== 36673 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #15376: origin
                    (at_a_p5)

                    ; #36673: origin
                    (not_at_a_p7)

                    ; #42144: <==negation-removal== 15376 (pos)
                    (not (not_at_a_p5))

                    ; #44331: <==negation-removal== 36673 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #36673: origin
                    (not_at_a_p7)

                    ; #40569: origin
                    (at_a_p6)

                    ; #18715: <==negation-removal== 40569 (pos)
                    (not (not_at_a_p6))

                    ; #44331: <==negation-removal== 36673 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #36673: origin
                    (not_at_a_p7)

                    ; #44331: origin
                    (at_a_p7)

                    ; #36673: <==negation-removal== 44331 (pos)
                    (not (not_at_a_p7))

                    ; #44331: <==negation-removal== 36673 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #36673: origin
                    (not_at_a_p7)

                    ; #51245: origin
                    (at_a_p8)

                    ; #44331: <==negation-removal== 36673 (pos)
                    (not (at_a_p7))

                    ; #89786: <==negation-removal== 51245 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #10173: origin
                    (at_a_p9)

                    ; #36673: origin
                    (not_at_a_p7)

                    ; #11278: <==negation-removal== 10173 (pos)
                    (not (not_at_a_p9))

                    ; #44331: <==negation-removal== 36673 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #60606: origin
                    (at_a_p1)

                    ; #89786: origin
                    (not_at_a_p8)

                    ; #51245: <==negation-removal== 89786 (pos)
                    (not (at_a_p8))

                    ; #66373: <==negation-removal== 60606 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #70461: origin
                    (at_a_p2)

                    ; #89786: origin
                    (not_at_a_p8)

                    ; #37276: <==negation-removal== 70461 (pos)
                    (not (not_at_a_p2))

                    ; #51245: <==negation-removal== 89786 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #22970: origin
                    (at_a_p3)

                    ; #89786: origin
                    (not_at_a_p8)

                    ; #51245: <==negation-removal== 89786 (pos)
                    (not (at_a_p8))

                    ; #55757: <==negation-removal== 22970 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #42422: origin
                    (at_a_p4)

                    ; #89786: origin
                    (not_at_a_p8)

                    ; #22118: <==negation-removal== 42422 (pos)
                    (not (not_at_a_p4))

                    ; #51245: <==negation-removal== 89786 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #15376: origin
                    (at_a_p5)

                    ; #89786: origin
                    (not_at_a_p8)

                    ; #42144: <==negation-removal== 15376 (pos)
                    (not (not_at_a_p5))

                    ; #51245: <==negation-removal== 89786 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #40569: origin
                    (at_a_p6)

                    ; #89786: origin
                    (not_at_a_p8)

                    ; #18715: <==negation-removal== 40569 (pos)
                    (not (not_at_a_p6))

                    ; #51245: <==negation-removal== 89786 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #44331: origin
                    (at_a_p7)

                    ; #89786: origin
                    (not_at_a_p8)

                    ; #36673: <==negation-removal== 44331 (pos)
                    (not (not_at_a_p7))

                    ; #51245: <==negation-removal== 89786 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #51245: origin
                    (at_a_p8)

                    ; #89786: origin
                    (not_at_a_p8)

                    ; #51245: <==negation-removal== 89786 (pos)
                    (not (at_a_p8))

                    ; #89786: <==negation-removal== 51245 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #10173: origin
                    (at_a_p9)

                    ; #89786: origin
                    (not_at_a_p8)

                    ; #11278: <==negation-removal== 10173 (pos)
                    (not (not_at_a_p9))

                    ; #51245: <==negation-removal== 89786 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #11278: origin
                    (not_at_a_p9)

                    ; #60606: origin
                    (at_a_p1)

                    ; #10173: <==negation-removal== 11278 (pos)
                    (not (at_a_p9))

                    ; #66373: <==negation-removal== 60606 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #11278: origin
                    (not_at_a_p9)

                    ; #70461: origin
                    (at_a_p2)

                    ; #10173: <==negation-removal== 11278 (pos)
                    (not (at_a_p9))

                    ; #37276: <==negation-removal== 70461 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #11278: origin
                    (not_at_a_p9)

                    ; #22970: origin
                    (at_a_p3)

                    ; #10173: <==negation-removal== 11278 (pos)
                    (not (at_a_p9))

                    ; #55757: <==negation-removal== 22970 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #11278: origin
                    (not_at_a_p9)

                    ; #42422: origin
                    (at_a_p4)

                    ; #10173: <==negation-removal== 11278 (pos)
                    (not (at_a_p9))

                    ; #22118: <==negation-removal== 42422 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #11278: origin
                    (not_at_a_p9)

                    ; #15376: origin
                    (at_a_p5)

                    ; #10173: <==negation-removal== 11278 (pos)
                    (not (at_a_p9))

                    ; #42144: <==negation-removal== 15376 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #11278: origin
                    (not_at_a_p9)

                    ; #40569: origin
                    (at_a_p6)

                    ; #10173: <==negation-removal== 11278 (pos)
                    (not (at_a_p9))

                    ; #18715: <==negation-removal== 40569 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #11278: origin
                    (not_at_a_p9)

                    ; #44331: origin
                    (at_a_p7)

                    ; #10173: <==negation-removal== 11278 (pos)
                    (not (at_a_p9))

                    ; #36673: <==negation-removal== 44331 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #11278: origin
                    (not_at_a_p9)

                    ; #51245: origin
                    (at_a_p8)

                    ; #10173: <==negation-removal== 11278 (pos)
                    (not (at_a_p9))

                    ; #89786: <==negation-removal== 51245 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #10173: origin
                    (at_a_p9)

                    ; #11278: origin
                    (not_at_a_p9)

                    ; #10173: <==negation-removal== 11278 (pos)
                    (not (at_a_p9))

                    ; #11278: <==negation-removal== 10173 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #10905: origin
                    (at_b_p1)

                    ; #17135: origin
                    (not_at_b_p1)

                    ; #10905: <==negation-removal== 17135 (pos)
                    (not (at_b_p1))

                    ; #17135: <==negation-removal== 10905 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #17135: origin
                    (not_at_b_p1)

                    ; #37847: origin
                    (at_b_p2)

                    ; #10905: <==negation-removal== 17135 (pos)
                    (not (at_b_p1))

                    ; #32676: <==negation-removal== 37847 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #17135: origin
                    (not_at_b_p1)

                    ; #66991: origin
                    (at_b_p3)

                    ; #10905: <==negation-removal== 17135 (pos)
                    (not (at_b_p1))

                    ; #52252: <==negation-removal== 66991 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #17135: origin
                    (not_at_b_p1)

                    ; #54518: origin
                    (at_b_p4)

                    ; #10905: <==negation-removal== 17135 (pos)
                    (not (at_b_p1))

                    ; #49476: <==negation-removal== 54518 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #17135: origin
                    (not_at_b_p1)

                    ; #78938: origin
                    (at_b_p5)

                    ; #10905: <==negation-removal== 17135 (pos)
                    (not (at_b_p1))

                    ; #80689: <==negation-removal== 78938 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #17135: origin
                    (not_at_b_p1)

                    ; #81951: origin
                    (at_b_p6)

                    ; #10905: <==negation-removal== 17135 (pos)
                    (not (at_b_p1))

                    ; #60051: <==negation-removal== 81951 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #17135: origin
                    (not_at_b_p1)

                    ; #76450: origin
                    (at_b_p7)

                    ; #10905: <==negation-removal== 17135 (pos)
                    (not (at_b_p1))

                    ; #42235: <==negation-removal== 76450 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #17135: origin
                    (not_at_b_p1)

                    ; #66683: origin
                    (at_b_p8)

                    ; #10905: <==negation-removal== 17135 (pos)
                    (not (at_b_p1))

                    ; #21743: <==negation-removal== 66683 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #17135: origin
                    (not_at_b_p1)

                    ; #86063: origin
                    (at_b_p9)

                    ; #10905: <==negation-removal== 17135 (pos)
                    (not (at_b_p1))

                    ; #32360: <==negation-removal== 86063 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #10905: origin
                    (at_b_p1)

                    ; #32676: origin
                    (not_at_b_p2)

                    ; #17135: <==negation-removal== 10905 (pos)
                    (not (not_at_b_p1))

                    ; #37847: <==negation-removal== 32676 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #32676: origin
                    (not_at_b_p2)

                    ; #37847: origin
                    (at_b_p2)

                    ; #32676: <==negation-removal== 37847 (pos)
                    (not (not_at_b_p2))

                    ; #37847: <==negation-removal== 32676 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #32676: origin
                    (not_at_b_p2)

                    ; #66991: origin
                    (at_b_p3)

                    ; #37847: <==negation-removal== 32676 (pos)
                    (not (at_b_p2))

                    ; #52252: <==negation-removal== 66991 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #32676: origin
                    (not_at_b_p2)

                    ; #54518: origin
                    (at_b_p4)

                    ; #37847: <==negation-removal== 32676 (pos)
                    (not (at_b_p2))

                    ; #49476: <==negation-removal== 54518 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #32676: origin
                    (not_at_b_p2)

                    ; #78938: origin
                    (at_b_p5)

                    ; #37847: <==negation-removal== 32676 (pos)
                    (not (at_b_p2))

                    ; #80689: <==negation-removal== 78938 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #32676: origin
                    (not_at_b_p2)

                    ; #81951: origin
                    (at_b_p6)

                    ; #37847: <==negation-removal== 32676 (pos)
                    (not (at_b_p2))

                    ; #60051: <==negation-removal== 81951 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #32676: origin
                    (not_at_b_p2)

                    ; #76450: origin
                    (at_b_p7)

                    ; #37847: <==negation-removal== 32676 (pos)
                    (not (at_b_p2))

                    ; #42235: <==negation-removal== 76450 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #32676: origin
                    (not_at_b_p2)

                    ; #66683: origin
                    (at_b_p8)

                    ; #21743: <==negation-removal== 66683 (pos)
                    (not (not_at_b_p8))

                    ; #37847: <==negation-removal== 32676 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #32676: origin
                    (not_at_b_p2)

                    ; #86063: origin
                    (at_b_p9)

                    ; #32360: <==negation-removal== 86063 (pos)
                    (not (not_at_b_p9))

                    ; #37847: <==negation-removal== 32676 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #10905: origin
                    (at_b_p1)

                    ; #52252: origin
                    (not_at_b_p3)

                    ; #17135: <==negation-removal== 10905 (pos)
                    (not (not_at_b_p1))

                    ; #66991: <==negation-removal== 52252 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #37847: origin
                    (at_b_p2)

                    ; #52252: origin
                    (not_at_b_p3)

                    ; #32676: <==negation-removal== 37847 (pos)
                    (not (not_at_b_p2))

                    ; #66991: <==negation-removal== 52252 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #52252: origin
                    (not_at_b_p3)

                    ; #66991: origin
                    (at_b_p3)

                    ; #52252: <==negation-removal== 66991 (pos)
                    (not (not_at_b_p3))

                    ; #66991: <==negation-removal== 52252 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #52252: origin
                    (not_at_b_p3)

                    ; #54518: origin
                    (at_b_p4)

                    ; #49476: <==negation-removal== 54518 (pos)
                    (not (not_at_b_p4))

                    ; #66991: <==negation-removal== 52252 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #52252: origin
                    (not_at_b_p3)

                    ; #78938: origin
                    (at_b_p5)

                    ; #66991: <==negation-removal== 52252 (pos)
                    (not (at_b_p3))

                    ; #80689: <==negation-removal== 78938 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #52252: origin
                    (not_at_b_p3)

                    ; #81951: origin
                    (at_b_p6)

                    ; #60051: <==negation-removal== 81951 (pos)
                    (not (not_at_b_p6))

                    ; #66991: <==negation-removal== 52252 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #52252: origin
                    (not_at_b_p3)

                    ; #76450: origin
                    (at_b_p7)

                    ; #42235: <==negation-removal== 76450 (pos)
                    (not (not_at_b_p7))

                    ; #66991: <==negation-removal== 52252 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #52252: origin
                    (not_at_b_p3)

                    ; #66683: origin
                    (at_b_p8)

                    ; #21743: <==negation-removal== 66683 (pos)
                    (not (not_at_b_p8))

                    ; #66991: <==negation-removal== 52252 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #52252: origin
                    (not_at_b_p3)

                    ; #86063: origin
                    (at_b_p9)

                    ; #32360: <==negation-removal== 86063 (pos)
                    (not (not_at_b_p9))

                    ; #66991: <==negation-removal== 52252 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #10905: origin
                    (at_b_p1)

                    ; #49476: origin
                    (not_at_b_p4)

                    ; #17135: <==negation-removal== 10905 (pos)
                    (not (not_at_b_p1))

                    ; #54518: <==negation-removal== 49476 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #37847: origin
                    (at_b_p2)

                    ; #49476: origin
                    (not_at_b_p4)

                    ; #32676: <==negation-removal== 37847 (pos)
                    (not (not_at_b_p2))

                    ; #54518: <==negation-removal== 49476 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #49476: origin
                    (not_at_b_p4)

                    ; #66991: origin
                    (at_b_p3)

                    ; #52252: <==negation-removal== 66991 (pos)
                    (not (not_at_b_p3))

                    ; #54518: <==negation-removal== 49476 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #49476: origin
                    (not_at_b_p4)

                    ; #54518: origin
                    (at_b_p4)

                    ; #49476: <==negation-removal== 54518 (pos)
                    (not (not_at_b_p4))

                    ; #54518: <==negation-removal== 49476 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #49476: origin
                    (not_at_b_p4)

                    ; #78938: origin
                    (at_b_p5)

                    ; #54518: <==negation-removal== 49476 (pos)
                    (not (at_b_p4))

                    ; #80689: <==negation-removal== 78938 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #49476: origin
                    (not_at_b_p4)

                    ; #81951: origin
                    (at_b_p6)

                    ; #54518: <==negation-removal== 49476 (pos)
                    (not (at_b_p4))

                    ; #60051: <==negation-removal== 81951 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #49476: origin
                    (not_at_b_p4)

                    ; #76450: origin
                    (at_b_p7)

                    ; #42235: <==negation-removal== 76450 (pos)
                    (not (not_at_b_p7))

                    ; #54518: <==negation-removal== 49476 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #49476: origin
                    (not_at_b_p4)

                    ; #66683: origin
                    (at_b_p8)

                    ; #21743: <==negation-removal== 66683 (pos)
                    (not (not_at_b_p8))

                    ; #54518: <==negation-removal== 49476 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #49476: origin
                    (not_at_b_p4)

                    ; #86063: origin
                    (at_b_p9)

                    ; #32360: <==negation-removal== 86063 (pos)
                    (not (not_at_b_p9))

                    ; #54518: <==negation-removal== 49476 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #10905: origin
                    (at_b_p1)

                    ; #80689: origin
                    (not_at_b_p5)

                    ; #17135: <==negation-removal== 10905 (pos)
                    (not (not_at_b_p1))

                    ; #78938: <==negation-removal== 80689 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #37847: origin
                    (at_b_p2)

                    ; #80689: origin
                    (not_at_b_p5)

                    ; #32676: <==negation-removal== 37847 (pos)
                    (not (not_at_b_p2))

                    ; #78938: <==negation-removal== 80689 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #66991: origin
                    (at_b_p3)

                    ; #80689: origin
                    (not_at_b_p5)

                    ; #52252: <==negation-removal== 66991 (pos)
                    (not (not_at_b_p3))

                    ; #78938: <==negation-removal== 80689 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #54518: origin
                    (at_b_p4)

                    ; #80689: origin
                    (not_at_b_p5)

                    ; #49476: <==negation-removal== 54518 (pos)
                    (not (not_at_b_p4))

                    ; #78938: <==negation-removal== 80689 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #78938: origin
                    (at_b_p5)

                    ; #80689: origin
                    (not_at_b_p5)

                    ; #78938: <==negation-removal== 80689 (pos)
                    (not (at_b_p5))

                    ; #80689: <==negation-removal== 78938 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #80689: origin
                    (not_at_b_p5)

                    ; #81951: origin
                    (at_b_p6)

                    ; #60051: <==negation-removal== 81951 (pos)
                    (not (not_at_b_p6))

                    ; #78938: <==negation-removal== 80689 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #76450: origin
                    (at_b_p7)

                    ; #80689: origin
                    (not_at_b_p5)

                    ; #42235: <==negation-removal== 76450 (pos)
                    (not (not_at_b_p7))

                    ; #78938: <==negation-removal== 80689 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #66683: origin
                    (at_b_p8)

                    ; #80689: origin
                    (not_at_b_p5)

                    ; #21743: <==negation-removal== 66683 (pos)
                    (not (not_at_b_p8))

                    ; #78938: <==negation-removal== 80689 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #80689: origin
                    (not_at_b_p5)

                    ; #86063: origin
                    (at_b_p9)

                    ; #32360: <==negation-removal== 86063 (pos)
                    (not (not_at_b_p9))

                    ; #78938: <==negation-removal== 80689 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #10905: origin
                    (at_b_p1)

                    ; #60051: origin
                    (not_at_b_p6)

                    ; #17135: <==negation-removal== 10905 (pos)
                    (not (not_at_b_p1))

                    ; #81951: <==negation-removal== 60051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #37847: origin
                    (at_b_p2)

                    ; #60051: origin
                    (not_at_b_p6)

                    ; #32676: <==negation-removal== 37847 (pos)
                    (not (not_at_b_p2))

                    ; #81951: <==negation-removal== 60051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #60051: origin
                    (not_at_b_p6)

                    ; #66991: origin
                    (at_b_p3)

                    ; #52252: <==negation-removal== 66991 (pos)
                    (not (not_at_b_p3))

                    ; #81951: <==negation-removal== 60051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #54518: origin
                    (at_b_p4)

                    ; #60051: origin
                    (not_at_b_p6)

                    ; #49476: <==negation-removal== 54518 (pos)
                    (not (not_at_b_p4))

                    ; #81951: <==negation-removal== 60051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #60051: origin
                    (not_at_b_p6)

                    ; #78938: origin
                    (at_b_p5)

                    ; #80689: <==negation-removal== 78938 (pos)
                    (not (not_at_b_p5))

                    ; #81951: <==negation-removal== 60051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #60051: origin
                    (not_at_b_p6)

                    ; #81951: origin
                    (at_b_p6)

                    ; #60051: <==negation-removal== 81951 (pos)
                    (not (not_at_b_p6))

                    ; #81951: <==negation-removal== 60051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #60051: origin
                    (not_at_b_p6)

                    ; #76450: origin
                    (at_b_p7)

                    ; #42235: <==negation-removal== 76450 (pos)
                    (not (not_at_b_p7))

                    ; #81951: <==negation-removal== 60051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #60051: origin
                    (not_at_b_p6)

                    ; #66683: origin
                    (at_b_p8)

                    ; #21743: <==negation-removal== 66683 (pos)
                    (not (not_at_b_p8))

                    ; #81951: <==negation-removal== 60051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #60051: origin
                    (not_at_b_p6)

                    ; #86063: origin
                    (at_b_p9)

                    ; #32360: <==negation-removal== 86063 (pos)
                    (not (not_at_b_p9))

                    ; #81951: <==negation-removal== 60051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #10905: origin
                    (at_b_p1)

                    ; #42235: origin
                    (not_at_b_p7)

                    ; #17135: <==negation-removal== 10905 (pos)
                    (not (not_at_b_p1))

                    ; #76450: <==negation-removal== 42235 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #37847: origin
                    (at_b_p2)

                    ; #42235: origin
                    (not_at_b_p7)

                    ; #32676: <==negation-removal== 37847 (pos)
                    (not (not_at_b_p2))

                    ; #76450: <==negation-removal== 42235 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #42235: origin
                    (not_at_b_p7)

                    ; #66991: origin
                    (at_b_p3)

                    ; #52252: <==negation-removal== 66991 (pos)
                    (not (not_at_b_p3))

                    ; #76450: <==negation-removal== 42235 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #42235: origin
                    (not_at_b_p7)

                    ; #54518: origin
                    (at_b_p4)

                    ; #49476: <==negation-removal== 54518 (pos)
                    (not (not_at_b_p4))

                    ; #76450: <==negation-removal== 42235 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #42235: origin
                    (not_at_b_p7)

                    ; #78938: origin
                    (at_b_p5)

                    ; #76450: <==negation-removal== 42235 (pos)
                    (not (at_b_p7))

                    ; #80689: <==negation-removal== 78938 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #42235: origin
                    (not_at_b_p7)

                    ; #81951: origin
                    (at_b_p6)

                    ; #60051: <==negation-removal== 81951 (pos)
                    (not (not_at_b_p6))

                    ; #76450: <==negation-removal== 42235 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #42235: origin
                    (not_at_b_p7)

                    ; #76450: origin
                    (at_b_p7)

                    ; #42235: <==negation-removal== 76450 (pos)
                    (not (not_at_b_p7))

                    ; #76450: <==negation-removal== 42235 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #42235: origin
                    (not_at_b_p7)

                    ; #66683: origin
                    (at_b_p8)

                    ; #21743: <==negation-removal== 66683 (pos)
                    (not (not_at_b_p8))

                    ; #76450: <==negation-removal== 42235 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #42235: origin
                    (not_at_b_p7)

                    ; #86063: origin
                    (at_b_p9)

                    ; #32360: <==negation-removal== 86063 (pos)
                    (not (not_at_b_p9))

                    ; #76450: <==negation-removal== 42235 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #10905: origin
                    (at_b_p1)

                    ; #21743: origin
                    (not_at_b_p8)

                    ; #17135: <==negation-removal== 10905 (pos)
                    (not (not_at_b_p1))

                    ; #66683: <==negation-removal== 21743 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #21743: origin
                    (not_at_b_p8)

                    ; #37847: origin
                    (at_b_p2)

                    ; #32676: <==negation-removal== 37847 (pos)
                    (not (not_at_b_p2))

                    ; #66683: <==negation-removal== 21743 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #21743: origin
                    (not_at_b_p8)

                    ; #66991: origin
                    (at_b_p3)

                    ; #52252: <==negation-removal== 66991 (pos)
                    (not (not_at_b_p3))

                    ; #66683: <==negation-removal== 21743 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #21743: origin
                    (not_at_b_p8)

                    ; #54518: origin
                    (at_b_p4)

                    ; #49476: <==negation-removal== 54518 (pos)
                    (not (not_at_b_p4))

                    ; #66683: <==negation-removal== 21743 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #21743: origin
                    (not_at_b_p8)

                    ; #78938: origin
                    (at_b_p5)

                    ; #66683: <==negation-removal== 21743 (pos)
                    (not (at_b_p8))

                    ; #80689: <==negation-removal== 78938 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #21743: origin
                    (not_at_b_p8)

                    ; #81951: origin
                    (at_b_p6)

                    ; #60051: <==negation-removal== 81951 (pos)
                    (not (not_at_b_p6))

                    ; #66683: <==negation-removal== 21743 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #21743: origin
                    (not_at_b_p8)

                    ; #76450: origin
                    (at_b_p7)

                    ; #42235: <==negation-removal== 76450 (pos)
                    (not (not_at_b_p7))

                    ; #66683: <==negation-removal== 21743 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #21743: origin
                    (not_at_b_p8)

                    ; #66683: origin
                    (at_b_p8)

                    ; #21743: <==negation-removal== 66683 (pos)
                    (not (not_at_b_p8))

                    ; #66683: <==negation-removal== 21743 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #21743: origin
                    (not_at_b_p8)

                    ; #86063: origin
                    (at_b_p9)

                    ; #32360: <==negation-removal== 86063 (pos)
                    (not (not_at_b_p9))

                    ; #66683: <==negation-removal== 21743 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #10905: origin
                    (at_b_p1)

                    ; #32360: origin
                    (not_at_b_p9)

                    ; #17135: <==negation-removal== 10905 (pos)
                    (not (not_at_b_p1))

                    ; #86063: <==negation-removal== 32360 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #32360: origin
                    (not_at_b_p9)

                    ; #37847: origin
                    (at_b_p2)

                    ; #32676: <==negation-removal== 37847 (pos)
                    (not (not_at_b_p2))

                    ; #86063: <==negation-removal== 32360 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #32360: origin
                    (not_at_b_p9)

                    ; #66991: origin
                    (at_b_p3)

                    ; #52252: <==negation-removal== 66991 (pos)
                    (not (not_at_b_p3))

                    ; #86063: <==negation-removal== 32360 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #32360: origin
                    (not_at_b_p9)

                    ; #54518: origin
                    (at_b_p4)

                    ; #49476: <==negation-removal== 54518 (pos)
                    (not (not_at_b_p4))

                    ; #86063: <==negation-removal== 32360 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #32360: origin
                    (not_at_b_p9)

                    ; #78938: origin
                    (at_b_p5)

                    ; #80689: <==negation-removal== 78938 (pos)
                    (not (not_at_b_p5))

                    ; #86063: <==negation-removal== 32360 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #32360: origin
                    (not_at_b_p9)

                    ; #81951: origin
                    (at_b_p6)

                    ; #60051: <==negation-removal== 81951 (pos)
                    (not (not_at_b_p6))

                    ; #86063: <==negation-removal== 32360 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #32360: origin
                    (not_at_b_p9)

                    ; #76450: origin
                    (at_b_p7)

                    ; #42235: <==negation-removal== 76450 (pos)
                    (not (not_at_b_p7))

                    ; #86063: <==negation-removal== 32360 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #32360: origin
                    (not_at_b_p9)

                    ; #66683: origin
                    (at_b_p8)

                    ; #21743: <==negation-removal== 66683 (pos)
                    (not (not_at_b_p8))

                    ; #86063: <==negation-removal== 32360 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #32360: origin
                    (not_at_b_p9)

                    ; #86063: origin
                    (at_b_p9)

                    ; #32360: <==negation-removal== 86063 (pos)
                    (not (not_at_b_p9))

                    ; #86063: <==negation-removal== 32360 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #61455: origin
                    (at_c_p1)

                    ; #68875: origin
                    (not_at_c_p1)

                    ; #61455: <==negation-removal== 68875 (pos)
                    (not (at_c_p1))

                    ; #68875: <==negation-removal== 61455 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #25787: origin
                    (at_c_p2)

                    ; #68875: origin
                    (not_at_c_p1)

                    ; #61455: <==negation-removal== 68875 (pos)
                    (not (at_c_p1))

                    ; #82713: <==negation-removal== 25787 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #18654: origin
                    (at_c_p3)

                    ; #68875: origin
                    (not_at_c_p1)

                    ; #37897: <==negation-removal== 18654 (pos)
                    (not (not_at_c_p3))

                    ; #61455: <==negation-removal== 68875 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #32596: origin
                    (at_c_p4)

                    ; #68875: origin
                    (not_at_c_p1)

                    ; #52642: <==negation-removal== 32596 (pos)
                    (not (not_at_c_p4))

                    ; #61455: <==negation-removal== 68875 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #37352: origin
                    (at_c_p5)

                    ; #68875: origin
                    (not_at_c_p1)

                    ; #61455: <==negation-removal== 68875 (pos)
                    (not (at_c_p1))

                    ; #92131: <==negation-removal== 37352 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #48964: origin
                    (at_c_p6)

                    ; #68875: origin
                    (not_at_c_p1)

                    ; #15183: <==negation-removal== 48964 (pos)
                    (not (not_at_c_p6))

                    ; #61455: <==negation-removal== 68875 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #65823: origin
                    (at_c_p7)

                    ; #68875: origin
                    (not_at_c_p1)

                    ; #61455: <==negation-removal== 68875 (pos)
                    (not (at_c_p1))

                    ; #86656: <==negation-removal== 65823 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #25191: origin
                    (at_c_p8)

                    ; #68875: origin
                    (not_at_c_p1)

                    ; #21221: <==negation-removal== 25191 (pos)
                    (not (not_at_c_p8))

                    ; #61455: <==negation-removal== 68875 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #29036: origin
                    (at_c_p9)

                    ; #68875: origin
                    (not_at_c_p1)

                    ; #61455: <==negation-removal== 68875 (pos)
                    (not (at_c_p1))

                    ; #70024: <==negation-removal== 29036 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #61455: origin
                    (at_c_p1)

                    ; #82713: origin
                    (not_at_c_p2)

                    ; #25787: <==negation-removal== 82713 (pos)
                    (not (at_c_p2))

                    ; #68875: <==negation-removal== 61455 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #25787: origin
                    (at_c_p2)

                    ; #82713: origin
                    (not_at_c_p2)

                    ; #25787: <==negation-removal== 82713 (pos)
                    (not (at_c_p2))

                    ; #82713: <==negation-removal== 25787 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #18654: origin
                    (at_c_p3)

                    ; #82713: origin
                    (not_at_c_p2)

                    ; #25787: <==negation-removal== 82713 (pos)
                    (not (at_c_p2))

                    ; #37897: <==negation-removal== 18654 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #32596: origin
                    (at_c_p4)

                    ; #82713: origin
                    (not_at_c_p2)

                    ; #25787: <==negation-removal== 82713 (pos)
                    (not (at_c_p2))

                    ; #52642: <==negation-removal== 32596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #37352: origin
                    (at_c_p5)

                    ; #82713: origin
                    (not_at_c_p2)

                    ; #25787: <==negation-removal== 82713 (pos)
                    (not (at_c_p2))

                    ; #92131: <==negation-removal== 37352 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #48964: origin
                    (at_c_p6)

                    ; #82713: origin
                    (not_at_c_p2)

                    ; #15183: <==negation-removal== 48964 (pos)
                    (not (not_at_c_p6))

                    ; #25787: <==negation-removal== 82713 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #65823: origin
                    (at_c_p7)

                    ; #82713: origin
                    (not_at_c_p2)

                    ; #25787: <==negation-removal== 82713 (pos)
                    (not (at_c_p2))

                    ; #86656: <==negation-removal== 65823 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #25191: origin
                    (at_c_p8)

                    ; #82713: origin
                    (not_at_c_p2)

                    ; #21221: <==negation-removal== 25191 (pos)
                    (not (not_at_c_p8))

                    ; #25787: <==negation-removal== 82713 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #29036: origin
                    (at_c_p9)

                    ; #82713: origin
                    (not_at_c_p2)

                    ; #25787: <==negation-removal== 82713 (pos)
                    (not (at_c_p2))

                    ; #70024: <==negation-removal== 29036 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #37897: origin
                    (not_at_c_p3)

                    ; #61455: origin
                    (at_c_p1)

                    ; #18654: <==negation-removal== 37897 (pos)
                    (not (at_c_p3))

                    ; #68875: <==negation-removal== 61455 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #25787: origin
                    (at_c_p2)

                    ; #37897: origin
                    (not_at_c_p3)

                    ; #18654: <==negation-removal== 37897 (pos)
                    (not (at_c_p3))

                    ; #82713: <==negation-removal== 25787 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #18654: origin
                    (at_c_p3)

                    ; #37897: origin
                    (not_at_c_p3)

                    ; #18654: <==negation-removal== 37897 (pos)
                    (not (at_c_p3))

                    ; #37897: <==negation-removal== 18654 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #32596: origin
                    (at_c_p4)

                    ; #37897: origin
                    (not_at_c_p3)

                    ; #18654: <==negation-removal== 37897 (pos)
                    (not (at_c_p3))

                    ; #52642: <==negation-removal== 32596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #37352: origin
                    (at_c_p5)

                    ; #37897: origin
                    (not_at_c_p3)

                    ; #18654: <==negation-removal== 37897 (pos)
                    (not (at_c_p3))

                    ; #92131: <==negation-removal== 37352 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #37897: origin
                    (not_at_c_p3)

                    ; #48964: origin
                    (at_c_p6)

                    ; #15183: <==negation-removal== 48964 (pos)
                    (not (not_at_c_p6))

                    ; #18654: <==negation-removal== 37897 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #37897: origin
                    (not_at_c_p3)

                    ; #65823: origin
                    (at_c_p7)

                    ; #18654: <==negation-removal== 37897 (pos)
                    (not (at_c_p3))

                    ; #86656: <==negation-removal== 65823 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #25191: origin
                    (at_c_p8)

                    ; #37897: origin
                    (not_at_c_p3)

                    ; #18654: <==negation-removal== 37897 (pos)
                    (not (at_c_p3))

                    ; #21221: <==negation-removal== 25191 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #29036: origin
                    (at_c_p9)

                    ; #37897: origin
                    (not_at_c_p3)

                    ; #18654: <==negation-removal== 37897 (pos)
                    (not (at_c_p3))

                    ; #70024: <==negation-removal== 29036 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #52642: origin
                    (not_at_c_p4)

                    ; #61455: origin
                    (at_c_p1)

                    ; #32596: <==negation-removal== 52642 (pos)
                    (not (at_c_p4))

                    ; #68875: <==negation-removal== 61455 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #25787: origin
                    (at_c_p2)

                    ; #52642: origin
                    (not_at_c_p4)

                    ; #32596: <==negation-removal== 52642 (pos)
                    (not (at_c_p4))

                    ; #82713: <==negation-removal== 25787 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #18654: origin
                    (at_c_p3)

                    ; #52642: origin
                    (not_at_c_p4)

                    ; #32596: <==negation-removal== 52642 (pos)
                    (not (at_c_p4))

                    ; #37897: <==negation-removal== 18654 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #32596: origin
                    (at_c_p4)

                    ; #52642: origin
                    (not_at_c_p4)

                    ; #32596: <==negation-removal== 52642 (pos)
                    (not (at_c_p4))

                    ; #52642: <==negation-removal== 32596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #37352: origin
                    (at_c_p5)

                    ; #52642: origin
                    (not_at_c_p4)

                    ; #32596: <==negation-removal== 52642 (pos)
                    (not (at_c_p4))

                    ; #92131: <==negation-removal== 37352 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #48964: origin
                    (at_c_p6)

                    ; #52642: origin
                    (not_at_c_p4)

                    ; #15183: <==negation-removal== 48964 (pos)
                    (not (not_at_c_p6))

                    ; #32596: <==negation-removal== 52642 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #52642: origin
                    (not_at_c_p4)

                    ; #65823: origin
                    (at_c_p7)

                    ; #32596: <==negation-removal== 52642 (pos)
                    (not (at_c_p4))

                    ; #86656: <==negation-removal== 65823 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #25191: origin
                    (at_c_p8)

                    ; #52642: origin
                    (not_at_c_p4)

                    ; #21221: <==negation-removal== 25191 (pos)
                    (not (not_at_c_p8))

                    ; #32596: <==negation-removal== 52642 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #29036: origin
                    (at_c_p9)

                    ; #52642: origin
                    (not_at_c_p4)

                    ; #32596: <==negation-removal== 52642 (pos)
                    (not (at_c_p4))

                    ; #70024: <==negation-removal== 29036 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #61455: origin
                    (at_c_p1)

                    ; #92131: origin
                    (not_at_c_p5)

                    ; #37352: <==negation-removal== 92131 (pos)
                    (not (at_c_p5))

                    ; #68875: <==negation-removal== 61455 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #25787: origin
                    (at_c_p2)

                    ; #92131: origin
                    (not_at_c_p5)

                    ; #37352: <==negation-removal== 92131 (pos)
                    (not (at_c_p5))

                    ; #82713: <==negation-removal== 25787 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #18654: origin
                    (at_c_p3)

                    ; #92131: origin
                    (not_at_c_p5)

                    ; #37352: <==negation-removal== 92131 (pos)
                    (not (at_c_p5))

                    ; #37897: <==negation-removal== 18654 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #32596: origin
                    (at_c_p4)

                    ; #92131: origin
                    (not_at_c_p5)

                    ; #37352: <==negation-removal== 92131 (pos)
                    (not (at_c_p5))

                    ; #52642: <==negation-removal== 32596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #37352: origin
                    (at_c_p5)

                    ; #92131: origin
                    (not_at_c_p5)

                    ; #37352: <==negation-removal== 92131 (pos)
                    (not (at_c_p5))

                    ; #92131: <==negation-removal== 37352 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #48964: origin
                    (at_c_p6)

                    ; #92131: origin
                    (not_at_c_p5)

                    ; #15183: <==negation-removal== 48964 (pos)
                    (not (not_at_c_p6))

                    ; #37352: <==negation-removal== 92131 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #65823: origin
                    (at_c_p7)

                    ; #92131: origin
                    (not_at_c_p5)

                    ; #37352: <==negation-removal== 92131 (pos)
                    (not (at_c_p5))

                    ; #86656: <==negation-removal== 65823 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #25191: origin
                    (at_c_p8)

                    ; #92131: origin
                    (not_at_c_p5)

                    ; #21221: <==negation-removal== 25191 (pos)
                    (not (not_at_c_p8))

                    ; #37352: <==negation-removal== 92131 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #29036: origin
                    (at_c_p9)

                    ; #92131: origin
                    (not_at_c_p5)

                    ; #37352: <==negation-removal== 92131 (pos)
                    (not (at_c_p5))

                    ; #70024: <==negation-removal== 29036 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #15183: origin
                    (not_at_c_p6)

                    ; #61455: origin
                    (at_c_p1)

                    ; #48964: <==negation-removal== 15183 (pos)
                    (not (at_c_p6))

                    ; #68875: <==negation-removal== 61455 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #15183: origin
                    (not_at_c_p6)

                    ; #25787: origin
                    (at_c_p2)

                    ; #48964: <==negation-removal== 15183 (pos)
                    (not (at_c_p6))

                    ; #82713: <==negation-removal== 25787 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #15183: origin
                    (not_at_c_p6)

                    ; #18654: origin
                    (at_c_p3)

                    ; #37897: <==negation-removal== 18654 (pos)
                    (not (not_at_c_p3))

                    ; #48964: <==negation-removal== 15183 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #15183: origin
                    (not_at_c_p6)

                    ; #32596: origin
                    (at_c_p4)

                    ; #48964: <==negation-removal== 15183 (pos)
                    (not (at_c_p6))

                    ; #52642: <==negation-removal== 32596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #15183: origin
                    (not_at_c_p6)

                    ; #37352: origin
                    (at_c_p5)

                    ; #48964: <==negation-removal== 15183 (pos)
                    (not (at_c_p6))

                    ; #92131: <==negation-removal== 37352 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #15183: origin
                    (not_at_c_p6)

                    ; #48964: origin
                    (at_c_p6)

                    ; #15183: <==negation-removal== 48964 (pos)
                    (not (not_at_c_p6))

                    ; #48964: <==negation-removal== 15183 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #15183: origin
                    (not_at_c_p6)

                    ; #65823: origin
                    (at_c_p7)

                    ; #48964: <==negation-removal== 15183 (pos)
                    (not (at_c_p6))

                    ; #86656: <==negation-removal== 65823 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #15183: origin
                    (not_at_c_p6)

                    ; #25191: origin
                    (at_c_p8)

                    ; #21221: <==negation-removal== 25191 (pos)
                    (not (not_at_c_p8))

                    ; #48964: <==negation-removal== 15183 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #15183: origin
                    (not_at_c_p6)

                    ; #29036: origin
                    (at_c_p9)

                    ; #48964: <==negation-removal== 15183 (pos)
                    (not (at_c_p6))

                    ; #70024: <==negation-removal== 29036 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #61455: origin
                    (at_c_p1)

                    ; #86656: origin
                    (not_at_c_p7)

                    ; #65823: <==negation-removal== 86656 (pos)
                    (not (at_c_p7))

                    ; #68875: <==negation-removal== 61455 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #25787: origin
                    (at_c_p2)

                    ; #86656: origin
                    (not_at_c_p7)

                    ; #65823: <==negation-removal== 86656 (pos)
                    (not (at_c_p7))

                    ; #82713: <==negation-removal== 25787 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #18654: origin
                    (at_c_p3)

                    ; #86656: origin
                    (not_at_c_p7)

                    ; #37897: <==negation-removal== 18654 (pos)
                    (not (not_at_c_p3))

                    ; #65823: <==negation-removal== 86656 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #32596: origin
                    (at_c_p4)

                    ; #86656: origin
                    (not_at_c_p7)

                    ; #52642: <==negation-removal== 32596 (pos)
                    (not (not_at_c_p4))

                    ; #65823: <==negation-removal== 86656 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #37352: origin
                    (at_c_p5)

                    ; #86656: origin
                    (not_at_c_p7)

                    ; #65823: <==negation-removal== 86656 (pos)
                    (not (at_c_p7))

                    ; #92131: <==negation-removal== 37352 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #48964: origin
                    (at_c_p6)

                    ; #86656: origin
                    (not_at_c_p7)

                    ; #15183: <==negation-removal== 48964 (pos)
                    (not (not_at_c_p6))

                    ; #65823: <==negation-removal== 86656 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #65823: origin
                    (at_c_p7)

                    ; #86656: origin
                    (not_at_c_p7)

                    ; #65823: <==negation-removal== 86656 (pos)
                    (not (at_c_p7))

                    ; #86656: <==negation-removal== 65823 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #25191: origin
                    (at_c_p8)

                    ; #86656: origin
                    (not_at_c_p7)

                    ; #21221: <==negation-removal== 25191 (pos)
                    (not (not_at_c_p8))

                    ; #65823: <==negation-removal== 86656 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #29036: origin
                    (at_c_p9)

                    ; #86656: origin
                    (not_at_c_p7)

                    ; #65823: <==negation-removal== 86656 (pos)
                    (not (at_c_p7))

                    ; #70024: <==negation-removal== 29036 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #21221: origin
                    (not_at_c_p8)

                    ; #61455: origin
                    (at_c_p1)

                    ; #25191: <==negation-removal== 21221 (pos)
                    (not (at_c_p8))

                    ; #68875: <==negation-removal== 61455 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #21221: origin
                    (not_at_c_p8)

                    ; #25787: origin
                    (at_c_p2)

                    ; #25191: <==negation-removal== 21221 (pos)
                    (not (at_c_p8))

                    ; #82713: <==negation-removal== 25787 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #18654: origin
                    (at_c_p3)

                    ; #21221: origin
                    (not_at_c_p8)

                    ; #25191: <==negation-removal== 21221 (pos)
                    (not (at_c_p8))

                    ; #37897: <==negation-removal== 18654 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #21221: origin
                    (not_at_c_p8)

                    ; #32596: origin
                    (at_c_p4)

                    ; #25191: <==negation-removal== 21221 (pos)
                    (not (at_c_p8))

                    ; #52642: <==negation-removal== 32596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #21221: origin
                    (not_at_c_p8)

                    ; #37352: origin
                    (at_c_p5)

                    ; #25191: <==negation-removal== 21221 (pos)
                    (not (at_c_p8))

                    ; #92131: <==negation-removal== 37352 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #21221: origin
                    (not_at_c_p8)

                    ; #48964: origin
                    (at_c_p6)

                    ; #15183: <==negation-removal== 48964 (pos)
                    (not (not_at_c_p6))

                    ; #25191: <==negation-removal== 21221 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #21221: origin
                    (not_at_c_p8)

                    ; #65823: origin
                    (at_c_p7)

                    ; #25191: <==negation-removal== 21221 (pos)
                    (not (at_c_p8))

                    ; #86656: <==negation-removal== 65823 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #21221: origin
                    (not_at_c_p8)

                    ; #25191: origin
                    (at_c_p8)

                    ; #21221: <==negation-removal== 25191 (pos)
                    (not (not_at_c_p8))

                    ; #25191: <==negation-removal== 21221 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #21221: origin
                    (not_at_c_p8)

                    ; #29036: origin
                    (at_c_p9)

                    ; #25191: <==negation-removal== 21221 (pos)
                    (not (at_c_p8))

                    ; #70024: <==negation-removal== 29036 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #61455: origin
                    (at_c_p1)

                    ; #70024: origin
                    (not_at_c_p9)

                    ; #29036: <==negation-removal== 70024 (pos)
                    (not (at_c_p9))

                    ; #68875: <==negation-removal== 61455 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #25787: origin
                    (at_c_p2)

                    ; #70024: origin
                    (not_at_c_p9)

                    ; #29036: <==negation-removal== 70024 (pos)
                    (not (at_c_p9))

                    ; #82713: <==negation-removal== 25787 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #18654: origin
                    (at_c_p3)

                    ; #70024: origin
                    (not_at_c_p9)

                    ; #29036: <==negation-removal== 70024 (pos)
                    (not (at_c_p9))

                    ; #37897: <==negation-removal== 18654 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #32596: origin
                    (at_c_p4)

                    ; #70024: origin
                    (not_at_c_p9)

                    ; #29036: <==negation-removal== 70024 (pos)
                    (not (at_c_p9))

                    ; #52642: <==negation-removal== 32596 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #37352: origin
                    (at_c_p5)

                    ; #70024: origin
                    (not_at_c_p9)

                    ; #29036: <==negation-removal== 70024 (pos)
                    (not (at_c_p9))

                    ; #92131: <==negation-removal== 37352 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #48964: origin
                    (at_c_p6)

                    ; #70024: origin
                    (not_at_c_p9)

                    ; #15183: <==negation-removal== 48964 (pos)
                    (not (not_at_c_p6))

                    ; #29036: <==negation-removal== 70024 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #65823: origin
                    (at_c_p7)

                    ; #70024: origin
                    (not_at_c_p9)

                    ; #29036: <==negation-removal== 70024 (pos)
                    (not (at_c_p9))

                    ; #86656: <==negation-removal== 65823 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #25191: origin
                    (at_c_p8)

                    ; #70024: origin
                    (not_at_c_p9)

                    ; #21221: <==negation-removal== 25191 (pos)
                    (not (not_at_c_p8))

                    ; #29036: <==negation-removal== 70024 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #29036: origin
                    (at_c_p9)

                    ; #70024: origin
                    (not_at_c_p9)

                    ; #29036: <==negation-removal== 70024 (pos)
                    (not (at_c_p9))

                    ; #70024: <==negation-removal== 29036 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11428: <==commonly_known== 58057 (pos)
                    (Ba_checked_p1)

                    ; #25747: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #42237: <==commonly_known== 21792 (neg)
                    (Pa_checked_p1)

                    ; #57818: <==commonly_known== 21792 (neg)
                    (Pc_checked_p1)

                    ; #58057: origin
                    (checked_p1)

                    ; #58075: <==closure== 25747 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #66756: <==commonly_known== 58057 (pos)
                    (Bb_checked_p1)

                    ; #73694: <==commonly_known== 58057 (pos)
                    (Bc_checked_p1)

                    ; #78894: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #84400: <==commonly_known== 21792 (neg)
                    (Pb_checked_p1)

                    ; #90349: <==closure== 78894 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #21792: <==negation-removal== 58057 (pos)
                    (not (not_checked_p1))

                    ; #33722: <==uncertain_firing== 58075 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #37913: <==negation-removal== 11428 (pos)
                    (not (Pa_not_checked_p1))

                    ; #42668: <==negation-removal== 73694 (pos)
                    (not (Pc_not_checked_p1))

                    ; #43358: <==uncertain_firing== 25747 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #45548: <==uncertain_firing== 78894 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #55325: <==negation-removal== 25747 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #57116: <==uncertain_firing== 90349 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #60233: <==negation-removal== 90349 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #61553: <==negation-removal== 58075 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #65725: <==negation-removal== 66756 (pos)
                    (not (Pb_not_checked_p1))

                    ; #71444: <==negation-removal== 78894 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #78430: <==negation-removal== 42237 (pos)
                    (not (Ba_not_checked_p1))

                    ; #81770: <==negation-removal== 57818 (pos)
                    (not (Bc_not_checked_p1))

                    ; #92098: <==negation-removal== 84400 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12899: <==closure== 46334 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #14169: <==commonly_known== 24627 (neg)
                    (Pc_checked_p2)

                    ; #17116: origin
                    (checked_p2)

                    ; #17961: <==commonly_known== 17116 (pos)
                    (Bb_checked_p2)

                    ; #36312: <==commonly_known== 17116 (pos)
                    (Ba_checked_p2)

                    ; #38180: <==closure== 63196 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #46334: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #58301: <==commonly_known== 24627 (neg)
                    (Pb_checked_p2)

                    ; #63196: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #69839: <==commonly_known== 17116 (pos)
                    (Bc_checked_p2)

                    ; #75370: <==commonly_known== 24627 (neg)
                    (Pa_checked_p2)

                    ; #10761: <==uncertain_firing== 38180 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #15811: <==negation-removal== 75370 (pos)
                    (not (Ba_not_checked_p2))

                    ; #20264: <==negation-removal== 69839 (pos)
                    (not (Pc_not_checked_p2))

                    ; #24627: <==negation-removal== 17116 (pos)
                    (not (not_checked_p2))

                    ; #30416: <==negation-removal== 46334 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #33275: <==negation-removal== 17961 (pos)
                    (not (Pb_not_checked_p2))

                    ; #50938: <==uncertain_firing== 63196 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #54075: <==uncertain_firing== 46334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #62729: <==negation-removal== 36312 (pos)
                    (not (Pa_not_checked_p2))

                    ; #65157: <==negation-removal== 14169 (pos)
                    (not (Bc_not_checked_p2))

                    ; #73894: <==uncertain_firing== 12899 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #74960: <==negation-removal== 12899 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #77640: <==negation-removal== 58301 (pos)
                    (not (Bb_not_checked_p2))

                    ; #78082: <==negation-removal== 38180 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #90760: <==negation-removal== 63196 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #21494: <==commonly_known== 53836 (pos)
                    (Ba_checked_p3)

                    ; #25225: <==commonly_known== 53836 (pos)
                    (Bb_checked_p3)

                    ; #25450: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #28739: <==closure== 68885 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #34763: <==commonly_known== 76491 (neg)
                    (Pc_checked_p3)

                    ; #40147: <==closure== 25450 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #40369: <==commonly_known== 53836 (pos)
                    (Bc_checked_p3)

                    ; #53836: origin
                    (checked_p3)

                    ; #64581: <==commonly_known== 76491 (neg)
                    (Pa_checked_p3)

                    ; #68885: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #73891: <==commonly_known== 76491 (neg)
                    (Pb_checked_p3)

                    ; #11344: <==uncertain_firing== 25450 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #11439: <==uncertain_firing== 40147 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #11577: <==negation-removal== 64581 (pos)
                    (not (Ba_not_checked_p3))

                    ; #16369: <==negation-removal== 73891 (pos)
                    (not (Bb_not_checked_p3))

                    ; #20021: <==negation-removal== 21494 (pos)
                    (not (Pa_not_checked_p3))

                    ; #20397: <==negation-removal== 28739 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #32594: <==negation-removal== 25450 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #37424: <==uncertain_firing== 68885 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #61342: <==negation-removal== 40369 (pos)
                    (not (Pc_not_checked_p3))

                    ; #66545: <==negation-removal== 40147 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #66587: <==uncertain_firing== 28739 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #76491: <==negation-removal== 53836 (pos)
                    (not (not_checked_p3))

                    ; #81677: <==negation-removal== 25225 (pos)
                    (not (Pb_not_checked_p3))

                    ; #87781: <==negation-removal== 68885 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #92339: <==negation-removal== 34763 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10041: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #19619: <==commonly_known== 24559 (pos)
                    (Ba_checked_p4)

                    ; #24559: origin
                    (checked_p4)

                    ; #30485: <==commonly_known== 24559 (pos)
                    (Bb_checked_p4)

                    ; #49241: <==closure== 61816 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #53026: <==commonly_known== 67276 (neg)
                    (Pa_checked_p4)

                    ; #61816: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #67754: <==commonly_known== 24559 (pos)
                    (Bc_checked_p4)

                    ; #70966: <==commonly_known== 67276 (neg)
                    (Pc_checked_p4)

                    ; #79086: <==commonly_known== 67276 (neg)
                    (Pb_checked_p4)

                    ; #89041: <==closure== 10041 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #13567: <==uncertain_firing== 61816 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #16308: <==negation-removal== 10041 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #39792: <==negation-removal== 79086 (pos)
                    (not (Bb_not_checked_p4))

                    ; #48663: <==negation-removal== 67754 (pos)
                    (not (Pc_not_checked_p4))

                    ; #49901: <==negation-removal== 53026 (pos)
                    (not (Ba_not_checked_p4))

                    ; #52119: <==uncertain_firing== 10041 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #53157: <==uncertain_firing== 49241 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #61741: <==negation-removal== 89041 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #65377: <==negation-removal== 30485 (pos)
                    (not (Pb_not_checked_p4))

                    ; #65491: <==uncertain_firing== 89041 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #67143: <==negation-removal== 49241 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #67276: <==negation-removal== 24559 (pos)
                    (not (not_checked_p4))

                    ; #76362: <==negation-removal== 70966 (pos)
                    (not (Bc_not_checked_p4))

                    ; #88720: <==negation-removal== 19619 (pos)
                    (not (Pa_not_checked_p4))

                    ; #90590: <==negation-removal== 61816 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #31103: <==commonly_known== 55679 (pos)
                    (Bc_checked_p5)

                    ; #42954: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #54267: <==commonly_known== 65096 (neg)
                    (Pb_checked_p5)

                    ; #55679: origin
                    (checked_p5)

                    ; #62999: <==commonly_known== 55679 (pos)
                    (Bb_checked_p5)

                    ; #63275: <==commonly_known== 65096 (neg)
                    (Pa_checked_p5)

                    ; #76182: <==closure== 81198 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #77330: <==closure== 42954 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #80014: <==commonly_known== 65096 (neg)
                    (Pc_checked_p5)

                    ; #81198: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #83710: <==commonly_known== 55679 (pos)
                    (Ba_checked_p5)

                    ; #14371: <==uncertain_firing== 77330 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #21248: <==negation-removal== 77330 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #25472: <==negation-removal== 31103 (pos)
                    (not (Pc_not_checked_p5))

                    ; #28004: <==negation-removal== 81198 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #39702: <==uncertain_firing== 42954 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #47471: <==uncertain_firing== 81198 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #49916: <==negation-removal== 62999 (pos)
                    (not (Pb_not_checked_p5))

                    ; #53735: <==uncertain_firing== 76182 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #58353: <==negation-removal== 83710 (pos)
                    (not (Pa_not_checked_p5))

                    ; #59393: <==negation-removal== 76182 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #61865: <==negation-removal== 63275 (pos)
                    (not (Ba_not_checked_p5))

                    ; #65096: <==negation-removal== 55679 (pos)
                    (not (not_checked_p5))

                    ; #70568: <==negation-removal== 80014 (pos)
                    (not (Bc_not_checked_p5))

                    ; #73920: <==negation-removal== 54267 (pos)
                    (not (Bb_not_checked_p5))

                    ; #99668: <==negation-removal== 42954 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #35027: <==commonly_known== 75685 (pos)
                    (Bb_checked_p6)

                    ; #46391: <==commonly_known== 83468 (neg)
                    (Pc_checked_p6)

                    ; #47014: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #55236: <==commonly_known== 75685 (pos)
                    (Bc_checked_p6)

                    ; #65094: <==commonly_known== 83468 (neg)
                    (Pa_checked_p6)

                    ; #69963: <==closure== 47014 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #71166: <==commonly_known== 83468 (neg)
                    (Pb_checked_p6)

                    ; #75685: origin
                    (checked_p6)

                    ; #83793: <==commonly_known== 75685 (pos)
                    (Ba_checked_p6)

                    ; #87260: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #89510: <==closure== 87260 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #16501: <==negation-removal== 46391 (pos)
                    (not (Bc_not_checked_p6))

                    ; #20206: <==negation-removal== 55236 (pos)
                    (not (Pc_not_checked_p6))

                    ; #30674: <==negation-removal== 89510 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #31685: <==negation-removal== 65094 (pos)
                    (not (Ba_not_checked_p6))

                    ; #36570: <==negation-removal== 71166 (pos)
                    (not (Bb_not_checked_p6))

                    ; #44685: <==negation-removal== 47014 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #56452: <==negation-removal== 87260 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #58236: <==uncertain_firing== 89510 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #58662: <==negation-removal== 69963 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #77711: <==uncertain_firing== 47014 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #77714: <==uncertain_firing== 69963 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #82785: <==negation-removal== 83793 (pos)
                    (not (Pa_not_checked_p6))

                    ; #83468: <==negation-removal== 75685 (pos)
                    (not (not_checked_p6))

                    ; #85541: <==negation-removal== 35027 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88387: <==uncertain_firing== 87260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11940: <==closure== 62700 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #48068: <==commonly_known== 90761 (neg)
                    (Pb_checked_p7)

                    ; #48488: <==commonly_known== 64906 (pos)
                    (Ba_checked_p7)

                    ; #55770: <==commonly_known== 64906 (pos)
                    (Bc_checked_p7)

                    ; #59928: <==closure== 70796 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #62063: <==commonly_known== 90761 (neg)
                    (Pa_checked_p7)

                    ; #62700: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #64906: origin
                    (checked_p7)

                    ; #70796: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #79042: <==commonly_known== 90761 (neg)
                    (Pc_checked_p7)

                    ; #81603: <==commonly_known== 64906 (pos)
                    (Bb_checked_p7)

                    ; #14432: <==negation-removal== 48068 (pos)
                    (not (Bb_not_checked_p7))

                    ; #15864: <==uncertain_firing== 11940 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #19619: <==negation-removal== 59928 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #29759: <==negation-removal== 79042 (pos)
                    (not (Bc_not_checked_p7))

                    ; #31059: <==negation-removal== 62063 (pos)
                    (not (Ba_not_checked_p7))

                    ; #35481: <==negation-removal== 62700 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #37117: <==negation-removal== 11940 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #37190: <==uncertain_firing== 62700 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #52065: <==uncertain_firing== 59928 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #54979: <==negation-removal== 55770 (pos)
                    (not (Pc_not_checked_p7))

                    ; #61378: <==uncertain_firing== 70796 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #64762: <==negation-removal== 48488 (pos)
                    (not (Pa_not_checked_p7))

                    ; #69443: <==negation-removal== 70796 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #72680: <==negation-removal== 81603 (pos)
                    (not (Pb_not_checked_p7))

                    ; #90761: <==negation-removal== 64906 (pos)
                    (not (not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #20832: <==commonly_known== 34917 (pos)
                    (Bb_checked_p8)

                    ; #22306: <==commonly_known== 34917 (pos)
                    (Ba_checked_p8)

                    ; #34917: origin
                    (checked_p8)

                    ; #41986: <==closure== 81351 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #47471: <==commonly_known== 34917 (pos)
                    (Bc_checked_p8)

                    ; #69280: <==closure== 75950 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #70248: <==commonly_known== 42232 (neg)
                    (Pa_checked_p8)

                    ; #74194: <==commonly_known== 42232 (neg)
                    (Pb_checked_p8)

                    ; #75950: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #81351: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #92209: <==commonly_known== 42232 (neg)
                    (Pc_checked_p8)

                    ; #14870: <==negation-removal== 69280 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #17484: <==negation-removal== 74194 (pos)
                    (not (Bb_not_checked_p8))

                    ; #22639: <==uncertain_firing== 81351 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #38636: <==uncertain_firing== 69280 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #38777: <==negation-removal== 20832 (pos)
                    (not (Pb_not_checked_p8))

                    ; #42232: <==negation-removal== 34917 (pos)
                    (not (not_checked_p8))

                    ; #51460: <==negation-removal== 47471 (pos)
                    (not (Pc_not_checked_p8))

                    ; #60494: <==negation-removal== 22306 (pos)
                    (not (Pa_not_checked_p8))

                    ; #71251: <==negation-removal== 75950 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #72117: <==negation-removal== 70248 (pos)
                    (not (Ba_not_checked_p8))

                    ; #72799: <==negation-removal== 81351 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #74123: <==negation-removal== 92209 (pos)
                    (not (Bc_not_checked_p8))

                    ; #75325: <==uncertain_firing== 41986 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #88484: <==negation-removal== 41986 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #90598: <==uncertain_firing== 75950 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #19786: <==commonly_known== 80295 (neg)
                    (Pc_checked_p9)

                    ; #33928: <==commonly_known== 80295 (neg)
                    (Pb_checked_p9)

                    ; #54316: <==commonly_known== 80295 (neg)
                    (Pa_checked_p9)

                    ; #55167: <==commonly_known== 78264 (pos)
                    (Bb_checked_p9)

                    ; #62831: <==closure== 69446 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #69446: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #71552: <==commonly_known== 78264 (pos)
                    (Ba_checked_p9)

                    ; #72936: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #75978: <==commonly_known== 78264 (pos)
                    (Bc_checked_p9)

                    ; #78264: origin
                    (checked_p9)

                    ; #80345: <==closure== 72936 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #18541: <==negation-removal== 72936 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #22438: <==negation-removal== 62831 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #24805: <==negation-removal== 75978 (pos)
                    (not (Pc_not_checked_p9))

                    ; #26438: <==uncertain_firing== 72936 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #30497: <==uncertain_firing== 80345 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #31434: <==negation-removal== 33928 (pos)
                    (not (Bb_not_checked_p9))

                    ; #41036: <==uncertain_firing== 69446 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #45152: <==negation-removal== 80345 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #54114: <==negation-removal== 55167 (pos)
                    (not (Pb_not_checked_p9))

                    ; #60510: <==negation-removal== 71552 (pos)
                    (not (Pa_not_checked_p9))

                    ; #61281: <==negation-removal== 19786 (pos)
                    (not (Bc_not_checked_p9))

                    ; #74263: <==negation-removal== 54316 (pos)
                    (not (Ba_not_checked_p9))

                    ; #80295: <==negation-removal== 78264 (pos)
                    (not (not_checked_p9))

                    ; #84147: <==uncertain_firing== 62831 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #88443: <==negation-removal== 69446 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11428: <==commonly_known== 58057 (pos)
                    (Ba_checked_p1)

                    ; #27583: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #29451: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #34188: <==closure== 29451 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #42116: <==closure== 27583 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #42237: <==commonly_known== 21792 (neg)
                    (Pa_checked_p1)

                    ; #57818: <==commonly_known== 21792 (neg)
                    (Pc_checked_p1)

                    ; #58057: origin
                    (checked_p1)

                    ; #66756: <==commonly_known== 58057 (pos)
                    (Bb_checked_p1)

                    ; #73694: <==commonly_known== 58057 (pos)
                    (Bc_checked_p1)

                    ; #84400: <==commonly_known== 21792 (neg)
                    (Pb_checked_p1)

                    ; #10538: <==negation-removal== 42116 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #20348: <==uncertain_firing== 34188 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #21792: <==negation-removal== 58057 (pos)
                    (not (not_checked_p1))

                    ; #30587: <==uncertain_firing== 42116 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #37913: <==negation-removal== 11428 (pos)
                    (not (Pa_not_checked_p1))

                    ; #40715: <==negation-removal== 27583 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #42668: <==negation-removal== 73694 (pos)
                    (not (Pc_not_checked_p1))

                    ; #44212: <==negation-removal== 34188 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #61253: <==uncertain_firing== 29451 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #65725: <==negation-removal== 66756 (pos)
                    (not (Pb_not_checked_p1))

                    ; #78430: <==negation-removal== 42237 (pos)
                    (not (Ba_not_checked_p1))

                    ; #80626: <==negation-removal== 29451 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81770: <==negation-removal== 57818 (pos)
                    (not (Bc_not_checked_p1))

                    ; #87446: <==uncertain_firing== 27583 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #92098: <==negation-removal== 84400 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #14169: <==commonly_known== 24627 (neg)
                    (Pc_checked_p2)

                    ; #14220: <==closure== 70239 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #17116: origin
                    (checked_p2)

                    ; #17961: <==commonly_known== 17116 (pos)
                    (Bb_checked_p2)

                    ; #36312: <==commonly_known== 17116 (pos)
                    (Ba_checked_p2)

                    ; #52689: <==closure== 89191 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #58301: <==commonly_known== 24627 (neg)
                    (Pb_checked_p2)

                    ; #69839: <==commonly_known== 17116 (pos)
                    (Bc_checked_p2)

                    ; #70239: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #75370: <==commonly_known== 24627 (neg)
                    (Pa_checked_p2)

                    ; #89191: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #13345: <==negation-removal== 14220 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #15811: <==negation-removal== 75370 (pos)
                    (not (Ba_not_checked_p2))

                    ; #20264: <==negation-removal== 69839 (pos)
                    (not (Pc_not_checked_p2))

                    ; #24627: <==negation-removal== 17116 (pos)
                    (not (not_checked_p2))

                    ; #26986: <==uncertain_firing== 14220 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #30490: <==uncertain_firing== 70239 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #33275: <==negation-removal== 17961 (pos)
                    (not (Pb_not_checked_p2))

                    ; #50549: <==uncertain_firing== 89191 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #55268: <==uncertain_firing== 52689 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #62729: <==negation-removal== 36312 (pos)
                    (not (Pa_not_checked_p2))

                    ; #65157: <==negation-removal== 14169 (pos)
                    (not (Bc_not_checked_p2))

                    ; #70559: <==negation-removal== 70239 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #77640: <==negation-removal== 58301 (pos)
                    (not (Bb_not_checked_p2))

                    ; #86861: <==negation-removal== 89191 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #87156: <==negation-removal== 52689 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11578: <==closure== 18980 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #18980: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #20472: <==closure== 46516 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #21494: <==commonly_known== 53836 (pos)
                    (Ba_checked_p3)

                    ; #25225: <==commonly_known== 53836 (pos)
                    (Bb_checked_p3)

                    ; #34763: <==commonly_known== 76491 (neg)
                    (Pc_checked_p3)

                    ; #40369: <==commonly_known== 53836 (pos)
                    (Bc_checked_p3)

                    ; #46516: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #53836: origin
                    (checked_p3)

                    ; #64581: <==commonly_known== 76491 (neg)
                    (Pa_checked_p3)

                    ; #73891: <==commonly_known== 76491 (neg)
                    (Pb_checked_p3)

                    ; #11577: <==negation-removal== 64581 (pos)
                    (not (Ba_not_checked_p3))

                    ; #16369: <==negation-removal== 73891 (pos)
                    (not (Bb_not_checked_p3))

                    ; #20021: <==negation-removal== 21494 (pos)
                    (not (Pa_not_checked_p3))

                    ; #27299: <==negation-removal== 46516 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #27366: <==uncertain_firing== 11578 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #35665: <==negation-removal== 18980 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #42064: <==uncertain_firing== 20472 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #61342: <==negation-removal== 40369 (pos)
                    (not (Pc_not_checked_p3))

                    ; #61966: <==negation-removal== 11578 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #76491: <==negation-removal== 53836 (pos)
                    (not (not_checked_p3))

                    ; #81256: <==negation-removal== 20472 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #81677: <==negation-removal== 25225 (pos)
                    (not (Pb_not_checked_p3))

                    ; #84298: <==uncertain_firing== 46516 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #84909: <==uncertain_firing== 18980 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #92339: <==negation-removal== 34763 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19619: <==commonly_known== 24559 (pos)
                    (Ba_checked_p4)

                    ; #24559: origin
                    (checked_p4)

                    ; #30485: <==commonly_known== 24559 (pos)
                    (Bb_checked_p4)

                    ; #34558: <==closure== 44819 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #44819: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #53026: <==commonly_known== 67276 (neg)
                    (Pa_checked_p4)

                    ; #60645: <==closure== 86075 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #67754: <==commonly_known== 24559 (pos)
                    (Bc_checked_p4)

                    ; #70966: <==commonly_known== 67276 (neg)
                    (Pc_checked_p4)

                    ; #79086: <==commonly_known== 67276 (neg)
                    (Pb_checked_p4)

                    ; #86075: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #10442: <==uncertain_firing== 34558 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #28449: <==uncertain_firing== 44819 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #39792: <==negation-removal== 79086 (pos)
                    (not (Bb_not_checked_p4))

                    ; #39906: <==negation-removal== 44819 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #40297: <==negation-removal== 86075 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #41046: <==uncertain_firing== 60645 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #47284: <==negation-removal== 34558 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #48663: <==negation-removal== 67754 (pos)
                    (not (Pc_not_checked_p4))

                    ; #49901: <==negation-removal== 53026 (pos)
                    (not (Ba_not_checked_p4))

                    ; #65377: <==negation-removal== 30485 (pos)
                    (not (Pb_not_checked_p4))

                    ; #67276: <==negation-removal== 24559 (pos)
                    (not (not_checked_p4))

                    ; #74876: <==uncertain_firing== 86075 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #76362: <==negation-removal== 70966 (pos)
                    (not (Bc_not_checked_p4))

                    ; #77398: <==negation-removal== 60645 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #88720: <==negation-removal== 19619 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #31103: <==commonly_known== 55679 (pos)
                    (Bc_checked_p5)

                    ; #44412: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #44701: <==closure== 44412 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #54267: <==commonly_known== 65096 (neg)
                    (Pb_checked_p5)

                    ; #55679: origin
                    (checked_p5)

                    ; #57971: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #62999: <==commonly_known== 55679 (pos)
                    (Bb_checked_p5)

                    ; #63275: <==commonly_known== 65096 (neg)
                    (Pa_checked_p5)

                    ; #68914: <==closure== 57971 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #80014: <==commonly_known== 65096 (neg)
                    (Pc_checked_p5)

                    ; #83710: <==commonly_known== 55679 (pos)
                    (Ba_checked_p5)

                    ; #25472: <==negation-removal== 31103 (pos)
                    (not (Pc_not_checked_p5))

                    ; #38612: <==negation-removal== 44412 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #47146: <==negation-removal== 68914 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #49916: <==negation-removal== 62999 (pos)
                    (not (Pb_not_checked_p5))

                    ; #55115: <==uncertain_firing== 68914 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #58353: <==negation-removal== 83710 (pos)
                    (not (Pa_not_checked_p5))

                    ; #60537: <==uncertain_firing== 44412 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #61865: <==negation-removal== 63275 (pos)
                    (not (Ba_not_checked_p5))

                    ; #62143: <==uncertain_firing== 44701 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #65096: <==negation-removal== 55679 (pos)
                    (not (not_checked_p5))

                    ; #67586: <==uncertain_firing== 57971 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #70568: <==negation-removal== 80014 (pos)
                    (not (Bc_not_checked_p5))

                    ; #73493: <==negation-removal== 44701 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #73920: <==negation-removal== 54267 (pos)
                    (not (Bb_not_checked_p5))

                    ; #82598: <==negation-removal== 57971 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #35027: <==commonly_known== 75685 (pos)
                    (Bb_checked_p6)

                    ; #41585: <==closure== 45161 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #45161: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #46391: <==commonly_known== 83468 (neg)
                    (Pc_checked_p6)

                    ; #52924: <==closure== 61196 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #55236: <==commonly_known== 75685 (pos)
                    (Bc_checked_p6)

                    ; #61196: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #65094: <==commonly_known== 83468 (neg)
                    (Pa_checked_p6)

                    ; #71166: <==commonly_known== 83468 (neg)
                    (Pb_checked_p6)

                    ; #75685: origin
                    (checked_p6)

                    ; #83793: <==commonly_known== 75685 (pos)
                    (Ba_checked_p6)

                    ; #16501: <==negation-removal== 46391 (pos)
                    (not (Bc_not_checked_p6))

                    ; #20206: <==negation-removal== 55236 (pos)
                    (not (Pc_not_checked_p6))

                    ; #27539: <==uncertain_firing== 52924 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #30643: <==negation-removal== 52924 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #31685: <==negation-removal== 65094 (pos)
                    (not (Ba_not_checked_p6))

                    ; #36570: <==negation-removal== 71166 (pos)
                    (not (Bb_not_checked_p6))

                    ; #40019: <==uncertain_firing== 61196 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #40155: <==uncertain_firing== 41585 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #40524: <==negation-removal== 41585 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #71253: <==uncertain_firing== 45161 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #75338: <==negation-removal== 61196 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #82785: <==negation-removal== 83793 (pos)
                    (not (Pa_not_checked_p6))

                    ; #83468: <==negation-removal== 75685 (pos)
                    (not (not_checked_p6))

                    ; #85541: <==negation-removal== 35027 (pos)
                    (not (Pb_not_checked_p6))

                    ; #91608: <==negation-removal== 45161 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #25668: <==closure== 79617 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #48068: <==commonly_known== 90761 (neg)
                    (Pb_checked_p7)

                    ; #48488: <==commonly_known== 64906 (pos)
                    (Ba_checked_p7)

                    ; #49158: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #55770: <==commonly_known== 64906 (pos)
                    (Bc_checked_p7)

                    ; #59740: <==closure== 49158 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #62063: <==commonly_known== 90761 (neg)
                    (Pa_checked_p7)

                    ; #64906: origin
                    (checked_p7)

                    ; #79042: <==commonly_known== 90761 (neg)
                    (Pc_checked_p7)

                    ; #79617: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #81603: <==commonly_known== 64906 (pos)
                    (Bb_checked_p7)

                    ; #14432: <==negation-removal== 48068 (pos)
                    (not (Bb_not_checked_p7))

                    ; #28644: <==uncertain_firing== 49158 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #29759: <==negation-removal== 79042 (pos)
                    (not (Bc_not_checked_p7))

                    ; #29972: <==uncertain_firing== 25668 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #31059: <==negation-removal== 62063 (pos)
                    (not (Ba_not_checked_p7))

                    ; #33667: <==negation-removal== 49158 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #35449: <==uncertain_firing== 59740 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #42582: <==negation-removal== 79617 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #54979: <==negation-removal== 55770 (pos)
                    (not (Pc_not_checked_p7))

                    ; #61762: <==negation-removal== 59740 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #64762: <==negation-removal== 48488 (pos)
                    (not (Pa_not_checked_p7))

                    ; #70381: <==uncertain_firing== 79617 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #72680: <==negation-removal== 81603 (pos)
                    (not (Pb_not_checked_p7))

                    ; #88602: <==negation-removal== 25668 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #90761: <==negation-removal== 64906 (pos)
                    (not (not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #20832: <==commonly_known== 34917 (pos)
                    (Bb_checked_p8)

                    ; #22306: <==commonly_known== 34917 (pos)
                    (Ba_checked_p8)

                    ; #32272: <==closure== 60661 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #34917: origin
                    (checked_p8)

                    ; #47471: <==commonly_known== 34917 (pos)
                    (Bc_checked_p8)

                    ; #59364: <==closure== 68906 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #60661: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #68906: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #70248: <==commonly_known== 42232 (neg)
                    (Pa_checked_p8)

                    ; #74194: <==commonly_known== 42232 (neg)
                    (Pb_checked_p8)

                    ; #92209: <==commonly_known== 42232 (neg)
                    (Pc_checked_p8)

                    ; #17484: <==negation-removal== 74194 (pos)
                    (not (Bb_not_checked_p8))

                    ; #30404: <==negation-removal== 59364 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #38777: <==negation-removal== 20832 (pos)
                    (not (Pb_not_checked_p8))

                    ; #42232: <==negation-removal== 34917 (pos)
                    (not (not_checked_p8))

                    ; #45477: <==uncertain_firing== 59364 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #51460: <==negation-removal== 47471 (pos)
                    (not (Pc_not_checked_p8))

                    ; #59371: <==uncertain_firing== 68906 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #59375: <==negation-removal== 60661 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #60494: <==negation-removal== 22306 (pos)
                    (not (Pa_not_checked_p8))

                    ; #61141: <==negation-removal== 68906 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #70662: <==negation-removal== 32272 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #72117: <==negation-removal== 70248 (pos)
                    (not (Ba_not_checked_p8))

                    ; #74123: <==negation-removal== 92209 (pos)
                    (not (Bc_not_checked_p8))

                    ; #76773: <==uncertain_firing== 60661 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #83179: <==uncertain_firing== 32272 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #19786: <==commonly_known== 80295 (neg)
                    (Pc_checked_p9)

                    ; #33928: <==commonly_known== 80295 (neg)
                    (Pb_checked_p9)

                    ; #34483: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #39103: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #44766: <==closure== 39103 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #54316: <==commonly_known== 80295 (neg)
                    (Pa_checked_p9)

                    ; #55167: <==commonly_known== 78264 (pos)
                    (Bb_checked_p9)

                    ; #62019: <==closure== 34483 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #71552: <==commonly_known== 78264 (pos)
                    (Ba_checked_p9)

                    ; #75978: <==commonly_known== 78264 (pos)
                    (Bc_checked_p9)

                    ; #78264: origin
                    (checked_p9)

                    ; #14808: <==uncertain_firing== 62019 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #16593: <==negation-removal== 39103 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #24805: <==negation-removal== 75978 (pos)
                    (not (Pc_not_checked_p9))

                    ; #27784: <==uncertain_firing== 39103 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #31434: <==negation-removal== 33928 (pos)
                    (not (Bb_not_checked_p9))

                    ; #43680: <==negation-removal== 62019 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #54114: <==negation-removal== 55167 (pos)
                    (not (Pb_not_checked_p9))

                    ; #60510: <==negation-removal== 71552 (pos)
                    (not (Pa_not_checked_p9))

                    ; #61281: <==negation-removal== 19786 (pos)
                    (not (Bc_not_checked_p9))

                    ; #64723: <==negation-removal== 44766 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #66657: <==uncertain_firing== 44766 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #74263: <==negation-removal== 54316 (pos)
                    (not (Ba_not_checked_p9))

                    ; #77446: <==negation-removal== 34483 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #80295: <==negation-removal== 78264 (pos)
                    (not (not_checked_p9))

                    ; #85427: <==uncertain_firing== 34483 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11428: <==commonly_known== 58057 (pos)
                    (Ba_checked_p1)

                    ; #14422: <==closure== 52455 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #42237: <==commonly_known== 21792 (neg)
                    (Pa_checked_p1)

                    ; #52455: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #57818: <==commonly_known== 21792 (neg)
                    (Pc_checked_p1)

                    ; #58057: origin
                    (checked_p1)

                    ; #60575: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #66669: <==closure== 60575 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #66756: <==commonly_known== 58057 (pos)
                    (Bb_checked_p1)

                    ; #73694: <==commonly_known== 58057 (pos)
                    (Bc_checked_p1)

                    ; #84400: <==commonly_known== 21792 (neg)
                    (Pb_checked_p1)

                    ; #21792: <==negation-removal== 58057 (pos)
                    (not (not_checked_p1))

                    ; #37913: <==negation-removal== 11428 (pos)
                    (not (Pa_not_checked_p1))

                    ; #42668: <==negation-removal== 73694 (pos)
                    (not (Pc_not_checked_p1))

                    ; #43517: <==negation-removal== 52455 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #45452: <==negation-removal== 14422 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #56127: <==uncertain_firing== 14422 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #57772: <==negation-removal== 66669 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #63740: <==uncertain_firing== 52455 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #64694: <==negation-removal== 60575 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #65725: <==negation-removal== 66756 (pos)
                    (not (Pb_not_checked_p1))

                    ; #78168: <==uncertain_firing== 60575 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #78430: <==negation-removal== 42237 (pos)
                    (not (Ba_not_checked_p1))

                    ; #79682: <==uncertain_firing== 66669 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #81770: <==negation-removal== 57818 (pos)
                    (not (Bc_not_checked_p1))

                    ; #92098: <==negation-removal== 84400 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #14169: <==commonly_known== 24627 (neg)
                    (Pc_checked_p2)

                    ; #15837: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #17116: origin
                    (checked_p2)

                    ; #17961: <==commonly_known== 17116 (pos)
                    (Bb_checked_p2)

                    ; #36312: <==commonly_known== 17116 (pos)
                    (Ba_checked_p2)

                    ; #38355: <==closure== 15837 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #58301: <==commonly_known== 24627 (neg)
                    (Pb_checked_p2)

                    ; #63415: <==closure== 87954 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #69839: <==commonly_known== 17116 (pos)
                    (Bc_checked_p2)

                    ; #75370: <==commonly_known== 24627 (neg)
                    (Pa_checked_p2)

                    ; #87954: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #15811: <==negation-removal== 75370 (pos)
                    (not (Ba_not_checked_p2))

                    ; #17799: <==negation-removal== 38355 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #20264: <==negation-removal== 69839 (pos)
                    (not (Pc_not_checked_p2))

                    ; #24627: <==negation-removal== 17116 (pos)
                    (not (not_checked_p2))

                    ; #24820: <==uncertain_firing== 38355 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27529: <==negation-removal== 15837 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #33275: <==negation-removal== 17961 (pos)
                    (not (Pb_not_checked_p2))

                    ; #36311: <==negation-removal== 87954 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #38858: <==uncertain_firing== 63415 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #51481: <==uncertain_firing== 87954 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #62729: <==negation-removal== 36312 (pos)
                    (not (Pa_not_checked_p2))

                    ; #65157: <==negation-removal== 14169 (pos)
                    (not (Bc_not_checked_p2))

                    ; #67309: <==uncertain_firing== 15837 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #77640: <==negation-removal== 58301 (pos)
                    (not (Bb_not_checked_p2))

                    ; #80107: <==negation-removal== 63415 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12258: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #21494: <==commonly_known== 53836 (pos)
                    (Ba_checked_p3)

                    ; #25225: <==commonly_known== 53836 (pos)
                    (Bb_checked_p3)

                    ; #34763: <==commonly_known== 76491 (neg)
                    (Pc_checked_p3)

                    ; #40369: <==commonly_known== 53836 (pos)
                    (Bc_checked_p3)

                    ; #45535: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #53836: origin
                    (checked_p3)

                    ; #57836: <==closure== 45535 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #64581: <==commonly_known== 76491 (neg)
                    (Pa_checked_p3)

                    ; #73891: <==commonly_known== 76491 (neg)
                    (Pb_checked_p3)

                    ; #80835: <==closure== 12258 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #11577: <==negation-removal== 64581 (pos)
                    (not (Ba_not_checked_p3))

                    ; #16369: <==negation-removal== 73891 (pos)
                    (not (Bb_not_checked_p3))

                    ; #20021: <==negation-removal== 21494 (pos)
                    (not (Pa_not_checked_p3))

                    ; #36858: <==negation-removal== 45535 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #42309: <==negation-removal== 57836 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #44671: <==negation-removal== 80835 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #55214: <==uncertain_firing== 12258 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #61342: <==negation-removal== 40369 (pos)
                    (not (Pc_not_checked_p3))

                    ; #64839: <==uncertain_firing== 45535 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #69129: <==uncertain_firing== 80835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #76491: <==negation-removal== 53836 (pos)
                    (not (not_checked_p3))

                    ; #77402: <==negation-removal== 12258 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #81677: <==negation-removal== 25225 (pos)
                    (not (Pb_not_checked_p3))

                    ; #92233: <==uncertain_firing== 57836 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #92339: <==negation-removal== 34763 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19619: <==commonly_known== 24559 (pos)
                    (Ba_checked_p4)

                    ; #22610: <==closure== 82621 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #24559: origin
                    (checked_p4)

                    ; #30485: <==commonly_known== 24559 (pos)
                    (Bb_checked_p4)

                    ; #36010: <==closure== 48068 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #48068: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #53026: <==commonly_known== 67276 (neg)
                    (Pa_checked_p4)

                    ; #67754: <==commonly_known== 24559 (pos)
                    (Bc_checked_p4)

                    ; #70966: <==commonly_known== 67276 (neg)
                    (Pc_checked_p4)

                    ; #79086: <==commonly_known== 67276 (neg)
                    (Pb_checked_p4)

                    ; #82621: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #12739: <==negation-removal== 36010 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #15219: <==uncertain_firing== 36010 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #27143: <==uncertain_firing== 82621 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39792: <==negation-removal== 79086 (pos)
                    (not (Bb_not_checked_p4))

                    ; #48663: <==negation-removal== 67754 (pos)
                    (not (Pc_not_checked_p4))

                    ; #49901: <==negation-removal== 53026 (pos)
                    (not (Ba_not_checked_p4))

                    ; #65377: <==negation-removal== 30485 (pos)
                    (not (Pb_not_checked_p4))

                    ; #67276: <==negation-removal== 24559 (pos)
                    (not (not_checked_p4))

                    ; #73403: <==negation-removal== 82621 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #76362: <==negation-removal== 70966 (pos)
                    (not (Bc_not_checked_p4))

                    ; #77205: <==uncertain_firing== 48068 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #78384: <==negation-removal== 22610 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #84993: <==uncertain_firing== 22610 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #88720: <==negation-removal== 19619 (pos)
                    (not (Pa_not_checked_p4))

                    ; #89591: <==negation-removal== 48068 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #28493: <==closure== 71296 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #28790: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #31103: <==commonly_known== 55679 (pos)
                    (Bc_checked_p5)

                    ; #44026: <==closure== 28790 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #54267: <==commonly_known== 65096 (neg)
                    (Pb_checked_p5)

                    ; #55679: origin
                    (checked_p5)

                    ; #62999: <==commonly_known== 55679 (pos)
                    (Bb_checked_p5)

                    ; #63275: <==commonly_known== 65096 (neg)
                    (Pa_checked_p5)

                    ; #71296: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #80014: <==commonly_known== 65096 (neg)
                    (Pc_checked_p5)

                    ; #83710: <==commonly_known== 55679 (pos)
                    (Ba_checked_p5)

                    ; #10640: <==uncertain_firing== 28790 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #25472: <==negation-removal== 31103 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31683: <==negation-removal== 71296 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #36306: <==negation-removal== 28493 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #39423: <==uncertain_firing== 71296 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #45594: <==uncertain_firing== 28493 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #48280: <==negation-removal== 28790 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #49916: <==negation-removal== 62999 (pos)
                    (not (Pb_not_checked_p5))

                    ; #51661: <==negation-removal== 44026 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #58353: <==negation-removal== 83710 (pos)
                    (not (Pa_not_checked_p5))

                    ; #61865: <==negation-removal== 63275 (pos)
                    (not (Ba_not_checked_p5))

                    ; #65096: <==negation-removal== 55679 (pos)
                    (not (not_checked_p5))

                    ; #70568: <==negation-removal== 80014 (pos)
                    (not (Bc_not_checked_p5))

                    ; #73920: <==negation-removal== 54267 (pos)
                    (not (Bb_not_checked_p5))

                    ; #81726: <==uncertain_firing== 44026 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12742: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #35027: <==commonly_known== 75685 (pos)
                    (Bb_checked_p6)

                    ; #46391: <==commonly_known== 83468 (neg)
                    (Pc_checked_p6)

                    ; #49377: <==closure== 62119 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #52634: <==closure== 12742 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #55236: <==commonly_known== 75685 (pos)
                    (Bc_checked_p6)

                    ; #62119: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #65094: <==commonly_known== 83468 (neg)
                    (Pa_checked_p6)

                    ; #71166: <==commonly_known== 83468 (neg)
                    (Pb_checked_p6)

                    ; #75685: origin
                    (checked_p6)

                    ; #83793: <==commonly_known== 75685 (pos)
                    (Ba_checked_p6)

                    ; #15234: <==negation-removal== 12742 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #16501: <==negation-removal== 46391 (pos)
                    (not (Bc_not_checked_p6))

                    ; #20206: <==negation-removal== 55236 (pos)
                    (not (Pc_not_checked_p6))

                    ; #31460: <==negation-removal== 62119 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #31685: <==negation-removal== 65094 (pos)
                    (not (Ba_not_checked_p6))

                    ; #36570: <==negation-removal== 71166 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37211: <==uncertain_firing== 49377 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #38721: <==uncertain_firing== 12742 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #39134: <==negation-removal== 49377 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #43512: <==uncertain_firing== 52634 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #66090: <==negation-removal== 52634 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #69751: <==uncertain_firing== 62119 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #82785: <==negation-removal== 83793 (pos)
                    (not (Pa_not_checked_p6))

                    ; #83468: <==negation-removal== 75685 (pos)
                    (not (not_checked_p6))

                    ; #85541: <==negation-removal== 35027 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #30350: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #48068: <==commonly_known== 90761 (neg)
                    (Pb_checked_p7)

                    ; #48488: <==commonly_known== 64906 (pos)
                    (Ba_checked_p7)

                    ; #54849: <==closure== 30350 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #55770: <==commonly_known== 64906 (pos)
                    (Bc_checked_p7)

                    ; #62063: <==commonly_known== 90761 (neg)
                    (Pa_checked_p7)

                    ; #64906: origin
                    (checked_p7)

                    ; #73538: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #79042: <==commonly_known== 90761 (neg)
                    (Pc_checked_p7)

                    ; #81603: <==commonly_known== 64906 (pos)
                    (Bb_checked_p7)

                    ; #96523: <==closure== 73538 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #10449: <==negation-removal== 54849 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #14432: <==negation-removal== 48068 (pos)
                    (not (Bb_not_checked_p7))

                    ; #27726: <==negation-removal== 73538 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #29759: <==negation-removal== 79042 (pos)
                    (not (Bc_not_checked_p7))

                    ; #31059: <==negation-removal== 62063 (pos)
                    (not (Ba_not_checked_p7))

                    ; #54979: <==negation-removal== 55770 (pos)
                    (not (Pc_not_checked_p7))

                    ; #58285: <==uncertain_firing== 96523 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #63007: <==uncertain_firing== 73538 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #64762: <==negation-removal== 48488 (pos)
                    (not (Pa_not_checked_p7))

                    ; #66605: <==uncertain_firing== 54849 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #71753: <==negation-removal== 96523 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #72680: <==negation-removal== 81603 (pos)
                    (not (Pb_not_checked_p7))

                    ; #78423: <==negation-removal== 30350 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #82548: <==uncertain_firing== 30350 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #90761: <==negation-removal== 64906 (pos)
                    (not (not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15466: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #20832: <==commonly_known== 34917 (pos)
                    (Bb_checked_p8)

                    ; #22306: <==commonly_known== 34917 (pos)
                    (Ba_checked_p8)

                    ; #34917: origin
                    (checked_p8)

                    ; #36468: <==closure== 51563 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #43379: <==closure== 15466 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #47471: <==commonly_known== 34917 (pos)
                    (Bc_checked_p8)

                    ; #51563: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #70248: <==commonly_known== 42232 (neg)
                    (Pa_checked_p8)

                    ; #74194: <==commonly_known== 42232 (neg)
                    (Pb_checked_p8)

                    ; #92209: <==commonly_known== 42232 (neg)
                    (Pc_checked_p8)

                    ; #13309: <==uncertain_firing== 15466 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #17484: <==negation-removal== 74194 (pos)
                    (not (Bb_not_checked_p8))

                    ; #22290: <==negation-removal== 43379 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #25755: <==negation-removal== 36468 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #25928: <==uncertain_firing== 36468 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #35839: <==negation-removal== 15466 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #38777: <==negation-removal== 20832 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41159: <==negation-removal== 51563 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #42232: <==negation-removal== 34917 (pos)
                    (not (not_checked_p8))

                    ; #51460: <==negation-removal== 47471 (pos)
                    (not (Pc_not_checked_p8))

                    ; #58567: <==uncertain_firing== 43379 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #60494: <==negation-removal== 22306 (pos)
                    (not (Pa_not_checked_p8))

                    ; #72117: <==negation-removal== 70248 (pos)
                    (not (Ba_not_checked_p8))

                    ; #74123: <==negation-removal== 92209 (pos)
                    (not (Bc_not_checked_p8))

                    ; #86955: <==uncertain_firing== 51563 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #19786: <==commonly_known== 80295 (neg)
                    (Pc_checked_p9)

                    ; #20718: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #31720: <==closure== 20718 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #33928: <==commonly_known== 80295 (neg)
                    (Pb_checked_p9)

                    ; #54316: <==commonly_known== 80295 (neg)
                    (Pa_checked_p9)

                    ; #55167: <==commonly_known== 78264 (pos)
                    (Bb_checked_p9)

                    ; #62285: <==closure== 69832 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #69832: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #71552: <==commonly_known== 78264 (pos)
                    (Ba_checked_p9)

                    ; #75978: <==commonly_known== 78264 (pos)
                    (Bc_checked_p9)

                    ; #78264: origin
                    (checked_p9)

                    ; #24805: <==negation-removal== 75978 (pos)
                    (not (Pc_not_checked_p9))

                    ; #27714: <==uncertain_firing== 69832 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29406: <==uncertain_firing== 31720 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #31434: <==negation-removal== 33928 (pos)
                    (not (Bb_not_checked_p9))

                    ; #37489: <==negation-removal== 31720 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #54114: <==negation-removal== 55167 (pos)
                    (not (Pb_not_checked_p9))

                    ; #56375: <==uncertain_firing== 20718 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #57204: <==uncertain_firing== 62285 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #60510: <==negation-removal== 71552 (pos)
                    (not (Pa_not_checked_p9))

                    ; #61281: <==negation-removal== 19786 (pos)
                    (not (Bc_not_checked_p9))

                    ; #63167: <==negation-removal== 69832 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #74263: <==negation-removal== 54316 (pos)
                    (not (Ba_not_checked_p9))

                    ; #80295: <==negation-removal== 78264 (pos)
                    (not (not_checked_p9))

                    ; #91655: <==negation-removal== 20718 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #91870: <==negation-removal== 62285 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))))

)