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
                    ; #11373: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #40698: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #41430: <==closure== 11373 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #65487: <==closure== 87746 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #79236: <==closure== 40698 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #87746: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #18666: <==uncertain_firing== 65487 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #28065: <==negation-removal== 87746 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #28946: <==uncertain_firing== 40698 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #41465: <==negation-removal== 11373 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #65709: <==uncertain_firing== 87746 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69402: <==negation-removal== 79236 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #71153: <==uncertain_firing== 11373 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #74368: <==uncertain_firing== 41430 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #75232: <==uncertain_firing== 79236 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #75802: <==negation-removal== 65487 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #78227: <==negation-removal== 41430 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #90533: <==negation-removal== 40698 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #11373: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #40698: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #41430: <==closure== 11373 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #65487: <==closure== 87746 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #79236: <==closure== 40698 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #87746: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #18666: <==uncertain_firing== 65487 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #28065: <==negation-removal== 87746 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #28946: <==uncertain_firing== 40698 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #41465: <==negation-removal== 11373 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #65709: <==uncertain_firing== 87746 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69402: <==negation-removal== 79236 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #71153: <==uncertain_firing== 11373 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #74368: <==uncertain_firing== 41430 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #75232: <==uncertain_firing== 79236 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #75802: <==negation-removal== 65487 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #78227: <==negation-removal== 41430 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #90533: <==negation-removal== 40698 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #11373: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #40698: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #41430: <==closure== 11373 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #65487: <==closure== 87746 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #79236: <==closure== 40698 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #87746: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #18666: <==uncertain_firing== 65487 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #28065: <==negation-removal== 87746 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #28946: <==uncertain_firing== 40698 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #41465: <==negation-removal== 11373 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #65709: <==uncertain_firing== 87746 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69402: <==negation-removal== 79236 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #71153: <==uncertain_firing== 11373 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #74368: <==uncertain_firing== 41430 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #75232: <==uncertain_firing== 79236 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #75802: <==negation-removal== 65487 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #78227: <==negation-removal== 41430 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #90533: <==negation-removal== 40698 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #11412: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #49516: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #65766: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #70949: <==closure== 11412 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #84485: <==closure== 49516 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #85290: <==closure== 65766 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #10718: <==uncertain_firing== 70949 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #21559: <==negation-removal== 49516 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #26439: <==negation-removal== 11412 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #27748: <==uncertain_firing== 49516 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #32942: <==negation-removal== 65766 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #37720: <==negation-removal== 84485 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #39489: <==negation-removal== 70949 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #42710: <==uncertain_firing== 11412 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #45943: <==uncertain_firing== 65766 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #66068: <==negation-removal== 85290 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #71637: <==uncertain_firing== 84485 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #85029: <==uncertain_firing== 85290 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #11412: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #49516: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #65766: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #70949: <==closure== 11412 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #84485: <==closure== 49516 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #85290: <==closure== 65766 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #10718: <==uncertain_firing== 70949 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #21559: <==negation-removal== 49516 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #26439: <==negation-removal== 11412 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #27748: <==uncertain_firing== 49516 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #32942: <==negation-removal== 65766 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #37720: <==negation-removal== 84485 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #39489: <==negation-removal== 70949 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #42710: <==uncertain_firing== 11412 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #45943: <==uncertain_firing== 65766 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #66068: <==negation-removal== 85290 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #71637: <==uncertain_firing== 84485 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #85029: <==uncertain_firing== 85290 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #11412: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #49516: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #65766: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #70949: <==closure== 11412 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #84485: <==closure== 49516 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #85290: <==closure== 65766 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #10718: <==uncertain_firing== 70949 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #21559: <==negation-removal== 49516 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #26439: <==negation-removal== 11412 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #27748: <==uncertain_firing== 49516 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #32942: <==negation-removal== 65766 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #37720: <==negation-removal== 84485 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #39489: <==negation-removal== 70949 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #42710: <==uncertain_firing== 11412 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #45943: <==uncertain_firing== 65766 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #66068: <==negation-removal== 85290 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #71637: <==uncertain_firing== 84485 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #85029: <==uncertain_firing== 85290 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #16707: <==closure== 57298 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #48975: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54083: <==closure== 64074 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #57298: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #64074: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #81892: <==closure== 48975 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #13808: <==uncertain_firing== 64074 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24384: <==negation-removal== 64074 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #28535: <==negation-removal== 57298 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #42110: <==uncertain_firing== 48975 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #48276: <==uncertain_firing== 54083 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #56627: <==uncertain_firing== 81892 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #57191: <==uncertain_firing== 16707 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #67500: <==negation-removal== 54083 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #68866: <==negation-removal== 81892 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #82725: <==negation-removal== 48975 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #87511: <==negation-removal== 16707 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #94383: <==uncertain_firing== 57298 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #16707: <==closure== 57298 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #48975: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54083: <==closure== 64074 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #57298: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #64074: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #81892: <==closure== 48975 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #13808: <==uncertain_firing== 64074 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24384: <==negation-removal== 64074 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #28535: <==negation-removal== 57298 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #42110: <==uncertain_firing== 48975 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #48276: <==uncertain_firing== 54083 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #56627: <==uncertain_firing== 81892 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #57191: <==uncertain_firing== 16707 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #67500: <==negation-removal== 54083 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #68866: <==negation-removal== 81892 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #82725: <==negation-removal== 48975 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #87511: <==negation-removal== 16707 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #94383: <==uncertain_firing== 57298 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #16707: <==closure== 57298 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #48975: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54083: <==closure== 64074 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #57298: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #64074: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #81892: <==closure== 48975 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #13808: <==uncertain_firing== 64074 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24384: <==negation-removal== 64074 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #28535: <==negation-removal== 57298 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #42110: <==uncertain_firing== 48975 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #48276: <==uncertain_firing== 54083 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #56627: <==uncertain_firing== 81892 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #57191: <==uncertain_firing== 16707 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #67500: <==negation-removal== 54083 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #68866: <==negation-removal== 81892 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #82725: <==negation-removal== 48975 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #87511: <==negation-removal== 16707 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #94383: <==uncertain_firing== 57298 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #25615: <==closure== 67841 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #51735: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #67411: <==closure== 83194 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #67841: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #78219: <==closure== 51735 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #83194: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #16888: <==negation-removal== 67841 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #18552: <==uncertain_firing== 78219 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #19331: <==negation-removal== 25615 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #21230: <==negation-removal== 83194 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #41411: <==negation-removal== 78219 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #47947: <==uncertain_firing== 51735 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #55163: <==uncertain_firing== 25615 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #56467: <==uncertain_firing== 67841 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #59741: <==uncertain_firing== 67411 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #75386: <==uncertain_firing== 83194 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #81405: <==negation-removal== 51735 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #88734: <==negation-removal== 67411 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #25615: <==closure== 67841 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #51735: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #67411: <==closure== 83194 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #67841: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #78219: <==closure== 51735 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #83194: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #16888: <==negation-removal== 67841 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #18552: <==uncertain_firing== 78219 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #19331: <==negation-removal== 25615 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #21230: <==negation-removal== 83194 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #41411: <==negation-removal== 78219 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #47947: <==uncertain_firing== 51735 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #55163: <==uncertain_firing== 25615 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #56467: <==uncertain_firing== 67841 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #59741: <==uncertain_firing== 67411 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #75386: <==uncertain_firing== 83194 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #81405: <==negation-removal== 51735 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #88734: <==negation-removal== 67411 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #25615: <==closure== 67841 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #51735: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #67411: <==closure== 83194 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #67841: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #78219: <==closure== 51735 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #83194: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #16888: <==negation-removal== 67841 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #18552: <==uncertain_firing== 78219 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #19331: <==negation-removal== 25615 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #21230: <==negation-removal== 83194 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #41411: <==negation-removal== 78219 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #47947: <==uncertain_firing== 51735 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #55163: <==uncertain_firing== 25615 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #56467: <==uncertain_firing== 67841 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #59741: <==uncertain_firing== 67411 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #75386: <==uncertain_firing== 83194 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #81405: <==negation-removal== 51735 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #88734: <==negation-removal== 67411 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #49824: <==closure== 56442 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #50225: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #56442: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #74050: <==closure== 50225 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #76567: <==closure== 83491 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #83491: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #14247: <==negation-removal== 74050 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #35185: <==negation-removal== 56442 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #38549: <==uncertain_firing== 50225 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #39080: <==uncertain_firing== 76567 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #39094: <==negation-removal== 50225 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #46740: <==negation-removal== 49824 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #49847: <==uncertain_firing== 74050 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61205: <==negation-removal== 83491 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #77297: <==uncertain_firing== 83491 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #81195: <==uncertain_firing== 56442 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #85545: <==uncertain_firing== 49824 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #87368: <==negation-removal== 76567 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #49824: <==closure== 56442 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #50225: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #56442: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #74050: <==closure== 50225 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #76567: <==closure== 83491 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #83491: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #14247: <==negation-removal== 74050 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #35185: <==negation-removal== 56442 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #38549: <==uncertain_firing== 50225 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #39080: <==uncertain_firing== 76567 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #39094: <==negation-removal== 50225 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #46740: <==negation-removal== 49824 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #49847: <==uncertain_firing== 74050 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61205: <==negation-removal== 83491 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #77297: <==uncertain_firing== 83491 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #81195: <==uncertain_firing== 56442 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #85545: <==uncertain_firing== 49824 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #87368: <==negation-removal== 76567 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #49824: <==closure== 56442 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #50225: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #56442: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #74050: <==closure== 50225 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #76567: <==closure== 83491 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #83491: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #14247: <==negation-removal== 74050 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #35185: <==negation-removal== 56442 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #38549: <==uncertain_firing== 50225 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #39080: <==uncertain_firing== 76567 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #39094: <==negation-removal== 50225 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #46740: <==negation-removal== 49824 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #49847: <==uncertain_firing== 74050 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61205: <==negation-removal== 83491 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #77297: <==uncertain_firing== 83491 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #81195: <==uncertain_firing== 56442 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #85545: <==uncertain_firing== 49824 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #87368: <==negation-removal== 76567 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #10245: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #17303: <==closure== 10245 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #18935: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #26683: <==closure== 18935 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #34222: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #64365: <==closure== 34222 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #27836: <==negation-removal== 26683 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #32936: <==negation-removal== 34222 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #34184: <==negation-removal== 10245 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #39018: <==negation-removal== 18935 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #43495: <==uncertain_firing== 64365 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #44138: <==uncertain_firing== 17303 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #45290: <==uncertain_firing== 10245 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #47718: <==uncertain_firing== 18935 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #62898: <==negation-removal== 17303 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #63558: <==uncertain_firing== 34222 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #76214: <==negation-removal== 64365 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #76278: <==uncertain_firing== 26683 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #10245: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #17303: <==closure== 10245 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #18935: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #26683: <==closure== 18935 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #34222: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #64365: <==closure== 34222 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #27836: <==negation-removal== 26683 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #32936: <==negation-removal== 34222 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #34184: <==negation-removal== 10245 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #39018: <==negation-removal== 18935 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #43495: <==uncertain_firing== 64365 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #44138: <==uncertain_firing== 17303 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #45290: <==uncertain_firing== 10245 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #47718: <==uncertain_firing== 18935 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #62898: <==negation-removal== 17303 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #63558: <==uncertain_firing== 34222 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #76214: <==negation-removal== 64365 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #76278: <==uncertain_firing== 26683 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #10245: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #17303: <==closure== 10245 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #18935: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #26683: <==closure== 18935 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #34222: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #64365: <==closure== 34222 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #27836: <==negation-removal== 26683 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #32936: <==negation-removal== 34222 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #34184: <==negation-removal== 10245 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #39018: <==negation-removal== 18935 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #43495: <==uncertain_firing== 64365 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #44138: <==uncertain_firing== 17303 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #45290: <==uncertain_firing== 10245 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #47718: <==uncertain_firing== 18935 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #62898: <==negation-removal== 17303 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #63558: <==uncertain_firing== 34222 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #76214: <==negation-removal== 64365 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #76278: <==uncertain_firing== 26683 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #21408: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #62274: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #70598: <==closure== 21408 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #71238: <==closure== 78922 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #78137: <==closure== 62274 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #78922: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #12555: <==negation-removal== 78922 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #16927: <==uncertain_firing== 78137 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #24335: <==uncertain_firing== 71238 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #44480: <==uncertain_firing== 70598 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #49100: <==uncertain_firing== 21408 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #53385: <==uncertain_firing== 62274 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #54574: <==negation-removal== 21408 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #67625: <==negation-removal== 70598 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #72963: <==negation-removal== 78137 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #74993: <==negation-removal== 62274 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #82850: <==uncertain_firing== 78922 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #87104: <==negation-removal== 71238 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #21408: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #62274: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #70598: <==closure== 21408 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #71238: <==closure== 78922 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #78137: <==closure== 62274 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #78922: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #12555: <==negation-removal== 78922 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #16927: <==uncertain_firing== 78137 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #24335: <==uncertain_firing== 71238 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #44480: <==uncertain_firing== 70598 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #49100: <==uncertain_firing== 21408 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #53385: <==uncertain_firing== 62274 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #54574: <==negation-removal== 21408 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #67625: <==negation-removal== 70598 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #72963: <==negation-removal== 78137 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #74993: <==negation-removal== 62274 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #82850: <==uncertain_firing== 78922 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #87104: <==negation-removal== 71238 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #21408: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #62274: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #70598: <==closure== 21408 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #71238: <==closure== 78922 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #78137: <==closure== 62274 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #78922: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #12555: <==negation-removal== 78922 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #16927: <==uncertain_firing== 78137 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #24335: <==uncertain_firing== 71238 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #44480: <==uncertain_firing== 70598 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #49100: <==uncertain_firing== 21408 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #53385: <==uncertain_firing== 62274 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #54574: <==negation-removal== 21408 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #67625: <==negation-removal== 70598 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #72963: <==negation-removal== 78137 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #74993: <==negation-removal== 62274 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #82850: <==uncertain_firing== 78922 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #87104: <==negation-removal== 71238 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #19570: <==closure== 77332 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #40006: <==closure== 54062 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #54062: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #66424: <==closure== 88148 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #77332: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #88148: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #15738: <==uncertain_firing== 66424 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #21602: <==negation-removal== 19570 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #28736: <==uncertain_firing== 19570 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #28899: <==uncertain_firing== 54062 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #30321: <==negation-removal== 88148 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #36593: <==uncertain_firing== 88148 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #46685: <==uncertain_firing== 40006 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #46742: <==negation-removal== 54062 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #48273: <==uncertain_firing== 77332 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #79700: <==negation-removal== 77332 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #83427: <==negation-removal== 40006 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #88586: <==negation-removal== 66424 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #19570: <==closure== 77332 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #40006: <==closure== 54062 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #54062: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #66424: <==closure== 88148 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #77332: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #88148: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #15738: <==uncertain_firing== 66424 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #21602: <==negation-removal== 19570 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #28736: <==uncertain_firing== 19570 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #28899: <==uncertain_firing== 54062 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #30321: <==negation-removal== 88148 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #36593: <==uncertain_firing== 88148 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #46685: <==uncertain_firing== 40006 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #46742: <==negation-removal== 54062 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #48273: <==uncertain_firing== 77332 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #79700: <==negation-removal== 77332 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #83427: <==negation-removal== 40006 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #88586: <==negation-removal== 66424 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #19570: <==closure== 77332 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #40006: <==closure== 54062 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #54062: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #66424: <==closure== 88148 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #77332: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #88148: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #15738: <==uncertain_firing== 66424 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #21602: <==negation-removal== 19570 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #28736: <==uncertain_firing== 19570 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #28899: <==uncertain_firing== 54062 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #30321: <==negation-removal== 88148 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #36593: <==uncertain_firing== 88148 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #46685: <==uncertain_firing== 40006 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #46742: <==negation-removal== 54062 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #48273: <==uncertain_firing== 77332 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #79700: <==negation-removal== 77332 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #83427: <==negation-removal== 40006 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #88586: <==negation-removal== 66424 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #10894: <==closure== 35068 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #20660: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #35068: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #38603: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #74789: <==closure== 20660 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #87519: <==closure== 38603 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #18345: <==uncertain_firing== 38603 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #26416: <==negation-removal== 35068 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #28648: <==uncertain_firing== 87519 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #29753: <==negation-removal== 10894 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #34059: <==uncertain_firing== 74789 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #36538: <==negation-removal== 74789 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #42218: <==uncertain_firing== 20660 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #51269: <==negation-removal== 87519 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #52432: <==negation-removal== 20660 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #54361: <==uncertain_firing== 10894 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #55466: <==negation-removal== 38603 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #76726: <==uncertain_firing== 35068 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #10894: <==closure== 35068 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #20660: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #35068: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #38603: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #74789: <==closure== 20660 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #87519: <==closure== 38603 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #18345: <==uncertain_firing== 38603 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #26416: <==negation-removal== 35068 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #28648: <==uncertain_firing== 87519 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #29753: <==negation-removal== 10894 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #34059: <==uncertain_firing== 74789 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #36538: <==negation-removal== 74789 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #42218: <==uncertain_firing== 20660 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #51269: <==negation-removal== 87519 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #52432: <==negation-removal== 20660 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #54361: <==uncertain_firing== 10894 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #55466: <==negation-removal== 38603 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #76726: <==uncertain_firing== 35068 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #10894: <==closure== 35068 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #20660: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #35068: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #38603: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #74789: <==closure== 20660 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #87519: <==closure== 38603 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #18345: <==uncertain_firing== 38603 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #26416: <==negation-removal== 35068 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #28648: <==uncertain_firing== 87519 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #29753: <==negation-removal== 10894 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #34059: <==uncertain_firing== 74789 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #36538: <==negation-removal== 74789 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #42218: <==uncertain_firing== 20660 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #51269: <==negation-removal== 87519 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #52432: <==negation-removal== 20660 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #54361: <==uncertain_firing== 10894 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #55466: <==negation-removal== 38603 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #76726: <==uncertain_firing== 35068 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #10186: origin
                    (Bc_survivorat_s_p1)

                    ; #11743: <==closure== 31965 (pos)
                    (Pa_survivorat_s_p1)

                    ; #21253: <==closure== 29797 (pos)
                    (Pb_survivorat_s_p1)

                    ; #29797: origin
                    (Bb_survivorat_s_p1)

                    ; #31965: origin
                    (Ba_survivorat_s_p1)

                    ; #63069: <==closure== 10186 (pos)
                    (Pc_survivorat_s_p1)

                    ; #27583: <==negation-removal== 63069 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #44584: <==negation-removal== 29797 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60347: <==negation-removal== 21253 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #67041: <==negation-removal== 11743 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #76917: <==negation-removal== 10186 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #91126: <==negation-removal== 31965 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #10186: origin
                    (Bc_survivorat_s_p1)

                    ; #11743: <==closure== 31965 (pos)
                    (Pa_survivorat_s_p1)

                    ; #21253: <==closure== 29797 (pos)
                    (Pb_survivorat_s_p1)

                    ; #29797: origin
                    (Bb_survivorat_s_p1)

                    ; #31965: origin
                    (Ba_survivorat_s_p1)

                    ; #63069: <==closure== 10186 (pos)
                    (Pc_survivorat_s_p1)

                    ; #27583: <==negation-removal== 63069 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #44584: <==negation-removal== 29797 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60347: <==negation-removal== 21253 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #67041: <==negation-removal== 11743 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #76917: <==negation-removal== 10186 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #91126: <==negation-removal== 31965 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #10186: origin
                    (Bc_survivorat_s_p1)

                    ; #11743: <==closure== 31965 (pos)
                    (Pa_survivorat_s_p1)

                    ; #21253: <==closure== 29797 (pos)
                    (Pb_survivorat_s_p1)

                    ; #29797: origin
                    (Bb_survivorat_s_p1)

                    ; #31965: origin
                    (Ba_survivorat_s_p1)

                    ; #63069: <==closure== 10186 (pos)
                    (Pc_survivorat_s_p1)

                    ; #27583: <==negation-removal== 63069 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #44584: <==negation-removal== 29797 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60347: <==negation-removal== 21253 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #67041: <==negation-removal== 11743 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #76917: <==negation-removal== 10186 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #91126: <==negation-removal== 31965 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #22047: <==closure== 47286 (pos)
                    (Pc_survivorat_s_p2)

                    ; #45799: origin
                    (Bb_survivorat_s_p2)

                    ; #47286: origin
                    (Bc_survivorat_s_p2)

                    ; #53118: <==closure== 55341 (pos)
                    (Pa_survivorat_s_p2)

                    ; #55341: origin
                    (Ba_survivorat_s_p2)

                    ; #79794: <==closure== 45799 (pos)
                    (Pb_survivorat_s_p2)

                    ; #11692: <==negation-removal== 53118 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #53035: <==negation-removal== 79794 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #70465: <==negation-removal== 45799 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #76672: <==negation-removal== 47286 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #79874: <==negation-removal== 55341 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #83857: <==negation-removal== 22047 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #22047: <==closure== 47286 (pos)
                    (Pc_survivorat_s_p2)

                    ; #45799: origin
                    (Bb_survivorat_s_p2)

                    ; #47286: origin
                    (Bc_survivorat_s_p2)

                    ; #53118: <==closure== 55341 (pos)
                    (Pa_survivorat_s_p2)

                    ; #55341: origin
                    (Ba_survivorat_s_p2)

                    ; #79794: <==closure== 45799 (pos)
                    (Pb_survivorat_s_p2)

                    ; #11692: <==negation-removal== 53118 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #53035: <==negation-removal== 79794 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #70465: <==negation-removal== 45799 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #76672: <==negation-removal== 47286 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #79874: <==negation-removal== 55341 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #83857: <==negation-removal== 22047 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #22047: <==closure== 47286 (pos)
                    (Pc_survivorat_s_p2)

                    ; #45799: origin
                    (Bb_survivorat_s_p2)

                    ; #47286: origin
                    (Bc_survivorat_s_p2)

                    ; #53118: <==closure== 55341 (pos)
                    (Pa_survivorat_s_p2)

                    ; #55341: origin
                    (Ba_survivorat_s_p2)

                    ; #79794: <==closure== 45799 (pos)
                    (Pb_survivorat_s_p2)

                    ; #11692: <==negation-removal== 53118 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #53035: <==negation-removal== 79794 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #70465: <==negation-removal== 45799 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #76672: <==negation-removal== 47286 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #79874: <==negation-removal== 55341 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #83857: <==negation-removal== 22047 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #13052: origin
                    (Bc_survivorat_s_p3)

                    ; #15793: origin
                    (Ba_survivorat_s_p3)

                    ; #15800: <==closure== 46235 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46235: origin
                    (Bb_survivorat_s_p3)

                    ; #82200: <==closure== 13052 (pos)
                    (Pc_survivorat_s_p3)

                    ; #88135: <==closure== 15793 (pos)
                    (Pa_survivorat_s_p3)

                    ; #10330: <==negation-removal== 82200 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #38449: <==negation-removal== 46235 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #68643: <==negation-removal== 15800 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #74010: <==negation-removal== 88135 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76567: <==negation-removal== 15793 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #78548: <==negation-removal== 13052 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #13052: origin
                    (Bc_survivorat_s_p3)

                    ; #15793: origin
                    (Ba_survivorat_s_p3)

                    ; #15800: <==closure== 46235 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46235: origin
                    (Bb_survivorat_s_p3)

                    ; #82200: <==closure== 13052 (pos)
                    (Pc_survivorat_s_p3)

                    ; #88135: <==closure== 15793 (pos)
                    (Pa_survivorat_s_p3)

                    ; #10330: <==negation-removal== 82200 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #38449: <==negation-removal== 46235 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #68643: <==negation-removal== 15800 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #74010: <==negation-removal== 88135 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76567: <==negation-removal== 15793 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #78548: <==negation-removal== 13052 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #13052: origin
                    (Bc_survivorat_s_p3)

                    ; #15793: origin
                    (Ba_survivorat_s_p3)

                    ; #15800: <==closure== 46235 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46235: origin
                    (Bb_survivorat_s_p3)

                    ; #82200: <==closure== 13052 (pos)
                    (Pc_survivorat_s_p3)

                    ; #88135: <==closure== 15793 (pos)
                    (Pa_survivorat_s_p3)

                    ; #10330: <==negation-removal== 82200 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #38449: <==negation-removal== 46235 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #68643: <==negation-removal== 15800 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #74010: <==negation-removal== 88135 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76567: <==negation-removal== 15793 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #78548: <==negation-removal== 13052 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #16920: origin
                    (Ba_survivorat_s_p4)

                    ; #37777: <==closure== 41230 (pos)
                    (Pc_survivorat_s_p4)

                    ; #41230: origin
                    (Bc_survivorat_s_p4)

                    ; #69649: <==closure== 16920 (pos)
                    (Pa_survivorat_s_p4)

                    ; #75101: <==closure== 81986 (pos)
                    (Pb_survivorat_s_p4)

                    ; #81986: origin
                    (Bb_survivorat_s_p4)

                    ; #22996: <==negation-removal== 41230 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #25112: <==negation-removal== 81986 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #26877: <==negation-removal== 69649 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #28745: <==negation-removal== 75101 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #43119: <==negation-removal== 16920 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76122: <==negation-removal== 37777 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #16920: origin
                    (Ba_survivorat_s_p4)

                    ; #37777: <==closure== 41230 (pos)
                    (Pc_survivorat_s_p4)

                    ; #41230: origin
                    (Bc_survivorat_s_p4)

                    ; #69649: <==closure== 16920 (pos)
                    (Pa_survivorat_s_p4)

                    ; #75101: <==closure== 81986 (pos)
                    (Pb_survivorat_s_p4)

                    ; #81986: origin
                    (Bb_survivorat_s_p4)

                    ; #22996: <==negation-removal== 41230 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #25112: <==negation-removal== 81986 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #26877: <==negation-removal== 69649 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #28745: <==negation-removal== 75101 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #43119: <==negation-removal== 16920 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76122: <==negation-removal== 37777 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #16920: origin
                    (Ba_survivorat_s_p4)

                    ; #37777: <==closure== 41230 (pos)
                    (Pc_survivorat_s_p4)

                    ; #41230: origin
                    (Bc_survivorat_s_p4)

                    ; #69649: <==closure== 16920 (pos)
                    (Pa_survivorat_s_p4)

                    ; #75101: <==closure== 81986 (pos)
                    (Pb_survivorat_s_p4)

                    ; #81986: origin
                    (Bb_survivorat_s_p4)

                    ; #22996: <==negation-removal== 41230 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #25112: <==negation-removal== 81986 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #26877: <==negation-removal== 69649 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #28745: <==negation-removal== 75101 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #43119: <==negation-removal== 16920 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76122: <==negation-removal== 37777 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #19580: origin
                    (Bb_survivorat_s_p5)

                    ; #39856: <==closure== 64032 (pos)
                    (Pc_survivorat_s_p5)

                    ; #63677: <==closure== 87713 (pos)
                    (Pa_survivorat_s_p5)

                    ; #64032: origin
                    (Bc_survivorat_s_p5)

                    ; #82082: <==closure== 19580 (pos)
                    (Pb_survivorat_s_p5)

                    ; #87713: origin
                    (Ba_survivorat_s_p5)

                    ; #11546: <==negation-removal== 87713 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #11558: <==negation-removal== 63677 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #21717: <==negation-removal== 39856 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #52648: <==negation-removal== 19580 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #61038: <==negation-removal== 82082 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #87948: <==negation-removal== 64032 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #19580: origin
                    (Bb_survivorat_s_p5)

                    ; #39856: <==closure== 64032 (pos)
                    (Pc_survivorat_s_p5)

                    ; #63677: <==closure== 87713 (pos)
                    (Pa_survivorat_s_p5)

                    ; #64032: origin
                    (Bc_survivorat_s_p5)

                    ; #82082: <==closure== 19580 (pos)
                    (Pb_survivorat_s_p5)

                    ; #87713: origin
                    (Ba_survivorat_s_p5)

                    ; #11546: <==negation-removal== 87713 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #11558: <==negation-removal== 63677 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #21717: <==negation-removal== 39856 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #52648: <==negation-removal== 19580 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #61038: <==negation-removal== 82082 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #87948: <==negation-removal== 64032 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #19580: origin
                    (Bb_survivorat_s_p5)

                    ; #39856: <==closure== 64032 (pos)
                    (Pc_survivorat_s_p5)

                    ; #63677: <==closure== 87713 (pos)
                    (Pa_survivorat_s_p5)

                    ; #64032: origin
                    (Bc_survivorat_s_p5)

                    ; #82082: <==closure== 19580 (pos)
                    (Pb_survivorat_s_p5)

                    ; #87713: origin
                    (Ba_survivorat_s_p5)

                    ; #11546: <==negation-removal== 87713 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #11558: <==negation-removal== 63677 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #21717: <==negation-removal== 39856 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #52648: <==negation-removal== 19580 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #61038: <==negation-removal== 82082 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #87948: <==negation-removal== 64032 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #18321: origin
                    (Bb_survivorat_s_p6)

                    ; #28687: <==closure== 18321 (pos)
                    (Pb_survivorat_s_p6)

                    ; #41772: <==closure== 73081 (pos)
                    (Pc_survivorat_s_p6)

                    ; #65055: origin
                    (Ba_survivorat_s_p6)

                    ; #70309: <==closure== 65055 (pos)
                    (Pa_survivorat_s_p6)

                    ; #73081: origin
                    (Bc_survivorat_s_p6)

                    ; #15718: <==negation-removal== 28687 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #29680: <==negation-removal== 70309 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #75716: <==negation-removal== 65055 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #78277: <==negation-removal== 41772 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #80426: <==negation-removal== 18321 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #81860: <==negation-removal== 73081 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #18321: origin
                    (Bb_survivorat_s_p6)

                    ; #28687: <==closure== 18321 (pos)
                    (Pb_survivorat_s_p6)

                    ; #41772: <==closure== 73081 (pos)
                    (Pc_survivorat_s_p6)

                    ; #65055: origin
                    (Ba_survivorat_s_p6)

                    ; #70309: <==closure== 65055 (pos)
                    (Pa_survivorat_s_p6)

                    ; #73081: origin
                    (Bc_survivorat_s_p6)

                    ; #15718: <==negation-removal== 28687 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #29680: <==negation-removal== 70309 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #75716: <==negation-removal== 65055 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #78277: <==negation-removal== 41772 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #80426: <==negation-removal== 18321 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #81860: <==negation-removal== 73081 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #18321: origin
                    (Bb_survivorat_s_p6)

                    ; #28687: <==closure== 18321 (pos)
                    (Pb_survivorat_s_p6)

                    ; #41772: <==closure== 73081 (pos)
                    (Pc_survivorat_s_p6)

                    ; #65055: origin
                    (Ba_survivorat_s_p6)

                    ; #70309: <==closure== 65055 (pos)
                    (Pa_survivorat_s_p6)

                    ; #73081: origin
                    (Bc_survivorat_s_p6)

                    ; #15718: <==negation-removal== 28687 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #29680: <==negation-removal== 70309 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #75716: <==negation-removal== 65055 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #78277: <==negation-removal== 41772 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #80426: <==negation-removal== 18321 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #81860: <==negation-removal== 73081 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #28818: <==closure== 87039 (pos)
                    (Pa_survivorat_s_p7)

                    ; #36349: origin
                    (Bb_survivorat_s_p7)

                    ; #41781: origin
                    (Bc_survivorat_s_p7)

                    ; #52742: <==closure== 41781 (pos)
                    (Pc_survivorat_s_p7)

                    ; #66336: <==closure== 36349 (pos)
                    (Pb_survivorat_s_p7)

                    ; #87039: origin
                    (Ba_survivorat_s_p7)

                    ; #20178: <==negation-removal== 36349 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #22354: <==negation-removal== 28818 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #40449: <==negation-removal== 52742 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #41206: <==negation-removal== 41781 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #58724: <==negation-removal== 87039 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #77991: <==negation-removal== 66336 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #28818: <==closure== 87039 (pos)
                    (Pa_survivorat_s_p7)

                    ; #36349: origin
                    (Bb_survivorat_s_p7)

                    ; #41781: origin
                    (Bc_survivorat_s_p7)

                    ; #52742: <==closure== 41781 (pos)
                    (Pc_survivorat_s_p7)

                    ; #66336: <==closure== 36349 (pos)
                    (Pb_survivorat_s_p7)

                    ; #87039: origin
                    (Ba_survivorat_s_p7)

                    ; #20178: <==negation-removal== 36349 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #22354: <==negation-removal== 28818 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #40449: <==negation-removal== 52742 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #41206: <==negation-removal== 41781 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #58724: <==negation-removal== 87039 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #77991: <==negation-removal== 66336 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #28818: <==closure== 87039 (pos)
                    (Pa_survivorat_s_p7)

                    ; #36349: origin
                    (Bb_survivorat_s_p7)

                    ; #41781: origin
                    (Bc_survivorat_s_p7)

                    ; #52742: <==closure== 41781 (pos)
                    (Pc_survivorat_s_p7)

                    ; #66336: <==closure== 36349 (pos)
                    (Pb_survivorat_s_p7)

                    ; #87039: origin
                    (Ba_survivorat_s_p7)

                    ; #20178: <==negation-removal== 36349 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #22354: <==negation-removal== 28818 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #40449: <==negation-removal== 52742 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #41206: <==negation-removal== 41781 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #58724: <==negation-removal== 87039 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #77991: <==negation-removal== 66336 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #46738: <==closure== 47480 (pos)
                    (Pc_survivorat_s_p8)

                    ; #47480: origin
                    (Bc_survivorat_s_p8)

                    ; #54155: <==closure== 65343 (pos)
                    (Pb_survivorat_s_p8)

                    ; #65343: origin
                    (Bb_survivorat_s_p8)

                    ; #75539: origin
                    (Ba_survivorat_s_p8)

                    ; #83828: <==closure== 75539 (pos)
                    (Pa_survivorat_s_p8)

                    ; #21425: <==negation-removal== 75539 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #30760: <==negation-removal== 83828 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #37590: <==negation-removal== 47480 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #43747: <==negation-removal== 46738 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #70298: <==negation-removal== 54155 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #75982: <==negation-removal== 65343 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #46738: <==closure== 47480 (pos)
                    (Pc_survivorat_s_p8)

                    ; #47480: origin
                    (Bc_survivorat_s_p8)

                    ; #54155: <==closure== 65343 (pos)
                    (Pb_survivorat_s_p8)

                    ; #65343: origin
                    (Bb_survivorat_s_p8)

                    ; #75539: origin
                    (Ba_survivorat_s_p8)

                    ; #83828: <==closure== 75539 (pos)
                    (Pa_survivorat_s_p8)

                    ; #21425: <==negation-removal== 75539 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #30760: <==negation-removal== 83828 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #37590: <==negation-removal== 47480 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #43747: <==negation-removal== 46738 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #70298: <==negation-removal== 54155 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #75982: <==negation-removal== 65343 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #46738: <==closure== 47480 (pos)
                    (Pc_survivorat_s_p8)

                    ; #47480: origin
                    (Bc_survivorat_s_p8)

                    ; #54155: <==closure== 65343 (pos)
                    (Pb_survivorat_s_p8)

                    ; #65343: origin
                    (Bb_survivorat_s_p8)

                    ; #75539: origin
                    (Ba_survivorat_s_p8)

                    ; #83828: <==closure== 75539 (pos)
                    (Pa_survivorat_s_p8)

                    ; #21425: <==negation-removal== 75539 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #30760: <==negation-removal== 83828 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #37590: <==negation-removal== 47480 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #43747: <==negation-removal== 46738 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #70298: <==negation-removal== 54155 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #75982: <==negation-removal== 65343 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #34775: origin
                    (Bc_survivorat_s_p9)

                    ; #38182: origin
                    (Bb_survivorat_s_p9)

                    ; #39978: <==closure== 34775 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69735: <==closure== 73447 (pos)
                    (Pa_survivorat_s_p9)

                    ; #73447: origin
                    (Ba_survivorat_s_p9)

                    ; #89802: <==closure== 38182 (pos)
                    (Pb_survivorat_s_p9)

                    ; #28589: <==negation-removal== 73447 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #35285: <==negation-removal== 39978 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53885: <==negation-removal== 89802 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #57540: <==negation-removal== 34775 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #62864: <==negation-removal== 69735 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #62902: <==negation-removal== 38182 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #34775: origin
                    (Bc_survivorat_s_p9)

                    ; #38182: origin
                    (Bb_survivorat_s_p9)

                    ; #39978: <==closure== 34775 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69735: <==closure== 73447 (pos)
                    (Pa_survivorat_s_p9)

                    ; #73447: origin
                    (Ba_survivorat_s_p9)

                    ; #89802: <==closure== 38182 (pos)
                    (Pb_survivorat_s_p9)

                    ; #28589: <==negation-removal== 73447 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #35285: <==negation-removal== 39978 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53885: <==negation-removal== 89802 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #57540: <==negation-removal== 34775 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #62864: <==negation-removal== 69735 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #62902: <==negation-removal== 38182 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #34775: origin
                    (Bc_survivorat_s_p9)

                    ; #38182: origin
                    (Bb_survivorat_s_p9)

                    ; #39978: <==closure== 34775 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69735: <==closure== 73447 (pos)
                    (Pa_survivorat_s_p9)

                    ; #73447: origin
                    (Ba_survivorat_s_p9)

                    ; #89802: <==closure== 38182 (pos)
                    (Pb_survivorat_s_p9)

                    ; #28589: <==negation-removal== 73447 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #35285: <==negation-removal== 39978 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53885: <==negation-removal== 89802 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #57540: <==negation-removal== 34775 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #62864: <==negation-removal== 69735 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #62902: <==negation-removal== 38182 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #83917: origin
                    (at_a_p1)

                    ; #91490: origin
                    (not_at_a_p1)

                    ; #83917: <==negation-removal== 91490 (pos)
                    (not (at_a_p1))

                    ; #91490: <==negation-removal== 83917 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #56212: origin
                    (at_a_p2)

                    ; #91490: origin
                    (not_at_a_p1)

                    ; #23239: <==negation-removal== 56212 (pos)
                    (not (not_at_a_p2))

                    ; #83917: <==negation-removal== 91490 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #62936: origin
                    (at_a_p3)

                    ; #91490: origin
                    (not_at_a_p1)

                    ; #30990: <==negation-removal== 62936 (pos)
                    (not (not_at_a_p3))

                    ; #83917: <==negation-removal== 91490 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #75941: origin
                    (at_a_p4)

                    ; #91490: origin
                    (not_at_a_p1)

                    ; #36569: <==negation-removal== 75941 (pos)
                    (not (not_at_a_p4))

                    ; #83917: <==negation-removal== 91490 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #85248: origin
                    (at_a_p5)

                    ; #91490: origin
                    (not_at_a_p1)

                    ; #32066: <==negation-removal== 85248 (pos)
                    (not (not_at_a_p5))

                    ; #83917: <==negation-removal== 91490 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #56903: origin
                    (at_a_p6)

                    ; #91490: origin
                    (not_at_a_p1)

                    ; #56055: <==negation-removal== 56903 (pos)
                    (not (not_at_a_p6))

                    ; #83917: <==negation-removal== 91490 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #23588: origin
                    (at_a_p7)

                    ; #91490: origin
                    (not_at_a_p1)

                    ; #26021: <==negation-removal== 23588 (pos)
                    (not (not_at_a_p7))

                    ; #83917: <==negation-removal== 91490 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #50257: origin
                    (at_a_p8)

                    ; #91490: origin
                    (not_at_a_p1)

                    ; #77850: <==negation-removal== 50257 (pos)
                    (not (not_at_a_p8))

                    ; #83917: <==negation-removal== 91490 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #41209: origin
                    (at_a_p9)

                    ; #91490: origin
                    (not_at_a_p1)

                    ; #30917: <==negation-removal== 41209 (pos)
                    (not (not_at_a_p9))

                    ; #83917: <==negation-removal== 91490 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #23239: origin
                    (not_at_a_p2)

                    ; #83917: origin
                    (at_a_p1)

                    ; #56212: <==negation-removal== 23239 (pos)
                    (not (at_a_p2))

                    ; #91490: <==negation-removal== 83917 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #23239: origin
                    (not_at_a_p2)

                    ; #56212: origin
                    (at_a_p2)

                    ; #23239: <==negation-removal== 56212 (pos)
                    (not (not_at_a_p2))

                    ; #56212: <==negation-removal== 23239 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #23239: origin
                    (not_at_a_p2)

                    ; #62936: origin
                    (at_a_p3)

                    ; #30990: <==negation-removal== 62936 (pos)
                    (not (not_at_a_p3))

                    ; #56212: <==negation-removal== 23239 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #23239: origin
                    (not_at_a_p2)

                    ; #75941: origin
                    (at_a_p4)

                    ; #36569: <==negation-removal== 75941 (pos)
                    (not (not_at_a_p4))

                    ; #56212: <==negation-removal== 23239 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #23239: origin
                    (not_at_a_p2)

                    ; #85248: origin
                    (at_a_p5)

                    ; #32066: <==negation-removal== 85248 (pos)
                    (not (not_at_a_p5))

                    ; #56212: <==negation-removal== 23239 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #23239: origin
                    (not_at_a_p2)

                    ; #56903: origin
                    (at_a_p6)

                    ; #56055: <==negation-removal== 56903 (pos)
                    (not (not_at_a_p6))

                    ; #56212: <==negation-removal== 23239 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #23239: origin
                    (not_at_a_p2)

                    ; #23588: origin
                    (at_a_p7)

                    ; #26021: <==negation-removal== 23588 (pos)
                    (not (not_at_a_p7))

                    ; #56212: <==negation-removal== 23239 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #23239: origin
                    (not_at_a_p2)

                    ; #50257: origin
                    (at_a_p8)

                    ; #56212: <==negation-removal== 23239 (pos)
                    (not (at_a_p2))

                    ; #77850: <==negation-removal== 50257 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #23239: origin
                    (not_at_a_p2)

                    ; #41209: origin
                    (at_a_p9)

                    ; #30917: <==negation-removal== 41209 (pos)
                    (not (not_at_a_p9))

                    ; #56212: <==negation-removal== 23239 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #30990: origin
                    (not_at_a_p3)

                    ; #83917: origin
                    (at_a_p1)

                    ; #62936: <==negation-removal== 30990 (pos)
                    (not (at_a_p3))

                    ; #91490: <==negation-removal== 83917 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #30990: origin
                    (not_at_a_p3)

                    ; #56212: origin
                    (at_a_p2)

                    ; #23239: <==negation-removal== 56212 (pos)
                    (not (not_at_a_p2))

                    ; #62936: <==negation-removal== 30990 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #30990: origin
                    (not_at_a_p3)

                    ; #62936: origin
                    (at_a_p3)

                    ; #30990: <==negation-removal== 62936 (pos)
                    (not (not_at_a_p3))

                    ; #62936: <==negation-removal== 30990 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #30990: origin
                    (not_at_a_p3)

                    ; #75941: origin
                    (at_a_p4)

                    ; #36569: <==negation-removal== 75941 (pos)
                    (not (not_at_a_p4))

                    ; #62936: <==negation-removal== 30990 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #30990: origin
                    (not_at_a_p3)

                    ; #85248: origin
                    (at_a_p5)

                    ; #32066: <==negation-removal== 85248 (pos)
                    (not (not_at_a_p5))

                    ; #62936: <==negation-removal== 30990 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #30990: origin
                    (not_at_a_p3)

                    ; #56903: origin
                    (at_a_p6)

                    ; #56055: <==negation-removal== 56903 (pos)
                    (not (not_at_a_p6))

                    ; #62936: <==negation-removal== 30990 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #23588: origin
                    (at_a_p7)

                    ; #30990: origin
                    (not_at_a_p3)

                    ; #26021: <==negation-removal== 23588 (pos)
                    (not (not_at_a_p7))

                    ; #62936: <==negation-removal== 30990 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #30990: origin
                    (not_at_a_p3)

                    ; #50257: origin
                    (at_a_p8)

                    ; #62936: <==negation-removal== 30990 (pos)
                    (not (at_a_p3))

                    ; #77850: <==negation-removal== 50257 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #30990: origin
                    (not_at_a_p3)

                    ; #41209: origin
                    (at_a_p9)

                    ; #30917: <==negation-removal== 41209 (pos)
                    (not (not_at_a_p9))

                    ; #62936: <==negation-removal== 30990 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #36569: origin
                    (not_at_a_p4)

                    ; #83917: origin
                    (at_a_p1)

                    ; #75941: <==negation-removal== 36569 (pos)
                    (not (at_a_p4))

                    ; #91490: <==negation-removal== 83917 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #36569: origin
                    (not_at_a_p4)

                    ; #56212: origin
                    (at_a_p2)

                    ; #23239: <==negation-removal== 56212 (pos)
                    (not (not_at_a_p2))

                    ; #75941: <==negation-removal== 36569 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #36569: origin
                    (not_at_a_p4)

                    ; #62936: origin
                    (at_a_p3)

                    ; #30990: <==negation-removal== 62936 (pos)
                    (not (not_at_a_p3))

                    ; #75941: <==negation-removal== 36569 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #36569: origin
                    (not_at_a_p4)

                    ; #75941: origin
                    (at_a_p4)

                    ; #36569: <==negation-removal== 75941 (pos)
                    (not (not_at_a_p4))

                    ; #75941: <==negation-removal== 36569 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #36569: origin
                    (not_at_a_p4)

                    ; #85248: origin
                    (at_a_p5)

                    ; #32066: <==negation-removal== 85248 (pos)
                    (not (not_at_a_p5))

                    ; #75941: <==negation-removal== 36569 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #36569: origin
                    (not_at_a_p4)

                    ; #56903: origin
                    (at_a_p6)

                    ; #56055: <==negation-removal== 56903 (pos)
                    (not (not_at_a_p6))

                    ; #75941: <==negation-removal== 36569 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #23588: origin
                    (at_a_p7)

                    ; #36569: origin
                    (not_at_a_p4)

                    ; #26021: <==negation-removal== 23588 (pos)
                    (not (not_at_a_p7))

                    ; #75941: <==negation-removal== 36569 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #36569: origin
                    (not_at_a_p4)

                    ; #50257: origin
                    (at_a_p8)

                    ; #75941: <==negation-removal== 36569 (pos)
                    (not (at_a_p4))

                    ; #77850: <==negation-removal== 50257 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #36569: origin
                    (not_at_a_p4)

                    ; #41209: origin
                    (at_a_p9)

                    ; #30917: <==negation-removal== 41209 (pos)
                    (not (not_at_a_p9))

                    ; #75941: <==negation-removal== 36569 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #32066: origin
                    (not_at_a_p5)

                    ; #83917: origin
                    (at_a_p1)

                    ; #85248: <==negation-removal== 32066 (pos)
                    (not (at_a_p5))

                    ; #91490: <==negation-removal== 83917 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #32066: origin
                    (not_at_a_p5)

                    ; #56212: origin
                    (at_a_p2)

                    ; #23239: <==negation-removal== 56212 (pos)
                    (not (not_at_a_p2))

                    ; #85248: <==negation-removal== 32066 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #32066: origin
                    (not_at_a_p5)

                    ; #62936: origin
                    (at_a_p3)

                    ; #30990: <==negation-removal== 62936 (pos)
                    (not (not_at_a_p3))

                    ; #85248: <==negation-removal== 32066 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #32066: origin
                    (not_at_a_p5)

                    ; #75941: origin
                    (at_a_p4)

                    ; #36569: <==negation-removal== 75941 (pos)
                    (not (not_at_a_p4))

                    ; #85248: <==negation-removal== 32066 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #32066: origin
                    (not_at_a_p5)

                    ; #85248: origin
                    (at_a_p5)

                    ; #32066: <==negation-removal== 85248 (pos)
                    (not (not_at_a_p5))

                    ; #85248: <==negation-removal== 32066 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #32066: origin
                    (not_at_a_p5)

                    ; #56903: origin
                    (at_a_p6)

                    ; #56055: <==negation-removal== 56903 (pos)
                    (not (not_at_a_p6))

                    ; #85248: <==negation-removal== 32066 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #23588: origin
                    (at_a_p7)

                    ; #32066: origin
                    (not_at_a_p5)

                    ; #26021: <==negation-removal== 23588 (pos)
                    (not (not_at_a_p7))

                    ; #85248: <==negation-removal== 32066 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #32066: origin
                    (not_at_a_p5)

                    ; #50257: origin
                    (at_a_p8)

                    ; #77850: <==negation-removal== 50257 (pos)
                    (not (not_at_a_p8))

                    ; #85248: <==negation-removal== 32066 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #32066: origin
                    (not_at_a_p5)

                    ; #41209: origin
                    (at_a_p9)

                    ; #30917: <==negation-removal== 41209 (pos)
                    (not (not_at_a_p9))

                    ; #85248: <==negation-removal== 32066 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #56055: origin
                    (not_at_a_p6)

                    ; #83917: origin
                    (at_a_p1)

                    ; #56903: <==negation-removal== 56055 (pos)
                    (not (at_a_p6))

                    ; #91490: <==negation-removal== 83917 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #56055: origin
                    (not_at_a_p6)

                    ; #56212: origin
                    (at_a_p2)

                    ; #23239: <==negation-removal== 56212 (pos)
                    (not (not_at_a_p2))

                    ; #56903: <==negation-removal== 56055 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #56055: origin
                    (not_at_a_p6)

                    ; #62936: origin
                    (at_a_p3)

                    ; #30990: <==negation-removal== 62936 (pos)
                    (not (not_at_a_p3))

                    ; #56903: <==negation-removal== 56055 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #56055: origin
                    (not_at_a_p6)

                    ; #75941: origin
                    (at_a_p4)

                    ; #36569: <==negation-removal== 75941 (pos)
                    (not (not_at_a_p4))

                    ; #56903: <==negation-removal== 56055 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #56055: origin
                    (not_at_a_p6)

                    ; #85248: origin
                    (at_a_p5)

                    ; #32066: <==negation-removal== 85248 (pos)
                    (not (not_at_a_p5))

                    ; #56903: <==negation-removal== 56055 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #56055: origin
                    (not_at_a_p6)

                    ; #56903: origin
                    (at_a_p6)

                    ; #56055: <==negation-removal== 56903 (pos)
                    (not (not_at_a_p6))

                    ; #56903: <==negation-removal== 56055 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #23588: origin
                    (at_a_p7)

                    ; #56055: origin
                    (not_at_a_p6)

                    ; #26021: <==negation-removal== 23588 (pos)
                    (not (not_at_a_p7))

                    ; #56903: <==negation-removal== 56055 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #50257: origin
                    (at_a_p8)

                    ; #56055: origin
                    (not_at_a_p6)

                    ; #56903: <==negation-removal== 56055 (pos)
                    (not (at_a_p6))

                    ; #77850: <==negation-removal== 50257 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #41209: origin
                    (at_a_p9)

                    ; #56055: origin
                    (not_at_a_p6)

                    ; #30917: <==negation-removal== 41209 (pos)
                    (not (not_at_a_p9))

                    ; #56903: <==negation-removal== 56055 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #26021: origin
                    (not_at_a_p7)

                    ; #83917: origin
                    (at_a_p1)

                    ; #23588: <==negation-removal== 26021 (pos)
                    (not (at_a_p7))

                    ; #91490: <==negation-removal== 83917 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #26021: origin
                    (not_at_a_p7)

                    ; #56212: origin
                    (at_a_p2)

                    ; #23239: <==negation-removal== 56212 (pos)
                    (not (not_at_a_p2))

                    ; #23588: <==negation-removal== 26021 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #26021: origin
                    (not_at_a_p7)

                    ; #62936: origin
                    (at_a_p3)

                    ; #23588: <==negation-removal== 26021 (pos)
                    (not (at_a_p7))

                    ; #30990: <==negation-removal== 62936 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #26021: origin
                    (not_at_a_p7)

                    ; #75941: origin
                    (at_a_p4)

                    ; #23588: <==negation-removal== 26021 (pos)
                    (not (at_a_p7))

                    ; #36569: <==negation-removal== 75941 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #26021: origin
                    (not_at_a_p7)

                    ; #85248: origin
                    (at_a_p5)

                    ; #23588: <==negation-removal== 26021 (pos)
                    (not (at_a_p7))

                    ; #32066: <==negation-removal== 85248 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #26021: origin
                    (not_at_a_p7)

                    ; #56903: origin
                    (at_a_p6)

                    ; #23588: <==negation-removal== 26021 (pos)
                    (not (at_a_p7))

                    ; #56055: <==negation-removal== 56903 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #23588: origin
                    (at_a_p7)

                    ; #26021: origin
                    (not_at_a_p7)

                    ; #23588: <==negation-removal== 26021 (pos)
                    (not (at_a_p7))

                    ; #26021: <==negation-removal== 23588 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #26021: origin
                    (not_at_a_p7)

                    ; #50257: origin
                    (at_a_p8)

                    ; #23588: <==negation-removal== 26021 (pos)
                    (not (at_a_p7))

                    ; #77850: <==negation-removal== 50257 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #26021: origin
                    (not_at_a_p7)

                    ; #41209: origin
                    (at_a_p9)

                    ; #23588: <==negation-removal== 26021 (pos)
                    (not (at_a_p7))

                    ; #30917: <==negation-removal== 41209 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #77850: origin
                    (not_at_a_p8)

                    ; #83917: origin
                    (at_a_p1)

                    ; #50257: <==negation-removal== 77850 (pos)
                    (not (at_a_p8))

                    ; #91490: <==negation-removal== 83917 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #56212: origin
                    (at_a_p2)

                    ; #77850: origin
                    (not_at_a_p8)

                    ; #23239: <==negation-removal== 56212 (pos)
                    (not (not_at_a_p2))

                    ; #50257: <==negation-removal== 77850 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #62936: origin
                    (at_a_p3)

                    ; #77850: origin
                    (not_at_a_p8)

                    ; #30990: <==negation-removal== 62936 (pos)
                    (not (not_at_a_p3))

                    ; #50257: <==negation-removal== 77850 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #75941: origin
                    (at_a_p4)

                    ; #77850: origin
                    (not_at_a_p8)

                    ; #36569: <==negation-removal== 75941 (pos)
                    (not (not_at_a_p4))

                    ; #50257: <==negation-removal== 77850 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #77850: origin
                    (not_at_a_p8)

                    ; #85248: origin
                    (at_a_p5)

                    ; #32066: <==negation-removal== 85248 (pos)
                    (not (not_at_a_p5))

                    ; #50257: <==negation-removal== 77850 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #56903: origin
                    (at_a_p6)

                    ; #77850: origin
                    (not_at_a_p8)

                    ; #50257: <==negation-removal== 77850 (pos)
                    (not (at_a_p8))

                    ; #56055: <==negation-removal== 56903 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #23588: origin
                    (at_a_p7)

                    ; #77850: origin
                    (not_at_a_p8)

                    ; #26021: <==negation-removal== 23588 (pos)
                    (not (not_at_a_p7))

                    ; #50257: <==negation-removal== 77850 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #50257: origin
                    (at_a_p8)

                    ; #77850: origin
                    (not_at_a_p8)

                    ; #50257: <==negation-removal== 77850 (pos)
                    (not (at_a_p8))

                    ; #77850: <==negation-removal== 50257 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #41209: origin
                    (at_a_p9)

                    ; #77850: origin
                    (not_at_a_p8)

                    ; #30917: <==negation-removal== 41209 (pos)
                    (not (not_at_a_p9))

                    ; #50257: <==negation-removal== 77850 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #30917: origin
                    (not_at_a_p9)

                    ; #83917: origin
                    (at_a_p1)

                    ; #41209: <==negation-removal== 30917 (pos)
                    (not (at_a_p9))

                    ; #91490: <==negation-removal== 83917 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #30917: origin
                    (not_at_a_p9)

                    ; #56212: origin
                    (at_a_p2)

                    ; #23239: <==negation-removal== 56212 (pos)
                    (not (not_at_a_p2))

                    ; #41209: <==negation-removal== 30917 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #30917: origin
                    (not_at_a_p9)

                    ; #62936: origin
                    (at_a_p3)

                    ; #30990: <==negation-removal== 62936 (pos)
                    (not (not_at_a_p3))

                    ; #41209: <==negation-removal== 30917 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #30917: origin
                    (not_at_a_p9)

                    ; #75941: origin
                    (at_a_p4)

                    ; #36569: <==negation-removal== 75941 (pos)
                    (not (not_at_a_p4))

                    ; #41209: <==negation-removal== 30917 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #30917: origin
                    (not_at_a_p9)

                    ; #85248: origin
                    (at_a_p5)

                    ; #32066: <==negation-removal== 85248 (pos)
                    (not (not_at_a_p5))

                    ; #41209: <==negation-removal== 30917 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #30917: origin
                    (not_at_a_p9)

                    ; #56903: origin
                    (at_a_p6)

                    ; #41209: <==negation-removal== 30917 (pos)
                    (not (at_a_p9))

                    ; #56055: <==negation-removal== 56903 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #23588: origin
                    (at_a_p7)

                    ; #30917: origin
                    (not_at_a_p9)

                    ; #26021: <==negation-removal== 23588 (pos)
                    (not (not_at_a_p7))

                    ; #41209: <==negation-removal== 30917 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #30917: origin
                    (not_at_a_p9)

                    ; #50257: origin
                    (at_a_p8)

                    ; #41209: <==negation-removal== 30917 (pos)
                    (not (at_a_p9))

                    ; #77850: <==negation-removal== 50257 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #30917: origin
                    (not_at_a_p9)

                    ; #41209: origin
                    (at_a_p9)

                    ; #30917: <==negation-removal== 41209 (pos)
                    (not (not_at_a_p9))

                    ; #41209: <==negation-removal== 30917 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #31401: origin
                    (not_at_b_p1)

                    ; #75667: origin
                    (at_b_p1)

                    ; #31401: <==negation-removal== 75667 (pos)
                    (not (not_at_b_p1))

                    ; #75667: <==negation-removal== 31401 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #31401: origin
                    (not_at_b_p1)

                    ; #45111: origin
                    (at_b_p2)

                    ; #75667: <==negation-removal== 31401 (pos)
                    (not (at_b_p1))

                    ; #91507: <==negation-removal== 45111 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #31401: origin
                    (not_at_b_p1)

                    ; #43744: origin
                    (at_b_p3)

                    ; #66015: <==negation-removal== 43744 (pos)
                    (not (not_at_b_p3))

                    ; #75667: <==negation-removal== 31401 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #11907: origin
                    (at_b_p4)

                    ; #31401: origin
                    (not_at_b_p1)

                    ; #59886: <==negation-removal== 11907 (pos)
                    (not (not_at_b_p4))

                    ; #75667: <==negation-removal== 31401 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #31401: origin
                    (not_at_b_p1)

                    ; #40962: origin
                    (at_b_p5)

                    ; #28192: <==negation-removal== 40962 (pos)
                    (not (not_at_b_p5))

                    ; #75667: <==negation-removal== 31401 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #31401: origin
                    (not_at_b_p1)

                    ; #44631: origin
                    (at_b_p6)

                    ; #10739: <==negation-removal== 44631 (pos)
                    (not (not_at_b_p6))

                    ; #75667: <==negation-removal== 31401 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #18560: origin
                    (at_b_p7)

                    ; #31401: origin
                    (not_at_b_p1)

                    ; #61330: <==negation-removal== 18560 (pos)
                    (not (not_at_b_p7))

                    ; #75667: <==negation-removal== 31401 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #31401: origin
                    (not_at_b_p1)

                    ; #85903: origin
                    (at_b_p8)

                    ; #75667: <==negation-removal== 31401 (pos)
                    (not (at_b_p1))

                    ; #91505: <==negation-removal== 85903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #31401: origin
                    (not_at_b_p1)

                    ; #68496: origin
                    (at_b_p9)

                    ; #74022: <==negation-removal== 68496 (pos)
                    (not (not_at_b_p9))

                    ; #75667: <==negation-removal== 31401 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #75667: origin
                    (at_b_p1)

                    ; #91507: origin
                    (not_at_b_p2)

                    ; #31401: <==negation-removal== 75667 (pos)
                    (not (not_at_b_p1))

                    ; #45111: <==negation-removal== 91507 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #45111: origin
                    (at_b_p2)

                    ; #91507: origin
                    (not_at_b_p2)

                    ; #45111: <==negation-removal== 91507 (pos)
                    (not (at_b_p2))

                    ; #91507: <==negation-removal== 45111 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #43744: origin
                    (at_b_p3)

                    ; #91507: origin
                    (not_at_b_p2)

                    ; #45111: <==negation-removal== 91507 (pos)
                    (not (at_b_p2))

                    ; #66015: <==negation-removal== 43744 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #11907: origin
                    (at_b_p4)

                    ; #91507: origin
                    (not_at_b_p2)

                    ; #45111: <==negation-removal== 91507 (pos)
                    (not (at_b_p2))

                    ; #59886: <==negation-removal== 11907 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #40962: origin
                    (at_b_p5)

                    ; #91507: origin
                    (not_at_b_p2)

                    ; #28192: <==negation-removal== 40962 (pos)
                    (not (not_at_b_p5))

                    ; #45111: <==negation-removal== 91507 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #44631: origin
                    (at_b_p6)

                    ; #91507: origin
                    (not_at_b_p2)

                    ; #10739: <==negation-removal== 44631 (pos)
                    (not (not_at_b_p6))

                    ; #45111: <==negation-removal== 91507 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #18560: origin
                    (at_b_p7)

                    ; #91507: origin
                    (not_at_b_p2)

                    ; #45111: <==negation-removal== 91507 (pos)
                    (not (at_b_p2))

                    ; #61330: <==negation-removal== 18560 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #85903: origin
                    (at_b_p8)

                    ; #91507: origin
                    (not_at_b_p2)

                    ; #45111: <==negation-removal== 91507 (pos)
                    (not (at_b_p2))

                    ; #91505: <==negation-removal== 85903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #68496: origin
                    (at_b_p9)

                    ; #91507: origin
                    (not_at_b_p2)

                    ; #45111: <==negation-removal== 91507 (pos)
                    (not (at_b_p2))

                    ; #74022: <==negation-removal== 68496 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #66015: origin
                    (not_at_b_p3)

                    ; #75667: origin
                    (at_b_p1)

                    ; #31401: <==negation-removal== 75667 (pos)
                    (not (not_at_b_p1))

                    ; #43744: <==negation-removal== 66015 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #45111: origin
                    (at_b_p2)

                    ; #66015: origin
                    (not_at_b_p3)

                    ; #43744: <==negation-removal== 66015 (pos)
                    (not (at_b_p3))

                    ; #91507: <==negation-removal== 45111 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #43744: origin
                    (at_b_p3)

                    ; #66015: origin
                    (not_at_b_p3)

                    ; #43744: <==negation-removal== 66015 (pos)
                    (not (at_b_p3))

                    ; #66015: <==negation-removal== 43744 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #11907: origin
                    (at_b_p4)

                    ; #66015: origin
                    (not_at_b_p3)

                    ; #43744: <==negation-removal== 66015 (pos)
                    (not (at_b_p3))

                    ; #59886: <==negation-removal== 11907 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #40962: origin
                    (at_b_p5)

                    ; #66015: origin
                    (not_at_b_p3)

                    ; #28192: <==negation-removal== 40962 (pos)
                    (not (not_at_b_p5))

                    ; #43744: <==negation-removal== 66015 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #44631: origin
                    (at_b_p6)

                    ; #66015: origin
                    (not_at_b_p3)

                    ; #10739: <==negation-removal== 44631 (pos)
                    (not (not_at_b_p6))

                    ; #43744: <==negation-removal== 66015 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #18560: origin
                    (at_b_p7)

                    ; #66015: origin
                    (not_at_b_p3)

                    ; #43744: <==negation-removal== 66015 (pos)
                    (not (at_b_p3))

                    ; #61330: <==negation-removal== 18560 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #66015: origin
                    (not_at_b_p3)

                    ; #85903: origin
                    (at_b_p8)

                    ; #43744: <==negation-removal== 66015 (pos)
                    (not (at_b_p3))

                    ; #91505: <==negation-removal== 85903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #66015: origin
                    (not_at_b_p3)

                    ; #68496: origin
                    (at_b_p9)

                    ; #43744: <==negation-removal== 66015 (pos)
                    (not (at_b_p3))

                    ; #74022: <==negation-removal== 68496 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #59886: origin
                    (not_at_b_p4)

                    ; #75667: origin
                    (at_b_p1)

                    ; #11907: <==negation-removal== 59886 (pos)
                    (not (at_b_p4))

                    ; #31401: <==negation-removal== 75667 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #45111: origin
                    (at_b_p2)

                    ; #59886: origin
                    (not_at_b_p4)

                    ; #11907: <==negation-removal== 59886 (pos)
                    (not (at_b_p4))

                    ; #91507: <==negation-removal== 45111 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #43744: origin
                    (at_b_p3)

                    ; #59886: origin
                    (not_at_b_p4)

                    ; #11907: <==negation-removal== 59886 (pos)
                    (not (at_b_p4))

                    ; #66015: <==negation-removal== 43744 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #11907: origin
                    (at_b_p4)

                    ; #59886: origin
                    (not_at_b_p4)

                    ; #11907: <==negation-removal== 59886 (pos)
                    (not (at_b_p4))

                    ; #59886: <==negation-removal== 11907 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #40962: origin
                    (at_b_p5)

                    ; #59886: origin
                    (not_at_b_p4)

                    ; #11907: <==negation-removal== 59886 (pos)
                    (not (at_b_p4))

                    ; #28192: <==negation-removal== 40962 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #44631: origin
                    (at_b_p6)

                    ; #59886: origin
                    (not_at_b_p4)

                    ; #10739: <==negation-removal== 44631 (pos)
                    (not (not_at_b_p6))

                    ; #11907: <==negation-removal== 59886 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #18560: origin
                    (at_b_p7)

                    ; #59886: origin
                    (not_at_b_p4)

                    ; #11907: <==negation-removal== 59886 (pos)
                    (not (at_b_p4))

                    ; #61330: <==negation-removal== 18560 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #59886: origin
                    (not_at_b_p4)

                    ; #85903: origin
                    (at_b_p8)

                    ; #11907: <==negation-removal== 59886 (pos)
                    (not (at_b_p4))

                    ; #91505: <==negation-removal== 85903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #59886: origin
                    (not_at_b_p4)

                    ; #68496: origin
                    (at_b_p9)

                    ; #11907: <==negation-removal== 59886 (pos)
                    (not (at_b_p4))

                    ; #74022: <==negation-removal== 68496 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #28192: origin
                    (not_at_b_p5)

                    ; #75667: origin
                    (at_b_p1)

                    ; #31401: <==negation-removal== 75667 (pos)
                    (not (not_at_b_p1))

                    ; #40962: <==negation-removal== 28192 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #28192: origin
                    (not_at_b_p5)

                    ; #45111: origin
                    (at_b_p2)

                    ; #40962: <==negation-removal== 28192 (pos)
                    (not (at_b_p5))

                    ; #91507: <==negation-removal== 45111 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #28192: origin
                    (not_at_b_p5)

                    ; #43744: origin
                    (at_b_p3)

                    ; #40962: <==negation-removal== 28192 (pos)
                    (not (at_b_p5))

                    ; #66015: <==negation-removal== 43744 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #11907: origin
                    (at_b_p4)

                    ; #28192: origin
                    (not_at_b_p5)

                    ; #40962: <==negation-removal== 28192 (pos)
                    (not (at_b_p5))

                    ; #59886: <==negation-removal== 11907 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #28192: origin
                    (not_at_b_p5)

                    ; #40962: origin
                    (at_b_p5)

                    ; #28192: <==negation-removal== 40962 (pos)
                    (not (not_at_b_p5))

                    ; #40962: <==negation-removal== 28192 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #28192: origin
                    (not_at_b_p5)

                    ; #44631: origin
                    (at_b_p6)

                    ; #10739: <==negation-removal== 44631 (pos)
                    (not (not_at_b_p6))

                    ; #40962: <==negation-removal== 28192 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #18560: origin
                    (at_b_p7)

                    ; #28192: origin
                    (not_at_b_p5)

                    ; #40962: <==negation-removal== 28192 (pos)
                    (not (at_b_p5))

                    ; #61330: <==negation-removal== 18560 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #28192: origin
                    (not_at_b_p5)

                    ; #85903: origin
                    (at_b_p8)

                    ; #40962: <==negation-removal== 28192 (pos)
                    (not (at_b_p5))

                    ; #91505: <==negation-removal== 85903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #28192: origin
                    (not_at_b_p5)

                    ; #68496: origin
                    (at_b_p9)

                    ; #40962: <==negation-removal== 28192 (pos)
                    (not (at_b_p5))

                    ; #74022: <==negation-removal== 68496 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #10739: origin
                    (not_at_b_p6)

                    ; #75667: origin
                    (at_b_p1)

                    ; #31401: <==negation-removal== 75667 (pos)
                    (not (not_at_b_p1))

                    ; #44631: <==negation-removal== 10739 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #10739: origin
                    (not_at_b_p6)

                    ; #45111: origin
                    (at_b_p2)

                    ; #44631: <==negation-removal== 10739 (pos)
                    (not (at_b_p6))

                    ; #91507: <==negation-removal== 45111 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #10739: origin
                    (not_at_b_p6)

                    ; #43744: origin
                    (at_b_p3)

                    ; #44631: <==negation-removal== 10739 (pos)
                    (not (at_b_p6))

                    ; #66015: <==negation-removal== 43744 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #10739: origin
                    (not_at_b_p6)

                    ; #11907: origin
                    (at_b_p4)

                    ; #44631: <==negation-removal== 10739 (pos)
                    (not (at_b_p6))

                    ; #59886: <==negation-removal== 11907 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #10739: origin
                    (not_at_b_p6)

                    ; #40962: origin
                    (at_b_p5)

                    ; #28192: <==negation-removal== 40962 (pos)
                    (not (not_at_b_p5))

                    ; #44631: <==negation-removal== 10739 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #10739: origin
                    (not_at_b_p6)

                    ; #44631: origin
                    (at_b_p6)

                    ; #10739: <==negation-removal== 44631 (pos)
                    (not (not_at_b_p6))

                    ; #44631: <==negation-removal== 10739 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #10739: origin
                    (not_at_b_p6)

                    ; #18560: origin
                    (at_b_p7)

                    ; #44631: <==negation-removal== 10739 (pos)
                    (not (at_b_p6))

                    ; #61330: <==negation-removal== 18560 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #10739: origin
                    (not_at_b_p6)

                    ; #85903: origin
                    (at_b_p8)

                    ; #44631: <==negation-removal== 10739 (pos)
                    (not (at_b_p6))

                    ; #91505: <==negation-removal== 85903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #10739: origin
                    (not_at_b_p6)

                    ; #68496: origin
                    (at_b_p9)

                    ; #44631: <==negation-removal== 10739 (pos)
                    (not (at_b_p6))

                    ; #74022: <==negation-removal== 68496 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #61330: origin
                    (not_at_b_p7)

                    ; #75667: origin
                    (at_b_p1)

                    ; #18560: <==negation-removal== 61330 (pos)
                    (not (at_b_p7))

                    ; #31401: <==negation-removal== 75667 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #45111: origin
                    (at_b_p2)

                    ; #61330: origin
                    (not_at_b_p7)

                    ; #18560: <==negation-removal== 61330 (pos)
                    (not (at_b_p7))

                    ; #91507: <==negation-removal== 45111 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #43744: origin
                    (at_b_p3)

                    ; #61330: origin
                    (not_at_b_p7)

                    ; #18560: <==negation-removal== 61330 (pos)
                    (not (at_b_p7))

                    ; #66015: <==negation-removal== 43744 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #11907: origin
                    (at_b_p4)

                    ; #61330: origin
                    (not_at_b_p7)

                    ; #18560: <==negation-removal== 61330 (pos)
                    (not (at_b_p7))

                    ; #59886: <==negation-removal== 11907 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #40962: origin
                    (at_b_p5)

                    ; #61330: origin
                    (not_at_b_p7)

                    ; #18560: <==negation-removal== 61330 (pos)
                    (not (at_b_p7))

                    ; #28192: <==negation-removal== 40962 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #44631: origin
                    (at_b_p6)

                    ; #61330: origin
                    (not_at_b_p7)

                    ; #10739: <==negation-removal== 44631 (pos)
                    (not (not_at_b_p6))

                    ; #18560: <==negation-removal== 61330 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #18560: origin
                    (at_b_p7)

                    ; #61330: origin
                    (not_at_b_p7)

                    ; #18560: <==negation-removal== 61330 (pos)
                    (not (at_b_p7))

                    ; #61330: <==negation-removal== 18560 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #61330: origin
                    (not_at_b_p7)

                    ; #85903: origin
                    (at_b_p8)

                    ; #18560: <==negation-removal== 61330 (pos)
                    (not (at_b_p7))

                    ; #91505: <==negation-removal== 85903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #61330: origin
                    (not_at_b_p7)

                    ; #68496: origin
                    (at_b_p9)

                    ; #18560: <==negation-removal== 61330 (pos)
                    (not (at_b_p7))

                    ; #74022: <==negation-removal== 68496 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #75667: origin
                    (at_b_p1)

                    ; #91505: origin
                    (not_at_b_p8)

                    ; #31401: <==negation-removal== 75667 (pos)
                    (not (not_at_b_p1))

                    ; #85903: <==negation-removal== 91505 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #45111: origin
                    (at_b_p2)

                    ; #91505: origin
                    (not_at_b_p8)

                    ; #85903: <==negation-removal== 91505 (pos)
                    (not (at_b_p8))

                    ; #91507: <==negation-removal== 45111 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #43744: origin
                    (at_b_p3)

                    ; #91505: origin
                    (not_at_b_p8)

                    ; #66015: <==negation-removal== 43744 (pos)
                    (not (not_at_b_p3))

                    ; #85903: <==negation-removal== 91505 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #11907: origin
                    (at_b_p4)

                    ; #91505: origin
                    (not_at_b_p8)

                    ; #59886: <==negation-removal== 11907 (pos)
                    (not (not_at_b_p4))

                    ; #85903: <==negation-removal== 91505 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #40962: origin
                    (at_b_p5)

                    ; #91505: origin
                    (not_at_b_p8)

                    ; #28192: <==negation-removal== 40962 (pos)
                    (not (not_at_b_p5))

                    ; #85903: <==negation-removal== 91505 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #44631: origin
                    (at_b_p6)

                    ; #91505: origin
                    (not_at_b_p8)

                    ; #10739: <==negation-removal== 44631 (pos)
                    (not (not_at_b_p6))

                    ; #85903: <==negation-removal== 91505 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #18560: origin
                    (at_b_p7)

                    ; #91505: origin
                    (not_at_b_p8)

                    ; #61330: <==negation-removal== 18560 (pos)
                    (not (not_at_b_p7))

                    ; #85903: <==negation-removal== 91505 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #85903: origin
                    (at_b_p8)

                    ; #91505: origin
                    (not_at_b_p8)

                    ; #85903: <==negation-removal== 91505 (pos)
                    (not (at_b_p8))

                    ; #91505: <==negation-removal== 85903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #68496: origin
                    (at_b_p9)

                    ; #91505: origin
                    (not_at_b_p8)

                    ; #74022: <==negation-removal== 68496 (pos)
                    (not (not_at_b_p9))

                    ; #85903: <==negation-removal== 91505 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #74022: origin
                    (not_at_b_p9)

                    ; #75667: origin
                    (at_b_p1)

                    ; #31401: <==negation-removal== 75667 (pos)
                    (not (not_at_b_p1))

                    ; #68496: <==negation-removal== 74022 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #45111: origin
                    (at_b_p2)

                    ; #74022: origin
                    (not_at_b_p9)

                    ; #68496: <==negation-removal== 74022 (pos)
                    (not (at_b_p9))

                    ; #91507: <==negation-removal== 45111 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #43744: origin
                    (at_b_p3)

                    ; #74022: origin
                    (not_at_b_p9)

                    ; #66015: <==negation-removal== 43744 (pos)
                    (not (not_at_b_p3))

                    ; #68496: <==negation-removal== 74022 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #11907: origin
                    (at_b_p4)

                    ; #74022: origin
                    (not_at_b_p9)

                    ; #59886: <==negation-removal== 11907 (pos)
                    (not (not_at_b_p4))

                    ; #68496: <==negation-removal== 74022 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #40962: origin
                    (at_b_p5)

                    ; #74022: origin
                    (not_at_b_p9)

                    ; #28192: <==negation-removal== 40962 (pos)
                    (not (not_at_b_p5))

                    ; #68496: <==negation-removal== 74022 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #44631: origin
                    (at_b_p6)

                    ; #74022: origin
                    (not_at_b_p9)

                    ; #10739: <==negation-removal== 44631 (pos)
                    (not (not_at_b_p6))

                    ; #68496: <==negation-removal== 74022 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #18560: origin
                    (at_b_p7)

                    ; #74022: origin
                    (not_at_b_p9)

                    ; #61330: <==negation-removal== 18560 (pos)
                    (not (not_at_b_p7))

                    ; #68496: <==negation-removal== 74022 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #74022: origin
                    (not_at_b_p9)

                    ; #85903: origin
                    (at_b_p8)

                    ; #68496: <==negation-removal== 74022 (pos)
                    (not (at_b_p9))

                    ; #91505: <==negation-removal== 85903 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #68496: origin
                    (at_b_p9)

                    ; #74022: origin
                    (not_at_b_p9)

                    ; #68496: <==negation-removal== 74022 (pos)
                    (not (at_b_p9))

                    ; #74022: <==negation-removal== 68496 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #73186: origin
                    (at_c_p1)

                    ; #74392: origin
                    (not_at_c_p1)

                    ; #73186: <==negation-removal== 74392 (pos)
                    (not (at_c_p1))

                    ; #74392: <==negation-removal== 73186 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #74392: origin
                    (not_at_c_p1)

                    ; #91881: origin
                    (at_c_p2)

                    ; #69620: <==negation-removal== 91881 (pos)
                    (not (not_at_c_p2))

                    ; #73186: <==negation-removal== 74392 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #69278: origin
                    (at_c_p3)

                    ; #74392: origin
                    (not_at_c_p1)

                    ; #36917: <==negation-removal== 69278 (pos)
                    (not (not_at_c_p3))

                    ; #73186: <==negation-removal== 74392 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #66270: origin
                    (at_c_p4)

                    ; #74392: origin
                    (not_at_c_p1)

                    ; #43697: <==negation-removal== 66270 (pos)
                    (not (not_at_c_p4))

                    ; #73186: <==negation-removal== 74392 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #70629: origin
                    (at_c_p5)

                    ; #74392: origin
                    (not_at_c_p1)

                    ; #53501: <==negation-removal== 70629 (pos)
                    (not (not_at_c_p5))

                    ; #73186: <==negation-removal== 74392 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #49770: origin
                    (at_c_p6)

                    ; #74392: origin
                    (not_at_c_p1)

                    ; #73186: <==negation-removal== 74392 (pos)
                    (not (at_c_p1))

                    ; #74745: <==negation-removal== 49770 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #14925: origin
                    (at_c_p7)

                    ; #74392: origin
                    (not_at_c_p1)

                    ; #41444: <==negation-removal== 14925 (pos)
                    (not (not_at_c_p7))

                    ; #73186: <==negation-removal== 74392 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #72732: origin
                    (at_c_p8)

                    ; #74392: origin
                    (not_at_c_p1)

                    ; #35098: <==negation-removal== 72732 (pos)
                    (not (not_at_c_p8))

                    ; #73186: <==negation-removal== 74392 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #48443: origin
                    (at_c_p9)

                    ; #74392: origin
                    (not_at_c_p1)

                    ; #23957: <==negation-removal== 48443 (pos)
                    (not (not_at_c_p9))

                    ; #73186: <==negation-removal== 74392 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #69620: origin
                    (not_at_c_p2)

                    ; #73186: origin
                    (at_c_p1)

                    ; #74392: <==negation-removal== 73186 (pos)
                    (not (not_at_c_p1))

                    ; #91881: <==negation-removal== 69620 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #69620: origin
                    (not_at_c_p2)

                    ; #91881: origin
                    (at_c_p2)

                    ; #69620: <==negation-removal== 91881 (pos)
                    (not (not_at_c_p2))

                    ; #91881: <==negation-removal== 69620 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #69278: origin
                    (at_c_p3)

                    ; #69620: origin
                    (not_at_c_p2)

                    ; #36917: <==negation-removal== 69278 (pos)
                    (not (not_at_c_p3))

                    ; #91881: <==negation-removal== 69620 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #66270: origin
                    (at_c_p4)

                    ; #69620: origin
                    (not_at_c_p2)

                    ; #43697: <==negation-removal== 66270 (pos)
                    (not (not_at_c_p4))

                    ; #91881: <==negation-removal== 69620 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #69620: origin
                    (not_at_c_p2)

                    ; #70629: origin
                    (at_c_p5)

                    ; #53501: <==negation-removal== 70629 (pos)
                    (not (not_at_c_p5))

                    ; #91881: <==negation-removal== 69620 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #49770: origin
                    (at_c_p6)

                    ; #69620: origin
                    (not_at_c_p2)

                    ; #74745: <==negation-removal== 49770 (pos)
                    (not (not_at_c_p6))

                    ; #91881: <==negation-removal== 69620 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #14925: origin
                    (at_c_p7)

                    ; #69620: origin
                    (not_at_c_p2)

                    ; #41444: <==negation-removal== 14925 (pos)
                    (not (not_at_c_p7))

                    ; #91881: <==negation-removal== 69620 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #69620: origin
                    (not_at_c_p2)

                    ; #72732: origin
                    (at_c_p8)

                    ; #35098: <==negation-removal== 72732 (pos)
                    (not (not_at_c_p8))

                    ; #91881: <==negation-removal== 69620 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #48443: origin
                    (at_c_p9)

                    ; #69620: origin
                    (not_at_c_p2)

                    ; #23957: <==negation-removal== 48443 (pos)
                    (not (not_at_c_p9))

                    ; #91881: <==negation-removal== 69620 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #36917: origin
                    (not_at_c_p3)

                    ; #73186: origin
                    (at_c_p1)

                    ; #69278: <==negation-removal== 36917 (pos)
                    (not (at_c_p3))

                    ; #74392: <==negation-removal== 73186 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #36917: origin
                    (not_at_c_p3)

                    ; #91881: origin
                    (at_c_p2)

                    ; #69278: <==negation-removal== 36917 (pos)
                    (not (at_c_p3))

                    ; #69620: <==negation-removal== 91881 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #36917: origin
                    (not_at_c_p3)

                    ; #69278: origin
                    (at_c_p3)

                    ; #36917: <==negation-removal== 69278 (pos)
                    (not (not_at_c_p3))

                    ; #69278: <==negation-removal== 36917 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #36917: origin
                    (not_at_c_p3)

                    ; #66270: origin
                    (at_c_p4)

                    ; #43697: <==negation-removal== 66270 (pos)
                    (not (not_at_c_p4))

                    ; #69278: <==negation-removal== 36917 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #36917: origin
                    (not_at_c_p3)

                    ; #70629: origin
                    (at_c_p5)

                    ; #53501: <==negation-removal== 70629 (pos)
                    (not (not_at_c_p5))

                    ; #69278: <==negation-removal== 36917 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #36917: origin
                    (not_at_c_p3)

                    ; #49770: origin
                    (at_c_p6)

                    ; #69278: <==negation-removal== 36917 (pos)
                    (not (at_c_p3))

                    ; #74745: <==negation-removal== 49770 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #14925: origin
                    (at_c_p7)

                    ; #36917: origin
                    (not_at_c_p3)

                    ; #41444: <==negation-removal== 14925 (pos)
                    (not (not_at_c_p7))

                    ; #69278: <==negation-removal== 36917 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #36917: origin
                    (not_at_c_p3)

                    ; #72732: origin
                    (at_c_p8)

                    ; #35098: <==negation-removal== 72732 (pos)
                    (not (not_at_c_p8))

                    ; #69278: <==negation-removal== 36917 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #36917: origin
                    (not_at_c_p3)

                    ; #48443: origin
                    (at_c_p9)

                    ; #23957: <==negation-removal== 48443 (pos)
                    (not (not_at_c_p9))

                    ; #69278: <==negation-removal== 36917 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #43697: origin
                    (not_at_c_p4)

                    ; #73186: origin
                    (at_c_p1)

                    ; #66270: <==negation-removal== 43697 (pos)
                    (not (at_c_p4))

                    ; #74392: <==negation-removal== 73186 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #43697: origin
                    (not_at_c_p4)

                    ; #91881: origin
                    (at_c_p2)

                    ; #66270: <==negation-removal== 43697 (pos)
                    (not (at_c_p4))

                    ; #69620: <==negation-removal== 91881 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #43697: origin
                    (not_at_c_p4)

                    ; #69278: origin
                    (at_c_p3)

                    ; #36917: <==negation-removal== 69278 (pos)
                    (not (not_at_c_p3))

                    ; #66270: <==negation-removal== 43697 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #43697: origin
                    (not_at_c_p4)

                    ; #66270: origin
                    (at_c_p4)

                    ; #43697: <==negation-removal== 66270 (pos)
                    (not (not_at_c_p4))

                    ; #66270: <==negation-removal== 43697 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #43697: origin
                    (not_at_c_p4)

                    ; #70629: origin
                    (at_c_p5)

                    ; #53501: <==negation-removal== 70629 (pos)
                    (not (not_at_c_p5))

                    ; #66270: <==negation-removal== 43697 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #43697: origin
                    (not_at_c_p4)

                    ; #49770: origin
                    (at_c_p6)

                    ; #66270: <==negation-removal== 43697 (pos)
                    (not (at_c_p4))

                    ; #74745: <==negation-removal== 49770 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #14925: origin
                    (at_c_p7)

                    ; #43697: origin
                    (not_at_c_p4)

                    ; #41444: <==negation-removal== 14925 (pos)
                    (not (not_at_c_p7))

                    ; #66270: <==negation-removal== 43697 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #43697: origin
                    (not_at_c_p4)

                    ; #72732: origin
                    (at_c_p8)

                    ; #35098: <==negation-removal== 72732 (pos)
                    (not (not_at_c_p8))

                    ; #66270: <==negation-removal== 43697 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #43697: origin
                    (not_at_c_p4)

                    ; #48443: origin
                    (at_c_p9)

                    ; #23957: <==negation-removal== 48443 (pos)
                    (not (not_at_c_p9))

                    ; #66270: <==negation-removal== 43697 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #53501: origin
                    (not_at_c_p5)

                    ; #73186: origin
                    (at_c_p1)

                    ; #70629: <==negation-removal== 53501 (pos)
                    (not (at_c_p5))

                    ; #74392: <==negation-removal== 73186 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #53501: origin
                    (not_at_c_p5)

                    ; #91881: origin
                    (at_c_p2)

                    ; #69620: <==negation-removal== 91881 (pos)
                    (not (not_at_c_p2))

                    ; #70629: <==negation-removal== 53501 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #53501: origin
                    (not_at_c_p5)

                    ; #69278: origin
                    (at_c_p3)

                    ; #36917: <==negation-removal== 69278 (pos)
                    (not (not_at_c_p3))

                    ; #70629: <==negation-removal== 53501 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #53501: origin
                    (not_at_c_p5)

                    ; #66270: origin
                    (at_c_p4)

                    ; #43697: <==negation-removal== 66270 (pos)
                    (not (not_at_c_p4))

                    ; #70629: <==negation-removal== 53501 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #53501: origin
                    (not_at_c_p5)

                    ; #70629: origin
                    (at_c_p5)

                    ; #53501: <==negation-removal== 70629 (pos)
                    (not (not_at_c_p5))

                    ; #70629: <==negation-removal== 53501 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #49770: origin
                    (at_c_p6)

                    ; #53501: origin
                    (not_at_c_p5)

                    ; #70629: <==negation-removal== 53501 (pos)
                    (not (at_c_p5))

                    ; #74745: <==negation-removal== 49770 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #14925: origin
                    (at_c_p7)

                    ; #53501: origin
                    (not_at_c_p5)

                    ; #41444: <==negation-removal== 14925 (pos)
                    (not (not_at_c_p7))

                    ; #70629: <==negation-removal== 53501 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #53501: origin
                    (not_at_c_p5)

                    ; #72732: origin
                    (at_c_p8)

                    ; #35098: <==negation-removal== 72732 (pos)
                    (not (not_at_c_p8))

                    ; #70629: <==negation-removal== 53501 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #48443: origin
                    (at_c_p9)

                    ; #53501: origin
                    (not_at_c_p5)

                    ; #23957: <==negation-removal== 48443 (pos)
                    (not (not_at_c_p9))

                    ; #70629: <==negation-removal== 53501 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #73186: origin
                    (at_c_p1)

                    ; #74745: origin
                    (not_at_c_p6)

                    ; #49770: <==negation-removal== 74745 (pos)
                    (not (at_c_p6))

                    ; #74392: <==negation-removal== 73186 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #74745: origin
                    (not_at_c_p6)

                    ; #91881: origin
                    (at_c_p2)

                    ; #49770: <==negation-removal== 74745 (pos)
                    (not (at_c_p6))

                    ; #69620: <==negation-removal== 91881 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #69278: origin
                    (at_c_p3)

                    ; #74745: origin
                    (not_at_c_p6)

                    ; #36917: <==negation-removal== 69278 (pos)
                    (not (not_at_c_p3))

                    ; #49770: <==negation-removal== 74745 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #66270: origin
                    (at_c_p4)

                    ; #74745: origin
                    (not_at_c_p6)

                    ; #43697: <==negation-removal== 66270 (pos)
                    (not (not_at_c_p4))

                    ; #49770: <==negation-removal== 74745 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #70629: origin
                    (at_c_p5)

                    ; #74745: origin
                    (not_at_c_p6)

                    ; #49770: <==negation-removal== 74745 (pos)
                    (not (at_c_p6))

                    ; #53501: <==negation-removal== 70629 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #49770: origin
                    (at_c_p6)

                    ; #74745: origin
                    (not_at_c_p6)

                    ; #49770: <==negation-removal== 74745 (pos)
                    (not (at_c_p6))

                    ; #74745: <==negation-removal== 49770 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #14925: origin
                    (at_c_p7)

                    ; #74745: origin
                    (not_at_c_p6)

                    ; #41444: <==negation-removal== 14925 (pos)
                    (not (not_at_c_p7))

                    ; #49770: <==negation-removal== 74745 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #72732: origin
                    (at_c_p8)

                    ; #74745: origin
                    (not_at_c_p6)

                    ; #35098: <==negation-removal== 72732 (pos)
                    (not (not_at_c_p8))

                    ; #49770: <==negation-removal== 74745 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #48443: origin
                    (at_c_p9)

                    ; #74745: origin
                    (not_at_c_p6)

                    ; #23957: <==negation-removal== 48443 (pos)
                    (not (not_at_c_p9))

                    ; #49770: <==negation-removal== 74745 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #41444: origin
                    (not_at_c_p7)

                    ; #73186: origin
                    (at_c_p1)

                    ; #14925: <==negation-removal== 41444 (pos)
                    (not (at_c_p7))

                    ; #74392: <==negation-removal== 73186 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #41444: origin
                    (not_at_c_p7)

                    ; #91881: origin
                    (at_c_p2)

                    ; #14925: <==negation-removal== 41444 (pos)
                    (not (at_c_p7))

                    ; #69620: <==negation-removal== 91881 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #41444: origin
                    (not_at_c_p7)

                    ; #69278: origin
                    (at_c_p3)

                    ; #14925: <==negation-removal== 41444 (pos)
                    (not (at_c_p7))

                    ; #36917: <==negation-removal== 69278 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #41444: origin
                    (not_at_c_p7)

                    ; #66270: origin
                    (at_c_p4)

                    ; #14925: <==negation-removal== 41444 (pos)
                    (not (at_c_p7))

                    ; #43697: <==negation-removal== 66270 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #41444: origin
                    (not_at_c_p7)

                    ; #70629: origin
                    (at_c_p5)

                    ; #14925: <==negation-removal== 41444 (pos)
                    (not (at_c_p7))

                    ; #53501: <==negation-removal== 70629 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #41444: origin
                    (not_at_c_p7)

                    ; #49770: origin
                    (at_c_p6)

                    ; #14925: <==negation-removal== 41444 (pos)
                    (not (at_c_p7))

                    ; #74745: <==negation-removal== 49770 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #14925: origin
                    (at_c_p7)

                    ; #41444: origin
                    (not_at_c_p7)

                    ; #14925: <==negation-removal== 41444 (pos)
                    (not (at_c_p7))

                    ; #41444: <==negation-removal== 14925 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #41444: origin
                    (not_at_c_p7)

                    ; #72732: origin
                    (at_c_p8)

                    ; #14925: <==negation-removal== 41444 (pos)
                    (not (at_c_p7))

                    ; #35098: <==negation-removal== 72732 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #41444: origin
                    (not_at_c_p7)

                    ; #48443: origin
                    (at_c_p9)

                    ; #14925: <==negation-removal== 41444 (pos)
                    (not (at_c_p7))

                    ; #23957: <==negation-removal== 48443 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #35098: origin
                    (not_at_c_p8)

                    ; #73186: origin
                    (at_c_p1)

                    ; #72732: <==negation-removal== 35098 (pos)
                    (not (at_c_p8))

                    ; #74392: <==negation-removal== 73186 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #35098: origin
                    (not_at_c_p8)

                    ; #91881: origin
                    (at_c_p2)

                    ; #69620: <==negation-removal== 91881 (pos)
                    (not (not_at_c_p2))

                    ; #72732: <==negation-removal== 35098 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #35098: origin
                    (not_at_c_p8)

                    ; #69278: origin
                    (at_c_p3)

                    ; #36917: <==negation-removal== 69278 (pos)
                    (not (not_at_c_p3))

                    ; #72732: <==negation-removal== 35098 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #35098: origin
                    (not_at_c_p8)

                    ; #66270: origin
                    (at_c_p4)

                    ; #43697: <==negation-removal== 66270 (pos)
                    (not (not_at_c_p4))

                    ; #72732: <==negation-removal== 35098 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #35098: origin
                    (not_at_c_p8)

                    ; #70629: origin
                    (at_c_p5)

                    ; #53501: <==negation-removal== 70629 (pos)
                    (not (not_at_c_p5))

                    ; #72732: <==negation-removal== 35098 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #35098: origin
                    (not_at_c_p8)

                    ; #49770: origin
                    (at_c_p6)

                    ; #72732: <==negation-removal== 35098 (pos)
                    (not (at_c_p8))

                    ; #74745: <==negation-removal== 49770 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #14925: origin
                    (at_c_p7)

                    ; #35098: origin
                    (not_at_c_p8)

                    ; #41444: <==negation-removal== 14925 (pos)
                    (not (not_at_c_p7))

                    ; #72732: <==negation-removal== 35098 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #35098: origin
                    (not_at_c_p8)

                    ; #72732: origin
                    (at_c_p8)

                    ; #35098: <==negation-removal== 72732 (pos)
                    (not (not_at_c_p8))

                    ; #72732: <==negation-removal== 35098 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #35098: origin
                    (not_at_c_p8)

                    ; #48443: origin
                    (at_c_p9)

                    ; #23957: <==negation-removal== 48443 (pos)
                    (not (not_at_c_p9))

                    ; #72732: <==negation-removal== 35098 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #23957: origin
                    (not_at_c_p9)

                    ; #73186: origin
                    (at_c_p1)

                    ; #48443: <==negation-removal== 23957 (pos)
                    (not (at_c_p9))

                    ; #74392: <==negation-removal== 73186 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #23957: origin
                    (not_at_c_p9)

                    ; #91881: origin
                    (at_c_p2)

                    ; #48443: <==negation-removal== 23957 (pos)
                    (not (at_c_p9))

                    ; #69620: <==negation-removal== 91881 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #23957: origin
                    (not_at_c_p9)

                    ; #69278: origin
                    (at_c_p3)

                    ; #36917: <==negation-removal== 69278 (pos)
                    (not (not_at_c_p3))

                    ; #48443: <==negation-removal== 23957 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #23957: origin
                    (not_at_c_p9)

                    ; #66270: origin
                    (at_c_p4)

                    ; #43697: <==negation-removal== 66270 (pos)
                    (not (not_at_c_p4))

                    ; #48443: <==negation-removal== 23957 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #23957: origin
                    (not_at_c_p9)

                    ; #70629: origin
                    (at_c_p5)

                    ; #48443: <==negation-removal== 23957 (pos)
                    (not (at_c_p9))

                    ; #53501: <==negation-removal== 70629 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #23957: origin
                    (not_at_c_p9)

                    ; #49770: origin
                    (at_c_p6)

                    ; #48443: <==negation-removal== 23957 (pos)
                    (not (at_c_p9))

                    ; #74745: <==negation-removal== 49770 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #14925: origin
                    (at_c_p7)

                    ; #23957: origin
                    (not_at_c_p9)

                    ; #41444: <==negation-removal== 14925 (pos)
                    (not (not_at_c_p7))

                    ; #48443: <==negation-removal== 23957 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #23957: origin
                    (not_at_c_p9)

                    ; #72732: origin
                    (at_c_p8)

                    ; #35098: <==negation-removal== 72732 (pos)
                    (not (not_at_c_p8))

                    ; #48443: <==negation-removal== 23957 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #23957: origin
                    (not_at_c_p9)

                    ; #48443: origin
                    (at_c_p9)

                    ; #23957: <==negation-removal== 48443 (pos)
                    (not (not_at_c_p9))

                    ; #48443: <==negation-removal== 23957 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17412: <==commonly_known== 32174 (neg)
                    (Pc_checked_p1)

                    ; #19142: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #21726: <==commonly_known== 66467 (pos)
                    (Ba_checked_p1)

                    ; #35581: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #51731: <==commonly_known== 66467 (pos)
                    (Bc_checked_p1)

                    ; #53509: <==commonly_known== 32174 (neg)
                    (Pa_checked_p1)

                    ; #57473: <==closure== 19142 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #58710: <==closure== 35581 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #66467: origin
                    (checked_p1)

                    ; #66831: <==commonly_known== 32174 (neg)
                    (Pb_checked_p1)

                    ; #82660: <==commonly_known== 66467 (pos)
                    (Bb_checked_p1)

                    ; #12363: <==uncertain_firing== 57473 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #16217: <==uncertain_firing== 35581 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #18840: <==negation-removal== 19142 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #26134: <==negation-removal== 35581 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #29727: <==negation-removal== 57473 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #32174: <==negation-removal== 66467 (pos)
                    (not (not_checked_p1))

                    ; #40648: <==negation-removal== 66831 (pos)
                    (not (Bb_not_checked_p1))

                    ; #42596: <==negation-removal== 51731 (pos)
                    (not (Pc_not_checked_p1))

                    ; #51817: <==negation-removal== 58710 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #54734: <==negation-removal== 53509 (pos)
                    (not (Ba_not_checked_p1))

                    ; #58667: <==uncertain_firing== 58710 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #63890: <==negation-removal== 17412 (pos)
                    (not (Bc_not_checked_p1))

                    ; #73606: <==negation-removal== 21726 (pos)
                    (not (Pa_not_checked_p1))

                    ; #75885: <==uncertain_firing== 19142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #84518: <==negation-removal== 82660 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16425: <==closure== 18478 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #18478: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #38758: <==commonly_known== 20109 (neg)
                    (Pa_checked_p2)

                    ; #47832: <==commonly_known== 82102 (pos)
                    (Ba_checked_p2)

                    ; #58635: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #62859: <==commonly_known== 82102 (pos)
                    (Bc_checked_p2)

                    ; #71228: <==commonly_known== 20109 (neg)
                    (Pb_checked_p2)

                    ; #74490: <==commonly_known== 20109 (neg)
                    (Pc_checked_p2)

                    ; #74649: <==closure== 58635 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #75183: <==commonly_known== 82102 (pos)
                    (Bb_checked_p2)

                    ; #82102: origin
                    (checked_p2)

                    ; #13280: <==negation-removal== 62859 (pos)
                    (not (Pc_not_checked_p2))

                    ; #17400: <==negation-removal== 71228 (pos)
                    (not (Bb_not_checked_p2))

                    ; #19188: <==negation-removal== 47832 (pos)
                    (not (Pa_not_checked_p2))

                    ; #20109: <==negation-removal== 82102 (pos)
                    (not (not_checked_p2))

                    ; #27609: <==negation-removal== 16425 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #43160: <==negation-removal== 18478 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #47458: <==uncertain_firing== 16425 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #47866: <==negation-removal== 75183 (pos)
                    (not (Pb_not_checked_p2))

                    ; #65874: <==uncertain_firing== 58635 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #69567: <==negation-removal== 74649 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #71141: <==negation-removal== 74490 (pos)
                    (not (Bc_not_checked_p2))

                    ; #78763: <==negation-removal== 38758 (pos)
                    (not (Ba_not_checked_p2))

                    ; #84327: <==negation-removal== 58635 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #87994: <==uncertain_firing== 18478 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #89189: <==uncertain_firing== 74649 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14265: origin
                    (checked_p3)

                    ; #35565: <==commonly_known== 34525 (neg)
                    (Pb_checked_p3)

                    ; #43786: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #48560: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #49279: <==commonly_known== 14265 (pos)
                    (Ba_checked_p3)

                    ; #52965: <==closure== 43786 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #59629: <==closure== 48560 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #69955: <==commonly_known== 14265 (pos)
                    (Bc_checked_p3)

                    ; #74027: <==commonly_known== 34525 (neg)
                    (Pc_checked_p3)

                    ; #83603: <==commonly_known== 14265 (pos)
                    (Bb_checked_p3)

                    ; #85817: <==commonly_known== 34525 (neg)
                    (Pa_checked_p3)

                    ; #23291: <==uncertain_firing== 48560 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #34525: <==negation-removal== 14265 (pos)
                    (not (not_checked_p3))

                    ; #36779: <==negation-removal== 85817 (pos)
                    (not (Ba_not_checked_p3))

                    ; #47320: <==negation-removal== 74027 (pos)
                    (not (Bc_not_checked_p3))

                    ; #52450: <==uncertain_firing== 59629 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #57489: <==negation-removal== 43786 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #60406: <==negation-removal== 49279 (pos)
                    (not (Pa_not_checked_p3))

                    ; #62350: <==uncertain_firing== 43786 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #66789: <==negation-removal== 59629 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #66900: <==negation-removal== 69955 (pos)
                    (not (Pc_not_checked_p3))

                    ; #68150: <==negation-removal== 35565 (pos)
                    (not (Bb_not_checked_p3))

                    ; #70671: <==negation-removal== 83603 (pos)
                    (not (Pb_not_checked_p3))

                    ; #72319: <==negation-removal== 48560 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #80533: <==negation-removal== 52965 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #82101: <==uncertain_firing== 52965 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11296: <==commonly_known== 88246 (neg)
                    (Pb_checked_p4)

                    ; #16386: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #19191: <==commonly_known== 64898 (pos)
                    (Ba_checked_p4)

                    ; #23726: <==commonly_known== 88246 (neg)
                    (Pc_checked_p4)

                    ; #40557: <==closure== 72356 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #41815: <==commonly_known== 88246 (neg)
                    (Pa_checked_p4)

                    ; #64898: origin
                    (checked_p4)

                    ; #69880: <==closure== 16386 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #72356: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #77560: <==commonly_known== 64898 (pos)
                    (Bb_checked_p4)

                    ; #82326: <==commonly_known== 64898 (pos)
                    (Bc_checked_p4)

                    ; #17085: <==negation-removal== 72356 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #17366: <==negation-removal== 23726 (pos)
                    (not (Bc_not_checked_p4))

                    ; #17764: <==negation-removal== 41815 (pos)
                    (not (Ba_not_checked_p4))

                    ; #20705: <==uncertain_firing== 72356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #21231: <==negation-removal== 11296 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22210: <==uncertain_firing== 16386 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #29212: <==negation-removal== 77560 (pos)
                    (not (Pb_not_checked_p4))

                    ; #33440: <==negation-removal== 82326 (pos)
                    (not (Pc_not_checked_p4))

                    ; #49130: <==uncertain_firing== 40557 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #59117: <==negation-removal== 40557 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #72952: <==negation-removal== 19191 (pos)
                    (not (Pa_not_checked_p4))

                    ; #75961: <==negation-removal== 69880 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #76566: <==uncertain_firing== 69880 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #79753: <==negation-removal== 16386 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #88246: <==negation-removal== 64898 (pos)
                    (not (not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #28471: <==closure== 33133 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #29270: <==commonly_known== 81706 (pos)
                    (Ba_checked_p5)

                    ; #33133: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #33429: <==commonly_known== 84889 (neg)
                    (Pb_checked_p5)

                    ; #43740: <==commonly_known== 84889 (neg)
                    (Pa_checked_p5)

                    ; #45833: <==closure== 50789 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #50789: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #62801: <==commonly_known== 81706 (pos)
                    (Bb_checked_p5)

                    ; #81706: origin
                    (checked_p5)

                    ; #83367: <==commonly_known== 81706 (pos)
                    (Bc_checked_p5)

                    ; #88239: <==commonly_known== 84889 (neg)
                    (Pc_checked_p5)

                    ; #17553: <==negation-removal== 33133 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #22698: <==negation-removal== 33429 (pos)
                    (not (Bb_not_checked_p5))

                    ; #34058: <==uncertain_firing== 45833 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41900: <==uncertain_firing== 50789 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #43163: <==negation-removal== 50789 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #43592: <==negation-removal== 83367 (pos)
                    (not (Pc_not_checked_p5))

                    ; #60276: <==uncertain_firing== 28471 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65763: <==negation-removal== 62801 (pos)
                    (not (Pb_not_checked_p5))

                    ; #73080: <==negation-removal== 88239 (pos)
                    (not (Bc_not_checked_p5))

                    ; #77303: <==negation-removal== 28471 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #77603: <==negation-removal== 43740 (pos)
                    (not (Ba_not_checked_p5))

                    ; #82326: <==negation-removal== 29270 (pos)
                    (not (Pa_not_checked_p5))

                    ; #84889: <==negation-removal== 81706 (pos)
                    (not (not_checked_p5))

                    ; #91397: <==uncertain_firing== 33133 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #93615: <==negation-removal== 45833 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #25434: <==commonly_known== 30883 (pos)
                    (Ba_checked_p6)

                    ; #30883: origin
                    (checked_p6)

                    ; #31369: <==commonly_known== 31849 (neg)
                    (Pb_checked_p6)

                    ; #32279: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #46390: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #51672: <==commonly_known== 30883 (pos)
                    (Bc_checked_p6)

                    ; #55673: <==commonly_known== 31849 (neg)
                    (Pc_checked_p6)

                    ; #58555: <==commonly_known== 30883 (pos)
                    (Bb_checked_p6)

                    ; #59634: <==commonly_known== 31849 (neg)
                    (Pa_checked_p6)

                    ; #66401: <==closure== 32279 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #89358: <==closure== 46390 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #15732: <==negation-removal== 59634 (pos)
                    (not (Ba_not_checked_p6))

                    ; #18584: <==negation-removal== 51672 (pos)
                    (not (Pc_not_checked_p6))

                    ; #20819: <==uncertain_firing== 66401 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #23364: <==negation-removal== 46390 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #24110: <==negation-removal== 58555 (pos)
                    (not (Pb_not_checked_p6))

                    ; #26250: <==negation-removal== 25434 (pos)
                    (not (Pa_not_checked_p6))

                    ; #31849: <==negation-removal== 30883 (pos)
                    (not (not_checked_p6))

                    ; #32951: <==negation-removal== 89358 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #40838: <==uncertain_firing== 32279 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #41813: <==negation-removal== 32279 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #46768: <==negation-removal== 66401 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #61271: <==negation-removal== 55673 (pos)
                    (not (Bc_not_checked_p6))

                    ; #72947: <==uncertain_firing== 89358 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #91040: <==negation-removal== 31369 (pos)
                    (not (Bb_not_checked_p6))

                    ; #96775: <==uncertain_firing== 46390 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #26114: <==commonly_known== 50939 (neg)
                    (Pb_checked_p7)

                    ; #29549: <==commonly_known== 41788 (pos)
                    (Bc_checked_p7)

                    ; #30759: <==commonly_known== 50939 (neg)
                    (Pc_checked_p7)

                    ; #41788: origin
                    (checked_p7)

                    ; #45107: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #50520: <==commonly_known== 50939 (neg)
                    (Pa_checked_p7)

                    ; #52236: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #55354: <==closure== 45107 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #79594: <==closure== 52236 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #85294: <==commonly_known== 41788 (pos)
                    (Ba_checked_p7)

                    ; #91275: <==commonly_known== 41788 (pos)
                    (Bb_checked_p7)

                    ; #10652: <==uncertain_firing== 55354 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #14163: <==negation-removal== 79594 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #21364: <==negation-removal== 91275 (pos)
                    (not (Pb_not_checked_p7))

                    ; #22217: <==negation-removal== 26114 (pos)
                    (not (Bb_not_checked_p7))

                    ; #25205: <==negation-removal== 45107 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #43293: <==uncertain_firing== 52236 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #50939: <==negation-removal== 41788 (pos)
                    (not (not_checked_p7))

                    ; #51648: <==negation-removal== 52236 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #54557: <==uncertain_firing== 79594 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #59887: <==negation-removal== 85294 (pos)
                    (not (Pa_not_checked_p7))

                    ; #62032: <==uncertain_firing== 45107 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #64156: <==negation-removal== 30759 (pos)
                    (not (Bc_not_checked_p7))

                    ; #74281: <==negation-removal== 29549 (pos)
                    (not (Pc_not_checked_p7))

                    ; #81685: <==negation-removal== 50520 (pos)
                    (not (Ba_not_checked_p7))

                    ; #91547: <==negation-removal== 55354 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12367: <==commonly_known== 54795 (pos)
                    (Bc_checked_p8)

                    ; #12460: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #15389: <==commonly_known== 54795 (pos)
                    (Bb_checked_p8)

                    ; #22782: <==commonly_known== 21407 (neg)
                    (Pa_checked_p8)

                    ; #25468: <==commonly_known== 21407 (neg)
                    (Pb_checked_p8)

                    ; #34793: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #54795: origin
                    (checked_p8)

                    ; #54871: <==closure== 34793 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #66940: <==commonly_known== 21407 (neg)
                    (Pc_checked_p8)

                    ; #67532: <==closure== 12460 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #72572: <==commonly_known== 54795 (pos)
                    (Ba_checked_p8)

                    ; #15680: <==negation-removal== 72572 (pos)
                    (not (Pa_not_checked_p8))

                    ; #21407: <==negation-removal== 54795 (pos)
                    (not (not_checked_p8))

                    ; #32841: <==negation-removal== 54871 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #35583: <==uncertain_firing== 12460 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #36862: <==negation-removal== 12460 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #40262: <==uncertain_firing== 67532 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #56517: <==negation-removal== 66940 (pos)
                    (not (Bc_not_checked_p8))

                    ; #63939: <==uncertain_firing== 54871 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #65590: <==negation-removal== 15389 (pos)
                    (not (Pb_not_checked_p8))

                    ; #69421: <==negation-removal== 12367 (pos)
                    (not (Pc_not_checked_p8))

                    ; #75511: <==negation-removal== 67532 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #75527: <==negation-removal== 25468 (pos)
                    (not (Bb_not_checked_p8))

                    ; #77414: <==negation-removal== 22782 (pos)
                    (not (Ba_not_checked_p8))

                    ; #78380: <==negation-removal== 34793 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #80529: <==uncertain_firing== 34793 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13883: origin
                    (checked_p9)

                    ; #17030: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #18030: <==closure== 20980 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #20980: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #21209: <==commonly_known== 43464 (neg)
                    (Pc_checked_p9)

                    ; #31966: <==closure== 17030 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #41306: <==commonly_known== 43464 (neg)
                    (Pb_checked_p9)

                    ; #49637: <==commonly_known== 13883 (pos)
                    (Ba_checked_p9)

                    ; #64153: <==commonly_known== 13883 (pos)
                    (Bb_checked_p9)

                    ; #66874: <==commonly_known== 13883 (pos)
                    (Bc_checked_p9)

                    ; #80918: <==commonly_known== 43464 (neg)
                    (Pa_checked_p9)

                    ; #11554: <==negation-removal== 80918 (pos)
                    (not (Ba_not_checked_p9))

                    ; #13568: <==negation-removal== 41306 (pos)
                    (not (Bb_not_checked_p9))

                    ; #32437: <==negation-removal== 49637 (pos)
                    (not (Pa_not_checked_p9))

                    ; #41948: <==negation-removal== 66874 (pos)
                    (not (Pc_not_checked_p9))

                    ; #43464: <==negation-removal== 13883 (pos)
                    (not (not_checked_p9))

                    ; #46653: <==uncertain_firing== 17030 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #51065: <==negation-removal== 20980 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #53744: <==uncertain_firing== 20980 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #66547: <==uncertain_firing== 31966 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #69785: <==negation-removal== 18030 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #72488: <==negation-removal== 64153 (pos)
                    (not (Pb_not_checked_p9))

                    ; #75195: <==negation-removal== 17030 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #81278: <==negation-removal== 31966 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #88843: <==uncertain_firing== 18030 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #90460: <==negation-removal== 21209 (pos)
                    (not (Bc_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17412: <==commonly_known== 32174 (neg)
                    (Pc_checked_p1)

                    ; #21726: <==commonly_known== 66467 (pos)
                    (Ba_checked_p1)

                    ; #36654: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #44836: <==closure== 79807 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #51731: <==commonly_known== 66467 (pos)
                    (Bc_checked_p1)

                    ; #53509: <==commonly_known== 32174 (neg)
                    (Pa_checked_p1)

                    ; #66467: origin
                    (checked_p1)

                    ; #66831: <==commonly_known== 32174 (neg)
                    (Pb_checked_p1)

                    ; #79807: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #82660: <==commonly_known== 66467 (pos)
                    (Bb_checked_p1)

                    ; #83132: <==closure== 36654 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #12455: <==uncertain_firing== 83132 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #26150: <==uncertain_firing== 44836 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #32174: <==negation-removal== 66467 (pos)
                    (not (not_checked_p1))

                    ; #37556: <==negation-removal== 83132 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #40648: <==negation-removal== 66831 (pos)
                    (not (Bb_not_checked_p1))

                    ; #42596: <==negation-removal== 51731 (pos)
                    (not (Pc_not_checked_p1))

                    ; #47687: <==uncertain_firing== 79807 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #54734: <==negation-removal== 53509 (pos)
                    (not (Ba_not_checked_p1))

                    ; #59754: <==negation-removal== 44836 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #63680: <==uncertain_firing== 36654 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #63890: <==negation-removal== 17412 (pos)
                    (not (Bc_not_checked_p1))

                    ; #69872: <==negation-removal== 79807 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #73606: <==negation-removal== 21726 (pos)
                    (not (Pa_not_checked_p1))

                    ; #84518: <==negation-removal== 82660 (pos)
                    (not (Pb_not_checked_p1))

                    ; #88977: <==negation-removal== 36654 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #18603: <==closure== 24397 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #24397: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #38758: <==commonly_known== 20109 (neg)
                    (Pa_checked_p2)

                    ; #42453: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #46932: <==closure== 42453 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #47832: <==commonly_known== 82102 (pos)
                    (Ba_checked_p2)

                    ; #62859: <==commonly_known== 82102 (pos)
                    (Bc_checked_p2)

                    ; #71228: <==commonly_known== 20109 (neg)
                    (Pb_checked_p2)

                    ; #74490: <==commonly_known== 20109 (neg)
                    (Pc_checked_p2)

                    ; #75183: <==commonly_known== 82102 (pos)
                    (Bb_checked_p2)

                    ; #82102: origin
                    (checked_p2)

                    ; #13280: <==negation-removal== 62859 (pos)
                    (not (Pc_not_checked_p2))

                    ; #17400: <==negation-removal== 71228 (pos)
                    (not (Bb_not_checked_p2))

                    ; #19188: <==negation-removal== 47832 (pos)
                    (not (Pa_not_checked_p2))

                    ; #19675: <==uncertain_firing== 18603 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #20109: <==negation-removal== 82102 (pos)
                    (not (not_checked_p2))

                    ; #37803: <==negation-removal== 24397 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #38312: <==negation-removal== 42453 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #47866: <==negation-removal== 75183 (pos)
                    (not (Pb_not_checked_p2))

                    ; #67918: <==uncertain_firing== 42453 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #71141: <==negation-removal== 74490 (pos)
                    (not (Bc_not_checked_p2))

                    ; #75928: <==negation-removal== 46932 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #78763: <==negation-removal== 38758 (pos)
                    (not (Ba_not_checked_p2))

                    ; #82639: <==uncertain_firing== 46932 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #86106: <==uncertain_firing== 24397 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #88432: <==negation-removal== 18603 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14265: origin
                    (checked_p3)

                    ; #17784: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #23411: <==closure== 27105 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #27105: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #35565: <==commonly_known== 34525 (neg)
                    (Pb_checked_p3)

                    ; #49279: <==commonly_known== 14265 (pos)
                    (Ba_checked_p3)

                    ; #69955: <==commonly_known== 14265 (pos)
                    (Bc_checked_p3)

                    ; #71797: <==closure== 17784 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #74027: <==commonly_known== 34525 (neg)
                    (Pc_checked_p3)

                    ; #83603: <==commonly_known== 14265 (pos)
                    (Bb_checked_p3)

                    ; #85817: <==commonly_known== 34525 (neg)
                    (Pa_checked_p3)

                    ; #10848: <==uncertain_firing== 27105 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #21040: <==negation-removal== 17784 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #24973: <==negation-removal== 71797 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #27131: <==negation-removal== 27105 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #34525: <==negation-removal== 14265 (pos)
                    (not (not_checked_p3))

                    ; #36779: <==negation-removal== 85817 (pos)
                    (not (Ba_not_checked_p3))

                    ; #37373: <==uncertain_firing== 17784 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #40592: <==uncertain_firing== 71797 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #42614: <==negation-removal== 23411 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #47320: <==negation-removal== 74027 (pos)
                    (not (Bc_not_checked_p3))

                    ; #60406: <==negation-removal== 49279 (pos)
                    (not (Pa_not_checked_p3))

                    ; #61291: <==uncertain_firing== 23411 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #66900: <==negation-removal== 69955 (pos)
                    (not (Pc_not_checked_p3))

                    ; #68150: <==negation-removal== 35565 (pos)
                    (not (Bb_not_checked_p3))

                    ; #70671: <==negation-removal== 83603 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11296: <==commonly_known== 88246 (neg)
                    (Pb_checked_p4)

                    ; #19191: <==commonly_known== 64898 (pos)
                    (Ba_checked_p4)

                    ; #23726: <==commonly_known== 88246 (neg)
                    (Pc_checked_p4)

                    ; #27637: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #41815: <==commonly_known== 88246 (neg)
                    (Pa_checked_p4)

                    ; #45315: <==closure== 27637 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #63243: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #64898: origin
                    (checked_p4)

                    ; #77560: <==commonly_known== 64898 (pos)
                    (Bb_checked_p4)

                    ; #81284: <==closure== 63243 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #82326: <==commonly_known== 64898 (pos)
                    (Bc_checked_p4)

                    ; #12532: <==negation-removal== 81284 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #17366: <==negation-removal== 23726 (pos)
                    (not (Bc_not_checked_p4))

                    ; #17764: <==negation-removal== 41815 (pos)
                    (not (Ba_not_checked_p4))

                    ; #21231: <==negation-removal== 11296 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22868: <==uncertain_firing== 81284 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #29212: <==negation-removal== 77560 (pos)
                    (not (Pb_not_checked_p4))

                    ; #29942: <==uncertain_firing== 27637 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #33440: <==negation-removal== 82326 (pos)
                    (not (Pc_not_checked_p4))

                    ; #42348: <==negation-removal== 63243 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #45675: <==negation-removal== 27637 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #49099: <==uncertain_firing== 45315 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #57614: <==uncertain_firing== 63243 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #70821: <==negation-removal== 45315 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #72952: <==negation-removal== 19191 (pos)
                    (not (Pa_not_checked_p4))

                    ; #88246: <==negation-removal== 64898 (pos)
                    (not (not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #19633: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #20697: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #29270: <==commonly_known== 81706 (pos)
                    (Ba_checked_p5)

                    ; #33429: <==commonly_known== 84889 (neg)
                    (Pb_checked_p5)

                    ; #43740: <==commonly_known== 84889 (neg)
                    (Pa_checked_p5)

                    ; #62801: <==commonly_known== 81706 (pos)
                    (Bb_checked_p5)

                    ; #75240: <==closure== 20697 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #81706: origin
                    (checked_p5)

                    ; #83367: <==commonly_known== 81706 (pos)
                    (Bc_checked_p5)

                    ; #88239: <==commonly_known== 84889 (neg)
                    (Pc_checked_p5)

                    ; #89169: <==closure== 19633 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #15475: <==negation-removal== 75240 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #22698: <==negation-removal== 33429 (pos)
                    (not (Bb_not_checked_p5))

                    ; #38103: <==uncertain_firing== 75240 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #43591: <==negation-removal== 19633 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #43592: <==negation-removal== 83367 (pos)
                    (not (Pc_not_checked_p5))

                    ; #65763: <==negation-removal== 62801 (pos)
                    (not (Pb_not_checked_p5))

                    ; #68295: <==negation-removal== 89169 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #73080: <==negation-removal== 88239 (pos)
                    (not (Bc_not_checked_p5))

                    ; #73939: <==negation-removal== 20697 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #77603: <==negation-removal== 43740 (pos)
                    (not (Ba_not_checked_p5))

                    ; #82326: <==negation-removal== 29270 (pos)
                    (not (Pa_not_checked_p5))

                    ; #84889: <==negation-removal== 81706 (pos)
                    (not (not_checked_p5))

                    ; #84915: <==uncertain_firing== 19633 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #89857: <==uncertain_firing== 20697 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #90368: <==uncertain_firing== 89169 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #25434: <==commonly_known== 30883 (pos)
                    (Ba_checked_p6)

                    ; #30883: origin
                    (checked_p6)

                    ; #31369: <==commonly_known== 31849 (neg)
                    (Pb_checked_p6)

                    ; #51672: <==commonly_known== 30883 (pos)
                    (Bc_checked_p6)

                    ; #51819: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #51984: <==closure== 51819 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #52812: <==closure== 75758 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #55673: <==commonly_known== 31849 (neg)
                    (Pc_checked_p6)

                    ; #58555: <==commonly_known== 30883 (pos)
                    (Bb_checked_p6)

                    ; #59634: <==commonly_known== 31849 (neg)
                    (Pa_checked_p6)

                    ; #75758: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #13722: <==uncertain_firing== 75758 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #15732: <==negation-removal== 59634 (pos)
                    (not (Ba_not_checked_p6))

                    ; #18584: <==negation-removal== 51672 (pos)
                    (not (Pc_not_checked_p6))

                    ; #24110: <==negation-removal== 58555 (pos)
                    (not (Pb_not_checked_p6))

                    ; #26250: <==negation-removal== 25434 (pos)
                    (not (Pa_not_checked_p6))

                    ; #31849: <==negation-removal== 30883 (pos)
                    (not (not_checked_p6))

                    ; #33594: <==uncertain_firing== 51984 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #41158: <==negation-removal== 51819 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60600: <==negation-removal== 75758 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #61271: <==negation-removal== 55673 (pos)
                    (not (Bc_not_checked_p6))

                    ; #65036: <==negation-removal== 51984 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #80809: <==uncertain_firing== 51819 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #83364: <==uncertain_firing== 52812 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #85312: <==negation-removal== 52812 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #91040: <==negation-removal== 31369 (pos)
                    (not (Bb_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #26114: <==commonly_known== 50939 (neg)
                    (Pb_checked_p7)

                    ; #28974: <==closure== 58663 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #29549: <==commonly_known== 41788 (pos)
                    (Bc_checked_p7)

                    ; #30759: <==commonly_known== 50939 (neg)
                    (Pc_checked_p7)

                    ; #36557: <==closure== 65100 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #41788: origin
                    (checked_p7)

                    ; #50520: <==commonly_known== 50939 (neg)
                    (Pa_checked_p7)

                    ; #58663: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #65100: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #85294: <==commonly_known== 41788 (pos)
                    (Ba_checked_p7)

                    ; #91275: <==commonly_known== 41788 (pos)
                    (Bb_checked_p7)

                    ; #21364: <==negation-removal== 91275 (pos)
                    (not (Pb_not_checked_p7))

                    ; #22217: <==negation-removal== 26114 (pos)
                    (not (Bb_not_checked_p7))

                    ; #24863: <==negation-removal== 65100 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #49867: <==uncertain_firing== 58663 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #50939: <==negation-removal== 41788 (pos)
                    (not (not_checked_p7))

                    ; #57169: <==uncertain_firing== 28974 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59887: <==negation-removal== 85294 (pos)
                    (not (Pa_not_checked_p7))

                    ; #62189: <==negation-removal== 58663 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #64156: <==negation-removal== 30759 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65420: <==uncertain_firing== 36557 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #74281: <==negation-removal== 29549 (pos)
                    (not (Pc_not_checked_p7))

                    ; #80051: <==uncertain_firing== 65100 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #81685: <==negation-removal== 50520 (pos)
                    (not (Ba_not_checked_p7))

                    ; #81687: <==negation-removal== 28974 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #85853: <==negation-removal== 36557 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12367: <==commonly_known== 54795 (pos)
                    (Bc_checked_p8)

                    ; #15389: <==commonly_known== 54795 (pos)
                    (Bb_checked_p8)

                    ; #16018: <==closure== 43693 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #22782: <==commonly_known== 21407 (neg)
                    (Pa_checked_p8)

                    ; #24411: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #25468: <==commonly_known== 21407 (neg)
                    (Pb_checked_p8)

                    ; #43693: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #54795: origin
                    (checked_p8)

                    ; #66319: <==closure== 24411 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #66940: <==commonly_known== 21407 (neg)
                    (Pc_checked_p8)

                    ; #72572: <==commonly_known== 54795 (pos)
                    (Ba_checked_p8)

                    ; #13941: <==negation-removal== 24411 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #15680: <==negation-removal== 72572 (pos)
                    (not (Pa_not_checked_p8))

                    ; #17457: <==negation-removal== 66319 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #21407: <==negation-removal== 54795 (pos)
                    (not (not_checked_p8))

                    ; #28720: <==uncertain_firing== 66319 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56517: <==negation-removal== 66940 (pos)
                    (not (Bc_not_checked_p8))

                    ; #57209: <==uncertain_firing== 16018 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #60543: <==uncertain_firing== 24411 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #65590: <==negation-removal== 15389 (pos)
                    (not (Pb_not_checked_p8))

                    ; #66576: <==negation-removal== 43693 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #68499: <==uncertain_firing== 43693 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #69421: <==negation-removal== 12367 (pos)
                    (not (Pc_not_checked_p8))

                    ; #75527: <==negation-removal== 25468 (pos)
                    (not (Bb_not_checked_p8))

                    ; #77414: <==negation-removal== 22782 (pos)
                    (not (Ba_not_checked_p8))

                    ; #89665: <==negation-removal== 16018 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13883: origin
                    (checked_p9)

                    ; #21209: <==commonly_known== 43464 (neg)
                    (Pc_checked_p9)

                    ; #32243: <==closure== 66796 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #41306: <==commonly_known== 43464 (neg)
                    (Pb_checked_p9)

                    ; #49637: <==commonly_known== 13883 (pos)
                    (Ba_checked_p9)

                    ; #58049: <==closure== 62654 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #62654: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #64153: <==commonly_known== 13883 (pos)
                    (Bb_checked_p9)

                    ; #66796: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #66874: <==commonly_known== 13883 (pos)
                    (Bc_checked_p9)

                    ; #80918: <==commonly_known== 43464 (neg)
                    (Pa_checked_p9)

                    ; #11554: <==negation-removal== 80918 (pos)
                    (not (Ba_not_checked_p9))

                    ; #13568: <==negation-removal== 41306 (pos)
                    (not (Bb_not_checked_p9))

                    ; #25648: <==negation-removal== 66796 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #32437: <==negation-removal== 49637 (pos)
                    (not (Pa_not_checked_p9))

                    ; #32854: <==negation-removal== 62654 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #41948: <==negation-removal== 66874 (pos)
                    (not (Pc_not_checked_p9))

                    ; #43464: <==negation-removal== 13883 (pos)
                    (not (not_checked_p9))

                    ; #46545: <==uncertain_firing== 58049 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #55453: <==negation-removal== 32243 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #68593: <==negation-removal== 58049 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #68891: <==uncertain_firing== 32243 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #71001: <==uncertain_firing== 62654 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #72488: <==negation-removal== 64153 (pos)
                    (not (Pb_not_checked_p9))

                    ; #77977: <==uncertain_firing== 66796 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #90460: <==negation-removal== 21209 (pos)
                    (not (Bc_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17412: <==commonly_known== 32174 (neg)
                    (Pc_checked_p1)

                    ; #21726: <==commonly_known== 66467 (pos)
                    (Ba_checked_p1)

                    ; #28715: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #35692: <==closure== 76676 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #51731: <==commonly_known== 66467 (pos)
                    (Bc_checked_p1)

                    ; #53509: <==commonly_known== 32174 (neg)
                    (Pa_checked_p1)

                    ; #66467: origin
                    (checked_p1)

                    ; #66831: <==commonly_known== 32174 (neg)
                    (Pb_checked_p1)

                    ; #71777: <==closure== 28715 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #76676: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #82660: <==commonly_known== 66467 (pos)
                    (Bb_checked_p1)

                    ; #14537: <==negation-removal== 76676 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #32174: <==negation-removal== 66467 (pos)
                    (not (not_checked_p1))

                    ; #32506: <==uncertain_firing== 28715 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #40648: <==negation-removal== 66831 (pos)
                    (not (Bb_not_checked_p1))

                    ; #42596: <==negation-removal== 51731 (pos)
                    (not (Pc_not_checked_p1))

                    ; #42991: <==negation-removal== 71777 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #54734: <==negation-removal== 53509 (pos)
                    (not (Ba_not_checked_p1))

                    ; #63890: <==negation-removal== 17412 (pos)
                    (not (Bc_not_checked_p1))

                    ; #66485: <==negation-removal== 28715 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #73606: <==negation-removal== 21726 (pos)
                    (not (Pa_not_checked_p1))

                    ; #74800: <==negation-removal== 35692 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #75568: <==uncertain_firing== 71777 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #76266: <==uncertain_firing== 35692 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #81275: <==uncertain_firing== 76676 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #84518: <==negation-removal== 82660 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #28287: <==closure== 82723 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #38758: <==commonly_known== 20109 (neg)
                    (Pa_checked_p2)

                    ; #41834: <==closure== 76804 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #47832: <==commonly_known== 82102 (pos)
                    (Ba_checked_p2)

                    ; #62859: <==commonly_known== 82102 (pos)
                    (Bc_checked_p2)

                    ; #71228: <==commonly_known== 20109 (neg)
                    (Pb_checked_p2)

                    ; #74490: <==commonly_known== 20109 (neg)
                    (Pc_checked_p2)

                    ; #75183: <==commonly_known== 82102 (pos)
                    (Bb_checked_p2)

                    ; #76804: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #82102: origin
                    (checked_p2)

                    ; #82723: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #13280: <==negation-removal== 62859 (pos)
                    (not (Pc_not_checked_p2))

                    ; #13542: <==uncertain_firing== 28287 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #17400: <==negation-removal== 71228 (pos)
                    (not (Bb_not_checked_p2))

                    ; #19188: <==negation-removal== 47832 (pos)
                    (not (Pa_not_checked_p2))

                    ; #20109: <==negation-removal== 82102 (pos)
                    (not (not_checked_p2))

                    ; #20594: <==negation-removal== 28287 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #24267: <==negation-removal== 82723 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #46974: <==uncertain_firing== 76804 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #47866: <==negation-removal== 75183 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54047: <==uncertain_firing== 41834 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #58605: <==negation-removal== 76804 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #59295: <==uncertain_firing== 82723 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #71141: <==negation-removal== 74490 (pos)
                    (not (Bc_not_checked_p2))

                    ; #73844: <==negation-removal== 41834 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #78763: <==negation-removal== 38758 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14265: origin
                    (checked_p3)

                    ; #27891: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #35565: <==commonly_known== 34525 (neg)
                    (Pb_checked_p3)

                    ; #43072: <==closure== 27891 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #49279: <==commonly_known== 14265 (pos)
                    (Ba_checked_p3)

                    ; #51191: <==closure== 61220 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #61220: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #69955: <==commonly_known== 14265 (pos)
                    (Bc_checked_p3)

                    ; #74027: <==commonly_known== 34525 (neg)
                    (Pc_checked_p3)

                    ; #83603: <==commonly_known== 14265 (pos)
                    (Bb_checked_p3)

                    ; #85817: <==commonly_known== 34525 (neg)
                    (Pa_checked_p3)

                    ; #27843: <==negation-removal== 43072 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #34525: <==negation-removal== 14265 (pos)
                    (not (not_checked_p3))

                    ; #34817: <==uncertain_firing== 43072 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #36779: <==negation-removal== 85817 (pos)
                    (not (Ba_not_checked_p3))

                    ; #42482: <==negation-removal== 51191 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #47320: <==negation-removal== 74027 (pos)
                    (not (Bc_not_checked_p3))

                    ; #60406: <==negation-removal== 49279 (pos)
                    (not (Pa_not_checked_p3))

                    ; #66900: <==negation-removal== 69955 (pos)
                    (not (Pc_not_checked_p3))

                    ; #68150: <==negation-removal== 35565 (pos)
                    (not (Bb_not_checked_p3))

                    ; #69271: <==uncertain_firing== 27891 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #70116: <==uncertain_firing== 61220 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #70671: <==negation-removal== 83603 (pos)
                    (not (Pb_not_checked_p3))

                    ; #73299: <==negation-removal== 27891 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #90443: <==negation-removal== 61220 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #93945: <==uncertain_firing== 51191 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11296: <==commonly_known== 88246 (neg)
                    (Pb_checked_p4)

                    ; #14641: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #16781: <==closure== 44613 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #19191: <==commonly_known== 64898 (pos)
                    (Ba_checked_p4)

                    ; #23726: <==commonly_known== 88246 (neg)
                    (Pc_checked_p4)

                    ; #41815: <==commonly_known== 88246 (neg)
                    (Pa_checked_p4)

                    ; #44613: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #64898: origin
                    (checked_p4)

                    ; #77560: <==commonly_known== 64898 (pos)
                    (Bb_checked_p4)

                    ; #82326: <==commonly_known== 64898 (pos)
                    (Bc_checked_p4)

                    ; #83522: <==closure== 14641 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #14984: <==negation-removal== 14641 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #17366: <==negation-removal== 23726 (pos)
                    (not (Bc_not_checked_p4))

                    ; #17764: <==negation-removal== 41815 (pos)
                    (not (Ba_not_checked_p4))

                    ; #21231: <==negation-removal== 11296 (pos)
                    (not (Bb_not_checked_p4))

                    ; #21527: <==uncertain_firing== 83522 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #22463: <==negation-removal== 83522 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #29212: <==negation-removal== 77560 (pos)
                    (not (Pb_not_checked_p4))

                    ; #33440: <==negation-removal== 82326 (pos)
                    (not (Pc_not_checked_p4))

                    ; #35807: <==negation-removal== 16781 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #44339: <==uncertain_firing== 16781 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #51975: <==uncertain_firing== 44613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #54994: <==negation-removal== 44613 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #72952: <==negation-removal== 19191 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77374: <==uncertain_firing== 14641 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #88246: <==negation-removal== 64898 (pos)
                    (not (not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #25469: <==closure== 89085 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #29270: <==commonly_known== 81706 (pos)
                    (Ba_checked_p5)

                    ; #32438: <==closure== 80447 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #33429: <==commonly_known== 84889 (neg)
                    (Pb_checked_p5)

                    ; #43740: <==commonly_known== 84889 (neg)
                    (Pa_checked_p5)

                    ; #62801: <==commonly_known== 81706 (pos)
                    (Bb_checked_p5)

                    ; #80447: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #81706: origin
                    (checked_p5)

                    ; #83367: <==commonly_known== 81706 (pos)
                    (Bc_checked_p5)

                    ; #88239: <==commonly_known== 84889 (neg)
                    (Pc_checked_p5)

                    ; #89085: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #15284: <==negation-removal== 25469 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #18962: <==uncertain_firing== 32438 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #22698: <==negation-removal== 33429 (pos)
                    (not (Bb_not_checked_p5))

                    ; #23146: <==uncertain_firing== 80447 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #35026: <==negation-removal== 32438 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #43592: <==negation-removal== 83367 (pos)
                    (not (Pc_not_checked_p5))

                    ; #52055: <==negation-removal== 89085 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #60309: <==uncertain_firing== 25469 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #65763: <==negation-removal== 62801 (pos)
                    (not (Pb_not_checked_p5))

                    ; #73080: <==negation-removal== 88239 (pos)
                    (not (Bc_not_checked_p5))

                    ; #77603: <==negation-removal== 43740 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81296: <==negation-removal== 80447 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #82326: <==negation-removal== 29270 (pos)
                    (not (Pa_not_checked_p5))

                    ; #84889: <==negation-removal== 81706 (pos)
                    (not (not_checked_p5))

                    ; #85176: <==uncertain_firing== 89085 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #15326: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #25434: <==commonly_known== 30883 (pos)
                    (Ba_checked_p6)

                    ; #30883: origin
                    (checked_p6)

                    ; #31369: <==commonly_known== 31849 (neg)
                    (Pb_checked_p6)

                    ; #48286: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #51672: <==commonly_known== 30883 (pos)
                    (Bc_checked_p6)

                    ; #55673: <==commonly_known== 31849 (neg)
                    (Pc_checked_p6)

                    ; #58555: <==commonly_known== 30883 (pos)
                    (Bb_checked_p6)

                    ; #59634: <==commonly_known== 31849 (neg)
                    (Pa_checked_p6)

                    ; #75575: <==closure== 48286 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #79811: <==closure== 15326 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #15674: <==uncertain_firing== 48286 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #15732: <==negation-removal== 59634 (pos)
                    (not (Ba_not_checked_p6))

                    ; #18584: <==negation-removal== 51672 (pos)
                    (not (Pc_not_checked_p6))

                    ; #24110: <==negation-removal== 58555 (pos)
                    (not (Pb_not_checked_p6))

                    ; #26152: <==negation-removal== 79811 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #26250: <==negation-removal== 25434 (pos)
                    (not (Pa_not_checked_p6))

                    ; #31849: <==negation-removal== 30883 (pos)
                    (not (not_checked_p6))

                    ; #53265: <==uncertain_firing== 79811 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #54462: <==uncertain_firing== 75575 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #61271: <==negation-removal== 55673 (pos)
                    (not (Bc_not_checked_p6))

                    ; #62108: <==negation-removal== 48286 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #78789: <==uncertain_firing== 15326 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #90361: <==negation-removal== 15326 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #91040: <==negation-removal== 31369 (pos)
                    (not (Bb_not_checked_p6))

                    ; #94806: <==negation-removal== 75575 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18465: <==closure== 73251 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #24952: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #26114: <==commonly_known== 50939 (neg)
                    (Pb_checked_p7)

                    ; #29549: <==commonly_known== 41788 (pos)
                    (Bc_checked_p7)

                    ; #30759: <==commonly_known== 50939 (neg)
                    (Pc_checked_p7)

                    ; #38770: <==closure== 24952 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #41788: origin
                    (checked_p7)

                    ; #50520: <==commonly_known== 50939 (neg)
                    (Pa_checked_p7)

                    ; #73251: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #85294: <==commonly_known== 41788 (pos)
                    (Ba_checked_p7)

                    ; #91275: <==commonly_known== 41788 (pos)
                    (Bb_checked_p7)

                    ; #15322: <==negation-removal== 73251 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #16229: <==uncertain_firing== 18465 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #21364: <==negation-removal== 91275 (pos)
                    (not (Pb_not_checked_p7))

                    ; #22217: <==negation-removal== 26114 (pos)
                    (not (Bb_not_checked_p7))

                    ; #40619: <==negation-removal== 38770 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #50939: <==negation-removal== 41788 (pos)
                    (not (not_checked_p7))

                    ; #54241: <==negation-removal== 24952 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #59887: <==negation-removal== 85294 (pos)
                    (not (Pa_not_checked_p7))

                    ; #64156: <==negation-removal== 30759 (pos)
                    (not (Bc_not_checked_p7))

                    ; #74281: <==negation-removal== 29549 (pos)
                    (not (Pc_not_checked_p7))

                    ; #81685: <==negation-removal== 50520 (pos)
                    (not (Ba_not_checked_p7))

                    ; #82506: <==negation-removal== 18465 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #83699: <==uncertain_firing== 73251 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #88179: <==uncertain_firing== 24952 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #88274: <==uncertain_firing== 38770 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12367: <==commonly_known== 54795 (pos)
                    (Bc_checked_p8)

                    ; #15389: <==commonly_known== 54795 (pos)
                    (Bb_checked_p8)

                    ; #22782: <==commonly_known== 21407 (neg)
                    (Pa_checked_p8)

                    ; #25468: <==commonly_known== 21407 (neg)
                    (Pb_checked_p8)

                    ; #27497: <==closure== 81765 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #54795: origin
                    (checked_p8)

                    ; #65920: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #66940: <==commonly_known== 21407 (neg)
                    (Pc_checked_p8)

                    ; #72572: <==commonly_known== 54795 (pos)
                    (Ba_checked_p8)

                    ; #81765: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #88604: <==closure== 65920 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #15680: <==negation-removal== 72572 (pos)
                    (not (Pa_not_checked_p8))

                    ; #19862: <==negation-removal== 81765 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #21407: <==negation-removal== 54795 (pos)
                    (not (not_checked_p8))

                    ; #30113: <==uncertain_firing== 88604 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #46824: <==uncertain_firing== 27497 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #56517: <==negation-removal== 66940 (pos)
                    (not (Bc_not_checked_p8))

                    ; #60269: <==negation-removal== 65920 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60270: <==negation-removal== 27497 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #60664: <==uncertain_firing== 81765 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #65590: <==negation-removal== 15389 (pos)
                    (not (Pb_not_checked_p8))

                    ; #69421: <==negation-removal== 12367 (pos)
                    (not (Pc_not_checked_p8))

                    ; #72456: <==negation-removal== 88604 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #75527: <==negation-removal== 25468 (pos)
                    (not (Bb_not_checked_p8))

                    ; #77414: <==negation-removal== 22782 (pos)
                    (not (Ba_not_checked_p8))

                    ; #81564: <==uncertain_firing== 65920 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13883: origin
                    (checked_p9)

                    ; #20349: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #21209: <==commonly_known== 43464 (neg)
                    (Pc_checked_p9)

                    ; #41193: <==closure== 79602 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #41306: <==commonly_known== 43464 (neg)
                    (Pb_checked_p9)

                    ; #49637: <==commonly_known== 13883 (pos)
                    (Ba_checked_p9)

                    ; #64153: <==commonly_known== 13883 (pos)
                    (Bb_checked_p9)

                    ; #66874: <==commonly_known== 13883 (pos)
                    (Bc_checked_p9)

                    ; #79602: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #80918: <==commonly_known== 43464 (neg)
                    (Pa_checked_p9)

                    ; #97071: <==closure== 20349 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #11554: <==negation-removal== 80918 (pos)
                    (not (Ba_not_checked_p9))

                    ; #13568: <==negation-removal== 41306 (pos)
                    (not (Bb_not_checked_p9))

                    ; #25052: <==uncertain_firing== 79602 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #32437: <==negation-removal== 49637 (pos)
                    (not (Pa_not_checked_p9))

                    ; #34385: <==uncertain_firing== 41193 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36251: <==negation-removal== 97071 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #41948: <==negation-removal== 66874 (pos)
                    (not (Pc_not_checked_p9))

                    ; #43242: <==uncertain_firing== 20349 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #43464: <==negation-removal== 13883 (pos)
                    (not (not_checked_p9))

                    ; #49469: <==negation-removal== 79602 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #50240: <==negation-removal== 20349 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #68946: <==uncertain_firing== 97071 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #72488: <==negation-removal== 64153 (pos)
                    (not (Pb_not_checked_p9))

                    ; #90460: <==negation-removal== 21209 (pos)
                    (not (Bc_not_checked_p9))

                    ; #91796: <==negation-removal== 41193 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))))

)