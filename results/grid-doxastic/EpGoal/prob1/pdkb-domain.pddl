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
                    ; #11377: <==closure== 13316 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #13316: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #13332: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #40083: <==closure== 13332 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #53570: <==closure== 55661 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #55661: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #12587: <==negation-removal== 13332 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #20423: <==uncertain_firing== 53570 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #25636: <==negation-removal== 11377 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #37464: <==negation-removal== 55661 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #40939: <==uncertain_firing== 13332 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #46980: <==negation-removal== 13316 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #49740: <==uncertain_firing== 11377 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #59275: <==negation-removal== 40083 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #69281: <==negation-removal== 53570 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #72562: <==uncertain_firing== 13316 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #74395: <==uncertain_firing== 40083 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #90269: <==uncertain_firing== 55661 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #11377: <==closure== 13316 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #13316: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #13332: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #40083: <==closure== 13332 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #53570: <==closure== 55661 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #55661: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #12587: <==negation-removal== 13332 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #20423: <==uncertain_firing== 53570 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #25636: <==negation-removal== 11377 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #37464: <==negation-removal== 55661 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #40939: <==uncertain_firing== 13332 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #46980: <==negation-removal== 13316 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #49740: <==uncertain_firing== 11377 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #59275: <==negation-removal== 40083 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #69281: <==negation-removal== 53570 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #72562: <==uncertain_firing== 13316 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #74395: <==uncertain_firing== 40083 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #90269: <==uncertain_firing== 55661 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #11377: <==closure== 13316 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #13316: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #13332: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #40083: <==closure== 13332 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #53570: <==closure== 55661 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #55661: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #12587: <==negation-removal== 13332 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #20423: <==uncertain_firing== 53570 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #25636: <==negation-removal== 11377 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #37464: <==negation-removal== 55661 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #40939: <==uncertain_firing== 13332 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #46980: <==negation-removal== 13316 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #49740: <==uncertain_firing== 11377 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #59275: <==negation-removal== 40083 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #69281: <==negation-removal== 53570 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #72562: <==uncertain_firing== 13316 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #74395: <==uncertain_firing== 40083 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #90269: <==uncertain_firing== 55661 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #17246: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #32792: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #34811: <==closure== 42711 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #42711: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #45029: <==closure== 32792 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #96002: <==closure== 17246 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #17704: <==uncertain_firing== 42711 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #25612: <==uncertain_firing== 34811 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #27082: <==negation-removal== 42711 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #27497: <==negation-removal== 45029 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #30587: <==negation-removal== 32792 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #42167: <==uncertain_firing== 96002 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #46236: <==negation-removal== 96002 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #51469: <==uncertain_firing== 32792 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #54061: <==uncertain_firing== 45029 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #59921: <==negation-removal== 17246 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #60497: <==negation-removal== 34811 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #93065: <==uncertain_firing== 17246 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #17246: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #32792: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #34811: <==closure== 42711 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #42711: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #45029: <==closure== 32792 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #96002: <==closure== 17246 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #17704: <==uncertain_firing== 42711 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #25612: <==uncertain_firing== 34811 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #27082: <==negation-removal== 42711 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #27497: <==negation-removal== 45029 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #30587: <==negation-removal== 32792 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #42167: <==uncertain_firing== 96002 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #46236: <==negation-removal== 96002 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #51469: <==uncertain_firing== 32792 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #54061: <==uncertain_firing== 45029 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #59921: <==negation-removal== 17246 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #60497: <==negation-removal== 34811 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #93065: <==uncertain_firing== 17246 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #17246: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #32792: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #34811: <==closure== 42711 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #42711: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #45029: <==closure== 32792 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #96002: <==closure== 17246 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #17704: <==uncertain_firing== 42711 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #25612: <==uncertain_firing== 34811 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #27082: <==negation-removal== 42711 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #27497: <==negation-removal== 45029 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #30587: <==negation-removal== 32792 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #42167: <==uncertain_firing== 96002 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #46236: <==negation-removal== 96002 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #51469: <==uncertain_firing== 32792 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #54061: <==uncertain_firing== 45029 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #59921: <==negation-removal== 17246 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #60497: <==negation-removal== 34811 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #93065: <==uncertain_firing== 17246 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #13755: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #15106: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #15464: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #43582: <==closure== 15464 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #62219: <==closure== 13755 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69108: <==closure== 15106 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #35201: <==negation-removal== 13755 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #35736: <==uncertain_firing== 13755 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #38277: <==negation-removal== 15464 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #51013: <==uncertain_firing== 69108 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #52732: <==negation-removal== 62219 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #54591: <==negation-removal== 15106 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #58796: <==uncertain_firing== 15106 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #61538: <==negation-removal== 69108 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #63005: <==uncertain_firing== 62219 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #66067: <==uncertain_firing== 43582 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #76057: <==negation-removal== 43582 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #85799: <==uncertain_firing== 15464 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #13755: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #15106: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #15464: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #43582: <==closure== 15464 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #62219: <==closure== 13755 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69108: <==closure== 15106 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #35201: <==negation-removal== 13755 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #35736: <==uncertain_firing== 13755 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #38277: <==negation-removal== 15464 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #51013: <==uncertain_firing== 69108 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #52732: <==negation-removal== 62219 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #54591: <==negation-removal== 15106 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #58796: <==uncertain_firing== 15106 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #61538: <==negation-removal== 69108 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #63005: <==uncertain_firing== 62219 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #66067: <==uncertain_firing== 43582 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #76057: <==negation-removal== 43582 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #85799: <==uncertain_firing== 15464 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #13755: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #15106: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #15464: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #43582: <==closure== 15464 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #62219: <==closure== 13755 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69108: <==closure== 15106 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #35201: <==negation-removal== 13755 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #35736: <==uncertain_firing== 13755 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #38277: <==negation-removal== 15464 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #51013: <==uncertain_firing== 69108 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #52732: <==negation-removal== 62219 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #54591: <==negation-removal== 15106 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #58796: <==uncertain_firing== 15106 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #61538: <==negation-removal== 69108 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #63005: <==uncertain_firing== 62219 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #66067: <==uncertain_firing== 43582 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #76057: <==negation-removal== 43582 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #85799: <==uncertain_firing== 15464 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #16463: <==closure== 50066 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #22976: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #34530: <==closure== 22976 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #50066: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #71549: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #76374: <==closure== 71549 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #22144: <==uncertain_firing== 34530 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #36455: <==uncertain_firing== 50066 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #42866: <==negation-removal== 71549 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #43632: <==negation-removal== 50066 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #51274: <==uncertain_firing== 22976 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #52154: <==negation-removal== 16463 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #52704: <==uncertain_firing== 16463 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #67792: <==negation-removal== 76374 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #71538: <==uncertain_firing== 71549 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #75629: <==negation-removal== 22976 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #80352: <==negation-removal== 34530 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #91970: <==uncertain_firing== 76374 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #16463: <==closure== 50066 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #22976: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #34530: <==closure== 22976 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #50066: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #71549: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #76374: <==closure== 71549 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #22144: <==uncertain_firing== 34530 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #36455: <==uncertain_firing== 50066 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #42866: <==negation-removal== 71549 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #43632: <==negation-removal== 50066 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #51274: <==uncertain_firing== 22976 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #52154: <==negation-removal== 16463 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #52704: <==uncertain_firing== 16463 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #67792: <==negation-removal== 76374 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #71538: <==uncertain_firing== 71549 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #75629: <==negation-removal== 22976 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #80352: <==negation-removal== 34530 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #91970: <==uncertain_firing== 76374 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #16463: <==closure== 50066 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #22976: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #34530: <==closure== 22976 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #50066: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #71549: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #76374: <==closure== 71549 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #22144: <==uncertain_firing== 34530 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #36455: <==uncertain_firing== 50066 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #42866: <==negation-removal== 71549 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #43632: <==negation-removal== 50066 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #51274: <==uncertain_firing== 22976 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #52154: <==negation-removal== 16463 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #52704: <==uncertain_firing== 16463 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #67792: <==negation-removal== 76374 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #71538: <==uncertain_firing== 71549 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #75629: <==negation-removal== 22976 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #80352: <==negation-removal== 34530 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #91970: <==uncertain_firing== 76374 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #22955: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #27707: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #37047: <==closure== 27707 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #41926: <==closure== 73703 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #63610: <==closure== 22955 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #73703: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #13153: <==uncertain_firing== 27707 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #34521: <==negation-removal== 41926 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #35265: <==uncertain_firing== 22955 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #54048: <==uncertain_firing== 63610 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #54975: <==negation-removal== 22955 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #58216: <==uncertain_firing== 41926 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #73461: <==uncertain_firing== 73703 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #73788: <==negation-removal== 27707 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #77760: <==uncertain_firing== 37047 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #79319: <==negation-removal== 37047 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #80368: <==negation-removal== 63610 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #85255: <==negation-removal== 73703 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #22955: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #27707: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #37047: <==closure== 27707 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #41926: <==closure== 73703 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #63610: <==closure== 22955 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #73703: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #13153: <==uncertain_firing== 27707 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #34521: <==negation-removal== 41926 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #35265: <==uncertain_firing== 22955 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #54048: <==uncertain_firing== 63610 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #54975: <==negation-removal== 22955 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #58216: <==uncertain_firing== 41926 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #73461: <==uncertain_firing== 73703 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #73788: <==negation-removal== 27707 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #77760: <==uncertain_firing== 37047 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #79319: <==negation-removal== 37047 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #80368: <==negation-removal== 63610 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #85255: <==negation-removal== 73703 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #22955: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #27707: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #37047: <==closure== 27707 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #41926: <==closure== 73703 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #63610: <==closure== 22955 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #73703: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #13153: <==uncertain_firing== 27707 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #34521: <==negation-removal== 41926 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #35265: <==uncertain_firing== 22955 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #54048: <==uncertain_firing== 63610 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #54975: <==negation-removal== 22955 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #58216: <==uncertain_firing== 41926 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #73461: <==uncertain_firing== 73703 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #73788: <==negation-removal== 27707 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #77760: <==uncertain_firing== 37047 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #79319: <==negation-removal== 37047 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #80368: <==negation-removal== 63610 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #85255: <==negation-removal== 73703 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #32118: <==closure== 63743 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #33915: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #38370: <==closure== 33915 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #63743: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #76738: <==closure== 89578 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #89578: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #17724: <==uncertain_firing== 63743 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #25995: <==uncertain_firing== 76738 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #26149: <==negation-removal== 38370 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #37992: <==negation-removal== 76738 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #57196: <==negation-removal== 33915 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #58103: <==negation-removal== 32118 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #64844: <==negation-removal== 89578 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #66909: <==uncertain_firing== 89578 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #79427: <==uncertain_firing== 38370 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #80418: <==negation-removal== 63743 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #83014: <==uncertain_firing== 33915 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #84862: <==uncertain_firing== 32118 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #32118: <==closure== 63743 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #33915: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #38370: <==closure== 33915 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #63743: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #76738: <==closure== 89578 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #89578: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #17724: <==uncertain_firing== 63743 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #25995: <==uncertain_firing== 76738 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #26149: <==negation-removal== 38370 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #37992: <==negation-removal== 76738 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #57196: <==negation-removal== 33915 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #58103: <==negation-removal== 32118 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #64844: <==negation-removal== 89578 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #66909: <==uncertain_firing== 89578 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #79427: <==uncertain_firing== 38370 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #80418: <==negation-removal== 63743 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #83014: <==uncertain_firing== 33915 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #84862: <==uncertain_firing== 32118 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #32118: <==closure== 63743 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #33915: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #38370: <==closure== 33915 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #63743: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #76738: <==closure== 89578 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #89578: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #17724: <==uncertain_firing== 63743 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #25995: <==uncertain_firing== 76738 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #26149: <==negation-removal== 38370 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #37992: <==negation-removal== 76738 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #57196: <==negation-removal== 33915 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #58103: <==negation-removal== 32118 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #64844: <==negation-removal== 89578 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #66909: <==uncertain_firing== 89578 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #79427: <==uncertain_firing== 38370 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #80418: <==negation-removal== 63743 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #83014: <==uncertain_firing== 33915 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #84862: <==uncertain_firing== 32118 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #58219: <==closure== 85102 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #73725: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #74033: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79715: <==closure== 74033 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #85102: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #87239: <==closure== 73725 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #11836: <==negation-removal== 58219 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #22980: <==negation-removal== 87239 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #23240: <==uncertain_firing== 85102 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #29665: <==negation-removal== 74033 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #41061: <==uncertain_firing== 74033 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #50845: <==negation-removal== 79715 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #57075: <==uncertain_firing== 79715 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #67474: <==uncertain_firing== 58219 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #69301: <==negation-removal== 73725 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #72608: <==negation-removal== 85102 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #87941: <==uncertain_firing== 87239 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #90171: <==uncertain_firing== 73725 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #58219: <==closure== 85102 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #73725: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #74033: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79715: <==closure== 74033 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #85102: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #87239: <==closure== 73725 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #11836: <==negation-removal== 58219 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #22980: <==negation-removal== 87239 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #23240: <==uncertain_firing== 85102 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #29665: <==negation-removal== 74033 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #41061: <==uncertain_firing== 74033 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #50845: <==negation-removal== 79715 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #57075: <==uncertain_firing== 79715 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #67474: <==uncertain_firing== 58219 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #69301: <==negation-removal== 73725 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #72608: <==negation-removal== 85102 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #87941: <==uncertain_firing== 87239 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #90171: <==uncertain_firing== 73725 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #58219: <==closure== 85102 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #73725: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #74033: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79715: <==closure== 74033 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #85102: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #87239: <==closure== 73725 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #11836: <==negation-removal== 58219 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #22980: <==negation-removal== 87239 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #23240: <==uncertain_firing== 85102 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #29665: <==negation-removal== 74033 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #41061: <==uncertain_firing== 74033 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #50845: <==negation-removal== 79715 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #57075: <==uncertain_firing== 79715 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #67474: <==uncertain_firing== 58219 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #69301: <==negation-removal== 73725 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #72608: <==negation-removal== 85102 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #87941: <==uncertain_firing== 87239 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #90171: <==uncertain_firing== 73725 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #14719: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #24491: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #26134: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #33908: <==closure== 24491 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #44425: <==closure== 14719 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #68567: <==closure== 26134 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #17993: <==negation-removal== 33908 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #21050: <==uncertain_firing== 24491 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #29461: <==negation-removal== 24491 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #32110: <==uncertain_firing== 14719 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #33955: <==negation-removal== 26134 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #50862: <==uncertain_firing== 26134 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #55908: <==negation-removal== 14719 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #67298: <==uncertain_firing== 44425 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #67390: <==negation-removal== 44425 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #73183: <==uncertain_firing== 33908 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #80631: <==negation-removal== 68567 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #81789: <==uncertain_firing== 68567 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #14719: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #24491: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #26134: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #33908: <==closure== 24491 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #44425: <==closure== 14719 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #68567: <==closure== 26134 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #17993: <==negation-removal== 33908 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #21050: <==uncertain_firing== 24491 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #29461: <==negation-removal== 24491 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #32110: <==uncertain_firing== 14719 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #33955: <==negation-removal== 26134 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #50862: <==uncertain_firing== 26134 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #55908: <==negation-removal== 14719 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #67298: <==uncertain_firing== 44425 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #67390: <==negation-removal== 44425 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #73183: <==uncertain_firing== 33908 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #80631: <==negation-removal== 68567 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #81789: <==uncertain_firing== 68567 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #14719: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #24491: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #26134: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #33908: <==closure== 24491 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #44425: <==closure== 14719 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #68567: <==closure== 26134 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #17993: <==negation-removal== 33908 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #21050: <==uncertain_firing== 24491 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #29461: <==negation-removal== 24491 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #32110: <==uncertain_firing== 14719 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #33955: <==negation-removal== 26134 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #50862: <==uncertain_firing== 26134 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #55908: <==negation-removal== 14719 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #67298: <==uncertain_firing== 44425 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #67390: <==negation-removal== 44425 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #73183: <==uncertain_firing== 33908 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #80631: <==negation-removal== 68567 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #81789: <==uncertain_firing== 68567 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #35721: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #42192: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #53065: <==closure== 87408 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #61923: <==closure== 42192 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #87408: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #87415: <==closure== 35721 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #24712: <==negation-removal== 35721 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #31454: <==uncertain_firing== 35721 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #31465: <==uncertain_firing== 87408 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #41223: <==negation-removal== 42192 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #56805: <==uncertain_firing== 61923 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #57318: <==negation-removal== 87415 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #57751: <==negation-removal== 87408 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #58808: <==uncertain_firing== 42192 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #79485: <==uncertain_firing== 87415 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #81191: <==uncertain_firing== 53065 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #83679: <==negation-removal== 61923 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #90773: <==negation-removal== 53065 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #35721: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #42192: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #53065: <==closure== 87408 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #61923: <==closure== 42192 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #87408: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #87415: <==closure== 35721 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #24712: <==negation-removal== 35721 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #31454: <==uncertain_firing== 35721 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #31465: <==uncertain_firing== 87408 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #41223: <==negation-removal== 42192 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #56805: <==uncertain_firing== 61923 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #57318: <==negation-removal== 87415 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #57751: <==negation-removal== 87408 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #58808: <==uncertain_firing== 42192 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #79485: <==uncertain_firing== 87415 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #81191: <==uncertain_firing== 53065 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #83679: <==negation-removal== 61923 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #90773: <==negation-removal== 53065 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #35721: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #42192: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #53065: <==closure== 87408 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #61923: <==closure== 42192 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #87408: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #87415: <==closure== 35721 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #24712: <==negation-removal== 35721 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #31454: <==uncertain_firing== 35721 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #31465: <==uncertain_firing== 87408 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #41223: <==negation-removal== 42192 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #56805: <==uncertain_firing== 61923 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #57318: <==negation-removal== 87415 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #57751: <==negation-removal== 87408 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #58808: <==uncertain_firing== 42192 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #79485: <==uncertain_firing== 87415 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #81191: <==uncertain_firing== 53065 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #83679: <==negation-removal== 61923 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #90773: <==negation-removal== 53065 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #39323: <==closure== 86918 (pos)
                    (Pa_survivorat_s_p1)

                    ; #52560: origin
                    (Bc_survivorat_s_p1)

                    ; #68873: <==closure== 75528 (pos)
                    (Pb_survivorat_s_p1)

                    ; #75528: origin
                    (Bb_survivorat_s_p1)

                    ; #79673: <==closure== 52560 (pos)
                    (Pc_survivorat_s_p1)

                    ; #86918: origin
                    (Ba_survivorat_s_p1)

                    ; #11202: <==negation-removal== 68873 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #14270: <==negation-removal== 39323 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #40757: <==negation-removal== 75528 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72877: <==negation-removal== 52560 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #82935: <==negation-removal== 79673 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #90334: <==negation-removal== 86918 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #39323: <==closure== 86918 (pos)
                    (Pa_survivorat_s_p1)

                    ; #52560: origin
                    (Bc_survivorat_s_p1)

                    ; #68873: <==closure== 75528 (pos)
                    (Pb_survivorat_s_p1)

                    ; #75528: origin
                    (Bb_survivorat_s_p1)

                    ; #79673: <==closure== 52560 (pos)
                    (Pc_survivorat_s_p1)

                    ; #86918: origin
                    (Ba_survivorat_s_p1)

                    ; #11202: <==negation-removal== 68873 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #14270: <==negation-removal== 39323 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #40757: <==negation-removal== 75528 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72877: <==negation-removal== 52560 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #82935: <==negation-removal== 79673 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #90334: <==negation-removal== 86918 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #39323: <==closure== 86918 (pos)
                    (Pa_survivorat_s_p1)

                    ; #52560: origin
                    (Bc_survivorat_s_p1)

                    ; #68873: <==closure== 75528 (pos)
                    (Pb_survivorat_s_p1)

                    ; #75528: origin
                    (Bb_survivorat_s_p1)

                    ; #79673: <==closure== 52560 (pos)
                    (Pc_survivorat_s_p1)

                    ; #86918: origin
                    (Ba_survivorat_s_p1)

                    ; #11202: <==negation-removal== 68873 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #14270: <==negation-removal== 39323 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #40757: <==negation-removal== 75528 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72877: <==negation-removal== 52560 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #82935: <==negation-removal== 79673 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #90334: <==negation-removal== 86918 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #13202: <==closure== 71454 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24543: origin
                    (Bc_survivorat_s_p2)

                    ; #48038: <==closure== 54695 (pos)
                    (Pa_survivorat_s_p2)

                    ; #54695: origin
                    (Ba_survivorat_s_p2)

                    ; #54865: <==closure== 24543 (pos)
                    (Pc_survivorat_s_p2)

                    ; #71454: origin
                    (Bb_survivorat_s_p2)

                    ; #10454: <==negation-removal== 13202 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #17507: <==negation-removal== 54695 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26362: <==negation-removal== 24543 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #29951: <==negation-removal== 71454 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40444: <==negation-removal== 54865 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #57055: <==negation-removal== 48038 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #13202: <==closure== 71454 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24543: origin
                    (Bc_survivorat_s_p2)

                    ; #48038: <==closure== 54695 (pos)
                    (Pa_survivorat_s_p2)

                    ; #54695: origin
                    (Ba_survivorat_s_p2)

                    ; #54865: <==closure== 24543 (pos)
                    (Pc_survivorat_s_p2)

                    ; #71454: origin
                    (Bb_survivorat_s_p2)

                    ; #10454: <==negation-removal== 13202 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #17507: <==negation-removal== 54695 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26362: <==negation-removal== 24543 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #29951: <==negation-removal== 71454 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40444: <==negation-removal== 54865 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #57055: <==negation-removal== 48038 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #13202: <==closure== 71454 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24543: origin
                    (Bc_survivorat_s_p2)

                    ; #48038: <==closure== 54695 (pos)
                    (Pa_survivorat_s_p2)

                    ; #54695: origin
                    (Ba_survivorat_s_p2)

                    ; #54865: <==closure== 24543 (pos)
                    (Pc_survivorat_s_p2)

                    ; #71454: origin
                    (Bb_survivorat_s_p2)

                    ; #10454: <==negation-removal== 13202 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #17507: <==negation-removal== 54695 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26362: <==negation-removal== 24543 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #29951: <==negation-removal== 71454 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40444: <==negation-removal== 54865 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #57055: <==negation-removal== 48038 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #18025: origin
                    (Bc_survivorat_s_p3)

                    ; #18629: <==closure== 18025 (pos)
                    (Pc_survivorat_s_p3)

                    ; #26854: origin
                    (Bb_survivorat_s_p3)

                    ; #64246: origin
                    (Ba_survivorat_s_p3)

                    ; #78576: <==closure== 64246 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84650: <==closure== 26854 (pos)
                    (Pb_survivorat_s_p3)

                    ; #34274: <==negation-removal== 26854 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #45289: <==negation-removal== 84650 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #65510: <==negation-removal== 78576 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #78021: <==negation-removal== 64246 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #78876: <==negation-removal== 18629 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #86466: <==negation-removal== 18025 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #18025: origin
                    (Bc_survivorat_s_p3)

                    ; #18629: <==closure== 18025 (pos)
                    (Pc_survivorat_s_p3)

                    ; #26854: origin
                    (Bb_survivorat_s_p3)

                    ; #64246: origin
                    (Ba_survivorat_s_p3)

                    ; #78576: <==closure== 64246 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84650: <==closure== 26854 (pos)
                    (Pb_survivorat_s_p3)

                    ; #34274: <==negation-removal== 26854 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #45289: <==negation-removal== 84650 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #65510: <==negation-removal== 78576 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #78021: <==negation-removal== 64246 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #78876: <==negation-removal== 18629 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #86466: <==negation-removal== 18025 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #18025: origin
                    (Bc_survivorat_s_p3)

                    ; #18629: <==closure== 18025 (pos)
                    (Pc_survivorat_s_p3)

                    ; #26854: origin
                    (Bb_survivorat_s_p3)

                    ; #64246: origin
                    (Ba_survivorat_s_p3)

                    ; #78576: <==closure== 64246 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84650: <==closure== 26854 (pos)
                    (Pb_survivorat_s_p3)

                    ; #34274: <==negation-removal== 26854 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #45289: <==negation-removal== 84650 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #65510: <==negation-removal== 78576 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #78021: <==negation-removal== 64246 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #78876: <==negation-removal== 18629 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #86466: <==negation-removal== 18025 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #28078: origin
                    (Ba_survivorat_s_p4)

                    ; #61631: origin
                    (Bb_survivorat_s_p4)

                    ; #63368: origin
                    (Bc_survivorat_s_p4)

                    ; #63938: <==closure== 28078 (pos)
                    (Pa_survivorat_s_p4)

                    ; #85168: <==closure== 63368 (pos)
                    (Pc_survivorat_s_p4)

                    ; #94091: <==closure== 61631 (pos)
                    (Pb_survivorat_s_p4)

                    ; #43896: <==negation-removal== 28078 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #57843: <==negation-removal== 63368 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #72194: <==negation-removal== 63938 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #72938: <==negation-removal== 94091 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90852: <==negation-removal== 61631 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #95422: <==negation-removal== 85168 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #28078: origin
                    (Ba_survivorat_s_p4)

                    ; #61631: origin
                    (Bb_survivorat_s_p4)

                    ; #63368: origin
                    (Bc_survivorat_s_p4)

                    ; #63938: <==closure== 28078 (pos)
                    (Pa_survivorat_s_p4)

                    ; #85168: <==closure== 63368 (pos)
                    (Pc_survivorat_s_p4)

                    ; #94091: <==closure== 61631 (pos)
                    (Pb_survivorat_s_p4)

                    ; #43896: <==negation-removal== 28078 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #57843: <==negation-removal== 63368 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #72194: <==negation-removal== 63938 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #72938: <==negation-removal== 94091 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90852: <==negation-removal== 61631 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #95422: <==negation-removal== 85168 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #28078: origin
                    (Ba_survivorat_s_p4)

                    ; #61631: origin
                    (Bb_survivorat_s_p4)

                    ; #63368: origin
                    (Bc_survivorat_s_p4)

                    ; #63938: <==closure== 28078 (pos)
                    (Pa_survivorat_s_p4)

                    ; #85168: <==closure== 63368 (pos)
                    (Pc_survivorat_s_p4)

                    ; #94091: <==closure== 61631 (pos)
                    (Pb_survivorat_s_p4)

                    ; #43896: <==negation-removal== 28078 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #57843: <==negation-removal== 63368 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #72194: <==negation-removal== 63938 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #72938: <==negation-removal== 94091 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90852: <==negation-removal== 61631 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #95422: <==negation-removal== 85168 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #47034: <==closure== 79002 (pos)
                    (Pb_survivorat_s_p5)

                    ; #47039: <==closure== 51636 (pos)
                    (Pa_survivorat_s_p5)

                    ; #51636: origin
                    (Ba_survivorat_s_p5)

                    ; #74314: <==closure== 78545 (pos)
                    (Pc_survivorat_s_p5)

                    ; #78545: origin
                    (Bc_survivorat_s_p5)

                    ; #79002: origin
                    (Bb_survivorat_s_p5)

                    ; #23460: <==negation-removal== 74314 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #27197: <==negation-removal== 78545 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #30884: <==negation-removal== 47039 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #53854: <==negation-removal== 51636 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #66248: <==negation-removal== 47034 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #91487: <==negation-removal== 79002 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #47034: <==closure== 79002 (pos)
                    (Pb_survivorat_s_p5)

                    ; #47039: <==closure== 51636 (pos)
                    (Pa_survivorat_s_p5)

                    ; #51636: origin
                    (Ba_survivorat_s_p5)

                    ; #74314: <==closure== 78545 (pos)
                    (Pc_survivorat_s_p5)

                    ; #78545: origin
                    (Bc_survivorat_s_p5)

                    ; #79002: origin
                    (Bb_survivorat_s_p5)

                    ; #23460: <==negation-removal== 74314 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #27197: <==negation-removal== 78545 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #30884: <==negation-removal== 47039 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #53854: <==negation-removal== 51636 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #66248: <==negation-removal== 47034 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #91487: <==negation-removal== 79002 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #47034: <==closure== 79002 (pos)
                    (Pb_survivorat_s_p5)

                    ; #47039: <==closure== 51636 (pos)
                    (Pa_survivorat_s_p5)

                    ; #51636: origin
                    (Ba_survivorat_s_p5)

                    ; #74314: <==closure== 78545 (pos)
                    (Pc_survivorat_s_p5)

                    ; #78545: origin
                    (Bc_survivorat_s_p5)

                    ; #79002: origin
                    (Bb_survivorat_s_p5)

                    ; #23460: <==negation-removal== 74314 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #27197: <==negation-removal== 78545 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #30884: <==negation-removal== 47039 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #53854: <==negation-removal== 51636 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #66248: <==negation-removal== 47034 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #91487: <==negation-removal== 79002 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #12204: <==closure== 67471 (pos)
                    (Pa_survivorat_s_p6)

                    ; #32146: origin
                    (Bc_survivorat_s_p6)

                    ; #38578: origin
                    (Bb_survivorat_s_p6)

                    ; #41688: <==closure== 32146 (pos)
                    (Pc_survivorat_s_p6)

                    ; #52251: <==closure== 38578 (pos)
                    (Pb_survivorat_s_p6)

                    ; #67471: origin
                    (Ba_survivorat_s_p6)

                    ; #38062: <==negation-removal== 38578 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #49137: <==negation-removal== 12204 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #49726: <==negation-removal== 32146 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #50424: <==negation-removal== 67471 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #50885: <==negation-removal== 41688 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #62451: <==negation-removal== 52251 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #12204: <==closure== 67471 (pos)
                    (Pa_survivorat_s_p6)

                    ; #32146: origin
                    (Bc_survivorat_s_p6)

                    ; #38578: origin
                    (Bb_survivorat_s_p6)

                    ; #41688: <==closure== 32146 (pos)
                    (Pc_survivorat_s_p6)

                    ; #52251: <==closure== 38578 (pos)
                    (Pb_survivorat_s_p6)

                    ; #67471: origin
                    (Ba_survivorat_s_p6)

                    ; #38062: <==negation-removal== 38578 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #49137: <==negation-removal== 12204 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #49726: <==negation-removal== 32146 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #50424: <==negation-removal== 67471 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #50885: <==negation-removal== 41688 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #62451: <==negation-removal== 52251 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #12204: <==closure== 67471 (pos)
                    (Pa_survivorat_s_p6)

                    ; #32146: origin
                    (Bc_survivorat_s_p6)

                    ; #38578: origin
                    (Bb_survivorat_s_p6)

                    ; #41688: <==closure== 32146 (pos)
                    (Pc_survivorat_s_p6)

                    ; #52251: <==closure== 38578 (pos)
                    (Pb_survivorat_s_p6)

                    ; #67471: origin
                    (Ba_survivorat_s_p6)

                    ; #38062: <==negation-removal== 38578 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #49137: <==negation-removal== 12204 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #49726: <==negation-removal== 32146 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #50424: <==negation-removal== 67471 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #50885: <==negation-removal== 41688 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #62451: <==negation-removal== 52251 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #14829: origin
                    (Bb_survivorat_s_p7)

                    ; #21841: origin
                    (Bc_survivorat_s_p7)

                    ; #42247: <==closure== 21841 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46573: origin
                    (Ba_survivorat_s_p7)

                    ; #54003: <==closure== 14829 (pos)
                    (Pb_survivorat_s_p7)

                    ; #79633: <==closure== 46573 (pos)
                    (Pa_survivorat_s_p7)

                    ; #17566: <==negation-removal== 54003 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #23842: <==negation-removal== 46573 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #29744: <==negation-removal== 42247 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #33731: <==negation-removal== 21841 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #60433: <==negation-removal== 79633 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #66771: <==negation-removal== 14829 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #14829: origin
                    (Bb_survivorat_s_p7)

                    ; #21841: origin
                    (Bc_survivorat_s_p7)

                    ; #42247: <==closure== 21841 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46573: origin
                    (Ba_survivorat_s_p7)

                    ; #54003: <==closure== 14829 (pos)
                    (Pb_survivorat_s_p7)

                    ; #79633: <==closure== 46573 (pos)
                    (Pa_survivorat_s_p7)

                    ; #17566: <==negation-removal== 54003 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #23842: <==negation-removal== 46573 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #29744: <==negation-removal== 42247 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #33731: <==negation-removal== 21841 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #60433: <==negation-removal== 79633 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #66771: <==negation-removal== 14829 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #14829: origin
                    (Bb_survivorat_s_p7)

                    ; #21841: origin
                    (Bc_survivorat_s_p7)

                    ; #42247: <==closure== 21841 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46573: origin
                    (Ba_survivorat_s_p7)

                    ; #54003: <==closure== 14829 (pos)
                    (Pb_survivorat_s_p7)

                    ; #79633: <==closure== 46573 (pos)
                    (Pa_survivorat_s_p7)

                    ; #17566: <==negation-removal== 54003 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #23842: <==negation-removal== 46573 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #29744: <==negation-removal== 42247 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #33731: <==negation-removal== 21841 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #60433: <==negation-removal== 79633 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #66771: <==negation-removal== 14829 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #13101: <==closure== 18667 (pos)
                    (Pc_survivorat_s_p8)

                    ; #18667: origin
                    (Bc_survivorat_s_p8)

                    ; #35025: <==closure== 54768 (pos)
                    (Pa_survivorat_s_p8)

                    ; #54768: origin
                    (Ba_survivorat_s_p8)

                    ; #56553: <==closure== 61140 (pos)
                    (Pb_survivorat_s_p8)

                    ; #61140: origin
                    (Bb_survivorat_s_p8)

                    ; #16051: <==negation-removal== 18667 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #25446: <==negation-removal== 61140 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #28999: <==negation-removal== 13101 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #31907: <==negation-removal== 56553 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #72836: <==negation-removal== 35025 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #74046: <==negation-removal== 54768 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #13101: <==closure== 18667 (pos)
                    (Pc_survivorat_s_p8)

                    ; #18667: origin
                    (Bc_survivorat_s_p8)

                    ; #35025: <==closure== 54768 (pos)
                    (Pa_survivorat_s_p8)

                    ; #54768: origin
                    (Ba_survivorat_s_p8)

                    ; #56553: <==closure== 61140 (pos)
                    (Pb_survivorat_s_p8)

                    ; #61140: origin
                    (Bb_survivorat_s_p8)

                    ; #16051: <==negation-removal== 18667 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #25446: <==negation-removal== 61140 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #28999: <==negation-removal== 13101 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #31907: <==negation-removal== 56553 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #72836: <==negation-removal== 35025 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #74046: <==negation-removal== 54768 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #13101: <==closure== 18667 (pos)
                    (Pc_survivorat_s_p8)

                    ; #18667: origin
                    (Bc_survivorat_s_p8)

                    ; #35025: <==closure== 54768 (pos)
                    (Pa_survivorat_s_p8)

                    ; #54768: origin
                    (Ba_survivorat_s_p8)

                    ; #56553: <==closure== 61140 (pos)
                    (Pb_survivorat_s_p8)

                    ; #61140: origin
                    (Bb_survivorat_s_p8)

                    ; #16051: <==negation-removal== 18667 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #25446: <==negation-removal== 61140 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #28999: <==negation-removal== 13101 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #31907: <==negation-removal== 56553 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #72836: <==negation-removal== 35025 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #74046: <==negation-removal== 54768 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #20519: <==closure== 75528 (pos)
                    (Pa_survivorat_s_p9)

                    ; #41412: origin
                    (Bc_survivorat_s_p9)

                    ; #57038: <==closure== 90724 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64631: <==closure== 41412 (pos)
                    (Pc_survivorat_s_p9)

                    ; #75528: origin
                    (Ba_survivorat_s_p9)

                    ; #90724: origin
                    (Bb_survivorat_s_p9)

                    ; #56551: <==negation-removal== 90724 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #58347: <==negation-removal== 75528 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #76895: <==negation-removal== 64631 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #81151: <==negation-removal== 41412 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #81733: <==negation-removal== 57038 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #87791: <==negation-removal== 20519 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #20519: <==closure== 75528 (pos)
                    (Pa_survivorat_s_p9)

                    ; #41412: origin
                    (Bc_survivorat_s_p9)

                    ; #57038: <==closure== 90724 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64631: <==closure== 41412 (pos)
                    (Pc_survivorat_s_p9)

                    ; #75528: origin
                    (Ba_survivorat_s_p9)

                    ; #90724: origin
                    (Bb_survivorat_s_p9)

                    ; #56551: <==negation-removal== 90724 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #58347: <==negation-removal== 75528 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #76895: <==negation-removal== 64631 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #81151: <==negation-removal== 41412 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #81733: <==negation-removal== 57038 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #87791: <==negation-removal== 20519 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #20519: <==closure== 75528 (pos)
                    (Pa_survivorat_s_p9)

                    ; #41412: origin
                    (Bc_survivorat_s_p9)

                    ; #57038: <==closure== 90724 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64631: <==closure== 41412 (pos)
                    (Pc_survivorat_s_p9)

                    ; #75528: origin
                    (Ba_survivorat_s_p9)

                    ; #90724: origin
                    (Bb_survivorat_s_p9)

                    ; #56551: <==negation-removal== 90724 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #58347: <==negation-removal== 75528 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #76895: <==negation-removal== 64631 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #81151: <==negation-removal== 41412 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #81733: <==negation-removal== 57038 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #87791: <==negation-removal== 20519 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #19639: origin
                    (not_at_a_p1)

                    ; #35115: origin
                    (at_a_p1)

                    ; #19639: <==negation-removal== 35115 (pos)
                    (not (not_at_a_p1))

                    ; #35115: <==negation-removal== 19639 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #19639: origin
                    (not_at_a_p1)

                    ; #28471: origin
                    (at_a_p2)

                    ; #35115: <==negation-removal== 19639 (pos)
                    (not (at_a_p1))

                    ; #72989: <==negation-removal== 28471 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #19639: origin
                    (not_at_a_p1)

                    ; #21050: origin
                    (at_a_p3)

                    ; #28382: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p3))

                    ; #35115: <==negation-removal== 19639 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #19639: origin
                    (not_at_a_p1)

                    ; #87640: origin
                    (at_a_p4)

                    ; #26893: <==negation-removal== 87640 (pos)
                    (not (not_at_a_p4))

                    ; #35115: <==negation-removal== 19639 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #19639: origin
                    (not_at_a_p1)

                    ; #41241: origin
                    (at_a_p5)

                    ; #22142: <==negation-removal== 41241 (pos)
                    (not (not_at_a_p5))

                    ; #35115: <==negation-removal== 19639 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #19639: origin
                    (not_at_a_p1)

                    ; #25860: origin
                    (at_a_p6)

                    ; #15056: <==negation-removal== 25860 (pos)
                    (not (not_at_a_p6))

                    ; #35115: <==negation-removal== 19639 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #19639: origin
                    (not_at_a_p1)

                    ; #45695: origin
                    (at_a_p7)

                    ; #35115: <==negation-removal== 19639 (pos)
                    (not (at_a_p1))

                    ; #49891: <==negation-removal== 45695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #19639: origin
                    (not_at_a_p1)

                    ; #73953: origin
                    (at_a_p8)

                    ; #30954: <==negation-removal== 73953 (pos)
                    (not (not_at_a_p8))

                    ; #35115: <==negation-removal== 19639 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #19639: origin
                    (not_at_a_p1)

                    ; #49614: origin
                    (at_a_p9)

                    ; #35115: <==negation-removal== 19639 (pos)
                    (not (at_a_p1))

                    ; #38899: <==negation-removal== 49614 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #35115: origin
                    (at_a_p1)

                    ; #72989: origin
                    (not_at_a_p2)

                    ; #19639: <==negation-removal== 35115 (pos)
                    (not (not_at_a_p1))

                    ; #28471: <==negation-removal== 72989 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #28471: origin
                    (at_a_p2)

                    ; #72989: origin
                    (not_at_a_p2)

                    ; #28471: <==negation-removal== 72989 (pos)
                    (not (at_a_p2))

                    ; #72989: <==negation-removal== 28471 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #21050: origin
                    (at_a_p3)

                    ; #72989: origin
                    (not_at_a_p2)

                    ; #28382: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p3))

                    ; #28471: <==negation-removal== 72989 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #72989: origin
                    (not_at_a_p2)

                    ; #87640: origin
                    (at_a_p4)

                    ; #26893: <==negation-removal== 87640 (pos)
                    (not (not_at_a_p4))

                    ; #28471: <==negation-removal== 72989 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #41241: origin
                    (at_a_p5)

                    ; #72989: origin
                    (not_at_a_p2)

                    ; #22142: <==negation-removal== 41241 (pos)
                    (not (not_at_a_p5))

                    ; #28471: <==negation-removal== 72989 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #25860: origin
                    (at_a_p6)

                    ; #72989: origin
                    (not_at_a_p2)

                    ; #15056: <==negation-removal== 25860 (pos)
                    (not (not_at_a_p6))

                    ; #28471: <==negation-removal== 72989 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #45695: origin
                    (at_a_p7)

                    ; #72989: origin
                    (not_at_a_p2)

                    ; #28471: <==negation-removal== 72989 (pos)
                    (not (at_a_p2))

                    ; #49891: <==negation-removal== 45695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #72989: origin
                    (not_at_a_p2)

                    ; #73953: origin
                    (at_a_p8)

                    ; #28471: <==negation-removal== 72989 (pos)
                    (not (at_a_p2))

                    ; #30954: <==negation-removal== 73953 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #49614: origin
                    (at_a_p9)

                    ; #72989: origin
                    (not_at_a_p2)

                    ; #28471: <==negation-removal== 72989 (pos)
                    (not (at_a_p2))

                    ; #38899: <==negation-removal== 49614 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #28382: origin
                    (not_at_a_p3)

                    ; #35115: origin
                    (at_a_p1)

                    ; #19639: <==negation-removal== 35115 (pos)
                    (not (not_at_a_p1))

                    ; #21050: <==negation-removal== 28382 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #28382: origin
                    (not_at_a_p3)

                    ; #28471: origin
                    (at_a_p2)

                    ; #21050: <==negation-removal== 28382 (pos)
                    (not (at_a_p3))

                    ; #72989: <==negation-removal== 28471 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #21050: origin
                    (at_a_p3)

                    ; #28382: origin
                    (not_at_a_p3)

                    ; #21050: <==negation-removal== 28382 (pos)
                    (not (at_a_p3))

                    ; #28382: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #28382: origin
                    (not_at_a_p3)

                    ; #87640: origin
                    (at_a_p4)

                    ; #21050: <==negation-removal== 28382 (pos)
                    (not (at_a_p3))

                    ; #26893: <==negation-removal== 87640 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #28382: origin
                    (not_at_a_p3)

                    ; #41241: origin
                    (at_a_p5)

                    ; #21050: <==negation-removal== 28382 (pos)
                    (not (at_a_p3))

                    ; #22142: <==negation-removal== 41241 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #25860: origin
                    (at_a_p6)

                    ; #28382: origin
                    (not_at_a_p3)

                    ; #15056: <==negation-removal== 25860 (pos)
                    (not (not_at_a_p6))

                    ; #21050: <==negation-removal== 28382 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #28382: origin
                    (not_at_a_p3)

                    ; #45695: origin
                    (at_a_p7)

                    ; #21050: <==negation-removal== 28382 (pos)
                    (not (at_a_p3))

                    ; #49891: <==negation-removal== 45695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #28382: origin
                    (not_at_a_p3)

                    ; #73953: origin
                    (at_a_p8)

                    ; #21050: <==negation-removal== 28382 (pos)
                    (not (at_a_p3))

                    ; #30954: <==negation-removal== 73953 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #28382: origin
                    (not_at_a_p3)

                    ; #49614: origin
                    (at_a_p9)

                    ; #21050: <==negation-removal== 28382 (pos)
                    (not (at_a_p3))

                    ; #38899: <==negation-removal== 49614 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #26893: origin
                    (not_at_a_p4)

                    ; #35115: origin
                    (at_a_p1)

                    ; #19639: <==negation-removal== 35115 (pos)
                    (not (not_at_a_p1))

                    ; #87640: <==negation-removal== 26893 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #26893: origin
                    (not_at_a_p4)

                    ; #28471: origin
                    (at_a_p2)

                    ; #72989: <==negation-removal== 28471 (pos)
                    (not (not_at_a_p2))

                    ; #87640: <==negation-removal== 26893 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #21050: origin
                    (at_a_p3)

                    ; #26893: origin
                    (not_at_a_p4)

                    ; #28382: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p3))

                    ; #87640: <==negation-removal== 26893 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #26893: origin
                    (not_at_a_p4)

                    ; #87640: origin
                    (at_a_p4)

                    ; #26893: <==negation-removal== 87640 (pos)
                    (not (not_at_a_p4))

                    ; #87640: <==negation-removal== 26893 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #26893: origin
                    (not_at_a_p4)

                    ; #41241: origin
                    (at_a_p5)

                    ; #22142: <==negation-removal== 41241 (pos)
                    (not (not_at_a_p5))

                    ; #87640: <==negation-removal== 26893 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #25860: origin
                    (at_a_p6)

                    ; #26893: origin
                    (not_at_a_p4)

                    ; #15056: <==negation-removal== 25860 (pos)
                    (not (not_at_a_p6))

                    ; #87640: <==negation-removal== 26893 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #26893: origin
                    (not_at_a_p4)

                    ; #45695: origin
                    (at_a_p7)

                    ; #49891: <==negation-removal== 45695 (pos)
                    (not (not_at_a_p7))

                    ; #87640: <==negation-removal== 26893 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #26893: origin
                    (not_at_a_p4)

                    ; #73953: origin
                    (at_a_p8)

                    ; #30954: <==negation-removal== 73953 (pos)
                    (not (not_at_a_p8))

                    ; #87640: <==negation-removal== 26893 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #26893: origin
                    (not_at_a_p4)

                    ; #49614: origin
                    (at_a_p9)

                    ; #38899: <==negation-removal== 49614 (pos)
                    (not (not_at_a_p9))

                    ; #87640: <==negation-removal== 26893 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #22142: origin
                    (not_at_a_p5)

                    ; #35115: origin
                    (at_a_p1)

                    ; #19639: <==negation-removal== 35115 (pos)
                    (not (not_at_a_p1))

                    ; #41241: <==negation-removal== 22142 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #22142: origin
                    (not_at_a_p5)

                    ; #28471: origin
                    (at_a_p2)

                    ; #41241: <==negation-removal== 22142 (pos)
                    (not (at_a_p5))

                    ; #72989: <==negation-removal== 28471 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #21050: origin
                    (at_a_p3)

                    ; #22142: origin
                    (not_at_a_p5)

                    ; #28382: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p3))

                    ; #41241: <==negation-removal== 22142 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #22142: origin
                    (not_at_a_p5)

                    ; #87640: origin
                    (at_a_p4)

                    ; #26893: <==negation-removal== 87640 (pos)
                    (not (not_at_a_p4))

                    ; #41241: <==negation-removal== 22142 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #22142: origin
                    (not_at_a_p5)

                    ; #41241: origin
                    (at_a_p5)

                    ; #22142: <==negation-removal== 41241 (pos)
                    (not (not_at_a_p5))

                    ; #41241: <==negation-removal== 22142 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #22142: origin
                    (not_at_a_p5)

                    ; #25860: origin
                    (at_a_p6)

                    ; #15056: <==negation-removal== 25860 (pos)
                    (not (not_at_a_p6))

                    ; #41241: <==negation-removal== 22142 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #22142: origin
                    (not_at_a_p5)

                    ; #45695: origin
                    (at_a_p7)

                    ; #41241: <==negation-removal== 22142 (pos)
                    (not (at_a_p5))

                    ; #49891: <==negation-removal== 45695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #22142: origin
                    (not_at_a_p5)

                    ; #73953: origin
                    (at_a_p8)

                    ; #30954: <==negation-removal== 73953 (pos)
                    (not (not_at_a_p8))

                    ; #41241: <==negation-removal== 22142 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #22142: origin
                    (not_at_a_p5)

                    ; #49614: origin
                    (at_a_p9)

                    ; #38899: <==negation-removal== 49614 (pos)
                    (not (not_at_a_p9))

                    ; #41241: <==negation-removal== 22142 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #15056: origin
                    (not_at_a_p6)

                    ; #35115: origin
                    (at_a_p1)

                    ; #19639: <==negation-removal== 35115 (pos)
                    (not (not_at_a_p1))

                    ; #25860: <==negation-removal== 15056 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #15056: origin
                    (not_at_a_p6)

                    ; #28471: origin
                    (at_a_p2)

                    ; #25860: <==negation-removal== 15056 (pos)
                    (not (at_a_p6))

                    ; #72989: <==negation-removal== 28471 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #15056: origin
                    (not_at_a_p6)

                    ; #21050: origin
                    (at_a_p3)

                    ; #25860: <==negation-removal== 15056 (pos)
                    (not (at_a_p6))

                    ; #28382: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #15056: origin
                    (not_at_a_p6)

                    ; #87640: origin
                    (at_a_p4)

                    ; #25860: <==negation-removal== 15056 (pos)
                    (not (at_a_p6))

                    ; #26893: <==negation-removal== 87640 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #15056: origin
                    (not_at_a_p6)

                    ; #41241: origin
                    (at_a_p5)

                    ; #22142: <==negation-removal== 41241 (pos)
                    (not (not_at_a_p5))

                    ; #25860: <==negation-removal== 15056 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #15056: origin
                    (not_at_a_p6)

                    ; #25860: origin
                    (at_a_p6)

                    ; #15056: <==negation-removal== 25860 (pos)
                    (not (not_at_a_p6))

                    ; #25860: <==negation-removal== 15056 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #15056: origin
                    (not_at_a_p6)

                    ; #45695: origin
                    (at_a_p7)

                    ; #25860: <==negation-removal== 15056 (pos)
                    (not (at_a_p6))

                    ; #49891: <==negation-removal== 45695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #15056: origin
                    (not_at_a_p6)

                    ; #73953: origin
                    (at_a_p8)

                    ; #25860: <==negation-removal== 15056 (pos)
                    (not (at_a_p6))

                    ; #30954: <==negation-removal== 73953 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #15056: origin
                    (not_at_a_p6)

                    ; #49614: origin
                    (at_a_p9)

                    ; #25860: <==negation-removal== 15056 (pos)
                    (not (at_a_p6))

                    ; #38899: <==negation-removal== 49614 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #35115: origin
                    (at_a_p1)

                    ; #49891: origin
                    (not_at_a_p7)

                    ; #19639: <==negation-removal== 35115 (pos)
                    (not (not_at_a_p1))

                    ; #45695: <==negation-removal== 49891 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #28471: origin
                    (at_a_p2)

                    ; #49891: origin
                    (not_at_a_p7)

                    ; #45695: <==negation-removal== 49891 (pos)
                    (not (at_a_p7))

                    ; #72989: <==negation-removal== 28471 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #21050: origin
                    (at_a_p3)

                    ; #49891: origin
                    (not_at_a_p7)

                    ; #28382: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p3))

                    ; #45695: <==negation-removal== 49891 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #49891: origin
                    (not_at_a_p7)

                    ; #87640: origin
                    (at_a_p4)

                    ; #26893: <==negation-removal== 87640 (pos)
                    (not (not_at_a_p4))

                    ; #45695: <==negation-removal== 49891 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #41241: origin
                    (at_a_p5)

                    ; #49891: origin
                    (not_at_a_p7)

                    ; #22142: <==negation-removal== 41241 (pos)
                    (not (not_at_a_p5))

                    ; #45695: <==negation-removal== 49891 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #25860: origin
                    (at_a_p6)

                    ; #49891: origin
                    (not_at_a_p7)

                    ; #15056: <==negation-removal== 25860 (pos)
                    (not (not_at_a_p6))

                    ; #45695: <==negation-removal== 49891 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #45695: origin
                    (at_a_p7)

                    ; #49891: origin
                    (not_at_a_p7)

                    ; #45695: <==negation-removal== 49891 (pos)
                    (not (at_a_p7))

                    ; #49891: <==negation-removal== 45695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #49891: origin
                    (not_at_a_p7)

                    ; #73953: origin
                    (at_a_p8)

                    ; #30954: <==negation-removal== 73953 (pos)
                    (not (not_at_a_p8))

                    ; #45695: <==negation-removal== 49891 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #49614: origin
                    (at_a_p9)

                    ; #49891: origin
                    (not_at_a_p7)

                    ; #38899: <==negation-removal== 49614 (pos)
                    (not (not_at_a_p9))

                    ; #45695: <==negation-removal== 49891 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #30954: origin
                    (not_at_a_p8)

                    ; #35115: origin
                    (at_a_p1)

                    ; #19639: <==negation-removal== 35115 (pos)
                    (not (not_at_a_p1))

                    ; #73953: <==negation-removal== 30954 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #28471: origin
                    (at_a_p2)

                    ; #30954: origin
                    (not_at_a_p8)

                    ; #72989: <==negation-removal== 28471 (pos)
                    (not (not_at_a_p2))

                    ; #73953: <==negation-removal== 30954 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #21050: origin
                    (at_a_p3)

                    ; #30954: origin
                    (not_at_a_p8)

                    ; #28382: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p3))

                    ; #73953: <==negation-removal== 30954 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #30954: origin
                    (not_at_a_p8)

                    ; #87640: origin
                    (at_a_p4)

                    ; #26893: <==negation-removal== 87640 (pos)
                    (not (not_at_a_p4))

                    ; #73953: <==negation-removal== 30954 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #30954: origin
                    (not_at_a_p8)

                    ; #41241: origin
                    (at_a_p5)

                    ; #22142: <==negation-removal== 41241 (pos)
                    (not (not_at_a_p5))

                    ; #73953: <==negation-removal== 30954 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #25860: origin
                    (at_a_p6)

                    ; #30954: origin
                    (not_at_a_p8)

                    ; #15056: <==negation-removal== 25860 (pos)
                    (not (not_at_a_p6))

                    ; #73953: <==negation-removal== 30954 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #30954: origin
                    (not_at_a_p8)

                    ; #45695: origin
                    (at_a_p7)

                    ; #49891: <==negation-removal== 45695 (pos)
                    (not (not_at_a_p7))

                    ; #73953: <==negation-removal== 30954 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #30954: origin
                    (not_at_a_p8)

                    ; #73953: origin
                    (at_a_p8)

                    ; #30954: <==negation-removal== 73953 (pos)
                    (not (not_at_a_p8))

                    ; #73953: <==negation-removal== 30954 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #30954: origin
                    (not_at_a_p8)

                    ; #49614: origin
                    (at_a_p9)

                    ; #38899: <==negation-removal== 49614 (pos)
                    (not (not_at_a_p9))

                    ; #73953: <==negation-removal== 30954 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #35115: origin
                    (at_a_p1)

                    ; #38899: origin
                    (not_at_a_p9)

                    ; #19639: <==negation-removal== 35115 (pos)
                    (not (not_at_a_p1))

                    ; #49614: <==negation-removal== 38899 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #28471: origin
                    (at_a_p2)

                    ; #38899: origin
                    (not_at_a_p9)

                    ; #49614: <==negation-removal== 38899 (pos)
                    (not (at_a_p9))

                    ; #72989: <==negation-removal== 28471 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #21050: origin
                    (at_a_p3)

                    ; #38899: origin
                    (not_at_a_p9)

                    ; #28382: <==negation-removal== 21050 (pos)
                    (not (not_at_a_p3))

                    ; #49614: <==negation-removal== 38899 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #38899: origin
                    (not_at_a_p9)

                    ; #87640: origin
                    (at_a_p4)

                    ; #26893: <==negation-removal== 87640 (pos)
                    (not (not_at_a_p4))

                    ; #49614: <==negation-removal== 38899 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #38899: origin
                    (not_at_a_p9)

                    ; #41241: origin
                    (at_a_p5)

                    ; #22142: <==negation-removal== 41241 (pos)
                    (not (not_at_a_p5))

                    ; #49614: <==negation-removal== 38899 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #25860: origin
                    (at_a_p6)

                    ; #38899: origin
                    (not_at_a_p9)

                    ; #15056: <==negation-removal== 25860 (pos)
                    (not (not_at_a_p6))

                    ; #49614: <==negation-removal== 38899 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #38899: origin
                    (not_at_a_p9)

                    ; #45695: origin
                    (at_a_p7)

                    ; #49614: <==negation-removal== 38899 (pos)
                    (not (at_a_p9))

                    ; #49891: <==negation-removal== 45695 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #38899: origin
                    (not_at_a_p9)

                    ; #73953: origin
                    (at_a_p8)

                    ; #30954: <==negation-removal== 73953 (pos)
                    (not (not_at_a_p8))

                    ; #49614: <==negation-removal== 38899 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #38899: origin
                    (not_at_a_p9)

                    ; #49614: origin
                    (at_a_p9)

                    ; #38899: <==negation-removal== 49614 (pos)
                    (not (not_at_a_p9))

                    ; #49614: <==negation-removal== 38899 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #38345: origin
                    (not_at_b_p1)

                    ; #87213: origin
                    (at_b_p1)

                    ; #38345: <==negation-removal== 87213 (pos)
                    (not (not_at_b_p1))

                    ; #87213: <==negation-removal== 38345 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #38345: origin
                    (not_at_b_p1)

                    ; #41035: origin
                    (at_b_p2)

                    ; #40499: <==negation-removal== 41035 (pos)
                    (not (not_at_b_p2))

                    ; #87213: <==negation-removal== 38345 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #25276: origin
                    (at_b_p3)

                    ; #38345: origin
                    (not_at_b_p1)

                    ; #16282: <==negation-removal== 25276 (pos)
                    (not (not_at_b_p3))

                    ; #87213: <==negation-removal== 38345 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #38345: origin
                    (not_at_b_p1)

                    ; #39104: origin
                    (at_b_p4)

                    ; #71847: <==negation-removal== 39104 (pos)
                    (not (not_at_b_p4))

                    ; #87213: <==negation-removal== 38345 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #17581: origin
                    (at_b_p5)

                    ; #38345: origin
                    (not_at_b_p1)

                    ; #46895: <==negation-removal== 17581 (pos)
                    (not (not_at_b_p5))

                    ; #87213: <==negation-removal== 38345 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #21048: origin
                    (at_b_p6)

                    ; #38345: origin
                    (not_at_b_p1)

                    ; #48625: <==negation-removal== 21048 (pos)
                    (not (not_at_b_p6))

                    ; #87213: <==negation-removal== 38345 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #38345: origin
                    (not_at_b_p1)

                    ; #44895: origin
                    (at_b_p7)

                    ; #73818: <==negation-removal== 44895 (pos)
                    (not (not_at_b_p7))

                    ; #87213: <==negation-removal== 38345 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #38345: origin
                    (not_at_b_p1)

                    ; #52868: origin
                    (at_b_p8)

                    ; #47225: <==negation-removal== 52868 (pos)
                    (not (not_at_b_p8))

                    ; #87213: <==negation-removal== 38345 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #33045: origin
                    (at_b_p9)

                    ; #38345: origin
                    (not_at_b_p1)

                    ; #18291: <==negation-removal== 33045 (pos)
                    (not (not_at_b_p9))

                    ; #87213: <==negation-removal== 38345 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #40499: origin
                    (not_at_b_p2)

                    ; #87213: origin
                    (at_b_p1)

                    ; #38345: <==negation-removal== 87213 (pos)
                    (not (not_at_b_p1))

                    ; #41035: <==negation-removal== 40499 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #40499: origin
                    (not_at_b_p2)

                    ; #41035: origin
                    (at_b_p2)

                    ; #40499: <==negation-removal== 41035 (pos)
                    (not (not_at_b_p2))

                    ; #41035: <==negation-removal== 40499 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #25276: origin
                    (at_b_p3)

                    ; #40499: origin
                    (not_at_b_p2)

                    ; #16282: <==negation-removal== 25276 (pos)
                    (not (not_at_b_p3))

                    ; #41035: <==negation-removal== 40499 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #39104: origin
                    (at_b_p4)

                    ; #40499: origin
                    (not_at_b_p2)

                    ; #41035: <==negation-removal== 40499 (pos)
                    (not (at_b_p2))

                    ; #71847: <==negation-removal== 39104 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #17581: origin
                    (at_b_p5)

                    ; #40499: origin
                    (not_at_b_p2)

                    ; #41035: <==negation-removal== 40499 (pos)
                    (not (at_b_p2))

                    ; #46895: <==negation-removal== 17581 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #21048: origin
                    (at_b_p6)

                    ; #40499: origin
                    (not_at_b_p2)

                    ; #41035: <==negation-removal== 40499 (pos)
                    (not (at_b_p2))

                    ; #48625: <==negation-removal== 21048 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #40499: origin
                    (not_at_b_p2)

                    ; #44895: origin
                    (at_b_p7)

                    ; #41035: <==negation-removal== 40499 (pos)
                    (not (at_b_p2))

                    ; #73818: <==negation-removal== 44895 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #40499: origin
                    (not_at_b_p2)

                    ; #52868: origin
                    (at_b_p8)

                    ; #41035: <==negation-removal== 40499 (pos)
                    (not (at_b_p2))

                    ; #47225: <==negation-removal== 52868 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #33045: origin
                    (at_b_p9)

                    ; #40499: origin
                    (not_at_b_p2)

                    ; #18291: <==negation-removal== 33045 (pos)
                    (not (not_at_b_p9))

                    ; #41035: <==negation-removal== 40499 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #16282: origin
                    (not_at_b_p3)

                    ; #87213: origin
                    (at_b_p1)

                    ; #25276: <==negation-removal== 16282 (pos)
                    (not (at_b_p3))

                    ; #38345: <==negation-removal== 87213 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #16282: origin
                    (not_at_b_p3)

                    ; #41035: origin
                    (at_b_p2)

                    ; #25276: <==negation-removal== 16282 (pos)
                    (not (at_b_p3))

                    ; #40499: <==negation-removal== 41035 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #16282: origin
                    (not_at_b_p3)

                    ; #25276: origin
                    (at_b_p3)

                    ; #16282: <==negation-removal== 25276 (pos)
                    (not (not_at_b_p3))

                    ; #25276: <==negation-removal== 16282 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #16282: origin
                    (not_at_b_p3)

                    ; #39104: origin
                    (at_b_p4)

                    ; #25276: <==negation-removal== 16282 (pos)
                    (not (at_b_p3))

                    ; #71847: <==negation-removal== 39104 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #16282: origin
                    (not_at_b_p3)

                    ; #17581: origin
                    (at_b_p5)

                    ; #25276: <==negation-removal== 16282 (pos)
                    (not (at_b_p3))

                    ; #46895: <==negation-removal== 17581 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #16282: origin
                    (not_at_b_p3)

                    ; #21048: origin
                    (at_b_p6)

                    ; #25276: <==negation-removal== 16282 (pos)
                    (not (at_b_p3))

                    ; #48625: <==negation-removal== 21048 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #16282: origin
                    (not_at_b_p3)

                    ; #44895: origin
                    (at_b_p7)

                    ; #25276: <==negation-removal== 16282 (pos)
                    (not (at_b_p3))

                    ; #73818: <==negation-removal== 44895 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #16282: origin
                    (not_at_b_p3)

                    ; #52868: origin
                    (at_b_p8)

                    ; #25276: <==negation-removal== 16282 (pos)
                    (not (at_b_p3))

                    ; #47225: <==negation-removal== 52868 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #16282: origin
                    (not_at_b_p3)

                    ; #33045: origin
                    (at_b_p9)

                    ; #18291: <==negation-removal== 33045 (pos)
                    (not (not_at_b_p9))

                    ; #25276: <==negation-removal== 16282 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #71847: origin
                    (not_at_b_p4)

                    ; #87213: origin
                    (at_b_p1)

                    ; #38345: <==negation-removal== 87213 (pos)
                    (not (not_at_b_p1))

                    ; #39104: <==negation-removal== 71847 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #41035: origin
                    (at_b_p2)

                    ; #71847: origin
                    (not_at_b_p4)

                    ; #39104: <==negation-removal== 71847 (pos)
                    (not (at_b_p4))

                    ; #40499: <==negation-removal== 41035 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #25276: origin
                    (at_b_p3)

                    ; #71847: origin
                    (not_at_b_p4)

                    ; #16282: <==negation-removal== 25276 (pos)
                    (not (not_at_b_p3))

                    ; #39104: <==negation-removal== 71847 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #39104: origin
                    (at_b_p4)

                    ; #71847: origin
                    (not_at_b_p4)

                    ; #39104: <==negation-removal== 71847 (pos)
                    (not (at_b_p4))

                    ; #71847: <==negation-removal== 39104 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #17581: origin
                    (at_b_p5)

                    ; #71847: origin
                    (not_at_b_p4)

                    ; #39104: <==negation-removal== 71847 (pos)
                    (not (at_b_p4))

                    ; #46895: <==negation-removal== 17581 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #21048: origin
                    (at_b_p6)

                    ; #71847: origin
                    (not_at_b_p4)

                    ; #39104: <==negation-removal== 71847 (pos)
                    (not (at_b_p4))

                    ; #48625: <==negation-removal== 21048 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #44895: origin
                    (at_b_p7)

                    ; #71847: origin
                    (not_at_b_p4)

                    ; #39104: <==negation-removal== 71847 (pos)
                    (not (at_b_p4))

                    ; #73818: <==negation-removal== 44895 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #52868: origin
                    (at_b_p8)

                    ; #71847: origin
                    (not_at_b_p4)

                    ; #39104: <==negation-removal== 71847 (pos)
                    (not (at_b_p4))

                    ; #47225: <==negation-removal== 52868 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #33045: origin
                    (at_b_p9)

                    ; #71847: origin
                    (not_at_b_p4)

                    ; #18291: <==negation-removal== 33045 (pos)
                    (not (not_at_b_p9))

                    ; #39104: <==negation-removal== 71847 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #46895: origin
                    (not_at_b_p5)

                    ; #87213: origin
                    (at_b_p1)

                    ; #17581: <==negation-removal== 46895 (pos)
                    (not (at_b_p5))

                    ; #38345: <==negation-removal== 87213 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #41035: origin
                    (at_b_p2)

                    ; #46895: origin
                    (not_at_b_p5)

                    ; #17581: <==negation-removal== 46895 (pos)
                    (not (at_b_p5))

                    ; #40499: <==negation-removal== 41035 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #25276: origin
                    (at_b_p3)

                    ; #46895: origin
                    (not_at_b_p5)

                    ; #16282: <==negation-removal== 25276 (pos)
                    (not (not_at_b_p3))

                    ; #17581: <==negation-removal== 46895 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #39104: origin
                    (at_b_p4)

                    ; #46895: origin
                    (not_at_b_p5)

                    ; #17581: <==negation-removal== 46895 (pos)
                    (not (at_b_p5))

                    ; #71847: <==negation-removal== 39104 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #17581: origin
                    (at_b_p5)

                    ; #46895: origin
                    (not_at_b_p5)

                    ; #17581: <==negation-removal== 46895 (pos)
                    (not (at_b_p5))

                    ; #46895: <==negation-removal== 17581 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #21048: origin
                    (at_b_p6)

                    ; #46895: origin
                    (not_at_b_p5)

                    ; #17581: <==negation-removal== 46895 (pos)
                    (not (at_b_p5))

                    ; #48625: <==negation-removal== 21048 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #44895: origin
                    (at_b_p7)

                    ; #46895: origin
                    (not_at_b_p5)

                    ; #17581: <==negation-removal== 46895 (pos)
                    (not (at_b_p5))

                    ; #73818: <==negation-removal== 44895 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #46895: origin
                    (not_at_b_p5)

                    ; #52868: origin
                    (at_b_p8)

                    ; #17581: <==negation-removal== 46895 (pos)
                    (not (at_b_p5))

                    ; #47225: <==negation-removal== 52868 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #33045: origin
                    (at_b_p9)

                    ; #46895: origin
                    (not_at_b_p5)

                    ; #17581: <==negation-removal== 46895 (pos)
                    (not (at_b_p5))

                    ; #18291: <==negation-removal== 33045 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #48625: origin
                    (not_at_b_p6)

                    ; #87213: origin
                    (at_b_p1)

                    ; #21048: <==negation-removal== 48625 (pos)
                    (not (at_b_p6))

                    ; #38345: <==negation-removal== 87213 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #41035: origin
                    (at_b_p2)

                    ; #48625: origin
                    (not_at_b_p6)

                    ; #21048: <==negation-removal== 48625 (pos)
                    (not (at_b_p6))

                    ; #40499: <==negation-removal== 41035 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #25276: origin
                    (at_b_p3)

                    ; #48625: origin
                    (not_at_b_p6)

                    ; #16282: <==negation-removal== 25276 (pos)
                    (not (not_at_b_p3))

                    ; #21048: <==negation-removal== 48625 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #39104: origin
                    (at_b_p4)

                    ; #48625: origin
                    (not_at_b_p6)

                    ; #21048: <==negation-removal== 48625 (pos)
                    (not (at_b_p6))

                    ; #71847: <==negation-removal== 39104 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #17581: origin
                    (at_b_p5)

                    ; #48625: origin
                    (not_at_b_p6)

                    ; #21048: <==negation-removal== 48625 (pos)
                    (not (at_b_p6))

                    ; #46895: <==negation-removal== 17581 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #21048: origin
                    (at_b_p6)

                    ; #48625: origin
                    (not_at_b_p6)

                    ; #21048: <==negation-removal== 48625 (pos)
                    (not (at_b_p6))

                    ; #48625: <==negation-removal== 21048 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #44895: origin
                    (at_b_p7)

                    ; #48625: origin
                    (not_at_b_p6)

                    ; #21048: <==negation-removal== 48625 (pos)
                    (not (at_b_p6))

                    ; #73818: <==negation-removal== 44895 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #48625: origin
                    (not_at_b_p6)

                    ; #52868: origin
                    (at_b_p8)

                    ; #21048: <==negation-removal== 48625 (pos)
                    (not (at_b_p6))

                    ; #47225: <==negation-removal== 52868 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #33045: origin
                    (at_b_p9)

                    ; #48625: origin
                    (not_at_b_p6)

                    ; #18291: <==negation-removal== 33045 (pos)
                    (not (not_at_b_p9))

                    ; #21048: <==negation-removal== 48625 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #73818: origin
                    (not_at_b_p7)

                    ; #87213: origin
                    (at_b_p1)

                    ; #38345: <==negation-removal== 87213 (pos)
                    (not (not_at_b_p1))

                    ; #44895: <==negation-removal== 73818 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #41035: origin
                    (at_b_p2)

                    ; #73818: origin
                    (not_at_b_p7)

                    ; #40499: <==negation-removal== 41035 (pos)
                    (not (not_at_b_p2))

                    ; #44895: <==negation-removal== 73818 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #25276: origin
                    (at_b_p3)

                    ; #73818: origin
                    (not_at_b_p7)

                    ; #16282: <==negation-removal== 25276 (pos)
                    (not (not_at_b_p3))

                    ; #44895: <==negation-removal== 73818 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #39104: origin
                    (at_b_p4)

                    ; #73818: origin
                    (not_at_b_p7)

                    ; #44895: <==negation-removal== 73818 (pos)
                    (not (at_b_p7))

                    ; #71847: <==negation-removal== 39104 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #17581: origin
                    (at_b_p5)

                    ; #73818: origin
                    (not_at_b_p7)

                    ; #44895: <==negation-removal== 73818 (pos)
                    (not (at_b_p7))

                    ; #46895: <==negation-removal== 17581 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #21048: origin
                    (at_b_p6)

                    ; #73818: origin
                    (not_at_b_p7)

                    ; #44895: <==negation-removal== 73818 (pos)
                    (not (at_b_p7))

                    ; #48625: <==negation-removal== 21048 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #44895: origin
                    (at_b_p7)

                    ; #73818: origin
                    (not_at_b_p7)

                    ; #44895: <==negation-removal== 73818 (pos)
                    (not (at_b_p7))

                    ; #73818: <==negation-removal== 44895 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #52868: origin
                    (at_b_p8)

                    ; #73818: origin
                    (not_at_b_p7)

                    ; #44895: <==negation-removal== 73818 (pos)
                    (not (at_b_p7))

                    ; #47225: <==negation-removal== 52868 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #33045: origin
                    (at_b_p9)

                    ; #73818: origin
                    (not_at_b_p7)

                    ; #18291: <==negation-removal== 33045 (pos)
                    (not (not_at_b_p9))

                    ; #44895: <==negation-removal== 73818 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #47225: origin
                    (not_at_b_p8)

                    ; #87213: origin
                    (at_b_p1)

                    ; #38345: <==negation-removal== 87213 (pos)
                    (not (not_at_b_p1))

                    ; #52868: <==negation-removal== 47225 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #41035: origin
                    (at_b_p2)

                    ; #47225: origin
                    (not_at_b_p8)

                    ; #40499: <==negation-removal== 41035 (pos)
                    (not (not_at_b_p2))

                    ; #52868: <==negation-removal== 47225 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #25276: origin
                    (at_b_p3)

                    ; #47225: origin
                    (not_at_b_p8)

                    ; #16282: <==negation-removal== 25276 (pos)
                    (not (not_at_b_p3))

                    ; #52868: <==negation-removal== 47225 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #39104: origin
                    (at_b_p4)

                    ; #47225: origin
                    (not_at_b_p8)

                    ; #52868: <==negation-removal== 47225 (pos)
                    (not (at_b_p8))

                    ; #71847: <==negation-removal== 39104 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #17581: origin
                    (at_b_p5)

                    ; #47225: origin
                    (not_at_b_p8)

                    ; #46895: <==negation-removal== 17581 (pos)
                    (not (not_at_b_p5))

                    ; #52868: <==negation-removal== 47225 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #21048: origin
                    (at_b_p6)

                    ; #47225: origin
                    (not_at_b_p8)

                    ; #48625: <==negation-removal== 21048 (pos)
                    (not (not_at_b_p6))

                    ; #52868: <==negation-removal== 47225 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #44895: origin
                    (at_b_p7)

                    ; #47225: origin
                    (not_at_b_p8)

                    ; #52868: <==negation-removal== 47225 (pos)
                    (not (at_b_p8))

                    ; #73818: <==negation-removal== 44895 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #47225: origin
                    (not_at_b_p8)

                    ; #52868: origin
                    (at_b_p8)

                    ; #47225: <==negation-removal== 52868 (pos)
                    (not (not_at_b_p8))

                    ; #52868: <==negation-removal== 47225 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #33045: origin
                    (at_b_p9)

                    ; #47225: origin
                    (not_at_b_p8)

                    ; #18291: <==negation-removal== 33045 (pos)
                    (not (not_at_b_p9))

                    ; #52868: <==negation-removal== 47225 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #18291: origin
                    (not_at_b_p9)

                    ; #87213: origin
                    (at_b_p1)

                    ; #33045: <==negation-removal== 18291 (pos)
                    (not (at_b_p9))

                    ; #38345: <==negation-removal== 87213 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #18291: origin
                    (not_at_b_p9)

                    ; #41035: origin
                    (at_b_p2)

                    ; #33045: <==negation-removal== 18291 (pos)
                    (not (at_b_p9))

                    ; #40499: <==negation-removal== 41035 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #18291: origin
                    (not_at_b_p9)

                    ; #25276: origin
                    (at_b_p3)

                    ; #16282: <==negation-removal== 25276 (pos)
                    (not (not_at_b_p3))

                    ; #33045: <==negation-removal== 18291 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #18291: origin
                    (not_at_b_p9)

                    ; #39104: origin
                    (at_b_p4)

                    ; #33045: <==negation-removal== 18291 (pos)
                    (not (at_b_p9))

                    ; #71847: <==negation-removal== 39104 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #17581: origin
                    (at_b_p5)

                    ; #18291: origin
                    (not_at_b_p9)

                    ; #33045: <==negation-removal== 18291 (pos)
                    (not (at_b_p9))

                    ; #46895: <==negation-removal== 17581 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #18291: origin
                    (not_at_b_p9)

                    ; #21048: origin
                    (at_b_p6)

                    ; #33045: <==negation-removal== 18291 (pos)
                    (not (at_b_p9))

                    ; #48625: <==negation-removal== 21048 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #18291: origin
                    (not_at_b_p9)

                    ; #44895: origin
                    (at_b_p7)

                    ; #33045: <==negation-removal== 18291 (pos)
                    (not (at_b_p9))

                    ; #73818: <==negation-removal== 44895 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #18291: origin
                    (not_at_b_p9)

                    ; #52868: origin
                    (at_b_p8)

                    ; #33045: <==negation-removal== 18291 (pos)
                    (not (at_b_p9))

                    ; #47225: <==negation-removal== 52868 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #18291: origin
                    (not_at_b_p9)

                    ; #33045: origin
                    (at_b_p9)

                    ; #18291: <==negation-removal== 33045 (pos)
                    (not (not_at_b_p9))

                    ; #33045: <==negation-removal== 18291 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #14126: origin
                    (not_at_c_p1)

                    ; #32239: origin
                    (at_c_p1)

                    ; #14126: <==negation-removal== 32239 (pos)
                    (not (not_at_c_p1))

                    ; #32239: <==negation-removal== 14126 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #14126: origin
                    (not_at_c_p1)

                    ; #23537: origin
                    (at_c_p2)

                    ; #32239: <==negation-removal== 14126 (pos)
                    (not (at_c_p1))

                    ; #81770: <==negation-removal== 23537 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #13322: origin
                    (at_c_p3)

                    ; #14126: origin
                    (not_at_c_p1)

                    ; #17643: <==negation-removal== 13322 (pos)
                    (not (not_at_c_p3))

                    ; #32239: <==negation-removal== 14126 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #14126: origin
                    (not_at_c_p1)

                    ; #26408: origin
                    (at_c_p4)

                    ; #32239: <==negation-removal== 14126 (pos)
                    (not (at_c_p1))

                    ; #61224: <==negation-removal== 26408 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #14126: origin
                    (not_at_c_p1)

                    ; #47581: origin
                    (at_c_p5)

                    ; #13529: <==negation-removal== 47581 (pos)
                    (not (not_at_c_p5))

                    ; #32239: <==negation-removal== 14126 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #14126: origin
                    (not_at_c_p1)

                    ; #49386: origin
                    (at_c_p6)

                    ; #13913: <==negation-removal== 49386 (pos)
                    (not (not_at_c_p6))

                    ; #32239: <==negation-removal== 14126 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #14126: origin
                    (not_at_c_p1)

                    ; #85740: origin
                    (at_c_p7)

                    ; #32239: <==negation-removal== 14126 (pos)
                    (not (at_c_p1))

                    ; #36639: <==negation-removal== 85740 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #14126: origin
                    (not_at_c_p1)

                    ; #56844: origin
                    (at_c_p8)

                    ; #32239: <==negation-removal== 14126 (pos)
                    (not (at_c_p1))

                    ; #36271: <==negation-removal== 56844 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #14126: origin
                    (not_at_c_p1)

                    ; #90424: origin
                    (at_c_p9)

                    ; #12275: <==negation-removal== 90424 (pos)
                    (not (not_at_c_p9))

                    ; #32239: <==negation-removal== 14126 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #32239: origin
                    (at_c_p1)

                    ; #81770: origin
                    (not_at_c_p2)

                    ; #14126: <==negation-removal== 32239 (pos)
                    (not (not_at_c_p1))

                    ; #23537: <==negation-removal== 81770 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #23537: origin
                    (at_c_p2)

                    ; #81770: origin
                    (not_at_c_p2)

                    ; #23537: <==negation-removal== 81770 (pos)
                    (not (at_c_p2))

                    ; #81770: <==negation-removal== 23537 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #13322: origin
                    (at_c_p3)

                    ; #81770: origin
                    (not_at_c_p2)

                    ; #17643: <==negation-removal== 13322 (pos)
                    (not (not_at_c_p3))

                    ; #23537: <==negation-removal== 81770 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #26408: origin
                    (at_c_p4)

                    ; #81770: origin
                    (not_at_c_p2)

                    ; #23537: <==negation-removal== 81770 (pos)
                    (not (at_c_p2))

                    ; #61224: <==negation-removal== 26408 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #47581: origin
                    (at_c_p5)

                    ; #81770: origin
                    (not_at_c_p2)

                    ; #13529: <==negation-removal== 47581 (pos)
                    (not (not_at_c_p5))

                    ; #23537: <==negation-removal== 81770 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #49386: origin
                    (at_c_p6)

                    ; #81770: origin
                    (not_at_c_p2)

                    ; #13913: <==negation-removal== 49386 (pos)
                    (not (not_at_c_p6))

                    ; #23537: <==negation-removal== 81770 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #81770: origin
                    (not_at_c_p2)

                    ; #85740: origin
                    (at_c_p7)

                    ; #23537: <==negation-removal== 81770 (pos)
                    (not (at_c_p2))

                    ; #36639: <==negation-removal== 85740 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #56844: origin
                    (at_c_p8)

                    ; #81770: origin
                    (not_at_c_p2)

                    ; #23537: <==negation-removal== 81770 (pos)
                    (not (at_c_p2))

                    ; #36271: <==negation-removal== 56844 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #81770: origin
                    (not_at_c_p2)

                    ; #90424: origin
                    (at_c_p9)

                    ; #12275: <==negation-removal== 90424 (pos)
                    (not (not_at_c_p9))

                    ; #23537: <==negation-removal== 81770 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #17643: origin
                    (not_at_c_p3)

                    ; #32239: origin
                    (at_c_p1)

                    ; #13322: <==negation-removal== 17643 (pos)
                    (not (at_c_p3))

                    ; #14126: <==negation-removal== 32239 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #17643: origin
                    (not_at_c_p3)

                    ; #23537: origin
                    (at_c_p2)

                    ; #13322: <==negation-removal== 17643 (pos)
                    (not (at_c_p3))

                    ; #81770: <==negation-removal== 23537 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #13322: origin
                    (at_c_p3)

                    ; #17643: origin
                    (not_at_c_p3)

                    ; #13322: <==negation-removal== 17643 (pos)
                    (not (at_c_p3))

                    ; #17643: <==negation-removal== 13322 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #17643: origin
                    (not_at_c_p3)

                    ; #26408: origin
                    (at_c_p4)

                    ; #13322: <==negation-removal== 17643 (pos)
                    (not (at_c_p3))

                    ; #61224: <==negation-removal== 26408 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #17643: origin
                    (not_at_c_p3)

                    ; #47581: origin
                    (at_c_p5)

                    ; #13322: <==negation-removal== 17643 (pos)
                    (not (at_c_p3))

                    ; #13529: <==negation-removal== 47581 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #17643: origin
                    (not_at_c_p3)

                    ; #49386: origin
                    (at_c_p6)

                    ; #13322: <==negation-removal== 17643 (pos)
                    (not (at_c_p3))

                    ; #13913: <==negation-removal== 49386 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #17643: origin
                    (not_at_c_p3)

                    ; #85740: origin
                    (at_c_p7)

                    ; #13322: <==negation-removal== 17643 (pos)
                    (not (at_c_p3))

                    ; #36639: <==negation-removal== 85740 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #17643: origin
                    (not_at_c_p3)

                    ; #56844: origin
                    (at_c_p8)

                    ; #13322: <==negation-removal== 17643 (pos)
                    (not (at_c_p3))

                    ; #36271: <==negation-removal== 56844 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #17643: origin
                    (not_at_c_p3)

                    ; #90424: origin
                    (at_c_p9)

                    ; #12275: <==negation-removal== 90424 (pos)
                    (not (not_at_c_p9))

                    ; #13322: <==negation-removal== 17643 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #32239: origin
                    (at_c_p1)

                    ; #61224: origin
                    (not_at_c_p4)

                    ; #14126: <==negation-removal== 32239 (pos)
                    (not (not_at_c_p1))

                    ; #26408: <==negation-removal== 61224 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #23537: origin
                    (at_c_p2)

                    ; #61224: origin
                    (not_at_c_p4)

                    ; #26408: <==negation-removal== 61224 (pos)
                    (not (at_c_p4))

                    ; #81770: <==negation-removal== 23537 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #13322: origin
                    (at_c_p3)

                    ; #61224: origin
                    (not_at_c_p4)

                    ; #17643: <==negation-removal== 13322 (pos)
                    (not (not_at_c_p3))

                    ; #26408: <==negation-removal== 61224 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #26408: origin
                    (at_c_p4)

                    ; #61224: origin
                    (not_at_c_p4)

                    ; #26408: <==negation-removal== 61224 (pos)
                    (not (at_c_p4))

                    ; #61224: <==negation-removal== 26408 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #47581: origin
                    (at_c_p5)

                    ; #61224: origin
                    (not_at_c_p4)

                    ; #13529: <==negation-removal== 47581 (pos)
                    (not (not_at_c_p5))

                    ; #26408: <==negation-removal== 61224 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #49386: origin
                    (at_c_p6)

                    ; #61224: origin
                    (not_at_c_p4)

                    ; #13913: <==negation-removal== 49386 (pos)
                    (not (not_at_c_p6))

                    ; #26408: <==negation-removal== 61224 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #61224: origin
                    (not_at_c_p4)

                    ; #85740: origin
                    (at_c_p7)

                    ; #26408: <==negation-removal== 61224 (pos)
                    (not (at_c_p4))

                    ; #36639: <==negation-removal== 85740 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #56844: origin
                    (at_c_p8)

                    ; #61224: origin
                    (not_at_c_p4)

                    ; #26408: <==negation-removal== 61224 (pos)
                    (not (at_c_p4))

                    ; #36271: <==negation-removal== 56844 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #61224: origin
                    (not_at_c_p4)

                    ; #90424: origin
                    (at_c_p9)

                    ; #12275: <==negation-removal== 90424 (pos)
                    (not (not_at_c_p9))

                    ; #26408: <==negation-removal== 61224 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #13529: origin
                    (not_at_c_p5)

                    ; #32239: origin
                    (at_c_p1)

                    ; #14126: <==negation-removal== 32239 (pos)
                    (not (not_at_c_p1))

                    ; #47581: <==negation-removal== 13529 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #13529: origin
                    (not_at_c_p5)

                    ; #23537: origin
                    (at_c_p2)

                    ; #47581: <==negation-removal== 13529 (pos)
                    (not (at_c_p5))

                    ; #81770: <==negation-removal== 23537 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #13322: origin
                    (at_c_p3)

                    ; #13529: origin
                    (not_at_c_p5)

                    ; #17643: <==negation-removal== 13322 (pos)
                    (not (not_at_c_p3))

                    ; #47581: <==negation-removal== 13529 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #13529: origin
                    (not_at_c_p5)

                    ; #26408: origin
                    (at_c_p4)

                    ; #47581: <==negation-removal== 13529 (pos)
                    (not (at_c_p5))

                    ; #61224: <==negation-removal== 26408 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #13529: origin
                    (not_at_c_p5)

                    ; #47581: origin
                    (at_c_p5)

                    ; #13529: <==negation-removal== 47581 (pos)
                    (not (not_at_c_p5))

                    ; #47581: <==negation-removal== 13529 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #13529: origin
                    (not_at_c_p5)

                    ; #49386: origin
                    (at_c_p6)

                    ; #13913: <==negation-removal== 49386 (pos)
                    (not (not_at_c_p6))

                    ; #47581: <==negation-removal== 13529 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #13529: origin
                    (not_at_c_p5)

                    ; #85740: origin
                    (at_c_p7)

                    ; #36639: <==negation-removal== 85740 (pos)
                    (not (not_at_c_p7))

                    ; #47581: <==negation-removal== 13529 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #13529: origin
                    (not_at_c_p5)

                    ; #56844: origin
                    (at_c_p8)

                    ; #36271: <==negation-removal== 56844 (pos)
                    (not (not_at_c_p8))

                    ; #47581: <==negation-removal== 13529 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #13529: origin
                    (not_at_c_p5)

                    ; #90424: origin
                    (at_c_p9)

                    ; #12275: <==negation-removal== 90424 (pos)
                    (not (not_at_c_p9))

                    ; #47581: <==negation-removal== 13529 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #13913: origin
                    (not_at_c_p6)

                    ; #32239: origin
                    (at_c_p1)

                    ; #14126: <==negation-removal== 32239 (pos)
                    (not (not_at_c_p1))

                    ; #49386: <==negation-removal== 13913 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #13913: origin
                    (not_at_c_p6)

                    ; #23537: origin
                    (at_c_p2)

                    ; #49386: <==negation-removal== 13913 (pos)
                    (not (at_c_p6))

                    ; #81770: <==negation-removal== 23537 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #13322: origin
                    (at_c_p3)

                    ; #13913: origin
                    (not_at_c_p6)

                    ; #17643: <==negation-removal== 13322 (pos)
                    (not (not_at_c_p3))

                    ; #49386: <==negation-removal== 13913 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #13913: origin
                    (not_at_c_p6)

                    ; #26408: origin
                    (at_c_p4)

                    ; #49386: <==negation-removal== 13913 (pos)
                    (not (at_c_p6))

                    ; #61224: <==negation-removal== 26408 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #13913: origin
                    (not_at_c_p6)

                    ; #47581: origin
                    (at_c_p5)

                    ; #13529: <==negation-removal== 47581 (pos)
                    (not (not_at_c_p5))

                    ; #49386: <==negation-removal== 13913 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #13913: origin
                    (not_at_c_p6)

                    ; #49386: origin
                    (at_c_p6)

                    ; #13913: <==negation-removal== 49386 (pos)
                    (not (not_at_c_p6))

                    ; #49386: <==negation-removal== 13913 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #13913: origin
                    (not_at_c_p6)

                    ; #85740: origin
                    (at_c_p7)

                    ; #36639: <==negation-removal== 85740 (pos)
                    (not (not_at_c_p7))

                    ; #49386: <==negation-removal== 13913 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #13913: origin
                    (not_at_c_p6)

                    ; #56844: origin
                    (at_c_p8)

                    ; #36271: <==negation-removal== 56844 (pos)
                    (not (not_at_c_p8))

                    ; #49386: <==negation-removal== 13913 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #13913: origin
                    (not_at_c_p6)

                    ; #90424: origin
                    (at_c_p9)

                    ; #12275: <==negation-removal== 90424 (pos)
                    (not (not_at_c_p9))

                    ; #49386: <==negation-removal== 13913 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #32239: origin
                    (at_c_p1)

                    ; #36639: origin
                    (not_at_c_p7)

                    ; #14126: <==negation-removal== 32239 (pos)
                    (not (not_at_c_p1))

                    ; #85740: <==negation-removal== 36639 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (at_c_p2)

                    ; #36639: origin
                    (not_at_c_p7)

                    ; #81770: <==negation-removal== 23537 (pos)
                    (not (not_at_c_p2))

                    ; #85740: <==negation-removal== 36639 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #13322: origin
                    (at_c_p3)

                    ; #36639: origin
                    (not_at_c_p7)

                    ; #17643: <==negation-removal== 13322 (pos)
                    (not (not_at_c_p3))

                    ; #85740: <==negation-removal== 36639 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #26408: origin
                    (at_c_p4)

                    ; #36639: origin
                    (not_at_c_p7)

                    ; #61224: <==negation-removal== 26408 (pos)
                    (not (not_at_c_p4))

                    ; #85740: <==negation-removal== 36639 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p7)

                    ; #47581: origin
                    (at_c_p5)

                    ; #13529: <==negation-removal== 47581 (pos)
                    (not (not_at_c_p5))

                    ; #85740: <==negation-removal== 36639 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p7)

                    ; #49386: origin
                    (at_c_p6)

                    ; #13913: <==negation-removal== 49386 (pos)
                    (not (not_at_c_p6))

                    ; #85740: <==negation-removal== 36639 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p7)

                    ; #85740: origin
                    (at_c_p7)

                    ; #36639: <==negation-removal== 85740 (pos)
                    (not (not_at_c_p7))

                    ; #85740: <==negation-removal== 36639 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p7)

                    ; #56844: origin
                    (at_c_p8)

                    ; #36271: <==negation-removal== 56844 (pos)
                    (not (not_at_c_p8))

                    ; #85740: <==negation-removal== 36639 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p7)

                    ; #90424: origin
                    (at_c_p9)

                    ; #12275: <==negation-removal== 90424 (pos)
                    (not (not_at_c_p9))

                    ; #85740: <==negation-removal== 36639 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #32239: origin
                    (at_c_p1)

                    ; #36271: origin
                    (not_at_c_p8)

                    ; #14126: <==negation-removal== 32239 (pos)
                    (not (not_at_c_p1))

                    ; #56844: <==negation-removal== 36271 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #23537: origin
                    (at_c_p2)

                    ; #36271: origin
                    (not_at_c_p8)

                    ; #56844: <==negation-removal== 36271 (pos)
                    (not (at_c_p8))

                    ; #81770: <==negation-removal== 23537 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #13322: origin
                    (at_c_p3)

                    ; #36271: origin
                    (not_at_c_p8)

                    ; #17643: <==negation-removal== 13322 (pos)
                    (not (not_at_c_p3))

                    ; #56844: <==negation-removal== 36271 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #26408: origin
                    (at_c_p4)

                    ; #36271: origin
                    (not_at_c_p8)

                    ; #56844: <==negation-removal== 36271 (pos)
                    (not (at_c_p8))

                    ; #61224: <==negation-removal== 26408 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #36271: origin
                    (not_at_c_p8)

                    ; #47581: origin
                    (at_c_p5)

                    ; #13529: <==negation-removal== 47581 (pos)
                    (not (not_at_c_p5))

                    ; #56844: <==negation-removal== 36271 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #36271: origin
                    (not_at_c_p8)

                    ; #49386: origin
                    (at_c_p6)

                    ; #13913: <==negation-removal== 49386 (pos)
                    (not (not_at_c_p6))

                    ; #56844: <==negation-removal== 36271 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #36271: origin
                    (not_at_c_p8)

                    ; #85740: origin
                    (at_c_p7)

                    ; #36639: <==negation-removal== 85740 (pos)
                    (not (not_at_c_p7))

                    ; #56844: <==negation-removal== 36271 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #36271: origin
                    (not_at_c_p8)

                    ; #56844: origin
                    (at_c_p8)

                    ; #36271: <==negation-removal== 56844 (pos)
                    (not (not_at_c_p8))

                    ; #56844: <==negation-removal== 36271 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #36271: origin
                    (not_at_c_p8)

                    ; #90424: origin
                    (at_c_p9)

                    ; #12275: <==negation-removal== 90424 (pos)
                    (not (not_at_c_p9))

                    ; #56844: <==negation-removal== 36271 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #12275: origin
                    (not_at_c_p9)

                    ; #32239: origin
                    (at_c_p1)

                    ; #14126: <==negation-removal== 32239 (pos)
                    (not (not_at_c_p1))

                    ; #90424: <==negation-removal== 12275 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #12275: origin
                    (not_at_c_p9)

                    ; #23537: origin
                    (at_c_p2)

                    ; #81770: <==negation-removal== 23537 (pos)
                    (not (not_at_c_p2))

                    ; #90424: <==negation-removal== 12275 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #12275: origin
                    (not_at_c_p9)

                    ; #13322: origin
                    (at_c_p3)

                    ; #17643: <==negation-removal== 13322 (pos)
                    (not (not_at_c_p3))

                    ; #90424: <==negation-removal== 12275 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #12275: origin
                    (not_at_c_p9)

                    ; #26408: origin
                    (at_c_p4)

                    ; #61224: <==negation-removal== 26408 (pos)
                    (not (not_at_c_p4))

                    ; #90424: <==negation-removal== 12275 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #12275: origin
                    (not_at_c_p9)

                    ; #47581: origin
                    (at_c_p5)

                    ; #13529: <==negation-removal== 47581 (pos)
                    (not (not_at_c_p5))

                    ; #90424: <==negation-removal== 12275 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #12275: origin
                    (not_at_c_p9)

                    ; #49386: origin
                    (at_c_p6)

                    ; #13913: <==negation-removal== 49386 (pos)
                    (not (not_at_c_p6))

                    ; #90424: <==negation-removal== 12275 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #12275: origin
                    (not_at_c_p9)

                    ; #85740: origin
                    (at_c_p7)

                    ; #36639: <==negation-removal== 85740 (pos)
                    (not (not_at_c_p7))

                    ; #90424: <==negation-removal== 12275 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #12275: origin
                    (not_at_c_p9)

                    ; #56844: origin
                    (at_c_p8)

                    ; #36271: <==negation-removal== 56844 (pos)
                    (not (not_at_c_p8))

                    ; #90424: <==negation-removal== 12275 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #12275: origin
                    (not_at_c_p9)

                    ; #90424: origin
                    (at_c_p9)

                    ; #12275: <==negation-removal== 90424 (pos)
                    (not (not_at_c_p9))

                    ; #90424: <==negation-removal== 12275 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13001: <==closure== 69848 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #38438: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #41440: <==closure== 38438 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #43153: <==commonly_known== 17597 (neg)
                    (Pa_checked_p1)

                    ; #49085: <==commonly_known== 56622 (pos)
                    (Ba_checked_p1)

                    ; #56622: origin
                    (checked_p1)

                    ; #58088: <==commonly_known== 56622 (pos)
                    (Bc_checked_p1)

                    ; #60129: <==commonly_known== 56622 (pos)
                    (Bb_checked_p1)

                    ; #69848: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #70484: <==commonly_known== 17597 (neg)
                    (Pb_checked_p1)

                    ; #75400: <==commonly_known== 17597 (neg)
                    (Pc_checked_p1)

                    ; #11413: <==uncertain_firing== 69848 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #12320: <==uncertain_firing== 13001 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #17597: <==negation-removal== 56622 (pos)
                    (not (not_checked_p1))

                    ; #25169: <==negation-removal== 70484 (pos)
                    (not (Bb_not_checked_p1))

                    ; #31295: <==negation-removal== 13001 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #31687: <==negation-removal== 58088 (pos)
                    (not (Pc_not_checked_p1))

                    ; #33358: <==negation-removal== 60129 (pos)
                    (not (Pb_not_checked_p1))

                    ; #38418: <==negation-removal== 38438 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #47331: <==negation-removal== 41440 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #63756: <==negation-removal== 69848 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #66831: <==uncertain_firing== 41440 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #68406: <==negation-removal== 49085 (pos)
                    (not (Pa_not_checked_p1))

                    ; #71538: <==uncertain_firing== 38438 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #79907: <==negation-removal== 43153 (pos)
                    (not (Ba_not_checked_p1))

                    ; #89738: <==negation-removal== 75400 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #14007: <==commonly_known== 57551 (pos)
                    (Bc_checked_p2)

                    ; #19830: <==commonly_known== 57551 (pos)
                    (Bb_checked_p2)

                    ; #32346: <==closure== 66017 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #50546: <==commonly_known== 57551 (pos)
                    (Ba_checked_p2)

                    ; #51346: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #57551: origin
                    (checked_p2)

                    ; #66017: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #72947: <==commonly_known== 87779 (neg)
                    (Pc_checked_p2)

                    ; #75514: <==closure== 51346 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #81654: <==commonly_known== 87779 (neg)
                    (Pa_checked_p2)

                    ; #89111: <==commonly_known== 87779 (neg)
                    (Pb_checked_p2)

                    ; #15711: <==uncertain_firing== 51346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #23117: <==uncertain_firing== 66017 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #33529: <==negation-removal== 72947 (pos)
                    (not (Bc_not_checked_p2))

                    ; #38603: <==negation-removal== 14007 (pos)
                    (not (Pc_not_checked_p2))

                    ; #44599: <==uncertain_firing== 75514 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #45844: <==negation-removal== 32346 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #53051: <==negation-removal== 19830 (pos)
                    (not (Pb_not_checked_p2))

                    ; #60100: <==uncertain_firing== 32346 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #61972: <==negation-removal== 50546 (pos)
                    (not (Pa_not_checked_p2))

                    ; #63775: <==negation-removal== 66017 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #68779: <==negation-removal== 75514 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #72550: <==negation-removal== 81654 (pos)
                    (not (Ba_not_checked_p2))

                    ; #83282: <==negation-removal== 89111 (pos)
                    (not (Bb_not_checked_p2))

                    ; #87779: <==negation-removal== 57551 (pos)
                    (not (not_checked_p2))

                    ; #95258: <==negation-removal== 51346 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13296: <==closure== 75654 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #38354: <==commonly_known== 63340 (pos)
                    (Ba_checked_p3)

                    ; #43806: <==commonly_known== 63340 (pos)
                    (Bb_checked_p3)

                    ; #49907: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #51309: <==commonly_known== 20248 (neg)
                    (Pa_checked_p3)

                    ; #63340: origin
                    (checked_p3)

                    ; #63685: <==commonly_known== 20248 (neg)
                    (Pb_checked_p3)

                    ; #73529: <==commonly_known== 20248 (neg)
                    (Pc_checked_p3)

                    ; #75414: <==commonly_known== 63340 (pos)
                    (Bc_checked_p3)

                    ; #75654: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #79771: <==closure== 49907 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #15944: <==negation-removal== 63685 (pos)
                    (not (Bb_not_checked_p3))

                    ; #17776: <==uncertain_firing== 49907 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #20248: <==negation-removal== 63340 (pos)
                    (not (not_checked_p3))

                    ; #30176: <==negation-removal== 73529 (pos)
                    (not (Bc_not_checked_p3))

                    ; #32362: <==negation-removal== 38354 (pos)
                    (not (Pa_not_checked_p3))

                    ; #42567: <==negation-removal== 51309 (pos)
                    (not (Ba_not_checked_p3))

                    ; #60211: <==negation-removal== 49907 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #62921: <==uncertain_firing== 75654 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69625: <==negation-removal== 43806 (pos)
                    (not (Pb_not_checked_p3))

                    ; #72037: <==uncertain_firing== 13296 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #85356: <==negation-removal== 75414 (pos)
                    (not (Pc_not_checked_p3))

                    ; #91451: <==negation-removal== 13296 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #91811: <==uncertain_firing== 79771 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #92121: <==negation-removal== 75654 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #99949: <==negation-removal== 79771 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #16718: <==commonly_known== 32942 (pos)
                    (Bb_checked_p4)

                    ; #30526: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #32926: <==commonly_known== 78210 (neg)
                    (Pc_checked_p4)

                    ; #32942: origin
                    (checked_p4)

                    ; #42472: <==closure== 87699 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #52846: <==commonly_known== 32942 (pos)
                    (Ba_checked_p4)

                    ; #59649: <==commonly_known== 78210 (neg)
                    (Pb_checked_p4)

                    ; #70891: <==commonly_known== 32942 (pos)
                    (Bc_checked_p4)

                    ; #78635: <==commonly_known== 78210 (neg)
                    (Pa_checked_p4)

                    ; #83581: <==closure== 30526 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #87699: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #13020: <==negation-removal== 52846 (pos)
                    (not (Pa_not_checked_p4))

                    ; #24815: <==negation-removal== 59649 (pos)
                    (not (Bb_not_checked_p4))

                    ; #28856: <==negation-removal== 16718 (pos)
                    (not (Pb_not_checked_p4))

                    ; #31756: <==uncertain_firing== 42472 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #51639: <==uncertain_firing== 87699 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #53642: <==negation-removal== 78635 (pos)
                    (not (Ba_not_checked_p4))

                    ; #59101: <==negation-removal== 30526 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #61349: <==uncertain_firing== 30526 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #62813: <==negation-removal== 42472 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #77364: <==negation-removal== 83581 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #78210: <==negation-removal== 32942 (pos)
                    (not (not_checked_p4))

                    ; #80684: <==negation-removal== 32926 (pos)
                    (not (Bc_not_checked_p4))

                    ; #83884: <==uncertain_firing== 83581 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #90363: <==negation-removal== 87699 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #90400: <==negation-removal== 70891 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11086: <==commonly_known== 84140 (pos)
                    (Ba_checked_p5)

                    ; #14687: <==commonly_known== 59664 (neg)
                    (Pa_checked_p5)

                    ; #21639: <==commonly_known== 59664 (neg)
                    (Pb_checked_p5)

                    ; #34198: <==closure== 46309 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #34632: <==commonly_known== 84140 (pos)
                    (Bb_checked_p5)

                    ; #46309: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #55653: <==commonly_known== 59664 (neg)
                    (Pc_checked_p5)

                    ; #59013: <==closure== 78887 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #78887: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #84140: origin
                    (checked_p5)

                    ; #91613: <==commonly_known== 84140 (pos)
                    (Bc_checked_p5)

                    ; #14019: <==negation-removal== 34632 (pos)
                    (not (Pb_not_checked_p5))

                    ; #14374: <==negation-removal== 11086 (pos)
                    (not (Pa_not_checked_p5))

                    ; #15834: <==uncertain_firing== 46309 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #20860: <==uncertain_firing== 34198 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #30195: <==uncertain_firing== 59013 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #37945: <==negation-removal== 91613 (pos)
                    (not (Pc_not_checked_p5))

                    ; #38124: <==negation-removal== 55653 (pos)
                    (not (Bc_not_checked_p5))

                    ; #52499: <==negation-removal== 14687 (pos)
                    (not (Ba_not_checked_p5))

                    ; #53729: <==negation-removal== 34198 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #54689: <==uncertain_firing== 78887 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #55491: <==negation-removal== 46309 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #59664: <==negation-removal== 84140 (pos)
                    (not (not_checked_p5))

                    ; #64460: <==negation-removal== 78887 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #67175: <==negation-removal== 21639 (pos)
                    (not (Bb_not_checked_p5))

                    ; #82606: <==negation-removal== 59013 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12797: <==commonly_known== 52886 (pos)
                    (Ba_checked_p6)

                    ; #20573: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #31648: <==commonly_known== 51002 (neg)
                    (Pb_checked_p6)

                    ; #46795: <==commonly_known== 52886 (pos)
                    (Bb_checked_p6)

                    ; #52886: origin
                    (checked_p6)

                    ; #56752: <==closure== 20573 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #63596: <==commonly_known== 51002 (neg)
                    (Pc_checked_p6)

                    ; #63687: <==closure== 74611 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #65005: <==commonly_known== 51002 (neg)
                    (Pa_checked_p6)

                    ; #74611: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #79099: <==commonly_known== 52886 (pos)
                    (Bc_checked_p6)

                    ; #15019: <==negation-removal== 65005 (pos)
                    (not (Ba_not_checked_p6))

                    ; #22186: <==negation-removal== 79099 (pos)
                    (not (Pc_not_checked_p6))

                    ; #23195: <==negation-removal== 74611 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #36459: <==negation-removal== 63596 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39979: <==negation-removal== 56752 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #41392: <==uncertain_firing== 63687 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #42240: <==negation-removal== 46795 (pos)
                    (not (Pb_not_checked_p6))

                    ; #44419: <==negation-removal== 31648 (pos)
                    (not (Bb_not_checked_p6))

                    ; #51002: <==negation-removal== 52886 (pos)
                    (not (not_checked_p6))

                    ; #58783: <==negation-removal== 63687 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #66332: <==uncertain_firing== 74611 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68376: <==uncertain_firing== 56752 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #70008: <==uncertain_firing== 20573 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #85168: <==negation-removal== 12797 (pos)
                    (not (Pa_not_checked_p6))

                    ; #87974: <==negation-removal== 20573 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15516: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18481: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #27131: <==commonly_known== 62822 (pos)
                    (Bc_checked_p7)

                    ; #34847: <==commonly_known== 33456 (neg)
                    (Pa_checked_p7)

                    ; #49352: <==commonly_known== 33456 (neg)
                    (Pc_checked_p7)

                    ; #59745: <==closure== 15516 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #62822: origin
                    (checked_p7)

                    ; #70578: <==commonly_known== 33456 (neg)
                    (Pb_checked_p7)

                    ; #79659: <==commonly_known== 62822 (pos)
                    (Ba_checked_p7)

                    ; #81122: <==closure== 18481 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #90500: <==commonly_known== 62822 (pos)
                    (Bb_checked_p7)

                    ; #11349: <==negation-removal== 81122 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #16036: <==negation-removal== 18481 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #20700: <==negation-removal== 90500 (pos)
                    (not (Pb_not_checked_p7))

                    ; #31627: <==negation-removal== 34847 (pos)
                    (not (Ba_not_checked_p7))

                    ; #32162: <==negation-removal== 27131 (pos)
                    (not (Pc_not_checked_p7))

                    ; #33456: <==negation-removal== 62822 (pos)
                    (not (not_checked_p7))

                    ; #34169: <==uncertain_firing== 81122 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #36459: <==negation-removal== 70578 (pos)
                    (not (Bb_not_checked_p7))

                    ; #45476: <==negation-removal== 15516 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #48410: <==negation-removal== 49352 (pos)
                    (not (Bc_not_checked_p7))

                    ; #49426: <==negation-removal== 79659 (pos)
                    (not (Pa_not_checked_p7))

                    ; #49476: <==negation-removal== 59745 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #56030: <==uncertain_firing== 59745 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #63700: <==uncertain_firing== 18481 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #91339: <==uncertain_firing== 15516 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15130: <==closure== 66950 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #15565: <==commonly_known== 31037 (neg)
                    (Pb_checked_p8)

                    ; #20122: <==commonly_known== 63342 (pos)
                    (Bc_checked_p8)

                    ; #32630: <==commonly_known== 31037 (neg)
                    (Pc_checked_p8)

                    ; #42243: <==closure== 68166 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #51792: <==commonly_known== 31037 (neg)
                    (Pa_checked_p8)

                    ; #55774: <==commonly_known== 63342 (pos)
                    (Ba_checked_p8)

                    ; #63342: origin
                    (checked_p8)

                    ; #66950: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #68166: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #77079: <==commonly_known== 63342 (pos)
                    (Bb_checked_p8)

                    ; #18215: <==uncertain_firing== 15130 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #28417: <==negation-removal== 51792 (pos)
                    (not (Ba_not_checked_p8))

                    ; #31037: <==negation-removal== 63342 (pos)
                    (not (not_checked_p8))

                    ; #32215: <==uncertain_firing== 66950 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #42542: <==negation-removal== 32630 (pos)
                    (not (Bc_not_checked_p8))

                    ; #50282: <==negation-removal== 15130 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #61281: <==negation-removal== 42243 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #63645: <==uncertain_firing== 68166 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #73857: <==negation-removal== 15565 (pos)
                    (not (Bb_not_checked_p8))

                    ; #76525: <==negation-removal== 68166 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78049: <==negation-removal== 55774 (pos)
                    (not (Pa_not_checked_p8))

                    ; #79068: <==negation-removal== 66950 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #88845: <==negation-removal== 77079 (pos)
                    (not (Pb_not_checked_p8))

                    ; #89250: <==uncertain_firing== 42243 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #91441: <==negation-removal== 20122 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10688: <==commonly_known== 26868 (pos)
                    (Ba_checked_p9)

                    ; #18879: <==commonly_known== 26868 (pos)
                    (Bb_checked_p9)

                    ; #21591: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #26868: origin
                    (checked_p9)

                    ; #31968: <==closure== 46997 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #46997: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #55367: <==closure== 21591 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #64739: <==commonly_known== 47391 (neg)
                    (Pc_checked_p9)

                    ; #65443: <==commonly_known== 26868 (pos)
                    (Bc_checked_p9)

                    ; #68064: <==commonly_known== 47391 (neg)
                    (Pa_checked_p9)

                    ; #89101: <==commonly_known== 47391 (neg)
                    (Pb_checked_p9)

                    ; #15535: <==negation-removal== 64739 (pos)
                    (not (Bc_not_checked_p9))

                    ; #20551: <==negation-removal== 31968 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #20695: <==uncertain_firing== 31968 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #21898: <==negation-removal== 55367 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #24628: <==uncertain_firing== 46997 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #29814: <==negation-removal== 89101 (pos)
                    (not (Bb_not_checked_p9))

                    ; #31389: <==negation-removal== 46997 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #47391: <==negation-removal== 26868 (pos)
                    (not (not_checked_p9))

                    ; #48020: <==negation-removal== 21591 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #61685: <==negation-removal== 18879 (pos)
                    (not (Pb_not_checked_p9))

                    ; #68424: <==uncertain_firing== 21591 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #77233: <==negation-removal== 65443 (pos)
                    (not (Pc_not_checked_p9))

                    ; #79441: <==negation-removal== 68064 (pos)
                    (not (Ba_not_checked_p9))

                    ; #80943: <==uncertain_firing== 55367 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #92082: <==negation-removal== 10688 (pos)
                    (not (Pa_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #20154: <==closure== 36068 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #36068: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #43153: <==commonly_known== 17597 (neg)
                    (Pa_checked_p1)

                    ; #48846: <==closure== 91629 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #49085: <==commonly_known== 56622 (pos)
                    (Ba_checked_p1)

                    ; #56622: origin
                    (checked_p1)

                    ; #58088: <==commonly_known== 56622 (pos)
                    (Bc_checked_p1)

                    ; #60129: <==commonly_known== 56622 (pos)
                    (Bb_checked_p1)

                    ; #70484: <==commonly_known== 17597 (neg)
                    (Pb_checked_p1)

                    ; #75400: <==commonly_known== 17597 (neg)
                    (Pc_checked_p1)

                    ; #91629: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #14043: <==negation-removal== 20154 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #17597: <==negation-removal== 56622 (pos)
                    (not (not_checked_p1))

                    ; #17840: <==negation-removal== 36068 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #25169: <==negation-removal== 70484 (pos)
                    (not (Bb_not_checked_p1))

                    ; #31687: <==negation-removal== 58088 (pos)
                    (not (Pc_not_checked_p1))

                    ; #33358: <==negation-removal== 60129 (pos)
                    (not (Pb_not_checked_p1))

                    ; #35787: <==negation-removal== 48846 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #54734: <==uncertain_firing== 48846 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #68059: <==uncertain_firing== 36068 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #68406: <==negation-removal== 49085 (pos)
                    (not (Pa_not_checked_p1))

                    ; #73691: <==uncertain_firing== 91629 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #79907: <==negation-removal== 43153 (pos)
                    (not (Ba_not_checked_p1))

                    ; #89738: <==negation-removal== 75400 (pos)
                    (not (Bc_not_checked_p1))

                    ; #90003: <==negation-removal== 91629 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #90089: <==uncertain_firing== 20154 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #14007: <==commonly_known== 57551 (pos)
                    (Bc_checked_p2)

                    ; #19830: <==commonly_known== 57551 (pos)
                    (Bb_checked_p2)

                    ; #21759: <==closure== 32019 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #32019: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #50546: <==commonly_known== 57551 (pos)
                    (Ba_checked_p2)

                    ; #57551: origin
                    (checked_p2)

                    ; #70812: <==closure== 77422 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #72947: <==commonly_known== 87779 (neg)
                    (Pc_checked_p2)

                    ; #77422: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #81654: <==commonly_known== 87779 (neg)
                    (Pa_checked_p2)

                    ; #89111: <==commonly_known== 87779 (neg)
                    (Pb_checked_p2)

                    ; #22847: <==uncertain_firing== 32019 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #32976: <==uncertain_firing== 21759 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #33529: <==negation-removal== 72947 (pos)
                    (not (Bc_not_checked_p2))

                    ; #38603: <==negation-removal== 14007 (pos)
                    (not (Pc_not_checked_p2))

                    ; #42726: <==negation-removal== 32019 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #53051: <==negation-removal== 19830 (pos)
                    (not (Pb_not_checked_p2))

                    ; #57415: <==uncertain_firing== 70812 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #61972: <==negation-removal== 50546 (pos)
                    (not (Pa_not_checked_p2))

                    ; #64201: <==negation-removal== 70812 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #72550: <==negation-removal== 81654 (pos)
                    (not (Ba_not_checked_p2))

                    ; #76829: <==negation-removal== 21759 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #80729: <==negation-removal== 77422 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #83282: <==negation-removal== 89111 (pos)
                    (not (Bb_not_checked_p2))

                    ; #87779: <==negation-removal== 57551 (pos)
                    (not (not_checked_p2))

                    ; #88903: <==uncertain_firing== 77422 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #31159: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #38354: <==commonly_known== 63340 (pos)
                    (Ba_checked_p3)

                    ; #43806: <==commonly_known== 63340 (pos)
                    (Bb_checked_p3)

                    ; #51309: <==commonly_known== 20248 (neg)
                    (Pa_checked_p3)

                    ; #51999: <==closure== 31159 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #56167: <==closure== 72678 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #63340: origin
                    (checked_p3)

                    ; #63685: <==commonly_known== 20248 (neg)
                    (Pb_checked_p3)

                    ; #72678: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #73529: <==commonly_known== 20248 (neg)
                    (Pc_checked_p3)

                    ; #75414: <==commonly_known== 63340 (pos)
                    (Bc_checked_p3)

                    ; #14867: <==negation-removal== 31159 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #15944: <==negation-removal== 63685 (pos)
                    (not (Bb_not_checked_p3))

                    ; #18003: <==uncertain_firing== 56167 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #20248: <==negation-removal== 63340 (pos)
                    (not (not_checked_p3))

                    ; #30176: <==negation-removal== 73529 (pos)
                    (not (Bc_not_checked_p3))

                    ; #32362: <==negation-removal== 38354 (pos)
                    (not (Pa_not_checked_p3))

                    ; #42567: <==negation-removal== 51309 (pos)
                    (not (Ba_not_checked_p3))

                    ; #49014: <==uncertain_firing== 72678 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #55631: <==negation-removal== 51999 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #67379: <==uncertain_firing== 51999 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #69625: <==negation-removal== 43806 (pos)
                    (not (Pb_not_checked_p3))

                    ; #79432: <==negation-removal== 56167 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #81215: <==negation-removal== 72678 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #85356: <==negation-removal== 75414 (pos)
                    (not (Pc_not_checked_p3))

                    ; #85990: <==uncertain_firing== 31159 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #16718: <==commonly_known== 32942 (pos)
                    (Bb_checked_p4)

                    ; #32926: <==commonly_known== 78210 (neg)
                    (Pc_checked_p4)

                    ; #32942: origin
                    (checked_p4)

                    ; #45923: <==closure== 49613 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #49613: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #52846: <==commonly_known== 32942 (pos)
                    (Ba_checked_p4)

                    ; #59031: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #59649: <==commonly_known== 78210 (neg)
                    (Pb_checked_p4)

                    ; #67034: <==closure== 59031 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #70891: <==commonly_known== 32942 (pos)
                    (Bc_checked_p4)

                    ; #78635: <==commonly_known== 78210 (neg)
                    (Pa_checked_p4)

                    ; #13020: <==negation-removal== 52846 (pos)
                    (not (Pa_not_checked_p4))

                    ; #17369: <==negation-removal== 45923 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #22768: <==negation-removal== 59031 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #24815: <==negation-removal== 59649 (pos)
                    (not (Bb_not_checked_p4))

                    ; #28856: <==negation-removal== 16718 (pos)
                    (not (Pb_not_checked_p4))

                    ; #32789: <==uncertain_firing== 49613 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #42988: <==uncertain_firing== 59031 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #53642: <==negation-removal== 78635 (pos)
                    (not (Ba_not_checked_p4))

                    ; #63652: <==negation-removal== 67034 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #67567: <==uncertain_firing== 67034 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #76581: <==uncertain_firing== 45923 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #78210: <==negation-removal== 32942 (pos)
                    (not (not_checked_p4))

                    ; #80684: <==negation-removal== 32926 (pos)
                    (not (Bc_not_checked_p4))

                    ; #89260: <==negation-removal== 49613 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #90400: <==negation-removal== 70891 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11086: <==commonly_known== 84140 (pos)
                    (Ba_checked_p5)

                    ; #14687: <==commonly_known== 59664 (neg)
                    (Pa_checked_p5)

                    ; #21639: <==commonly_known== 59664 (neg)
                    (Pb_checked_p5)

                    ; #34632: <==commonly_known== 84140 (pos)
                    (Bb_checked_p5)

                    ; #43766: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #48605: <==closure== 43766 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #55360: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #55653: <==commonly_known== 59664 (neg)
                    (Pc_checked_p5)

                    ; #60243: <==closure== 55360 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #84140: origin
                    (checked_p5)

                    ; #91613: <==commonly_known== 84140 (pos)
                    (Bc_checked_p5)

                    ; #14019: <==negation-removal== 34632 (pos)
                    (not (Pb_not_checked_p5))

                    ; #14374: <==negation-removal== 11086 (pos)
                    (not (Pa_not_checked_p5))

                    ; #22293: <==uncertain_firing== 48605 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #31631: <==uncertain_firing== 60243 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #33374: <==uncertain_firing== 43766 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #37945: <==negation-removal== 91613 (pos)
                    (not (Pc_not_checked_p5))

                    ; #38124: <==negation-removal== 55653 (pos)
                    (not (Bc_not_checked_p5))

                    ; #38652: <==uncertain_firing== 55360 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #49709: <==negation-removal== 43766 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #52499: <==negation-removal== 14687 (pos)
                    (not (Ba_not_checked_p5))

                    ; #53464: <==negation-removal== 60243 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #59664: <==negation-removal== 84140 (pos)
                    (not (not_checked_p5))

                    ; #62180: <==negation-removal== 48605 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #67175: <==negation-removal== 21639 (pos)
                    (not (Bb_not_checked_p5))

                    ; #81811: <==negation-removal== 55360 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12797: <==commonly_known== 52886 (pos)
                    (Ba_checked_p6)

                    ; #23965: <==closure== 53248 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #31648: <==commonly_known== 51002 (neg)
                    (Pb_checked_p6)

                    ; #46795: <==commonly_known== 52886 (pos)
                    (Bb_checked_p6)

                    ; #52886: origin
                    (checked_p6)

                    ; #53248: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #63596: <==commonly_known== 51002 (neg)
                    (Pc_checked_p6)

                    ; #65005: <==commonly_known== 51002 (neg)
                    (Pa_checked_p6)

                    ; #66939: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #69616: <==closure== 66939 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #79099: <==commonly_known== 52886 (pos)
                    (Bc_checked_p6)

                    ; #15019: <==negation-removal== 65005 (pos)
                    (not (Ba_not_checked_p6))

                    ; #22186: <==negation-removal== 79099 (pos)
                    (not (Pc_not_checked_p6))

                    ; #23197: <==negation-removal== 23965 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #36459: <==negation-removal== 63596 (pos)
                    (not (Bc_not_checked_p6))

                    ; #37684: <==negation-removal== 53248 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #42240: <==negation-removal== 46795 (pos)
                    (not (Pb_not_checked_p6))

                    ; #43159: <==uncertain_firing== 66939 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #44419: <==negation-removal== 31648 (pos)
                    (not (Bb_not_checked_p6))

                    ; #51002: <==negation-removal== 52886 (pos)
                    (not (not_checked_p6))

                    ; #54727: <==uncertain_firing== 23965 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #68906: <==uncertain_firing== 69616 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #85168: <==negation-removal== 12797 (pos)
                    (not (Pa_not_checked_p6))

                    ; #86214: <==uncertain_firing== 53248 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #89280: <==negation-removal== 69616 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #99632: <==negation-removal== 66939 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #27131: <==commonly_known== 62822 (pos)
                    (Bc_checked_p7)

                    ; #27880: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #34847: <==commonly_known== 33456 (neg)
                    (Pa_checked_p7)

                    ; #35937: <==closure== 60234 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #49352: <==commonly_known== 33456 (neg)
                    (Pc_checked_p7)

                    ; #57910: <==closure== 27880 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #60234: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #62822: origin
                    (checked_p7)

                    ; #70578: <==commonly_known== 33456 (neg)
                    (Pb_checked_p7)

                    ; #79659: <==commonly_known== 62822 (pos)
                    (Ba_checked_p7)

                    ; #90500: <==commonly_known== 62822 (pos)
                    (Bb_checked_p7)

                    ; #10715: <==negation-removal== 60234 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #20700: <==negation-removal== 90500 (pos)
                    (not (Pb_not_checked_p7))

                    ; #26115: <==uncertain_firing== 60234 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #31627: <==negation-removal== 34847 (pos)
                    (not (Ba_not_checked_p7))

                    ; #32162: <==negation-removal== 27131 (pos)
                    (not (Pc_not_checked_p7))

                    ; #33456: <==negation-removal== 62822 (pos)
                    (not (not_checked_p7))

                    ; #36459: <==negation-removal== 70578 (pos)
                    (not (Bb_not_checked_p7))

                    ; #48410: <==negation-removal== 49352 (pos)
                    (not (Bc_not_checked_p7))

                    ; #49426: <==negation-removal== 79659 (pos)
                    (not (Pa_not_checked_p7))

                    ; #53115: <==uncertain_firing== 27880 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #57286: <==negation-removal== 35937 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #69384: <==uncertain_firing== 35937 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #70536: <==uncertain_firing== 57910 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #84532: <==negation-removal== 27880 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #85752: <==negation-removal== 57910 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15565: <==commonly_known== 31037 (neg)
                    (Pb_checked_p8)

                    ; #16989: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #19631: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #20122: <==commonly_known== 63342 (pos)
                    (Bc_checked_p8)

                    ; #32630: <==commonly_known== 31037 (neg)
                    (Pc_checked_p8)

                    ; #51792: <==commonly_known== 31037 (neg)
                    (Pa_checked_p8)

                    ; #55329: <==closure== 16989 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #55774: <==commonly_known== 63342 (pos)
                    (Ba_checked_p8)

                    ; #63342: origin
                    (checked_p8)

                    ; #72930: <==closure== 19631 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #77079: <==commonly_known== 63342 (pos)
                    (Bb_checked_p8)

                    ; #22119: <==negation-removal== 19631 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #22300: <==negation-removal== 72930 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #25462: <==negation-removal== 55329 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #28417: <==negation-removal== 51792 (pos)
                    (not (Ba_not_checked_p8))

                    ; #31037: <==negation-removal== 63342 (pos)
                    (not (not_checked_p8))

                    ; #42060: <==uncertain_firing== 55329 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #42542: <==negation-removal== 32630 (pos)
                    (not (Bc_not_checked_p8))

                    ; #53524: <==uncertain_firing== 72930 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #57261: <==uncertain_firing== 19631 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #69237: <==negation-removal== 16989 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #73857: <==negation-removal== 15565 (pos)
                    (not (Bb_not_checked_p8))

                    ; #78049: <==negation-removal== 55774 (pos)
                    (not (Pa_not_checked_p8))

                    ; #85994: <==uncertain_firing== 16989 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #88845: <==negation-removal== 77079 (pos)
                    (not (Pb_not_checked_p8))

                    ; #91441: <==negation-removal== 20122 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10688: <==commonly_known== 26868 (pos)
                    (Ba_checked_p9)

                    ; #18879: <==commonly_known== 26868 (pos)
                    (Bb_checked_p9)

                    ; #26868: origin
                    (checked_p9)

                    ; #46632: <==closure== 49041 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #49041: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #64739: <==commonly_known== 47391 (neg)
                    (Pc_checked_p9)

                    ; #65443: <==commonly_known== 26868 (pos)
                    (Bc_checked_p9)

                    ; #68064: <==commonly_known== 47391 (neg)
                    (Pa_checked_p9)

                    ; #72697: <==closure== 85006 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #85006: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #89101: <==commonly_known== 47391 (neg)
                    (Pb_checked_p9)

                    ; #15535: <==negation-removal== 64739 (pos)
                    (not (Bc_not_checked_p9))

                    ; #23333: <==negation-removal== 85006 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #29814: <==negation-removal== 89101 (pos)
                    (not (Bb_not_checked_p9))

                    ; #32699: <==uncertain_firing== 46632 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #38963: <==negation-removal== 49041 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #47391: <==negation-removal== 26868 (pos)
                    (not (not_checked_p9))

                    ; #61685: <==negation-removal== 18879 (pos)
                    (not (Pb_not_checked_p9))

                    ; #77233: <==negation-removal== 65443 (pos)
                    (not (Pc_not_checked_p9))

                    ; #77969: <==negation-removal== 46632 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #79441: <==negation-removal== 68064 (pos)
                    (not (Ba_not_checked_p9))

                    ; #80162: <==uncertain_firing== 85006 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #80667: <==negation-removal== 72697 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #82878: <==uncertain_firing== 49041 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #83466: <==uncertain_firing== 72697 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #92082: <==negation-removal== 10688 (pos)
                    (not (Pa_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #26669: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #43153: <==commonly_known== 17597 (neg)
                    (Pa_checked_p1)

                    ; #44208: <==closure== 89470 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #47580: <==closure== 26669 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #49085: <==commonly_known== 56622 (pos)
                    (Ba_checked_p1)

                    ; #56622: origin
                    (checked_p1)

                    ; #58088: <==commonly_known== 56622 (pos)
                    (Bc_checked_p1)

                    ; #60129: <==commonly_known== 56622 (pos)
                    (Bb_checked_p1)

                    ; #70484: <==commonly_known== 17597 (neg)
                    (Pb_checked_p1)

                    ; #75400: <==commonly_known== 17597 (neg)
                    (Pc_checked_p1)

                    ; #89470: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #14157: <==negation-removal== 89470 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #16889: <==negation-removal== 44208 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #17597: <==negation-removal== 56622 (pos)
                    (not (not_checked_p1))

                    ; #25169: <==negation-removal== 70484 (pos)
                    (not (Bb_not_checked_p1))

                    ; #25582: <==uncertain_firing== 26669 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #28413: <==uncertain_firing== 44208 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #31687: <==negation-removal== 58088 (pos)
                    (not (Pc_not_checked_p1))

                    ; #31761: <==negation-removal== 26669 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #33358: <==negation-removal== 60129 (pos)
                    (not (Pb_not_checked_p1))

                    ; #62538: <==uncertain_firing== 89470 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #68406: <==negation-removal== 49085 (pos)
                    (not (Pa_not_checked_p1))

                    ; #74435: <==negation-removal== 47580 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #79907: <==negation-removal== 43153 (pos)
                    (not (Ba_not_checked_p1))

                    ; #85659: <==uncertain_firing== 47580 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #89738: <==negation-removal== 75400 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11559: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #14007: <==commonly_known== 57551 (pos)
                    (Bc_checked_p2)

                    ; #19830: <==commonly_known== 57551 (pos)
                    (Bb_checked_p2)

                    ; #24009: <==closure== 11559 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #25650: <==closure== 46443 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #46443: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #50546: <==commonly_known== 57551 (pos)
                    (Ba_checked_p2)

                    ; #57551: origin
                    (checked_p2)

                    ; #72947: <==commonly_known== 87779 (neg)
                    (Pc_checked_p2)

                    ; #81654: <==commonly_known== 87779 (neg)
                    (Pa_checked_p2)

                    ; #89111: <==commonly_known== 87779 (neg)
                    (Pb_checked_p2)

                    ; #11917: <==uncertain_firing== 25650 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #33529: <==negation-removal== 72947 (pos)
                    (not (Bc_not_checked_p2))

                    ; #38603: <==negation-removal== 14007 (pos)
                    (not (Pc_not_checked_p2))

                    ; #46399: <==negation-removal== 25650 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #51888: <==uncertain_firing== 11559 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #51951: <==negation-removal== 46443 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #53051: <==negation-removal== 19830 (pos)
                    (not (Pb_not_checked_p2))

                    ; #57527: <==negation-removal== 24009 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #61972: <==negation-removal== 50546 (pos)
                    (not (Pa_not_checked_p2))

                    ; #62115: <==uncertain_firing== 46443 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #72550: <==negation-removal== 81654 (pos)
                    (not (Ba_not_checked_p2))

                    ; #79983: <==negation-removal== 11559 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #83282: <==negation-removal== 89111 (pos)
                    (not (Bb_not_checked_p2))

                    ; #87779: <==negation-removal== 57551 (pos)
                    (not (not_checked_p2))

                    ; #90468: <==uncertain_firing== 24009 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16031: <==closure== 91131 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #38354: <==commonly_known== 63340 (pos)
                    (Ba_checked_p3)

                    ; #43806: <==commonly_known== 63340 (pos)
                    (Bb_checked_p3)

                    ; #51309: <==commonly_known== 20248 (neg)
                    (Pa_checked_p3)

                    ; #63340: origin
                    (checked_p3)

                    ; #63685: <==commonly_known== 20248 (neg)
                    (Pb_checked_p3)

                    ; #73529: <==commonly_known== 20248 (neg)
                    (Pc_checked_p3)

                    ; #75414: <==commonly_known== 63340 (pos)
                    (Bc_checked_p3)

                    ; #81156: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #88512: <==closure== 81156 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #91131: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #15944: <==negation-removal== 63685 (pos)
                    (not (Bb_not_checked_p3))

                    ; #20248: <==negation-removal== 63340 (pos)
                    (not (not_checked_p3))

                    ; #30176: <==negation-removal== 73529 (pos)
                    (not (Bc_not_checked_p3))

                    ; #32263: <==uncertain_firing== 91131 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #32362: <==negation-removal== 38354 (pos)
                    (not (Pa_not_checked_p3))

                    ; #40382: <==negation-removal== 81156 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #42567: <==negation-removal== 51309 (pos)
                    (not (Ba_not_checked_p3))

                    ; #54910: <==negation-removal== 91131 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #69625: <==negation-removal== 43806 (pos)
                    (not (Pb_not_checked_p3))

                    ; #73015: <==uncertain_firing== 16031 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #74031: <==negation-removal== 16031 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #74068: <==uncertain_firing== 88512 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #76517: <==uncertain_firing== 81156 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #85356: <==negation-removal== 75414 (pos)
                    (not (Pc_not_checked_p3))

                    ; #95821: <==negation-removal== 88512 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #16718: <==commonly_known== 32942 (pos)
                    (Bb_checked_p4)

                    ; #20500: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #27702: <==closure== 20500 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #32926: <==commonly_known== 78210 (neg)
                    (Pc_checked_p4)

                    ; #32942: origin
                    (checked_p4)

                    ; #52846: <==commonly_known== 32942 (pos)
                    (Ba_checked_p4)

                    ; #59649: <==commonly_known== 78210 (neg)
                    (Pb_checked_p4)

                    ; #70891: <==commonly_known== 32942 (pos)
                    (Bc_checked_p4)

                    ; #75635: <==closure== 82058 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #78635: <==commonly_known== 78210 (neg)
                    (Pa_checked_p4)

                    ; #82058: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #13020: <==negation-removal== 52846 (pos)
                    (not (Pa_not_checked_p4))

                    ; #13843: <==negation-removal== 27702 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #14038: <==negation-removal== 20500 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #24815: <==negation-removal== 59649 (pos)
                    (not (Bb_not_checked_p4))

                    ; #28856: <==negation-removal== 16718 (pos)
                    (not (Pb_not_checked_p4))

                    ; #44835: <==uncertain_firing== 20500 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #53642: <==negation-removal== 78635 (pos)
                    (not (Ba_not_checked_p4))

                    ; #72210: <==uncertain_firing== 75635 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #75419: <==negation-removal== 75635 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #77110: <==negation-removal== 82058 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #78115: <==uncertain_firing== 82058 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #78210: <==negation-removal== 32942 (pos)
                    (not (not_checked_p4))

                    ; #80684: <==negation-removal== 32926 (pos)
                    (not (Bc_not_checked_p4))

                    ; #81109: <==uncertain_firing== 27702 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #90400: <==negation-removal== 70891 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11086: <==commonly_known== 84140 (pos)
                    (Ba_checked_p5)

                    ; #11739: <==closure== 47866 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #14687: <==commonly_known== 59664 (neg)
                    (Pa_checked_p5)

                    ; #19739: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #21639: <==commonly_known== 59664 (neg)
                    (Pb_checked_p5)

                    ; #34632: <==commonly_known== 84140 (pos)
                    (Bb_checked_p5)

                    ; #47866: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #55653: <==commonly_known== 59664 (neg)
                    (Pc_checked_p5)

                    ; #70754: <==closure== 19739 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #84140: origin
                    (checked_p5)

                    ; #91613: <==commonly_known== 84140 (pos)
                    (Bc_checked_p5)

                    ; #14019: <==negation-removal== 34632 (pos)
                    (not (Pb_not_checked_p5))

                    ; #14374: <==negation-removal== 11086 (pos)
                    (not (Pa_not_checked_p5))

                    ; #37914: <==negation-removal== 70754 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #37945: <==negation-removal== 91613 (pos)
                    (not (Pc_not_checked_p5))

                    ; #38124: <==negation-removal== 55653 (pos)
                    (not (Bc_not_checked_p5))

                    ; #41900: <==uncertain_firing== 19739 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #48239: <==negation-removal== 47866 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #51422: <==uncertain_firing== 70754 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #52499: <==negation-removal== 14687 (pos)
                    (not (Ba_not_checked_p5))

                    ; #59664: <==negation-removal== 84140 (pos)
                    (not (not_checked_p5))

                    ; #67175: <==negation-removal== 21639 (pos)
                    (not (Bb_not_checked_p5))

                    ; #68270: <==negation-removal== 11739 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #76071: <==negation-removal== 19739 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #83096: <==uncertain_firing== 47866 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #83234: <==uncertain_firing== 11739 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12797: <==commonly_known== 52886 (pos)
                    (Ba_checked_p6)

                    ; #22462: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #22791: <==closure== 64811 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #31648: <==commonly_known== 51002 (neg)
                    (Pb_checked_p6)

                    ; #46795: <==commonly_known== 52886 (pos)
                    (Bb_checked_p6)

                    ; #52886: origin
                    (checked_p6)

                    ; #56086: <==closure== 22462 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #63596: <==commonly_known== 51002 (neg)
                    (Pc_checked_p6)

                    ; #64811: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #65005: <==commonly_known== 51002 (neg)
                    (Pa_checked_p6)

                    ; #79099: <==commonly_known== 52886 (pos)
                    (Bc_checked_p6)

                    ; #15019: <==negation-removal== 65005 (pos)
                    (not (Ba_not_checked_p6))

                    ; #22186: <==negation-removal== 79099 (pos)
                    (not (Pc_not_checked_p6))

                    ; #29794: <==negation-removal== 22462 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #33951: <==negation-removal== 64811 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #36459: <==negation-removal== 63596 (pos)
                    (not (Bc_not_checked_p6))

                    ; #37211: <==negation-removal== 56086 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #42240: <==negation-removal== 46795 (pos)
                    (not (Pb_not_checked_p6))

                    ; #43357: <==uncertain_firing== 22462 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #44419: <==negation-removal== 31648 (pos)
                    (not (Bb_not_checked_p6))

                    ; #45851: <==negation-removal== 22791 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #51002: <==negation-removal== 52886 (pos)
                    (not (not_checked_p6))

                    ; #68418: <==uncertain_firing== 22791 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #70189: <==uncertain_firing== 64811 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #85168: <==negation-removal== 12797 (pos)
                    (not (Pa_not_checked_p6))

                    ; #91086: <==uncertain_firing== 56086 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #27131: <==commonly_known== 62822 (pos)
                    (Bc_checked_p7)

                    ; #34847: <==commonly_known== 33456 (neg)
                    (Pa_checked_p7)

                    ; #49352: <==commonly_known== 33456 (neg)
                    (Pc_checked_p7)

                    ; #59532: <==closure== 69456 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #62822: origin
                    (checked_p7)

                    ; #69456: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #70578: <==commonly_known== 33456 (neg)
                    (Pb_checked_p7)

                    ; #76657: <==closure== 85681 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #79659: <==commonly_known== 62822 (pos)
                    (Ba_checked_p7)

                    ; #85681: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #90500: <==commonly_known== 62822 (pos)
                    (Bb_checked_p7)

                    ; #11540: <==uncertain_firing== 59532 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #14195: <==negation-removal== 85681 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #20700: <==negation-removal== 90500 (pos)
                    (not (Pb_not_checked_p7))

                    ; #31562: <==negation-removal== 69456 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #31627: <==negation-removal== 34847 (pos)
                    (not (Ba_not_checked_p7))

                    ; #32162: <==negation-removal== 27131 (pos)
                    (not (Pc_not_checked_p7))

                    ; #33456: <==negation-removal== 62822 (pos)
                    (not (not_checked_p7))

                    ; #36459: <==negation-removal== 70578 (pos)
                    (not (Bb_not_checked_p7))

                    ; #39889: <==negation-removal== 59532 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39950: <==uncertain_firing== 76657 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #48410: <==negation-removal== 49352 (pos)
                    (not (Bc_not_checked_p7))

                    ; #49426: <==negation-removal== 79659 (pos)
                    (not (Pa_not_checked_p7))

                    ; #69154: <==uncertain_firing== 85681 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #80392: <==negation-removal== 76657 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #88970: <==uncertain_firing== 69456 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15565: <==commonly_known== 31037 (neg)
                    (Pb_checked_p8)

                    ; #20122: <==commonly_known== 63342 (pos)
                    (Bc_checked_p8)

                    ; #24837: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #28895: <==closure== 63737 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #32630: <==commonly_known== 31037 (neg)
                    (Pc_checked_p8)

                    ; #51792: <==commonly_known== 31037 (neg)
                    (Pa_checked_p8)

                    ; #54103: <==closure== 24837 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #55774: <==commonly_known== 63342 (pos)
                    (Ba_checked_p8)

                    ; #63342: origin
                    (checked_p8)

                    ; #63737: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #77079: <==commonly_known== 63342 (pos)
                    (Bb_checked_p8)

                    ; #18919: <==negation-removal== 28895 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #20160: <==negation-removal== 24837 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #20568: <==uncertain_firing== 54103 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #28417: <==negation-removal== 51792 (pos)
                    (not (Ba_not_checked_p8))

                    ; #31037: <==negation-removal== 63342 (pos)
                    (not (not_checked_p8))

                    ; #35973: <==uncertain_firing== 24837 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #42542: <==negation-removal== 32630 (pos)
                    (not (Bc_not_checked_p8))

                    ; #51615: <==negation-removal== 54103 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #65357: <==uncertain_firing== 28895 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #73857: <==negation-removal== 15565 (pos)
                    (not (Bb_not_checked_p8))

                    ; #78049: <==negation-removal== 55774 (pos)
                    (not (Pa_not_checked_p8))

                    ; #83667: <==negation-removal== 63737 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #84331: <==uncertain_firing== 63737 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #88845: <==negation-removal== 77079 (pos)
                    (not (Pb_not_checked_p8))

                    ; #91441: <==negation-removal== 20122 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10688: <==commonly_known== 26868 (pos)
                    (Ba_checked_p9)

                    ; #18879: <==commonly_known== 26868 (pos)
                    (Bb_checked_p9)

                    ; #26868: origin
                    (checked_p9)

                    ; #34135: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #40660: <==closure== 34135 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #64739: <==commonly_known== 47391 (neg)
                    (Pc_checked_p9)

                    ; #65443: <==commonly_known== 26868 (pos)
                    (Bc_checked_p9)

                    ; #68064: <==commonly_known== 47391 (neg)
                    (Pa_checked_p9)

                    ; #69073: <==closure== 86880 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #86880: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #89101: <==commonly_known== 47391 (neg)
                    (Pb_checked_p9)

                    ; #15535: <==negation-removal== 64739 (pos)
                    (not (Bc_not_checked_p9))

                    ; #29814: <==negation-removal== 89101 (pos)
                    (not (Bb_not_checked_p9))

                    ; #40731: <==negation-removal== 34135 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #47391: <==negation-removal== 26868 (pos)
                    (not (not_checked_p9))

                    ; #49013: <==negation-removal== 40660 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #49126: <==uncertain_firing== 86880 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #54707: <==uncertain_firing== 40660 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #61685: <==negation-removal== 18879 (pos)
                    (not (Pb_not_checked_p9))

                    ; #67969: <==negation-removal== 86880 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #76981: <==uncertain_firing== 34135 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #77233: <==negation-removal== 65443 (pos)
                    (not (Pc_not_checked_p9))

                    ; #79441: <==negation-removal== 68064 (pos)
                    (not (Ba_not_checked_p9))

                    ; #83492: <==uncertain_firing== 69073 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #86029: <==negation-removal== 69073 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #92082: <==negation-removal== 10688 (pos)
                    (not (Pa_not_checked_p9))))

)