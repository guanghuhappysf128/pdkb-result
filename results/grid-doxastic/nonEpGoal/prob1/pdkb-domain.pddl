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
                    ; #26195: <==closure== 83678 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #29488: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #65164: <==closure== 29488 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #74649: <==closure== 83420 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #83420: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #83678: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #20828: <==negation-removal== 83420 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #36848: <==negation-removal== 83678 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #40131: <==uncertain_firing== 65164 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52198: <==negation-removal== 74649 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #57776: <==negation-removal== 26195 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #63202: <==uncertain_firing== 83678 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #65011: <==uncertain_firing== 26195 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #68287: <==uncertain_firing== 83420 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #69046: <==uncertain_firing== 74649 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #83423: <==negation-removal== 29488 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #88729: <==negation-removal== 65164 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #92829: <==uncertain_firing== 29488 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #26195: <==closure== 83678 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #29488: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #65164: <==closure== 29488 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #74649: <==closure== 83420 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #83420: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #83678: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #20828: <==negation-removal== 83420 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #36848: <==negation-removal== 83678 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #40131: <==uncertain_firing== 65164 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52198: <==negation-removal== 74649 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #57776: <==negation-removal== 26195 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #63202: <==uncertain_firing== 83678 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #65011: <==uncertain_firing== 26195 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #68287: <==uncertain_firing== 83420 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #69046: <==uncertain_firing== 74649 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #83423: <==negation-removal== 29488 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #88729: <==negation-removal== 65164 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #92829: <==uncertain_firing== 29488 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #26195: <==closure== 83678 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #29488: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #65164: <==closure== 29488 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #74649: <==closure== 83420 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #83420: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #83678: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #20828: <==negation-removal== 83420 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #36848: <==negation-removal== 83678 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #40131: <==uncertain_firing== 65164 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52198: <==negation-removal== 74649 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #57776: <==negation-removal== 26195 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #63202: <==uncertain_firing== 83678 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #65011: <==uncertain_firing== 26195 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #68287: <==uncertain_firing== 83420 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #69046: <==uncertain_firing== 74649 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #83423: <==negation-removal== 29488 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #88729: <==negation-removal== 65164 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #92829: <==uncertain_firing== 29488 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #12525: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #61830: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #67905: <==closure== 98692 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #69050: <==closure== 12525 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #85750: <==closure== 61830 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #98692: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #27988: <==uncertain_firing== 12525 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #33124: <==negation-removal== 98692 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #34748: <==negation-removal== 85750 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #35308: <==uncertain_firing== 67905 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #36452: <==negation-removal== 67905 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #37116: <==negation-removal== 12525 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #45385: <==uncertain_firing== 98692 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #47176: <==negation-removal== 69050 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #50913: <==uncertain_firing== 61830 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71215: <==uncertain_firing== 69050 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #75029: <==uncertain_firing== 85750 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #90241: <==negation-removal== 61830 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #12525: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #61830: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #67905: <==closure== 98692 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #69050: <==closure== 12525 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #85750: <==closure== 61830 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #98692: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #27988: <==uncertain_firing== 12525 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #33124: <==negation-removal== 98692 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #34748: <==negation-removal== 85750 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #35308: <==uncertain_firing== 67905 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #36452: <==negation-removal== 67905 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #37116: <==negation-removal== 12525 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #45385: <==uncertain_firing== 98692 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #47176: <==negation-removal== 69050 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #50913: <==uncertain_firing== 61830 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71215: <==uncertain_firing== 69050 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #75029: <==uncertain_firing== 85750 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #90241: <==negation-removal== 61830 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #12525: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #61830: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #67905: <==closure== 98692 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #69050: <==closure== 12525 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #85750: <==closure== 61830 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #98692: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #27988: <==uncertain_firing== 12525 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #33124: <==negation-removal== 98692 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #34748: <==negation-removal== 85750 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #35308: <==uncertain_firing== 67905 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #36452: <==negation-removal== 67905 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #37116: <==negation-removal== 12525 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #45385: <==uncertain_firing== 98692 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #47176: <==negation-removal== 69050 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #50913: <==uncertain_firing== 61830 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71215: <==uncertain_firing== 69050 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #75029: <==uncertain_firing== 85750 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #90241: <==negation-removal== 61830 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #25052: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #31420: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #51993: <==closure== 31420 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #63745: <==closure== 88085 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #65231: <==closure== 25052 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #88085: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #11772: <==negation-removal== 25052 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #20892: <==negation-removal== 31420 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #25577: <==uncertain_firing== 25052 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #29546: <==uncertain_firing== 63745 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #30653: <==uncertain_firing== 88085 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #41588: <==negation-removal== 51993 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #45412: <==uncertain_firing== 31420 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #45959: <==negation-removal== 65231 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #63812: <==negation-removal== 63745 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #65133: <==uncertain_firing== 51993 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #76500: <==negation-removal== 88085 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #80338: <==uncertain_firing== 65231 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #25052: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #31420: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #51993: <==closure== 31420 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #63745: <==closure== 88085 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #65231: <==closure== 25052 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #88085: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #11772: <==negation-removal== 25052 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #20892: <==negation-removal== 31420 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #25577: <==uncertain_firing== 25052 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #29546: <==uncertain_firing== 63745 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #30653: <==uncertain_firing== 88085 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #41588: <==negation-removal== 51993 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #45412: <==uncertain_firing== 31420 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #45959: <==negation-removal== 65231 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #63812: <==negation-removal== 63745 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #65133: <==uncertain_firing== 51993 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #76500: <==negation-removal== 88085 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #80338: <==uncertain_firing== 65231 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #25052: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #31420: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #51993: <==closure== 31420 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #63745: <==closure== 88085 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #65231: <==closure== 25052 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #88085: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #11772: <==negation-removal== 25052 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #20892: <==negation-removal== 31420 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #25577: <==uncertain_firing== 25052 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #29546: <==uncertain_firing== 63745 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #30653: <==uncertain_firing== 88085 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #41588: <==negation-removal== 51993 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #45412: <==uncertain_firing== 31420 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #45959: <==negation-removal== 65231 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #63812: <==negation-removal== 63745 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #65133: <==uncertain_firing== 51993 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #76500: <==negation-removal== 88085 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #80338: <==uncertain_firing== 65231 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #45331: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #59070: <==closure== 45331 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #61486: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #76869: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #81781: <==closure== 61486 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #91101: <==closure== 76869 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #10434: <==uncertain_firing== 61486 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #12626: <==uncertain_firing== 45331 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #14828: <==uncertain_firing== 59070 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #20195: <==negation-removal== 59070 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #27685: <==negation-removal== 81781 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #37009: <==negation-removal== 91101 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #40684: <==negation-removal== 45331 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #45294: <==negation-removal== 76869 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #47773: <==uncertain_firing== 91101 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #77456: <==negation-removal== 61486 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #79271: <==uncertain_firing== 81781 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91095: <==uncertain_firing== 76869 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #45331: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #59070: <==closure== 45331 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #61486: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #76869: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #81781: <==closure== 61486 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #91101: <==closure== 76869 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #10434: <==uncertain_firing== 61486 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #12626: <==uncertain_firing== 45331 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #14828: <==uncertain_firing== 59070 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #20195: <==negation-removal== 59070 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #27685: <==negation-removal== 81781 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #37009: <==negation-removal== 91101 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #40684: <==negation-removal== 45331 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #45294: <==negation-removal== 76869 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #47773: <==uncertain_firing== 91101 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #77456: <==negation-removal== 61486 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #79271: <==uncertain_firing== 81781 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91095: <==uncertain_firing== 76869 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #45331: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #59070: <==closure== 45331 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #61486: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #76869: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #81781: <==closure== 61486 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #91101: <==closure== 76869 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #10434: <==uncertain_firing== 61486 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #12626: <==uncertain_firing== 45331 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #14828: <==uncertain_firing== 59070 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #20195: <==negation-removal== 59070 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #27685: <==negation-removal== 81781 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #37009: <==negation-removal== 91101 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #40684: <==negation-removal== 45331 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #45294: <==negation-removal== 76869 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #47773: <==uncertain_firing== 91101 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #77456: <==negation-removal== 61486 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #79271: <==uncertain_firing== 81781 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91095: <==uncertain_firing== 76869 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #26093: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #28287: <==closure== 79310 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #34061: <==closure== 26093 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #37724: <==closure== 61506 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #61506: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #79310: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #23580: <==uncertain_firing== 61506 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #28697: <==uncertain_firing== 26093 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #49425: <==uncertain_firing== 79310 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #52289: <==negation-removal== 61506 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #56511: <==uncertain_firing== 37724 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62094: <==uncertain_firing== 34061 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #64792: <==uncertain_firing== 28287 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65068: <==negation-removal== 34061 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #65329: <==negation-removal== 37724 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #67929: <==negation-removal== 79310 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #90289: <==negation-removal== 28287 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #91164: <==negation-removal== 26093 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #26093: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #28287: <==closure== 79310 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #34061: <==closure== 26093 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #37724: <==closure== 61506 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #61506: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #79310: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #23580: <==uncertain_firing== 61506 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #28697: <==uncertain_firing== 26093 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #49425: <==uncertain_firing== 79310 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #52289: <==negation-removal== 61506 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #56511: <==uncertain_firing== 37724 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62094: <==uncertain_firing== 34061 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #64792: <==uncertain_firing== 28287 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65068: <==negation-removal== 34061 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #65329: <==negation-removal== 37724 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #67929: <==negation-removal== 79310 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #90289: <==negation-removal== 28287 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #91164: <==negation-removal== 26093 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #26093: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #28287: <==closure== 79310 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #34061: <==closure== 26093 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #37724: <==closure== 61506 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #61506: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #79310: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #23580: <==uncertain_firing== 61506 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #28697: <==uncertain_firing== 26093 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #49425: <==uncertain_firing== 79310 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #52289: <==negation-removal== 61506 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #56511: <==uncertain_firing== 37724 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62094: <==uncertain_firing== 34061 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #64792: <==uncertain_firing== 28287 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65068: <==negation-removal== 34061 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #65329: <==negation-removal== 37724 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #67929: <==negation-removal== 79310 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #90289: <==negation-removal== 28287 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #91164: <==negation-removal== 26093 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #14148: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #49546: <==closure== 71581 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #63928: <==closure== 78783 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #71581: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #78783: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #85714: <==closure== 14148 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #21548: <==negation-removal== 85714 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #31725: <==negation-removal== 71581 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #43249: <==uncertain_firing== 14148 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #46164: <==uncertain_firing== 85714 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #52259: <==uncertain_firing== 63928 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #54544: <==negation-removal== 14148 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #56694: <==uncertain_firing== 78783 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #66347: <==uncertain_firing== 71581 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #75220: <==uncertain_firing== 49546 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #77670: <==negation-removal== 49546 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #89920: <==negation-removal== 78783 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #91433: <==negation-removal== 63928 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #14148: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #49546: <==closure== 71581 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #63928: <==closure== 78783 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #71581: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #78783: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #85714: <==closure== 14148 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #21548: <==negation-removal== 85714 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #31725: <==negation-removal== 71581 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #43249: <==uncertain_firing== 14148 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #46164: <==uncertain_firing== 85714 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #52259: <==uncertain_firing== 63928 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #54544: <==negation-removal== 14148 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #56694: <==uncertain_firing== 78783 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #66347: <==uncertain_firing== 71581 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #75220: <==uncertain_firing== 49546 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #77670: <==negation-removal== 49546 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #89920: <==negation-removal== 78783 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #91433: <==negation-removal== 63928 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #14148: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #49546: <==closure== 71581 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #63928: <==closure== 78783 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #71581: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #78783: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #85714: <==closure== 14148 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #21548: <==negation-removal== 85714 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #31725: <==negation-removal== 71581 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #43249: <==uncertain_firing== 14148 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #46164: <==uncertain_firing== 85714 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #52259: <==uncertain_firing== 63928 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #54544: <==negation-removal== 14148 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #56694: <==uncertain_firing== 78783 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #66347: <==uncertain_firing== 71581 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #75220: <==uncertain_firing== 49546 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #77670: <==negation-removal== 49546 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #89920: <==negation-removal== 78783 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #91433: <==negation-removal== 63928 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #10097: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #22959: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #38627: <==closure== 10097 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #63074: <==closure== 72455 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #68406: <==closure== 22959 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #72455: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #27355: <==uncertain_firing== 72455 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #38732: <==uncertain_firing== 38627 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #38834: <==negation-removal== 63074 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #43144: <==uncertain_firing== 63074 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #50203: <==negation-removal== 72455 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #51903: <==negation-removal== 10097 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #51988: <==uncertain_firing== 68406 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #67342: <==negation-removal== 68406 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #74556: <==uncertain_firing== 10097 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #75594: <==uncertain_firing== 22959 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #82603: <==negation-removal== 22959 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #88862: <==negation-removal== 38627 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #10097: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #22959: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #38627: <==closure== 10097 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #63074: <==closure== 72455 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #68406: <==closure== 22959 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #72455: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #27355: <==uncertain_firing== 72455 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #38732: <==uncertain_firing== 38627 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #38834: <==negation-removal== 63074 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #43144: <==uncertain_firing== 63074 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #50203: <==negation-removal== 72455 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #51903: <==negation-removal== 10097 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #51988: <==uncertain_firing== 68406 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #67342: <==negation-removal== 68406 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #74556: <==uncertain_firing== 10097 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #75594: <==uncertain_firing== 22959 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #82603: <==negation-removal== 22959 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #88862: <==negation-removal== 38627 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #10097: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #22959: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #38627: <==closure== 10097 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #63074: <==closure== 72455 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #68406: <==closure== 22959 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #72455: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #27355: <==uncertain_firing== 72455 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #38732: <==uncertain_firing== 38627 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #38834: <==negation-removal== 63074 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #43144: <==uncertain_firing== 63074 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #50203: <==negation-removal== 72455 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #51903: <==negation-removal== 10097 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #51988: <==uncertain_firing== 68406 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #67342: <==negation-removal== 68406 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #74556: <==uncertain_firing== 10097 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #75594: <==uncertain_firing== 22959 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #82603: <==negation-removal== 22959 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #88862: <==negation-removal== 38627 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #10590: <==closure== 59508 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #11730: <==closure== 42882 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #20576: <==closure== 57383 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #42882: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #57383: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #59508: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #10394: <==negation-removal== 42882 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #13371: <==uncertain_firing== 42882 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #13461: <==negation-removal== 59508 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #21037: <==uncertain_firing== 20576 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #28293: <==negation-removal== 20576 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #31722: <==negation-removal== 57383 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #49477: <==uncertain_firing== 10590 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #58865: <==uncertain_firing== 59508 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #61683: <==uncertain_firing== 57383 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #67646: <==negation-removal== 10590 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #80698: <==negation-removal== 11730 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #94982: <==uncertain_firing== 11730 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #10590: <==closure== 59508 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #11730: <==closure== 42882 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #20576: <==closure== 57383 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #42882: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #57383: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #59508: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #10394: <==negation-removal== 42882 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #13371: <==uncertain_firing== 42882 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #13461: <==negation-removal== 59508 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #21037: <==uncertain_firing== 20576 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #28293: <==negation-removal== 20576 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #31722: <==negation-removal== 57383 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #49477: <==uncertain_firing== 10590 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #58865: <==uncertain_firing== 59508 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #61683: <==uncertain_firing== 57383 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #67646: <==negation-removal== 10590 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #80698: <==negation-removal== 11730 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #94982: <==uncertain_firing== 11730 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #10590: <==closure== 59508 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #11730: <==closure== 42882 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #20576: <==closure== 57383 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #42882: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #57383: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #59508: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #10394: <==negation-removal== 42882 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #13371: <==uncertain_firing== 42882 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #13461: <==negation-removal== 59508 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #21037: <==uncertain_firing== 20576 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #28293: <==negation-removal== 20576 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #31722: <==negation-removal== 57383 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #49477: <==uncertain_firing== 10590 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #58865: <==uncertain_firing== 59508 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #61683: <==uncertain_firing== 57383 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #67646: <==negation-removal== 10590 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #80698: <==negation-removal== 11730 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #94982: <==uncertain_firing== 11730 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #48058: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #54761: <==closure== 80902 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #55806: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #77347: <==closure== 48058 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #80902: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #81376: <==closure== 55806 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #10149: <==uncertain_firing== 55806 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #11476: <==negation-removal== 55806 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #12978: <==uncertain_firing== 77347 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #19052: <==negation-removal== 81376 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #26723: <==negation-removal== 48058 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #27779: <==negation-removal== 80902 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #34008: <==uncertain_firing== 48058 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #52282: <==uncertain_firing== 81376 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #61898: <==negation-removal== 77347 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #73898: <==negation-removal== 54761 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #80840: <==uncertain_firing== 80902 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #88869: <==uncertain_firing== 54761 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #48058: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #54761: <==closure== 80902 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #55806: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #77347: <==closure== 48058 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #80902: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #81376: <==closure== 55806 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #10149: <==uncertain_firing== 55806 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #11476: <==negation-removal== 55806 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #12978: <==uncertain_firing== 77347 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #19052: <==negation-removal== 81376 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #26723: <==negation-removal== 48058 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #27779: <==negation-removal== 80902 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #34008: <==uncertain_firing== 48058 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #52282: <==uncertain_firing== 81376 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #61898: <==negation-removal== 77347 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #73898: <==negation-removal== 54761 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #80840: <==uncertain_firing== 80902 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #88869: <==uncertain_firing== 54761 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #48058: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #54761: <==closure== 80902 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #55806: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #77347: <==closure== 48058 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #80902: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #81376: <==closure== 55806 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #10149: <==uncertain_firing== 55806 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #11476: <==negation-removal== 55806 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #12978: <==uncertain_firing== 77347 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #19052: <==negation-removal== 81376 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #26723: <==negation-removal== 48058 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #27779: <==negation-removal== 80902 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #34008: <==uncertain_firing== 48058 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #52282: <==uncertain_firing== 81376 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #61898: <==negation-removal== 77347 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #73898: <==negation-removal== 54761 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #80840: <==uncertain_firing== 80902 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #88869: <==uncertain_firing== 54761 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #19025: <==closure== 60930 (pos)
                    (Pa_survivorat_s_p1)

                    ; #23308: <==closure== 33867 (pos)
                    (Pb_survivorat_s_p1)

                    ; #33867: origin
                    (Bb_survivorat_s_p1)

                    ; #60930: origin
                    (Ba_survivorat_s_p1)

                    ; #65394: origin
                    (Bc_survivorat_s_p1)

                    ; #85273: <==closure== 65394 (pos)
                    (Pc_survivorat_s_p1)

                    ; #11214: <==negation-removal== 85273 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #44238: <==negation-removal== 60930 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #50731: <==negation-removal== 33867 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #68234: <==negation-removal== 65394 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #89218: <==negation-removal== 23308 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #97268: <==negation-removal== 19025 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #19025: <==closure== 60930 (pos)
                    (Pa_survivorat_s_p1)

                    ; #23308: <==closure== 33867 (pos)
                    (Pb_survivorat_s_p1)

                    ; #33867: origin
                    (Bb_survivorat_s_p1)

                    ; #60930: origin
                    (Ba_survivorat_s_p1)

                    ; #65394: origin
                    (Bc_survivorat_s_p1)

                    ; #85273: <==closure== 65394 (pos)
                    (Pc_survivorat_s_p1)

                    ; #11214: <==negation-removal== 85273 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #44238: <==negation-removal== 60930 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #50731: <==negation-removal== 33867 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #68234: <==negation-removal== 65394 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #89218: <==negation-removal== 23308 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #97268: <==negation-removal== 19025 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #19025: <==closure== 60930 (pos)
                    (Pa_survivorat_s_p1)

                    ; #23308: <==closure== 33867 (pos)
                    (Pb_survivorat_s_p1)

                    ; #33867: origin
                    (Bb_survivorat_s_p1)

                    ; #60930: origin
                    (Ba_survivorat_s_p1)

                    ; #65394: origin
                    (Bc_survivorat_s_p1)

                    ; #85273: <==closure== 65394 (pos)
                    (Pc_survivorat_s_p1)

                    ; #11214: <==negation-removal== 85273 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #44238: <==negation-removal== 60930 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #50731: <==negation-removal== 33867 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #68234: <==negation-removal== 65394 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #89218: <==negation-removal== 23308 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #97268: <==negation-removal== 19025 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #12221: origin
                    (Ba_survivorat_s_p2)

                    ; #17775: <==closure== 88915 (pos)
                    (Pc_survivorat_s_p2)

                    ; #26708: origin
                    (Bb_survivorat_s_p2)

                    ; #36145: <==closure== 26708 (pos)
                    (Pb_survivorat_s_p2)

                    ; #41696: <==closure== 12221 (pos)
                    (Pa_survivorat_s_p2)

                    ; #88915: origin
                    (Bc_survivorat_s_p2)

                    ; #22627: <==negation-removal== 41696 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #36297: <==negation-removal== 17775 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #37415: <==negation-removal== 26708 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #47774: <==negation-removal== 88915 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #48760: <==negation-removal== 36145 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #52615: <==negation-removal== 12221 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #12221: origin
                    (Ba_survivorat_s_p2)

                    ; #17775: <==closure== 88915 (pos)
                    (Pc_survivorat_s_p2)

                    ; #26708: origin
                    (Bb_survivorat_s_p2)

                    ; #36145: <==closure== 26708 (pos)
                    (Pb_survivorat_s_p2)

                    ; #41696: <==closure== 12221 (pos)
                    (Pa_survivorat_s_p2)

                    ; #88915: origin
                    (Bc_survivorat_s_p2)

                    ; #22627: <==negation-removal== 41696 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #36297: <==negation-removal== 17775 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #37415: <==negation-removal== 26708 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #47774: <==negation-removal== 88915 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #48760: <==negation-removal== 36145 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #52615: <==negation-removal== 12221 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #12221: origin
                    (Ba_survivorat_s_p2)

                    ; #17775: <==closure== 88915 (pos)
                    (Pc_survivorat_s_p2)

                    ; #26708: origin
                    (Bb_survivorat_s_p2)

                    ; #36145: <==closure== 26708 (pos)
                    (Pb_survivorat_s_p2)

                    ; #41696: <==closure== 12221 (pos)
                    (Pa_survivorat_s_p2)

                    ; #88915: origin
                    (Bc_survivorat_s_p2)

                    ; #22627: <==negation-removal== 41696 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #36297: <==negation-removal== 17775 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #37415: <==negation-removal== 26708 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #47774: <==negation-removal== 88915 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #48760: <==negation-removal== 36145 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #52615: <==negation-removal== 12221 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #17520: origin
                    (Ba_survivorat_s_p3)

                    ; #63672: origin
                    (Bc_survivorat_s_p3)

                    ; #75462: <==closure== 63672 (pos)
                    (Pc_survivorat_s_p3)

                    ; #76150: origin
                    (Bb_survivorat_s_p3)

                    ; #78812: <==closure== 76150 (pos)
                    (Pb_survivorat_s_p3)

                    ; #89520: <==closure== 17520 (pos)
                    (Pa_survivorat_s_p3)

                    ; #23660: <==negation-removal== 63672 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #27228: <==negation-removal== 17520 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #33801: <==negation-removal== 89520 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #50834: <==negation-removal== 76150 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #78269: <==negation-removal== 78812 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #86317: <==negation-removal== 75462 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #17520: origin
                    (Ba_survivorat_s_p3)

                    ; #63672: origin
                    (Bc_survivorat_s_p3)

                    ; #75462: <==closure== 63672 (pos)
                    (Pc_survivorat_s_p3)

                    ; #76150: origin
                    (Bb_survivorat_s_p3)

                    ; #78812: <==closure== 76150 (pos)
                    (Pb_survivorat_s_p3)

                    ; #89520: <==closure== 17520 (pos)
                    (Pa_survivorat_s_p3)

                    ; #23660: <==negation-removal== 63672 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #27228: <==negation-removal== 17520 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #33801: <==negation-removal== 89520 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #50834: <==negation-removal== 76150 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #78269: <==negation-removal== 78812 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #86317: <==negation-removal== 75462 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #17520: origin
                    (Ba_survivorat_s_p3)

                    ; #63672: origin
                    (Bc_survivorat_s_p3)

                    ; #75462: <==closure== 63672 (pos)
                    (Pc_survivorat_s_p3)

                    ; #76150: origin
                    (Bb_survivorat_s_p3)

                    ; #78812: <==closure== 76150 (pos)
                    (Pb_survivorat_s_p3)

                    ; #89520: <==closure== 17520 (pos)
                    (Pa_survivorat_s_p3)

                    ; #23660: <==negation-removal== 63672 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #27228: <==negation-removal== 17520 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #33801: <==negation-removal== 89520 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #50834: <==negation-removal== 76150 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #78269: <==negation-removal== 78812 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #86317: <==negation-removal== 75462 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #19160: <==closure== 90375 (pos)
                    (Pc_survivorat_s_p4)

                    ; #21632: <==closure== 77609 (pos)
                    (Pa_survivorat_s_p4)

                    ; #50887: origin
                    (Bb_survivorat_s_p4)

                    ; #73669: <==closure== 50887 (pos)
                    (Pb_survivorat_s_p4)

                    ; #77609: origin
                    (Ba_survivorat_s_p4)

                    ; #90375: origin
                    (Bc_survivorat_s_p4)

                    ; #28252: <==negation-removal== 77609 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #47732: <==negation-removal== 50887 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #54011: <==negation-removal== 21632 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #74597: <==negation-removal== 90375 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #89229: <==negation-removal== 19160 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #92215: <==negation-removal== 73669 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #19160: <==closure== 90375 (pos)
                    (Pc_survivorat_s_p4)

                    ; #21632: <==closure== 77609 (pos)
                    (Pa_survivorat_s_p4)

                    ; #50887: origin
                    (Bb_survivorat_s_p4)

                    ; #73669: <==closure== 50887 (pos)
                    (Pb_survivorat_s_p4)

                    ; #77609: origin
                    (Ba_survivorat_s_p4)

                    ; #90375: origin
                    (Bc_survivorat_s_p4)

                    ; #28252: <==negation-removal== 77609 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #47732: <==negation-removal== 50887 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #54011: <==negation-removal== 21632 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #74597: <==negation-removal== 90375 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #89229: <==negation-removal== 19160 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #92215: <==negation-removal== 73669 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #19160: <==closure== 90375 (pos)
                    (Pc_survivorat_s_p4)

                    ; #21632: <==closure== 77609 (pos)
                    (Pa_survivorat_s_p4)

                    ; #50887: origin
                    (Bb_survivorat_s_p4)

                    ; #73669: <==closure== 50887 (pos)
                    (Pb_survivorat_s_p4)

                    ; #77609: origin
                    (Ba_survivorat_s_p4)

                    ; #90375: origin
                    (Bc_survivorat_s_p4)

                    ; #28252: <==negation-removal== 77609 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #47732: <==negation-removal== 50887 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #54011: <==negation-removal== 21632 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #74597: <==negation-removal== 90375 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #89229: <==negation-removal== 19160 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #92215: <==negation-removal== 73669 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #12216: origin
                    (Ba_survivorat_s_p5)

                    ; #30899: origin
                    (Bc_survivorat_s_p5)

                    ; #40410: <==closure== 30899 (pos)
                    (Pc_survivorat_s_p5)

                    ; #51529: origin
                    (Bb_survivorat_s_p5)

                    ; #60034: <==closure== 51529 (pos)
                    (Pb_survivorat_s_p5)

                    ; #83948: <==closure== 12216 (pos)
                    (Pa_survivorat_s_p5)

                    ; #11246: <==negation-removal== 12216 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #36025: <==negation-removal== 40410 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #37184: <==negation-removal== 51529 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #48337: <==negation-removal== 30899 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #55931: <==negation-removal== 83948 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #58881: <==negation-removal== 60034 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #12216: origin
                    (Ba_survivorat_s_p5)

                    ; #30899: origin
                    (Bc_survivorat_s_p5)

                    ; #40410: <==closure== 30899 (pos)
                    (Pc_survivorat_s_p5)

                    ; #51529: origin
                    (Bb_survivorat_s_p5)

                    ; #60034: <==closure== 51529 (pos)
                    (Pb_survivorat_s_p5)

                    ; #83948: <==closure== 12216 (pos)
                    (Pa_survivorat_s_p5)

                    ; #11246: <==negation-removal== 12216 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #36025: <==negation-removal== 40410 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #37184: <==negation-removal== 51529 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #48337: <==negation-removal== 30899 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #55931: <==negation-removal== 83948 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #58881: <==negation-removal== 60034 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #12216: origin
                    (Ba_survivorat_s_p5)

                    ; #30899: origin
                    (Bc_survivorat_s_p5)

                    ; #40410: <==closure== 30899 (pos)
                    (Pc_survivorat_s_p5)

                    ; #51529: origin
                    (Bb_survivorat_s_p5)

                    ; #60034: <==closure== 51529 (pos)
                    (Pb_survivorat_s_p5)

                    ; #83948: <==closure== 12216 (pos)
                    (Pa_survivorat_s_p5)

                    ; #11246: <==negation-removal== 12216 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #36025: <==negation-removal== 40410 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #37184: <==negation-removal== 51529 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #48337: <==negation-removal== 30899 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #55931: <==negation-removal== 83948 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #58881: <==negation-removal== 60034 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #27259: origin
                    (Bb_survivorat_s_p6)

                    ; #51474: <==closure== 27259 (pos)
                    (Pb_survivorat_s_p6)

                    ; #57945: <==closure== 60309 (pos)
                    (Pc_survivorat_s_p6)

                    ; #60309: origin
                    (Bc_survivorat_s_p6)

                    ; #66364: <==closure== 81257 (pos)
                    (Pa_survivorat_s_p6)

                    ; #81257: origin
                    (Ba_survivorat_s_p6)

                    ; #15540: <==negation-removal== 66364 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #18898: <==negation-removal== 57945 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #23619: <==negation-removal== 60309 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #56674: <==negation-removal== 27259 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #70218: <==negation-removal== 51474 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #85979: <==negation-removal== 81257 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #27259: origin
                    (Bb_survivorat_s_p6)

                    ; #51474: <==closure== 27259 (pos)
                    (Pb_survivorat_s_p6)

                    ; #57945: <==closure== 60309 (pos)
                    (Pc_survivorat_s_p6)

                    ; #60309: origin
                    (Bc_survivorat_s_p6)

                    ; #66364: <==closure== 81257 (pos)
                    (Pa_survivorat_s_p6)

                    ; #81257: origin
                    (Ba_survivorat_s_p6)

                    ; #15540: <==negation-removal== 66364 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #18898: <==negation-removal== 57945 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #23619: <==negation-removal== 60309 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #56674: <==negation-removal== 27259 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #70218: <==negation-removal== 51474 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #85979: <==negation-removal== 81257 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #27259: origin
                    (Bb_survivorat_s_p6)

                    ; #51474: <==closure== 27259 (pos)
                    (Pb_survivorat_s_p6)

                    ; #57945: <==closure== 60309 (pos)
                    (Pc_survivorat_s_p6)

                    ; #60309: origin
                    (Bc_survivorat_s_p6)

                    ; #66364: <==closure== 81257 (pos)
                    (Pa_survivorat_s_p6)

                    ; #81257: origin
                    (Ba_survivorat_s_p6)

                    ; #15540: <==negation-removal== 66364 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #18898: <==negation-removal== 57945 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #23619: <==negation-removal== 60309 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #56674: <==negation-removal== 27259 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #70218: <==negation-removal== 51474 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #85979: <==negation-removal== 81257 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #17678: <==closure== 70442 (pos)
                    (Pc_survivorat_s_p7)

                    ; #29994: <==closure== 46180 (pos)
                    (Pa_survivorat_s_p7)

                    ; #46180: origin
                    (Ba_survivorat_s_p7)

                    ; #46669: origin
                    (Bb_survivorat_s_p7)

                    ; #67178: <==closure== 46669 (pos)
                    (Pb_survivorat_s_p7)

                    ; #70442: origin
                    (Bc_survivorat_s_p7)

                    ; #23863: <==negation-removal== 70442 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #34401: <==negation-removal== 17678 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #36353: <==negation-removal== 29994 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45460: <==negation-removal== 46180 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #50397: <==negation-removal== 46669 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #76913: <==negation-removal== 67178 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #17678: <==closure== 70442 (pos)
                    (Pc_survivorat_s_p7)

                    ; #29994: <==closure== 46180 (pos)
                    (Pa_survivorat_s_p7)

                    ; #46180: origin
                    (Ba_survivorat_s_p7)

                    ; #46669: origin
                    (Bb_survivorat_s_p7)

                    ; #67178: <==closure== 46669 (pos)
                    (Pb_survivorat_s_p7)

                    ; #70442: origin
                    (Bc_survivorat_s_p7)

                    ; #23863: <==negation-removal== 70442 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #34401: <==negation-removal== 17678 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #36353: <==negation-removal== 29994 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45460: <==negation-removal== 46180 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #50397: <==negation-removal== 46669 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #76913: <==negation-removal== 67178 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #17678: <==closure== 70442 (pos)
                    (Pc_survivorat_s_p7)

                    ; #29994: <==closure== 46180 (pos)
                    (Pa_survivorat_s_p7)

                    ; #46180: origin
                    (Ba_survivorat_s_p7)

                    ; #46669: origin
                    (Bb_survivorat_s_p7)

                    ; #67178: <==closure== 46669 (pos)
                    (Pb_survivorat_s_p7)

                    ; #70442: origin
                    (Bc_survivorat_s_p7)

                    ; #23863: <==negation-removal== 70442 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #34401: <==negation-removal== 17678 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #36353: <==negation-removal== 29994 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45460: <==negation-removal== 46180 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #50397: <==negation-removal== 46669 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #76913: <==negation-removal== 67178 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #32264: <==closure== 38972 (pos)
                    (Pb_survivorat_s_p8)

                    ; #38972: origin
                    (Bb_survivorat_s_p8)

                    ; #55990: origin
                    (Bc_survivorat_s_p8)

                    ; #57773: <==closure== 55990 (pos)
                    (Pc_survivorat_s_p8)

                    ; #61499: origin
                    (Ba_survivorat_s_p8)

                    ; #78501: <==closure== 61499 (pos)
                    (Pa_survivorat_s_p8)

                    ; #20598: <==negation-removal== 38972 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #26984: <==negation-removal== 57773 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #41067: <==negation-removal== 78501 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43385: <==negation-removal== 32264 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #59461: <==negation-removal== 55990 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #86923: <==negation-removal== 61499 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #32264: <==closure== 38972 (pos)
                    (Pb_survivorat_s_p8)

                    ; #38972: origin
                    (Bb_survivorat_s_p8)

                    ; #55990: origin
                    (Bc_survivorat_s_p8)

                    ; #57773: <==closure== 55990 (pos)
                    (Pc_survivorat_s_p8)

                    ; #61499: origin
                    (Ba_survivorat_s_p8)

                    ; #78501: <==closure== 61499 (pos)
                    (Pa_survivorat_s_p8)

                    ; #20598: <==negation-removal== 38972 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #26984: <==negation-removal== 57773 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #41067: <==negation-removal== 78501 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43385: <==negation-removal== 32264 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #59461: <==negation-removal== 55990 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #86923: <==negation-removal== 61499 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #32264: <==closure== 38972 (pos)
                    (Pb_survivorat_s_p8)

                    ; #38972: origin
                    (Bb_survivorat_s_p8)

                    ; #55990: origin
                    (Bc_survivorat_s_p8)

                    ; #57773: <==closure== 55990 (pos)
                    (Pc_survivorat_s_p8)

                    ; #61499: origin
                    (Ba_survivorat_s_p8)

                    ; #78501: <==closure== 61499 (pos)
                    (Pa_survivorat_s_p8)

                    ; #20598: <==negation-removal== 38972 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #26984: <==negation-removal== 57773 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #41067: <==negation-removal== 78501 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #43385: <==negation-removal== 32264 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #59461: <==negation-removal== 55990 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #86923: <==negation-removal== 61499 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #28828: <==closure== 69922 (pos)
                    (Pc_survivorat_s_p9)

                    ; #29402: origin
                    (Ba_survivorat_s_p9)

                    ; #50049: origin
                    (Bb_survivorat_s_p9)

                    ; #57359: <==closure== 50049 (pos)
                    (Pb_survivorat_s_p9)

                    ; #66669: <==closure== 29402 (pos)
                    (Pa_survivorat_s_p9)

                    ; #69922: origin
                    (Bc_survivorat_s_p9)

                    ; #33392: <==negation-removal== 29402 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #36929: <==negation-removal== 28828 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #41210: <==negation-removal== 69922 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #57083: <==negation-removal== 57359 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #70320: <==negation-removal== 66669 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #76330: <==negation-removal== 50049 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #28828: <==closure== 69922 (pos)
                    (Pc_survivorat_s_p9)

                    ; #29402: origin
                    (Ba_survivorat_s_p9)

                    ; #50049: origin
                    (Bb_survivorat_s_p9)

                    ; #57359: <==closure== 50049 (pos)
                    (Pb_survivorat_s_p9)

                    ; #66669: <==closure== 29402 (pos)
                    (Pa_survivorat_s_p9)

                    ; #69922: origin
                    (Bc_survivorat_s_p9)

                    ; #33392: <==negation-removal== 29402 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #36929: <==negation-removal== 28828 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #41210: <==negation-removal== 69922 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #57083: <==negation-removal== 57359 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #70320: <==negation-removal== 66669 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #76330: <==negation-removal== 50049 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #28828: <==closure== 69922 (pos)
                    (Pc_survivorat_s_p9)

                    ; #29402: origin
                    (Ba_survivorat_s_p9)

                    ; #50049: origin
                    (Bb_survivorat_s_p9)

                    ; #57359: <==closure== 50049 (pos)
                    (Pb_survivorat_s_p9)

                    ; #66669: <==closure== 29402 (pos)
                    (Pa_survivorat_s_p9)

                    ; #69922: origin
                    (Bc_survivorat_s_p9)

                    ; #33392: <==negation-removal== 29402 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #36929: <==negation-removal== 28828 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #41210: <==negation-removal== 69922 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #57083: <==negation-removal== 57359 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #70320: <==negation-removal== 66669 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #76330: <==negation-removal== 50049 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #27033: origin
                    (at_a_p1)

                    ; #64884: origin
                    (not_at_a_p1)

                    ; #27033: <==negation-removal== 64884 (pos)
                    (not (at_a_p1))

                    ; #64884: <==negation-removal== 27033 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #64884: origin
                    (not_at_a_p1)

                    ; #75000: origin
                    (at_a_p2)

                    ; #19605: <==negation-removal== 75000 (pos)
                    (not (not_at_a_p2))

                    ; #27033: <==negation-removal== 64884 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #56637: origin
                    (at_a_p3)

                    ; #64884: origin
                    (not_at_a_p1)

                    ; #27033: <==negation-removal== 64884 (pos)
                    (not (at_a_p1))

                    ; #81969: <==negation-removal== 56637 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #42676: origin
                    (at_a_p4)

                    ; #64884: origin
                    (not_at_a_p1)

                    ; #27033: <==negation-removal== 64884 (pos)
                    (not (at_a_p1))

                    ; #72915: <==negation-removal== 42676 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #16431: origin
                    (at_a_p5)

                    ; #64884: origin
                    (not_at_a_p1)

                    ; #14170: <==negation-removal== 16431 (pos)
                    (not (not_at_a_p5))

                    ; #27033: <==negation-removal== 64884 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #34677: origin
                    (at_a_p6)

                    ; #64884: origin
                    (not_at_a_p1)

                    ; #27033: <==negation-removal== 64884 (pos)
                    (not (at_a_p1))

                    ; #53944: <==negation-removal== 34677 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #64884: origin
                    (not_at_a_p1)

                    ; #83115: origin
                    (at_a_p7)

                    ; #23479: <==negation-removal== 83115 (pos)
                    (not (not_at_a_p7))

                    ; #27033: <==negation-removal== 64884 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #64884: origin
                    (not_at_a_p1)

                    ; #80237: origin
                    (at_a_p8)

                    ; #27033: <==negation-removal== 64884 (pos)
                    (not (at_a_p1))

                    ; #90458: <==negation-removal== 80237 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #12059: origin
                    (at_a_p9)

                    ; #64884: origin
                    (not_at_a_p1)

                    ; #27033: <==negation-removal== 64884 (pos)
                    (not (at_a_p1))

                    ; #48475: <==negation-removal== 12059 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #19605: origin
                    (not_at_a_p2)

                    ; #27033: origin
                    (at_a_p1)

                    ; #64884: <==negation-removal== 27033 (pos)
                    (not (not_at_a_p1))

                    ; #75000: <==negation-removal== 19605 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #19605: origin
                    (not_at_a_p2)

                    ; #75000: origin
                    (at_a_p2)

                    ; #19605: <==negation-removal== 75000 (pos)
                    (not (not_at_a_p2))

                    ; #75000: <==negation-removal== 19605 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #19605: origin
                    (not_at_a_p2)

                    ; #56637: origin
                    (at_a_p3)

                    ; #75000: <==negation-removal== 19605 (pos)
                    (not (at_a_p2))

                    ; #81969: <==negation-removal== 56637 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #19605: origin
                    (not_at_a_p2)

                    ; #42676: origin
                    (at_a_p4)

                    ; #72915: <==negation-removal== 42676 (pos)
                    (not (not_at_a_p4))

                    ; #75000: <==negation-removal== 19605 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #16431: origin
                    (at_a_p5)

                    ; #19605: origin
                    (not_at_a_p2)

                    ; #14170: <==negation-removal== 16431 (pos)
                    (not (not_at_a_p5))

                    ; #75000: <==negation-removal== 19605 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #19605: origin
                    (not_at_a_p2)

                    ; #34677: origin
                    (at_a_p6)

                    ; #53944: <==negation-removal== 34677 (pos)
                    (not (not_at_a_p6))

                    ; #75000: <==negation-removal== 19605 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #19605: origin
                    (not_at_a_p2)

                    ; #83115: origin
                    (at_a_p7)

                    ; #23479: <==negation-removal== 83115 (pos)
                    (not (not_at_a_p7))

                    ; #75000: <==negation-removal== 19605 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #19605: origin
                    (not_at_a_p2)

                    ; #80237: origin
                    (at_a_p8)

                    ; #75000: <==negation-removal== 19605 (pos)
                    (not (at_a_p2))

                    ; #90458: <==negation-removal== 80237 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #12059: origin
                    (at_a_p9)

                    ; #19605: origin
                    (not_at_a_p2)

                    ; #48475: <==negation-removal== 12059 (pos)
                    (not (not_at_a_p9))

                    ; #75000: <==negation-removal== 19605 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #27033: origin
                    (at_a_p1)

                    ; #81969: origin
                    (not_at_a_p3)

                    ; #56637: <==negation-removal== 81969 (pos)
                    (not (at_a_p3))

                    ; #64884: <==negation-removal== 27033 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #75000: origin
                    (at_a_p2)

                    ; #81969: origin
                    (not_at_a_p3)

                    ; #19605: <==negation-removal== 75000 (pos)
                    (not (not_at_a_p2))

                    ; #56637: <==negation-removal== 81969 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #56637: origin
                    (at_a_p3)

                    ; #81969: origin
                    (not_at_a_p3)

                    ; #56637: <==negation-removal== 81969 (pos)
                    (not (at_a_p3))

                    ; #81969: <==negation-removal== 56637 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #42676: origin
                    (at_a_p4)

                    ; #81969: origin
                    (not_at_a_p3)

                    ; #56637: <==negation-removal== 81969 (pos)
                    (not (at_a_p3))

                    ; #72915: <==negation-removal== 42676 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #16431: origin
                    (at_a_p5)

                    ; #81969: origin
                    (not_at_a_p3)

                    ; #14170: <==negation-removal== 16431 (pos)
                    (not (not_at_a_p5))

                    ; #56637: <==negation-removal== 81969 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #34677: origin
                    (at_a_p6)

                    ; #81969: origin
                    (not_at_a_p3)

                    ; #53944: <==negation-removal== 34677 (pos)
                    (not (not_at_a_p6))

                    ; #56637: <==negation-removal== 81969 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #81969: origin
                    (not_at_a_p3)

                    ; #83115: origin
                    (at_a_p7)

                    ; #23479: <==negation-removal== 83115 (pos)
                    (not (not_at_a_p7))

                    ; #56637: <==negation-removal== 81969 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #80237: origin
                    (at_a_p8)

                    ; #81969: origin
                    (not_at_a_p3)

                    ; #56637: <==negation-removal== 81969 (pos)
                    (not (at_a_p3))

                    ; #90458: <==negation-removal== 80237 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #12059: origin
                    (at_a_p9)

                    ; #81969: origin
                    (not_at_a_p3)

                    ; #48475: <==negation-removal== 12059 (pos)
                    (not (not_at_a_p9))

                    ; #56637: <==negation-removal== 81969 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #27033: origin
                    (at_a_p1)

                    ; #72915: origin
                    (not_at_a_p4)

                    ; #42676: <==negation-removal== 72915 (pos)
                    (not (at_a_p4))

                    ; #64884: <==negation-removal== 27033 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #72915: origin
                    (not_at_a_p4)

                    ; #75000: origin
                    (at_a_p2)

                    ; #19605: <==negation-removal== 75000 (pos)
                    (not (not_at_a_p2))

                    ; #42676: <==negation-removal== 72915 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #56637: origin
                    (at_a_p3)

                    ; #72915: origin
                    (not_at_a_p4)

                    ; #42676: <==negation-removal== 72915 (pos)
                    (not (at_a_p4))

                    ; #81969: <==negation-removal== 56637 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #42676: origin
                    (at_a_p4)

                    ; #72915: origin
                    (not_at_a_p4)

                    ; #42676: <==negation-removal== 72915 (pos)
                    (not (at_a_p4))

                    ; #72915: <==negation-removal== 42676 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #16431: origin
                    (at_a_p5)

                    ; #72915: origin
                    (not_at_a_p4)

                    ; #14170: <==negation-removal== 16431 (pos)
                    (not (not_at_a_p5))

                    ; #42676: <==negation-removal== 72915 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #34677: origin
                    (at_a_p6)

                    ; #72915: origin
                    (not_at_a_p4)

                    ; #42676: <==negation-removal== 72915 (pos)
                    (not (at_a_p4))

                    ; #53944: <==negation-removal== 34677 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #72915: origin
                    (not_at_a_p4)

                    ; #83115: origin
                    (at_a_p7)

                    ; #23479: <==negation-removal== 83115 (pos)
                    (not (not_at_a_p7))

                    ; #42676: <==negation-removal== 72915 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #72915: origin
                    (not_at_a_p4)

                    ; #80237: origin
                    (at_a_p8)

                    ; #42676: <==negation-removal== 72915 (pos)
                    (not (at_a_p4))

                    ; #90458: <==negation-removal== 80237 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #12059: origin
                    (at_a_p9)

                    ; #72915: origin
                    (not_at_a_p4)

                    ; #42676: <==negation-removal== 72915 (pos)
                    (not (at_a_p4))

                    ; #48475: <==negation-removal== 12059 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #14170: origin
                    (not_at_a_p5)

                    ; #27033: origin
                    (at_a_p1)

                    ; #16431: <==negation-removal== 14170 (pos)
                    (not (at_a_p5))

                    ; #64884: <==negation-removal== 27033 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #14170: origin
                    (not_at_a_p5)

                    ; #75000: origin
                    (at_a_p2)

                    ; #16431: <==negation-removal== 14170 (pos)
                    (not (at_a_p5))

                    ; #19605: <==negation-removal== 75000 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #14170: origin
                    (not_at_a_p5)

                    ; #56637: origin
                    (at_a_p3)

                    ; #16431: <==negation-removal== 14170 (pos)
                    (not (at_a_p5))

                    ; #81969: <==negation-removal== 56637 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #14170: origin
                    (not_at_a_p5)

                    ; #42676: origin
                    (at_a_p4)

                    ; #16431: <==negation-removal== 14170 (pos)
                    (not (at_a_p5))

                    ; #72915: <==negation-removal== 42676 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #14170: origin
                    (not_at_a_p5)

                    ; #16431: origin
                    (at_a_p5)

                    ; #14170: <==negation-removal== 16431 (pos)
                    (not (not_at_a_p5))

                    ; #16431: <==negation-removal== 14170 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #14170: origin
                    (not_at_a_p5)

                    ; #34677: origin
                    (at_a_p6)

                    ; #16431: <==negation-removal== 14170 (pos)
                    (not (at_a_p5))

                    ; #53944: <==negation-removal== 34677 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #14170: origin
                    (not_at_a_p5)

                    ; #83115: origin
                    (at_a_p7)

                    ; #16431: <==negation-removal== 14170 (pos)
                    (not (at_a_p5))

                    ; #23479: <==negation-removal== 83115 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #14170: origin
                    (not_at_a_p5)

                    ; #80237: origin
                    (at_a_p8)

                    ; #16431: <==negation-removal== 14170 (pos)
                    (not (at_a_p5))

                    ; #90458: <==negation-removal== 80237 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #12059: origin
                    (at_a_p9)

                    ; #14170: origin
                    (not_at_a_p5)

                    ; #16431: <==negation-removal== 14170 (pos)
                    (not (at_a_p5))

                    ; #48475: <==negation-removal== 12059 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #27033: origin
                    (at_a_p1)

                    ; #53944: origin
                    (not_at_a_p6)

                    ; #34677: <==negation-removal== 53944 (pos)
                    (not (at_a_p6))

                    ; #64884: <==negation-removal== 27033 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #53944: origin
                    (not_at_a_p6)

                    ; #75000: origin
                    (at_a_p2)

                    ; #19605: <==negation-removal== 75000 (pos)
                    (not (not_at_a_p2))

                    ; #34677: <==negation-removal== 53944 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #53944: origin
                    (not_at_a_p6)

                    ; #56637: origin
                    (at_a_p3)

                    ; #34677: <==negation-removal== 53944 (pos)
                    (not (at_a_p6))

                    ; #81969: <==negation-removal== 56637 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #42676: origin
                    (at_a_p4)

                    ; #53944: origin
                    (not_at_a_p6)

                    ; #34677: <==negation-removal== 53944 (pos)
                    (not (at_a_p6))

                    ; #72915: <==negation-removal== 42676 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #16431: origin
                    (at_a_p5)

                    ; #53944: origin
                    (not_at_a_p6)

                    ; #14170: <==negation-removal== 16431 (pos)
                    (not (not_at_a_p5))

                    ; #34677: <==negation-removal== 53944 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #34677: origin
                    (at_a_p6)

                    ; #53944: origin
                    (not_at_a_p6)

                    ; #34677: <==negation-removal== 53944 (pos)
                    (not (at_a_p6))

                    ; #53944: <==negation-removal== 34677 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #53944: origin
                    (not_at_a_p6)

                    ; #83115: origin
                    (at_a_p7)

                    ; #23479: <==negation-removal== 83115 (pos)
                    (not (not_at_a_p7))

                    ; #34677: <==negation-removal== 53944 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #53944: origin
                    (not_at_a_p6)

                    ; #80237: origin
                    (at_a_p8)

                    ; #34677: <==negation-removal== 53944 (pos)
                    (not (at_a_p6))

                    ; #90458: <==negation-removal== 80237 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #12059: origin
                    (at_a_p9)

                    ; #53944: origin
                    (not_at_a_p6)

                    ; #34677: <==negation-removal== 53944 (pos)
                    (not (at_a_p6))

                    ; #48475: <==negation-removal== 12059 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #23479: origin
                    (not_at_a_p7)

                    ; #27033: origin
                    (at_a_p1)

                    ; #64884: <==negation-removal== 27033 (pos)
                    (not (not_at_a_p1))

                    ; #83115: <==negation-removal== 23479 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #23479: origin
                    (not_at_a_p7)

                    ; #75000: origin
                    (at_a_p2)

                    ; #19605: <==negation-removal== 75000 (pos)
                    (not (not_at_a_p2))

                    ; #83115: <==negation-removal== 23479 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #23479: origin
                    (not_at_a_p7)

                    ; #56637: origin
                    (at_a_p3)

                    ; #81969: <==negation-removal== 56637 (pos)
                    (not (not_at_a_p3))

                    ; #83115: <==negation-removal== 23479 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #23479: origin
                    (not_at_a_p7)

                    ; #42676: origin
                    (at_a_p4)

                    ; #72915: <==negation-removal== 42676 (pos)
                    (not (not_at_a_p4))

                    ; #83115: <==negation-removal== 23479 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #16431: origin
                    (at_a_p5)

                    ; #23479: origin
                    (not_at_a_p7)

                    ; #14170: <==negation-removal== 16431 (pos)
                    (not (not_at_a_p5))

                    ; #83115: <==negation-removal== 23479 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #23479: origin
                    (not_at_a_p7)

                    ; #34677: origin
                    (at_a_p6)

                    ; #53944: <==negation-removal== 34677 (pos)
                    (not (not_at_a_p6))

                    ; #83115: <==negation-removal== 23479 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #23479: origin
                    (not_at_a_p7)

                    ; #83115: origin
                    (at_a_p7)

                    ; #23479: <==negation-removal== 83115 (pos)
                    (not (not_at_a_p7))

                    ; #83115: <==negation-removal== 23479 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #23479: origin
                    (not_at_a_p7)

                    ; #80237: origin
                    (at_a_p8)

                    ; #83115: <==negation-removal== 23479 (pos)
                    (not (at_a_p7))

                    ; #90458: <==negation-removal== 80237 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #12059: origin
                    (at_a_p9)

                    ; #23479: origin
                    (not_at_a_p7)

                    ; #48475: <==negation-removal== 12059 (pos)
                    (not (not_at_a_p9))

                    ; #83115: <==negation-removal== 23479 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #27033: origin
                    (at_a_p1)

                    ; #90458: origin
                    (not_at_a_p8)

                    ; #64884: <==negation-removal== 27033 (pos)
                    (not (not_at_a_p1))

                    ; #80237: <==negation-removal== 90458 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #75000: origin
                    (at_a_p2)

                    ; #90458: origin
                    (not_at_a_p8)

                    ; #19605: <==negation-removal== 75000 (pos)
                    (not (not_at_a_p2))

                    ; #80237: <==negation-removal== 90458 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #56637: origin
                    (at_a_p3)

                    ; #90458: origin
                    (not_at_a_p8)

                    ; #80237: <==negation-removal== 90458 (pos)
                    (not (at_a_p8))

                    ; #81969: <==negation-removal== 56637 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #42676: origin
                    (at_a_p4)

                    ; #90458: origin
                    (not_at_a_p8)

                    ; #72915: <==negation-removal== 42676 (pos)
                    (not (not_at_a_p4))

                    ; #80237: <==negation-removal== 90458 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #16431: origin
                    (at_a_p5)

                    ; #90458: origin
                    (not_at_a_p8)

                    ; #14170: <==negation-removal== 16431 (pos)
                    (not (not_at_a_p5))

                    ; #80237: <==negation-removal== 90458 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #34677: origin
                    (at_a_p6)

                    ; #90458: origin
                    (not_at_a_p8)

                    ; #53944: <==negation-removal== 34677 (pos)
                    (not (not_at_a_p6))

                    ; #80237: <==negation-removal== 90458 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #83115: origin
                    (at_a_p7)

                    ; #90458: origin
                    (not_at_a_p8)

                    ; #23479: <==negation-removal== 83115 (pos)
                    (not (not_at_a_p7))

                    ; #80237: <==negation-removal== 90458 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #80237: origin
                    (at_a_p8)

                    ; #90458: origin
                    (not_at_a_p8)

                    ; #80237: <==negation-removal== 90458 (pos)
                    (not (at_a_p8))

                    ; #90458: <==negation-removal== 80237 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #12059: origin
                    (at_a_p9)

                    ; #90458: origin
                    (not_at_a_p8)

                    ; #48475: <==negation-removal== 12059 (pos)
                    (not (not_at_a_p9))

                    ; #80237: <==negation-removal== 90458 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #27033: origin
                    (at_a_p1)

                    ; #48475: origin
                    (not_at_a_p9)

                    ; #12059: <==negation-removal== 48475 (pos)
                    (not (at_a_p9))

                    ; #64884: <==negation-removal== 27033 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #48475: origin
                    (not_at_a_p9)

                    ; #75000: origin
                    (at_a_p2)

                    ; #12059: <==negation-removal== 48475 (pos)
                    (not (at_a_p9))

                    ; #19605: <==negation-removal== 75000 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #48475: origin
                    (not_at_a_p9)

                    ; #56637: origin
                    (at_a_p3)

                    ; #12059: <==negation-removal== 48475 (pos)
                    (not (at_a_p9))

                    ; #81969: <==negation-removal== 56637 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #42676: origin
                    (at_a_p4)

                    ; #48475: origin
                    (not_at_a_p9)

                    ; #12059: <==negation-removal== 48475 (pos)
                    (not (at_a_p9))

                    ; #72915: <==negation-removal== 42676 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #16431: origin
                    (at_a_p5)

                    ; #48475: origin
                    (not_at_a_p9)

                    ; #12059: <==negation-removal== 48475 (pos)
                    (not (at_a_p9))

                    ; #14170: <==negation-removal== 16431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #34677: origin
                    (at_a_p6)

                    ; #48475: origin
                    (not_at_a_p9)

                    ; #12059: <==negation-removal== 48475 (pos)
                    (not (at_a_p9))

                    ; #53944: <==negation-removal== 34677 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #48475: origin
                    (not_at_a_p9)

                    ; #83115: origin
                    (at_a_p7)

                    ; #12059: <==negation-removal== 48475 (pos)
                    (not (at_a_p9))

                    ; #23479: <==negation-removal== 83115 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #48475: origin
                    (not_at_a_p9)

                    ; #80237: origin
                    (at_a_p8)

                    ; #12059: <==negation-removal== 48475 (pos)
                    (not (at_a_p9))

                    ; #90458: <==negation-removal== 80237 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #12059: origin
                    (at_a_p9)

                    ; #48475: origin
                    (not_at_a_p9)

                    ; #12059: <==negation-removal== 48475 (pos)
                    (not (at_a_p9))

                    ; #48475: <==negation-removal== 12059 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #12436: origin
                    (not_at_b_p1)

                    ; #68491: origin
                    (at_b_p1)

                    ; #12436: <==negation-removal== 68491 (pos)
                    (not (not_at_b_p1))

                    ; #68491: <==negation-removal== 12436 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #12436: origin
                    (not_at_b_p1)

                    ; #37549: origin
                    (at_b_p2)

                    ; #68491: <==negation-removal== 12436 (pos)
                    (not (at_b_p1))

                    ; #82493: <==negation-removal== 37549 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #12436: origin
                    (not_at_b_p1)

                    ; #24768: origin
                    (at_b_p3)

                    ; #68491: <==negation-removal== 12436 (pos)
                    (not (at_b_p1))

                    ; #84808: <==negation-removal== 24768 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #12436: origin
                    (not_at_b_p1)

                    ; #52694: origin
                    (at_b_p4)

                    ; #48965: <==negation-removal== 52694 (pos)
                    (not (not_at_b_p4))

                    ; #68491: <==negation-removal== 12436 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #12436: origin
                    (not_at_b_p1)

                    ; #68070: origin
                    (at_b_p5)

                    ; #64340: <==negation-removal== 68070 (pos)
                    (not (not_at_b_p5))

                    ; #68491: <==negation-removal== 12436 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #12436: origin
                    (not_at_b_p1)

                    ; #78487: origin
                    (at_b_p6)

                    ; #19417: <==negation-removal== 78487 (pos)
                    (not (not_at_b_p6))

                    ; #68491: <==negation-removal== 12436 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #12436: origin
                    (not_at_b_p1)

                    ; #30366: origin
                    (at_b_p7)

                    ; #18241: <==negation-removal== 30366 (pos)
                    (not (not_at_b_p7))

                    ; #68491: <==negation-removal== 12436 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #12436: origin
                    (not_at_b_p1)

                    ; #51420: origin
                    (at_b_p8)

                    ; #45628: <==negation-removal== 51420 (pos)
                    (not (not_at_b_p8))

                    ; #68491: <==negation-removal== 12436 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #12436: origin
                    (not_at_b_p1)

                    ; #36037: origin
                    (at_b_p9)

                    ; #35054: <==negation-removal== 36037 (pos)
                    (not (not_at_b_p9))

                    ; #68491: <==negation-removal== 12436 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #68491: origin
                    (at_b_p1)

                    ; #82493: origin
                    (not_at_b_p2)

                    ; #12436: <==negation-removal== 68491 (pos)
                    (not (not_at_b_p1))

                    ; #37549: <==negation-removal== 82493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #37549: origin
                    (at_b_p2)

                    ; #82493: origin
                    (not_at_b_p2)

                    ; #37549: <==negation-removal== 82493 (pos)
                    (not (at_b_p2))

                    ; #82493: <==negation-removal== 37549 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #24768: origin
                    (at_b_p3)

                    ; #82493: origin
                    (not_at_b_p2)

                    ; #37549: <==negation-removal== 82493 (pos)
                    (not (at_b_p2))

                    ; #84808: <==negation-removal== 24768 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #52694: origin
                    (at_b_p4)

                    ; #82493: origin
                    (not_at_b_p2)

                    ; #37549: <==negation-removal== 82493 (pos)
                    (not (at_b_p2))

                    ; #48965: <==negation-removal== 52694 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #68070: origin
                    (at_b_p5)

                    ; #82493: origin
                    (not_at_b_p2)

                    ; #37549: <==negation-removal== 82493 (pos)
                    (not (at_b_p2))

                    ; #64340: <==negation-removal== 68070 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #78487: origin
                    (at_b_p6)

                    ; #82493: origin
                    (not_at_b_p2)

                    ; #19417: <==negation-removal== 78487 (pos)
                    (not (not_at_b_p6))

                    ; #37549: <==negation-removal== 82493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #30366: origin
                    (at_b_p7)

                    ; #82493: origin
                    (not_at_b_p2)

                    ; #18241: <==negation-removal== 30366 (pos)
                    (not (not_at_b_p7))

                    ; #37549: <==negation-removal== 82493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #51420: origin
                    (at_b_p8)

                    ; #82493: origin
                    (not_at_b_p2)

                    ; #37549: <==negation-removal== 82493 (pos)
                    (not (at_b_p2))

                    ; #45628: <==negation-removal== 51420 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #36037: origin
                    (at_b_p9)

                    ; #82493: origin
                    (not_at_b_p2)

                    ; #35054: <==negation-removal== 36037 (pos)
                    (not (not_at_b_p9))

                    ; #37549: <==negation-removal== 82493 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #68491: origin
                    (at_b_p1)

                    ; #84808: origin
                    (not_at_b_p3)

                    ; #12436: <==negation-removal== 68491 (pos)
                    (not (not_at_b_p1))

                    ; #24768: <==negation-removal== 84808 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #37549: origin
                    (at_b_p2)

                    ; #84808: origin
                    (not_at_b_p3)

                    ; #24768: <==negation-removal== 84808 (pos)
                    (not (at_b_p3))

                    ; #82493: <==negation-removal== 37549 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #24768: origin
                    (at_b_p3)

                    ; #84808: origin
                    (not_at_b_p3)

                    ; #24768: <==negation-removal== 84808 (pos)
                    (not (at_b_p3))

                    ; #84808: <==negation-removal== 24768 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #52694: origin
                    (at_b_p4)

                    ; #84808: origin
                    (not_at_b_p3)

                    ; #24768: <==negation-removal== 84808 (pos)
                    (not (at_b_p3))

                    ; #48965: <==negation-removal== 52694 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #68070: origin
                    (at_b_p5)

                    ; #84808: origin
                    (not_at_b_p3)

                    ; #24768: <==negation-removal== 84808 (pos)
                    (not (at_b_p3))

                    ; #64340: <==negation-removal== 68070 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #78487: origin
                    (at_b_p6)

                    ; #84808: origin
                    (not_at_b_p3)

                    ; #19417: <==negation-removal== 78487 (pos)
                    (not (not_at_b_p6))

                    ; #24768: <==negation-removal== 84808 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #30366: origin
                    (at_b_p7)

                    ; #84808: origin
                    (not_at_b_p3)

                    ; #18241: <==negation-removal== 30366 (pos)
                    (not (not_at_b_p7))

                    ; #24768: <==negation-removal== 84808 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #51420: origin
                    (at_b_p8)

                    ; #84808: origin
                    (not_at_b_p3)

                    ; #24768: <==negation-removal== 84808 (pos)
                    (not (at_b_p3))

                    ; #45628: <==negation-removal== 51420 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #36037: origin
                    (at_b_p9)

                    ; #84808: origin
                    (not_at_b_p3)

                    ; #24768: <==negation-removal== 84808 (pos)
                    (not (at_b_p3))

                    ; #35054: <==negation-removal== 36037 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #48965: origin
                    (not_at_b_p4)

                    ; #68491: origin
                    (at_b_p1)

                    ; #12436: <==negation-removal== 68491 (pos)
                    (not (not_at_b_p1))

                    ; #52694: <==negation-removal== 48965 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #37549: origin
                    (at_b_p2)

                    ; #48965: origin
                    (not_at_b_p4)

                    ; #52694: <==negation-removal== 48965 (pos)
                    (not (at_b_p4))

                    ; #82493: <==negation-removal== 37549 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #24768: origin
                    (at_b_p3)

                    ; #48965: origin
                    (not_at_b_p4)

                    ; #52694: <==negation-removal== 48965 (pos)
                    (not (at_b_p4))

                    ; #84808: <==negation-removal== 24768 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #48965: origin
                    (not_at_b_p4)

                    ; #52694: origin
                    (at_b_p4)

                    ; #48965: <==negation-removal== 52694 (pos)
                    (not (not_at_b_p4))

                    ; #52694: <==negation-removal== 48965 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #48965: origin
                    (not_at_b_p4)

                    ; #68070: origin
                    (at_b_p5)

                    ; #52694: <==negation-removal== 48965 (pos)
                    (not (at_b_p4))

                    ; #64340: <==negation-removal== 68070 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #48965: origin
                    (not_at_b_p4)

                    ; #78487: origin
                    (at_b_p6)

                    ; #19417: <==negation-removal== 78487 (pos)
                    (not (not_at_b_p6))

                    ; #52694: <==negation-removal== 48965 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #30366: origin
                    (at_b_p7)

                    ; #48965: origin
                    (not_at_b_p4)

                    ; #18241: <==negation-removal== 30366 (pos)
                    (not (not_at_b_p7))

                    ; #52694: <==negation-removal== 48965 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #48965: origin
                    (not_at_b_p4)

                    ; #51420: origin
                    (at_b_p8)

                    ; #45628: <==negation-removal== 51420 (pos)
                    (not (not_at_b_p8))

                    ; #52694: <==negation-removal== 48965 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #36037: origin
                    (at_b_p9)

                    ; #48965: origin
                    (not_at_b_p4)

                    ; #35054: <==negation-removal== 36037 (pos)
                    (not (not_at_b_p9))

                    ; #52694: <==negation-removal== 48965 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #64340: origin
                    (not_at_b_p5)

                    ; #68491: origin
                    (at_b_p1)

                    ; #12436: <==negation-removal== 68491 (pos)
                    (not (not_at_b_p1))

                    ; #68070: <==negation-removal== 64340 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #37549: origin
                    (at_b_p2)

                    ; #64340: origin
                    (not_at_b_p5)

                    ; #68070: <==negation-removal== 64340 (pos)
                    (not (at_b_p5))

                    ; #82493: <==negation-removal== 37549 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #24768: origin
                    (at_b_p3)

                    ; #64340: origin
                    (not_at_b_p5)

                    ; #68070: <==negation-removal== 64340 (pos)
                    (not (at_b_p5))

                    ; #84808: <==negation-removal== 24768 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #52694: origin
                    (at_b_p4)

                    ; #64340: origin
                    (not_at_b_p5)

                    ; #48965: <==negation-removal== 52694 (pos)
                    (not (not_at_b_p4))

                    ; #68070: <==negation-removal== 64340 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #64340: origin
                    (not_at_b_p5)

                    ; #68070: origin
                    (at_b_p5)

                    ; #64340: <==negation-removal== 68070 (pos)
                    (not (not_at_b_p5))

                    ; #68070: <==negation-removal== 64340 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #64340: origin
                    (not_at_b_p5)

                    ; #78487: origin
                    (at_b_p6)

                    ; #19417: <==negation-removal== 78487 (pos)
                    (not (not_at_b_p6))

                    ; #68070: <==negation-removal== 64340 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #30366: origin
                    (at_b_p7)

                    ; #64340: origin
                    (not_at_b_p5)

                    ; #18241: <==negation-removal== 30366 (pos)
                    (not (not_at_b_p7))

                    ; #68070: <==negation-removal== 64340 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #51420: origin
                    (at_b_p8)

                    ; #64340: origin
                    (not_at_b_p5)

                    ; #45628: <==negation-removal== 51420 (pos)
                    (not (not_at_b_p8))

                    ; #68070: <==negation-removal== 64340 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #36037: origin
                    (at_b_p9)

                    ; #64340: origin
                    (not_at_b_p5)

                    ; #35054: <==negation-removal== 36037 (pos)
                    (not (not_at_b_p9))

                    ; #68070: <==negation-removal== 64340 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #19417: origin
                    (not_at_b_p6)

                    ; #68491: origin
                    (at_b_p1)

                    ; #12436: <==negation-removal== 68491 (pos)
                    (not (not_at_b_p1))

                    ; #78487: <==negation-removal== 19417 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #19417: origin
                    (not_at_b_p6)

                    ; #37549: origin
                    (at_b_p2)

                    ; #78487: <==negation-removal== 19417 (pos)
                    (not (at_b_p6))

                    ; #82493: <==negation-removal== 37549 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #19417: origin
                    (not_at_b_p6)

                    ; #24768: origin
                    (at_b_p3)

                    ; #78487: <==negation-removal== 19417 (pos)
                    (not (at_b_p6))

                    ; #84808: <==negation-removal== 24768 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #19417: origin
                    (not_at_b_p6)

                    ; #52694: origin
                    (at_b_p4)

                    ; #48965: <==negation-removal== 52694 (pos)
                    (not (not_at_b_p4))

                    ; #78487: <==negation-removal== 19417 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #19417: origin
                    (not_at_b_p6)

                    ; #68070: origin
                    (at_b_p5)

                    ; #64340: <==negation-removal== 68070 (pos)
                    (not (not_at_b_p5))

                    ; #78487: <==negation-removal== 19417 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #19417: origin
                    (not_at_b_p6)

                    ; #78487: origin
                    (at_b_p6)

                    ; #19417: <==negation-removal== 78487 (pos)
                    (not (not_at_b_p6))

                    ; #78487: <==negation-removal== 19417 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #19417: origin
                    (not_at_b_p6)

                    ; #30366: origin
                    (at_b_p7)

                    ; #18241: <==negation-removal== 30366 (pos)
                    (not (not_at_b_p7))

                    ; #78487: <==negation-removal== 19417 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #19417: origin
                    (not_at_b_p6)

                    ; #51420: origin
                    (at_b_p8)

                    ; #45628: <==negation-removal== 51420 (pos)
                    (not (not_at_b_p8))

                    ; #78487: <==negation-removal== 19417 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #19417: origin
                    (not_at_b_p6)

                    ; #36037: origin
                    (at_b_p9)

                    ; #35054: <==negation-removal== 36037 (pos)
                    (not (not_at_b_p9))

                    ; #78487: <==negation-removal== 19417 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #18241: origin
                    (not_at_b_p7)

                    ; #68491: origin
                    (at_b_p1)

                    ; #12436: <==negation-removal== 68491 (pos)
                    (not (not_at_b_p1))

                    ; #30366: <==negation-removal== 18241 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #18241: origin
                    (not_at_b_p7)

                    ; #37549: origin
                    (at_b_p2)

                    ; #30366: <==negation-removal== 18241 (pos)
                    (not (at_b_p7))

                    ; #82493: <==negation-removal== 37549 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #18241: origin
                    (not_at_b_p7)

                    ; #24768: origin
                    (at_b_p3)

                    ; #30366: <==negation-removal== 18241 (pos)
                    (not (at_b_p7))

                    ; #84808: <==negation-removal== 24768 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #18241: origin
                    (not_at_b_p7)

                    ; #52694: origin
                    (at_b_p4)

                    ; #30366: <==negation-removal== 18241 (pos)
                    (not (at_b_p7))

                    ; #48965: <==negation-removal== 52694 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #18241: origin
                    (not_at_b_p7)

                    ; #68070: origin
                    (at_b_p5)

                    ; #30366: <==negation-removal== 18241 (pos)
                    (not (at_b_p7))

                    ; #64340: <==negation-removal== 68070 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #18241: origin
                    (not_at_b_p7)

                    ; #78487: origin
                    (at_b_p6)

                    ; #19417: <==negation-removal== 78487 (pos)
                    (not (not_at_b_p6))

                    ; #30366: <==negation-removal== 18241 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #18241: origin
                    (not_at_b_p7)

                    ; #30366: origin
                    (at_b_p7)

                    ; #18241: <==negation-removal== 30366 (pos)
                    (not (not_at_b_p7))

                    ; #30366: <==negation-removal== 18241 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #18241: origin
                    (not_at_b_p7)

                    ; #51420: origin
                    (at_b_p8)

                    ; #30366: <==negation-removal== 18241 (pos)
                    (not (at_b_p7))

                    ; #45628: <==negation-removal== 51420 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #18241: origin
                    (not_at_b_p7)

                    ; #36037: origin
                    (at_b_p9)

                    ; #30366: <==negation-removal== 18241 (pos)
                    (not (at_b_p7))

                    ; #35054: <==negation-removal== 36037 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #45628: origin
                    (not_at_b_p8)

                    ; #68491: origin
                    (at_b_p1)

                    ; #12436: <==negation-removal== 68491 (pos)
                    (not (not_at_b_p1))

                    ; #51420: <==negation-removal== 45628 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #37549: origin
                    (at_b_p2)

                    ; #45628: origin
                    (not_at_b_p8)

                    ; #51420: <==negation-removal== 45628 (pos)
                    (not (at_b_p8))

                    ; #82493: <==negation-removal== 37549 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #24768: origin
                    (at_b_p3)

                    ; #45628: origin
                    (not_at_b_p8)

                    ; #51420: <==negation-removal== 45628 (pos)
                    (not (at_b_p8))

                    ; #84808: <==negation-removal== 24768 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #45628: origin
                    (not_at_b_p8)

                    ; #52694: origin
                    (at_b_p4)

                    ; #48965: <==negation-removal== 52694 (pos)
                    (not (not_at_b_p4))

                    ; #51420: <==negation-removal== 45628 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #45628: origin
                    (not_at_b_p8)

                    ; #68070: origin
                    (at_b_p5)

                    ; #51420: <==negation-removal== 45628 (pos)
                    (not (at_b_p8))

                    ; #64340: <==negation-removal== 68070 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #45628: origin
                    (not_at_b_p8)

                    ; #78487: origin
                    (at_b_p6)

                    ; #19417: <==negation-removal== 78487 (pos)
                    (not (not_at_b_p6))

                    ; #51420: <==negation-removal== 45628 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #30366: origin
                    (at_b_p7)

                    ; #45628: origin
                    (not_at_b_p8)

                    ; #18241: <==negation-removal== 30366 (pos)
                    (not (not_at_b_p7))

                    ; #51420: <==negation-removal== 45628 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #45628: origin
                    (not_at_b_p8)

                    ; #51420: origin
                    (at_b_p8)

                    ; #45628: <==negation-removal== 51420 (pos)
                    (not (not_at_b_p8))

                    ; #51420: <==negation-removal== 45628 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #36037: origin
                    (at_b_p9)

                    ; #45628: origin
                    (not_at_b_p8)

                    ; #35054: <==negation-removal== 36037 (pos)
                    (not (not_at_b_p9))

                    ; #51420: <==negation-removal== 45628 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #35054: origin
                    (not_at_b_p9)

                    ; #68491: origin
                    (at_b_p1)

                    ; #12436: <==negation-removal== 68491 (pos)
                    (not (not_at_b_p1))

                    ; #36037: <==negation-removal== 35054 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #35054: origin
                    (not_at_b_p9)

                    ; #37549: origin
                    (at_b_p2)

                    ; #36037: <==negation-removal== 35054 (pos)
                    (not (at_b_p9))

                    ; #82493: <==negation-removal== 37549 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #24768: origin
                    (at_b_p3)

                    ; #35054: origin
                    (not_at_b_p9)

                    ; #36037: <==negation-removal== 35054 (pos)
                    (not (at_b_p9))

                    ; #84808: <==negation-removal== 24768 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #35054: origin
                    (not_at_b_p9)

                    ; #52694: origin
                    (at_b_p4)

                    ; #36037: <==negation-removal== 35054 (pos)
                    (not (at_b_p9))

                    ; #48965: <==negation-removal== 52694 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #35054: origin
                    (not_at_b_p9)

                    ; #68070: origin
                    (at_b_p5)

                    ; #36037: <==negation-removal== 35054 (pos)
                    (not (at_b_p9))

                    ; #64340: <==negation-removal== 68070 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #35054: origin
                    (not_at_b_p9)

                    ; #78487: origin
                    (at_b_p6)

                    ; #19417: <==negation-removal== 78487 (pos)
                    (not (not_at_b_p6))

                    ; #36037: <==negation-removal== 35054 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #30366: origin
                    (at_b_p7)

                    ; #35054: origin
                    (not_at_b_p9)

                    ; #18241: <==negation-removal== 30366 (pos)
                    (not (not_at_b_p7))

                    ; #36037: <==negation-removal== 35054 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #35054: origin
                    (not_at_b_p9)

                    ; #51420: origin
                    (at_b_p8)

                    ; #36037: <==negation-removal== 35054 (pos)
                    (not (at_b_p9))

                    ; #45628: <==negation-removal== 51420 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #35054: origin
                    (not_at_b_p9)

                    ; #36037: origin
                    (at_b_p9)

                    ; #35054: <==negation-removal== 36037 (pos)
                    (not (not_at_b_p9))

                    ; #36037: <==negation-removal== 35054 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #50347: origin
                    (at_c_p1)

                    ; #82290: origin
                    (not_at_c_p1)

                    ; #50347: <==negation-removal== 82290 (pos)
                    (not (at_c_p1))

                    ; #82290: <==negation-removal== 50347 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #60721: origin
                    (at_c_p2)

                    ; #82290: origin
                    (not_at_c_p1)

                    ; #28475: <==negation-removal== 60721 (pos)
                    (not (not_at_c_p2))

                    ; #50347: <==negation-removal== 82290 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #48353: origin
                    (at_c_p3)

                    ; #82290: origin
                    (not_at_c_p1)

                    ; #50347: <==negation-removal== 82290 (pos)
                    (not (at_c_p1))

                    ; #65217: <==negation-removal== 48353 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #82290: origin
                    (not_at_c_p1)

                    ; #86064: origin
                    (at_c_p4)

                    ; #18144: <==negation-removal== 86064 (pos)
                    (not (not_at_c_p4))

                    ; #50347: <==negation-removal== 82290 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #55996: origin
                    (at_c_p5)

                    ; #82290: origin
                    (not_at_c_p1)

                    ; #50347: <==negation-removal== 82290 (pos)
                    (not (at_c_p1))

                    ; #79934: <==negation-removal== 55996 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #26583: origin
                    (at_c_p6)

                    ; #82290: origin
                    (not_at_c_p1)

                    ; #50347: <==negation-removal== 82290 (pos)
                    (not (at_c_p1))

                    ; #51351: <==negation-removal== 26583 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #30387: origin
                    (at_c_p7)

                    ; #82290: origin
                    (not_at_c_p1)

                    ; #47018: <==negation-removal== 30387 (pos)
                    (not (not_at_c_p7))

                    ; #50347: <==negation-removal== 82290 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #35972: origin
                    (at_c_p8)

                    ; #82290: origin
                    (not_at_c_p1)

                    ; #17265: <==negation-removal== 35972 (pos)
                    (not (not_at_c_p8))

                    ; #50347: <==negation-removal== 82290 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #55723: origin
                    (at_c_p9)

                    ; #82290: origin
                    (not_at_c_p1)

                    ; #16829: <==negation-removal== 55723 (pos)
                    (not (not_at_c_p9))

                    ; #50347: <==negation-removal== 82290 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #28475: origin
                    (not_at_c_p2)

                    ; #50347: origin
                    (at_c_p1)

                    ; #60721: <==negation-removal== 28475 (pos)
                    (not (at_c_p2))

                    ; #82290: <==negation-removal== 50347 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #28475: origin
                    (not_at_c_p2)

                    ; #60721: origin
                    (at_c_p2)

                    ; #28475: <==negation-removal== 60721 (pos)
                    (not (not_at_c_p2))

                    ; #60721: <==negation-removal== 28475 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #28475: origin
                    (not_at_c_p2)

                    ; #48353: origin
                    (at_c_p3)

                    ; #60721: <==negation-removal== 28475 (pos)
                    (not (at_c_p2))

                    ; #65217: <==negation-removal== 48353 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #28475: origin
                    (not_at_c_p2)

                    ; #86064: origin
                    (at_c_p4)

                    ; #18144: <==negation-removal== 86064 (pos)
                    (not (not_at_c_p4))

                    ; #60721: <==negation-removal== 28475 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #28475: origin
                    (not_at_c_p2)

                    ; #55996: origin
                    (at_c_p5)

                    ; #60721: <==negation-removal== 28475 (pos)
                    (not (at_c_p2))

                    ; #79934: <==negation-removal== 55996 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #26583: origin
                    (at_c_p6)

                    ; #28475: origin
                    (not_at_c_p2)

                    ; #51351: <==negation-removal== 26583 (pos)
                    (not (not_at_c_p6))

                    ; #60721: <==negation-removal== 28475 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #28475: origin
                    (not_at_c_p2)

                    ; #30387: origin
                    (at_c_p7)

                    ; #47018: <==negation-removal== 30387 (pos)
                    (not (not_at_c_p7))

                    ; #60721: <==negation-removal== 28475 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #28475: origin
                    (not_at_c_p2)

                    ; #35972: origin
                    (at_c_p8)

                    ; #17265: <==negation-removal== 35972 (pos)
                    (not (not_at_c_p8))

                    ; #60721: <==negation-removal== 28475 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #28475: origin
                    (not_at_c_p2)

                    ; #55723: origin
                    (at_c_p9)

                    ; #16829: <==negation-removal== 55723 (pos)
                    (not (not_at_c_p9))

                    ; #60721: <==negation-removal== 28475 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #50347: origin
                    (at_c_p1)

                    ; #65217: origin
                    (not_at_c_p3)

                    ; #48353: <==negation-removal== 65217 (pos)
                    (not (at_c_p3))

                    ; #82290: <==negation-removal== 50347 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #60721: origin
                    (at_c_p2)

                    ; #65217: origin
                    (not_at_c_p3)

                    ; #28475: <==negation-removal== 60721 (pos)
                    (not (not_at_c_p2))

                    ; #48353: <==negation-removal== 65217 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #48353: origin
                    (at_c_p3)

                    ; #65217: origin
                    (not_at_c_p3)

                    ; #48353: <==negation-removal== 65217 (pos)
                    (not (at_c_p3))

                    ; #65217: <==negation-removal== 48353 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #65217: origin
                    (not_at_c_p3)

                    ; #86064: origin
                    (at_c_p4)

                    ; #18144: <==negation-removal== 86064 (pos)
                    (not (not_at_c_p4))

                    ; #48353: <==negation-removal== 65217 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #55996: origin
                    (at_c_p5)

                    ; #65217: origin
                    (not_at_c_p3)

                    ; #48353: <==negation-removal== 65217 (pos)
                    (not (at_c_p3))

                    ; #79934: <==negation-removal== 55996 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #26583: origin
                    (at_c_p6)

                    ; #65217: origin
                    (not_at_c_p3)

                    ; #48353: <==negation-removal== 65217 (pos)
                    (not (at_c_p3))

                    ; #51351: <==negation-removal== 26583 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #30387: origin
                    (at_c_p7)

                    ; #65217: origin
                    (not_at_c_p3)

                    ; #47018: <==negation-removal== 30387 (pos)
                    (not (not_at_c_p7))

                    ; #48353: <==negation-removal== 65217 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #35972: origin
                    (at_c_p8)

                    ; #65217: origin
                    (not_at_c_p3)

                    ; #17265: <==negation-removal== 35972 (pos)
                    (not (not_at_c_p8))

                    ; #48353: <==negation-removal== 65217 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #55723: origin
                    (at_c_p9)

                    ; #65217: origin
                    (not_at_c_p3)

                    ; #16829: <==negation-removal== 55723 (pos)
                    (not (not_at_c_p9))

                    ; #48353: <==negation-removal== 65217 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #18144: origin
                    (not_at_c_p4)

                    ; #50347: origin
                    (at_c_p1)

                    ; #82290: <==negation-removal== 50347 (pos)
                    (not (not_at_c_p1))

                    ; #86064: <==negation-removal== 18144 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #18144: origin
                    (not_at_c_p4)

                    ; #60721: origin
                    (at_c_p2)

                    ; #28475: <==negation-removal== 60721 (pos)
                    (not (not_at_c_p2))

                    ; #86064: <==negation-removal== 18144 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #18144: origin
                    (not_at_c_p4)

                    ; #48353: origin
                    (at_c_p3)

                    ; #65217: <==negation-removal== 48353 (pos)
                    (not (not_at_c_p3))

                    ; #86064: <==negation-removal== 18144 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #18144: origin
                    (not_at_c_p4)

                    ; #86064: origin
                    (at_c_p4)

                    ; #18144: <==negation-removal== 86064 (pos)
                    (not (not_at_c_p4))

                    ; #86064: <==negation-removal== 18144 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #18144: origin
                    (not_at_c_p4)

                    ; #55996: origin
                    (at_c_p5)

                    ; #79934: <==negation-removal== 55996 (pos)
                    (not (not_at_c_p5))

                    ; #86064: <==negation-removal== 18144 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #18144: origin
                    (not_at_c_p4)

                    ; #26583: origin
                    (at_c_p6)

                    ; #51351: <==negation-removal== 26583 (pos)
                    (not (not_at_c_p6))

                    ; #86064: <==negation-removal== 18144 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #18144: origin
                    (not_at_c_p4)

                    ; #30387: origin
                    (at_c_p7)

                    ; #47018: <==negation-removal== 30387 (pos)
                    (not (not_at_c_p7))

                    ; #86064: <==negation-removal== 18144 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #18144: origin
                    (not_at_c_p4)

                    ; #35972: origin
                    (at_c_p8)

                    ; #17265: <==negation-removal== 35972 (pos)
                    (not (not_at_c_p8))

                    ; #86064: <==negation-removal== 18144 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #18144: origin
                    (not_at_c_p4)

                    ; #55723: origin
                    (at_c_p9)

                    ; #16829: <==negation-removal== 55723 (pos)
                    (not (not_at_c_p9))

                    ; #86064: <==negation-removal== 18144 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #50347: origin
                    (at_c_p1)

                    ; #79934: origin
                    (not_at_c_p5)

                    ; #55996: <==negation-removal== 79934 (pos)
                    (not (at_c_p5))

                    ; #82290: <==negation-removal== 50347 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #60721: origin
                    (at_c_p2)

                    ; #79934: origin
                    (not_at_c_p5)

                    ; #28475: <==negation-removal== 60721 (pos)
                    (not (not_at_c_p2))

                    ; #55996: <==negation-removal== 79934 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #48353: origin
                    (at_c_p3)

                    ; #79934: origin
                    (not_at_c_p5)

                    ; #55996: <==negation-removal== 79934 (pos)
                    (not (at_c_p5))

                    ; #65217: <==negation-removal== 48353 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #79934: origin
                    (not_at_c_p5)

                    ; #86064: origin
                    (at_c_p4)

                    ; #18144: <==negation-removal== 86064 (pos)
                    (not (not_at_c_p4))

                    ; #55996: <==negation-removal== 79934 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #55996: origin
                    (at_c_p5)

                    ; #79934: origin
                    (not_at_c_p5)

                    ; #55996: <==negation-removal== 79934 (pos)
                    (not (at_c_p5))

                    ; #79934: <==negation-removal== 55996 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #26583: origin
                    (at_c_p6)

                    ; #79934: origin
                    (not_at_c_p5)

                    ; #51351: <==negation-removal== 26583 (pos)
                    (not (not_at_c_p6))

                    ; #55996: <==negation-removal== 79934 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #30387: origin
                    (at_c_p7)

                    ; #79934: origin
                    (not_at_c_p5)

                    ; #47018: <==negation-removal== 30387 (pos)
                    (not (not_at_c_p7))

                    ; #55996: <==negation-removal== 79934 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #35972: origin
                    (at_c_p8)

                    ; #79934: origin
                    (not_at_c_p5)

                    ; #17265: <==negation-removal== 35972 (pos)
                    (not (not_at_c_p8))

                    ; #55996: <==negation-removal== 79934 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #55723: origin
                    (at_c_p9)

                    ; #79934: origin
                    (not_at_c_p5)

                    ; #16829: <==negation-removal== 55723 (pos)
                    (not (not_at_c_p9))

                    ; #55996: <==negation-removal== 79934 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #50347: origin
                    (at_c_p1)

                    ; #51351: origin
                    (not_at_c_p6)

                    ; #26583: <==negation-removal== 51351 (pos)
                    (not (at_c_p6))

                    ; #82290: <==negation-removal== 50347 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #51351: origin
                    (not_at_c_p6)

                    ; #60721: origin
                    (at_c_p2)

                    ; #26583: <==negation-removal== 51351 (pos)
                    (not (at_c_p6))

                    ; #28475: <==negation-removal== 60721 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #48353: origin
                    (at_c_p3)

                    ; #51351: origin
                    (not_at_c_p6)

                    ; #26583: <==negation-removal== 51351 (pos)
                    (not (at_c_p6))

                    ; #65217: <==negation-removal== 48353 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #51351: origin
                    (not_at_c_p6)

                    ; #86064: origin
                    (at_c_p4)

                    ; #18144: <==negation-removal== 86064 (pos)
                    (not (not_at_c_p4))

                    ; #26583: <==negation-removal== 51351 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #51351: origin
                    (not_at_c_p6)

                    ; #55996: origin
                    (at_c_p5)

                    ; #26583: <==negation-removal== 51351 (pos)
                    (not (at_c_p6))

                    ; #79934: <==negation-removal== 55996 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #26583: origin
                    (at_c_p6)

                    ; #51351: origin
                    (not_at_c_p6)

                    ; #26583: <==negation-removal== 51351 (pos)
                    (not (at_c_p6))

                    ; #51351: <==negation-removal== 26583 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #30387: origin
                    (at_c_p7)

                    ; #51351: origin
                    (not_at_c_p6)

                    ; #26583: <==negation-removal== 51351 (pos)
                    (not (at_c_p6))

                    ; #47018: <==negation-removal== 30387 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #35972: origin
                    (at_c_p8)

                    ; #51351: origin
                    (not_at_c_p6)

                    ; #17265: <==negation-removal== 35972 (pos)
                    (not (not_at_c_p8))

                    ; #26583: <==negation-removal== 51351 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #51351: origin
                    (not_at_c_p6)

                    ; #55723: origin
                    (at_c_p9)

                    ; #16829: <==negation-removal== 55723 (pos)
                    (not (not_at_c_p9))

                    ; #26583: <==negation-removal== 51351 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #47018: origin
                    (not_at_c_p7)

                    ; #50347: origin
                    (at_c_p1)

                    ; #30387: <==negation-removal== 47018 (pos)
                    (not (at_c_p7))

                    ; #82290: <==negation-removal== 50347 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #47018: origin
                    (not_at_c_p7)

                    ; #60721: origin
                    (at_c_p2)

                    ; #28475: <==negation-removal== 60721 (pos)
                    (not (not_at_c_p2))

                    ; #30387: <==negation-removal== 47018 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #47018: origin
                    (not_at_c_p7)

                    ; #48353: origin
                    (at_c_p3)

                    ; #30387: <==negation-removal== 47018 (pos)
                    (not (at_c_p7))

                    ; #65217: <==negation-removal== 48353 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #47018: origin
                    (not_at_c_p7)

                    ; #86064: origin
                    (at_c_p4)

                    ; #18144: <==negation-removal== 86064 (pos)
                    (not (not_at_c_p4))

                    ; #30387: <==negation-removal== 47018 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #47018: origin
                    (not_at_c_p7)

                    ; #55996: origin
                    (at_c_p5)

                    ; #30387: <==negation-removal== 47018 (pos)
                    (not (at_c_p7))

                    ; #79934: <==negation-removal== 55996 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #26583: origin
                    (at_c_p6)

                    ; #47018: origin
                    (not_at_c_p7)

                    ; #30387: <==negation-removal== 47018 (pos)
                    (not (at_c_p7))

                    ; #51351: <==negation-removal== 26583 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #30387: origin
                    (at_c_p7)

                    ; #47018: origin
                    (not_at_c_p7)

                    ; #30387: <==negation-removal== 47018 (pos)
                    (not (at_c_p7))

                    ; #47018: <==negation-removal== 30387 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #35972: origin
                    (at_c_p8)

                    ; #47018: origin
                    (not_at_c_p7)

                    ; #17265: <==negation-removal== 35972 (pos)
                    (not (not_at_c_p8))

                    ; #30387: <==negation-removal== 47018 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #47018: origin
                    (not_at_c_p7)

                    ; #55723: origin
                    (at_c_p9)

                    ; #16829: <==negation-removal== 55723 (pos)
                    (not (not_at_c_p9))

                    ; #30387: <==negation-removal== 47018 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #17265: origin
                    (not_at_c_p8)

                    ; #50347: origin
                    (at_c_p1)

                    ; #35972: <==negation-removal== 17265 (pos)
                    (not (at_c_p8))

                    ; #82290: <==negation-removal== 50347 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #17265: origin
                    (not_at_c_p8)

                    ; #60721: origin
                    (at_c_p2)

                    ; #28475: <==negation-removal== 60721 (pos)
                    (not (not_at_c_p2))

                    ; #35972: <==negation-removal== 17265 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #17265: origin
                    (not_at_c_p8)

                    ; #48353: origin
                    (at_c_p3)

                    ; #35972: <==negation-removal== 17265 (pos)
                    (not (at_c_p8))

                    ; #65217: <==negation-removal== 48353 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #17265: origin
                    (not_at_c_p8)

                    ; #86064: origin
                    (at_c_p4)

                    ; #18144: <==negation-removal== 86064 (pos)
                    (not (not_at_c_p4))

                    ; #35972: <==negation-removal== 17265 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #17265: origin
                    (not_at_c_p8)

                    ; #55996: origin
                    (at_c_p5)

                    ; #35972: <==negation-removal== 17265 (pos)
                    (not (at_c_p8))

                    ; #79934: <==negation-removal== 55996 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #17265: origin
                    (not_at_c_p8)

                    ; #26583: origin
                    (at_c_p6)

                    ; #35972: <==negation-removal== 17265 (pos)
                    (not (at_c_p8))

                    ; #51351: <==negation-removal== 26583 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #17265: origin
                    (not_at_c_p8)

                    ; #30387: origin
                    (at_c_p7)

                    ; #35972: <==negation-removal== 17265 (pos)
                    (not (at_c_p8))

                    ; #47018: <==negation-removal== 30387 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #17265: origin
                    (not_at_c_p8)

                    ; #35972: origin
                    (at_c_p8)

                    ; #17265: <==negation-removal== 35972 (pos)
                    (not (not_at_c_p8))

                    ; #35972: <==negation-removal== 17265 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #17265: origin
                    (not_at_c_p8)

                    ; #55723: origin
                    (at_c_p9)

                    ; #16829: <==negation-removal== 55723 (pos)
                    (not (not_at_c_p9))

                    ; #35972: <==negation-removal== 17265 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #16829: origin
                    (not_at_c_p9)

                    ; #50347: origin
                    (at_c_p1)

                    ; #55723: <==negation-removal== 16829 (pos)
                    (not (at_c_p9))

                    ; #82290: <==negation-removal== 50347 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #16829: origin
                    (not_at_c_p9)

                    ; #60721: origin
                    (at_c_p2)

                    ; #28475: <==negation-removal== 60721 (pos)
                    (not (not_at_c_p2))

                    ; #55723: <==negation-removal== 16829 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #16829: origin
                    (not_at_c_p9)

                    ; #48353: origin
                    (at_c_p3)

                    ; #55723: <==negation-removal== 16829 (pos)
                    (not (at_c_p9))

                    ; #65217: <==negation-removal== 48353 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #16829: origin
                    (not_at_c_p9)

                    ; #86064: origin
                    (at_c_p4)

                    ; #18144: <==negation-removal== 86064 (pos)
                    (not (not_at_c_p4))

                    ; #55723: <==negation-removal== 16829 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #16829: origin
                    (not_at_c_p9)

                    ; #55996: origin
                    (at_c_p5)

                    ; #55723: <==negation-removal== 16829 (pos)
                    (not (at_c_p9))

                    ; #79934: <==negation-removal== 55996 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #16829: origin
                    (not_at_c_p9)

                    ; #26583: origin
                    (at_c_p6)

                    ; #51351: <==negation-removal== 26583 (pos)
                    (not (not_at_c_p6))

                    ; #55723: <==negation-removal== 16829 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #16829: origin
                    (not_at_c_p9)

                    ; #30387: origin
                    (at_c_p7)

                    ; #47018: <==negation-removal== 30387 (pos)
                    (not (not_at_c_p7))

                    ; #55723: <==negation-removal== 16829 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #16829: origin
                    (not_at_c_p9)

                    ; #35972: origin
                    (at_c_p8)

                    ; #17265: <==negation-removal== 35972 (pos)
                    (not (not_at_c_p8))

                    ; #55723: <==negation-removal== 16829 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #16829: origin
                    (not_at_c_p9)

                    ; #55723: origin
                    (at_c_p9)

                    ; #16829: <==negation-removal== 55723 (pos)
                    (not (not_at_c_p9))

                    ; #55723: <==negation-removal== 16829 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #19096: <==commonly_known== 51310 (pos)
                    (Ba_checked_p1)

                    ; #23711: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #31673: <==closure== 32172 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #32172: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #51310: origin
                    (checked_p1)

                    ; #51702: <==commonly_known== 17751 (neg)
                    (Pb_checked_p1)

                    ; #54840: <==commonly_known== 17751 (neg)
                    (Pa_checked_p1)

                    ; #64594: <==commonly_known== 17751 (neg)
                    (Pc_checked_p1)

                    ; #74037: <==commonly_known== 51310 (pos)
                    (Bc_checked_p1)

                    ; #90260: <==closure== 23711 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #90864: <==commonly_known== 51310 (pos)
                    (Bb_checked_p1)

                    ; #12348: <==uncertain_firing== 90260 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #15789: <==negation-removal== 74037 (pos)
                    (not (Pc_not_checked_p1))

                    ; #17751: <==negation-removal== 51310 (pos)
                    (not (not_checked_p1))

                    ; #17839: <==negation-removal== 90260 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #27603: <==negation-removal== 90864 (pos)
                    (not (Pb_not_checked_p1))

                    ; #29624: <==negation-removal== 31673 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #33827: <==negation-removal== 64594 (pos)
                    (not (Bc_not_checked_p1))

                    ; #46888: <==uncertain_firing== 23711 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #49486: <==negation-removal== 19096 (pos)
                    (not (Pa_not_checked_p1))

                    ; #57793: <==negation-removal== 23711 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #72505: <==negation-removal== 51702 (pos)
                    (not (Bb_not_checked_p1))

                    ; #80321: <==uncertain_firing== 31673 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #82534: <==negation-removal== 54840 (pos)
                    (not (Ba_not_checked_p1))

                    ; #87314: <==uncertain_firing== 32172 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #90722: <==negation-removal== 32172 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15666: <==commonly_known== 48470 (pos)
                    (Bb_checked_p2)

                    ; #16948: <==commonly_known== 74689 (neg)
                    (Pb_checked_p2)

                    ; #22816: <==commonly_known== 48470 (pos)
                    (Bc_checked_p2)

                    ; #36195: <==closure== 47751 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #47751: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #48470: origin
                    (checked_p2)

                    ; #53885: <==commonly_known== 48470 (pos)
                    (Ba_checked_p2)

                    ; #72785: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #80117: <==closure== 72785 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #90036: <==commonly_known== 74689 (neg)
                    (Pc_checked_p2)

                    ; #90553: <==commonly_known== 74689 (neg)
                    (Pa_checked_p2)

                    ; #13480: <==negation-removal== 72785 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #26248: <==negation-removal== 47751 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #31875: <==negation-removal== 15666 (pos)
                    (not (Pb_not_checked_p2))

                    ; #31940: <==negation-removal== 22816 (pos)
                    (not (Pc_not_checked_p2))

                    ; #37615: <==uncertain_firing== 36195 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #46696: <==negation-removal== 53885 (pos)
                    (not (Pa_not_checked_p2))

                    ; #47395: <==negation-removal== 90036 (pos)
                    (not (Bc_not_checked_p2))

                    ; #52852: <==uncertain_firing== 72785 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #58615: <==negation-removal== 80117 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #64458: <==negation-removal== 36195 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #68744: <==uncertain_firing== 47751 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #73195: <==uncertain_firing== 80117 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #74689: <==negation-removal== 48470 (pos)
                    (not (not_checked_p2))

                    ; #84047: <==negation-removal== 16948 (pos)
                    (not (Bb_not_checked_p2))

                    ; #85735: <==negation-removal== 90553 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #26782: <==commonly_known== 90813 (neg)
                    (Pc_checked_p3)

                    ; #60528: <==commonly_known== 90813 (neg)
                    (Pb_checked_p3)

                    ; #60692: <==commonly_known== 78229 (pos)
                    (Ba_checked_p3)

                    ; #63645: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #70427: <==commonly_known== 78229 (pos)
                    (Bc_checked_p3)

                    ; #71132: <==commonly_known== 78229 (pos)
                    (Bb_checked_p3)

                    ; #73369: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #78229: origin
                    (checked_p3)

                    ; #88125: <==closure== 63645 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #91620: <==closure== 73369 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #91817: <==commonly_known== 90813 (neg)
                    (Pa_checked_p3)

                    ; #11125: <==negation-removal== 63645 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #11614: <==negation-removal== 88125 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #22983: <==negation-removal== 70427 (pos)
                    (not (Pc_not_checked_p3))

                    ; #26073: <==uncertain_firing== 63645 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #33279: <==negation-removal== 91620 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #43035: <==negation-removal== 73369 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #43709: <==uncertain_firing== 73369 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #58958: <==negation-removal== 71132 (pos)
                    (not (Pb_not_checked_p3))

                    ; #61530: <==negation-removal== 91817 (pos)
                    (not (Ba_not_checked_p3))

                    ; #73987: <==negation-removal== 60692 (pos)
                    (not (Pa_not_checked_p3))

                    ; #78762: <==uncertain_firing== 88125 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #82477: <==negation-removal== 60528 (pos)
                    (not (Bb_not_checked_p3))

                    ; #88912: <==uncertain_firing== 91620 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #90813: <==negation-removal== 78229 (pos)
                    (not (not_checked_p3))

                    ; #91545: <==negation-removal== 26782 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10078: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #13470: <==commonly_known== 88419 (neg)
                    (Pc_checked_p4)

                    ; #14690: <==closure== 10078 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #21145: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #28298: <==commonly_known== 37933 (pos)
                    (Ba_checked_p4)

                    ; #30986: <==commonly_known== 37933 (pos)
                    (Bc_checked_p4)

                    ; #37933: origin
                    (checked_p4)

                    ; #38668: <==closure== 21145 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #49250: <==commonly_known== 88419 (neg)
                    (Pa_checked_p4)

                    ; #52093: <==commonly_known== 88419 (neg)
                    (Pb_checked_p4)

                    ; #61528: <==commonly_known== 37933 (pos)
                    (Bb_checked_p4)

                    ; #24663: <==negation-removal== 10078 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #25611: <==uncertain_firing== 38668 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #29332: <==negation-removal== 14690 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #36838: <==negation-removal== 52093 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37415: <==negation-removal== 28298 (pos)
                    (not (Pa_not_checked_p4))

                    ; #38790: <==negation-removal== 21145 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #41669: <==uncertain_firing== 10078 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #45461: <==negation-removal== 13470 (pos)
                    (not (Bc_not_checked_p4))

                    ; #51792: <==negation-removal== 61528 (pos)
                    (not (Pb_not_checked_p4))

                    ; #58121: <==uncertain_firing== 14690 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #77213: <==negation-removal== 30986 (pos)
                    (not (Pc_not_checked_p4))

                    ; #78202: <==uncertain_firing== 21145 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #88419: <==negation-removal== 37933 (pos)
                    (not (not_checked_p4))

                    ; #88997: <==negation-removal== 38668 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #92770: <==negation-removal== 49250 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14878: <==commonly_known== 74874 (neg)
                    (Pb_checked_p5)

                    ; #22436: <==commonly_known== 90532 (pos)
                    (Bc_checked_p5)

                    ; #25418: <==commonly_known== 90532 (pos)
                    (Bb_checked_p5)

                    ; #26005: <==closure== 42758 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #26776: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #42758: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #53177: <==commonly_known== 74874 (neg)
                    (Pa_checked_p5)

                    ; #54882: <==closure== 26776 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #63556: <==commonly_known== 90532 (pos)
                    (Ba_checked_p5)

                    ; #69274: <==commonly_known== 74874 (neg)
                    (Pc_checked_p5)

                    ; #90532: origin
                    (checked_p5)

                    ; #10586: <==negation-removal== 53177 (pos)
                    (not (Ba_not_checked_p5))

                    ; #28408: <==negation-removal== 26005 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #29897: <==negation-removal== 26776 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #42077: <==uncertain_firing== 26005 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #46412: <==negation-removal== 42758 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #51286: <==negation-removal== 54882 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #52131: <==negation-removal== 63556 (pos)
                    (not (Pa_not_checked_p5))

                    ; #53192: <==negation-removal== 14878 (pos)
                    (not (Bb_not_checked_p5))

                    ; #57152: <==negation-removal== 25418 (pos)
                    (not (Pb_not_checked_p5))

                    ; #62123: <==uncertain_firing== 42758 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #65578: <==negation-removal== 22436 (pos)
                    (not (Pc_not_checked_p5))

                    ; #74874: <==negation-removal== 90532 (pos)
                    (not (not_checked_p5))

                    ; #75384: <==uncertain_firing== 26776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #81214: <==uncertain_firing== 54882 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #81754: <==negation-removal== 69274 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11343: <==commonly_known== 37864 (neg)
                    (Pb_checked_p6)

                    ; #18741: <==closure== 34257 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #31538: <==commonly_known== 75093 (pos)
                    (Bb_checked_p6)

                    ; #34257: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #40328: <==commonly_known== 37864 (neg)
                    (Pa_checked_p6)

                    ; #50303: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #64711: <==commonly_known== 75093 (pos)
                    (Ba_checked_p6)

                    ; #73471: <==closure== 50303 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #75093: origin
                    (checked_p6)

                    ; #82862: <==commonly_known== 37864 (neg)
                    (Pc_checked_p6)

                    ; #86347: <==commonly_known== 75093 (pos)
                    (Bc_checked_p6)

                    ; #26218: <==negation-removal== 50303 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #29508: <==negation-removal== 18741 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #34759: <==uncertain_firing== 18741 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #37346: <==uncertain_firing== 50303 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #37864: <==negation-removal== 75093 (pos)
                    (not (not_checked_p6))

                    ; #38626: <==negation-removal== 73471 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #43065: <==negation-removal== 64711 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55008: <==negation-removal== 31538 (pos)
                    (not (Pb_not_checked_p6))

                    ; #60565: <==uncertain_firing== 73471 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #63012: <==negation-removal== 11343 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63808: <==negation-removal== 40328 (pos)
                    (not (Ba_not_checked_p6))

                    ; #76370: <==negation-removal== 82862 (pos)
                    (not (Bc_not_checked_p6))

                    ; #87181: <==uncertain_firing== 34257 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #91175: <==negation-removal== 86347 (pos)
                    (not (Pc_not_checked_p6))

                    ; #96741: <==negation-removal== 34257 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #25448: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #25651: <==commonly_known== 65308 (neg)
                    (Pb_checked_p7)

                    ; #26695: <==closure== 54294 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #29908: <==commonly_known== 69487 (pos)
                    (Ba_checked_p7)

                    ; #34688: <==closure== 25448 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #38556: <==commonly_known== 69487 (pos)
                    (Bb_checked_p7)

                    ; #54294: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #58960: <==commonly_known== 65308 (neg)
                    (Pc_checked_p7)

                    ; #63450: <==commonly_known== 69487 (pos)
                    (Bc_checked_p7)

                    ; #68793: <==commonly_known== 65308 (neg)
                    (Pa_checked_p7)

                    ; #69487: origin
                    (checked_p7)

                    ; #10330: <==uncertain_firing== 34688 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #12577: <==negation-removal== 25448 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #12804: <==negation-removal== 25651 (pos)
                    (not (Bb_not_checked_p7))

                    ; #24281: <==negation-removal== 38556 (pos)
                    (not (Pb_not_checked_p7))

                    ; #27811: <==negation-removal== 54294 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #28218: <==negation-removal== 58960 (pos)
                    (not (Bc_not_checked_p7))

                    ; #33741: <==negation-removal== 26695 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #44382: <==uncertain_firing== 26695 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #46659: <==negation-removal== 63450 (pos)
                    (not (Pc_not_checked_p7))

                    ; #56547: <==negation-removal== 29908 (pos)
                    (not (Pa_not_checked_p7))

                    ; #65308: <==negation-removal== 69487 (pos)
                    (not (not_checked_p7))

                    ; #70529: <==uncertain_firing== 25448 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #72248: <==uncertain_firing== 54294 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #77835: <==negation-removal== 34688 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #78335: <==negation-removal== 68793 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13986: <==closure== 74906 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #17978: <==closure== 44611 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #25087: <==commonly_known== 81576 (pos)
                    (Bb_checked_p8)

                    ; #31497: <==commonly_known== 89374 (neg)
                    (Pb_checked_p8)

                    ; #33805: <==commonly_known== 89374 (neg)
                    (Pc_checked_p8)

                    ; #44611: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #45764: <==commonly_known== 81576 (pos)
                    (Ba_checked_p8)

                    ; #59089: <==commonly_known== 89374 (neg)
                    (Pa_checked_p8)

                    ; #74906: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #80465: <==commonly_known== 81576 (pos)
                    (Bc_checked_p8)

                    ; #81576: origin
                    (checked_p8)

                    ; #16756: <==uncertain_firing== 44611 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #19793: <==uncertain_firing== 74906 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #29547: <==negation-removal== 25087 (pos)
                    (not (Pb_not_checked_p8))

                    ; #32575: <==negation-removal== 45764 (pos)
                    (not (Pa_not_checked_p8))

                    ; #33056: <==negation-removal== 59089 (pos)
                    (not (Ba_not_checked_p8))

                    ; #37235: <==negation-removal== 44611 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #39364: <==negation-removal== 74906 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #39777: <==negation-removal== 31497 (pos)
                    (not (Bb_not_checked_p8))

                    ; #52764: <==negation-removal== 17978 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #57060: <==uncertain_firing== 17978 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #61814: <==negation-removal== 33805 (pos)
                    (not (Bc_not_checked_p8))

                    ; #65550: <==negation-removal== 80465 (pos)
                    (not (Pc_not_checked_p8))

                    ; #66940: <==uncertain_firing== 13986 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #74243: <==negation-removal== 13986 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #89374: <==negation-removal== 81576 (pos)
                    (not (not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #18637: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #21277: <==commonly_known== 24852 (pos)
                    (Bc_checked_p9)

                    ; #24852: origin
                    (checked_p9)

                    ; #48102: <==closure== 18637 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #65699: <==commonly_known== 10217 (neg)
                    (Pb_checked_p9)

                    ; #65819: <==closure== 72267 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #72267: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #81826: <==commonly_known== 24852 (pos)
                    (Bb_checked_p9)

                    ; #82563: <==commonly_known== 10217 (neg)
                    (Pc_checked_p9)

                    ; #82965: <==commonly_known== 10217 (neg)
                    (Pa_checked_p9)

                    ; #89051: <==commonly_known== 24852 (pos)
                    (Ba_checked_p9)

                    ; #10217: <==negation-removal== 24852 (pos)
                    (not (not_checked_p9))

                    ; #15042: <==negation-removal== 72267 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #19723: <==uncertain_firing== 65819 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #23332: <==negation-removal== 82965 (pos)
                    (not (Ba_not_checked_p9))

                    ; #29145: <==negation-removal== 81826 (pos)
                    (not (Pb_not_checked_p9))

                    ; #46478: <==uncertain_firing== 48102 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #46605: <==negation-removal== 48102 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #51477: <==negation-removal== 18637 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #65359: <==uncertain_firing== 72267 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #66132: <==negation-removal== 82563 (pos)
                    (not (Bc_not_checked_p9))

                    ; #69152: <==negation-removal== 65699 (pos)
                    (not (Bb_not_checked_p9))

                    ; #69993: <==negation-removal== 89051 (pos)
                    (not (Pa_not_checked_p9))

                    ; #78283: <==negation-removal== 21277 (pos)
                    (not (Pc_not_checked_p9))

                    ; #84443: <==negation-removal== 65819 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #84945: <==uncertain_firing== 18637 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #19096: <==commonly_known== 51310 (pos)
                    (Ba_checked_p1)

                    ; #21579: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #51310: origin
                    (checked_p1)

                    ; #51702: <==commonly_known== 17751 (neg)
                    (Pb_checked_p1)

                    ; #54840: <==commonly_known== 17751 (neg)
                    (Pa_checked_p1)

                    ; #64594: <==commonly_known== 17751 (neg)
                    (Pc_checked_p1)

                    ; #70858: <==closure== 72534 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #72534: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #74037: <==commonly_known== 51310 (pos)
                    (Bc_checked_p1)

                    ; #90478: <==closure== 21579 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #90864: <==commonly_known== 51310 (pos)
                    (Bb_checked_p1)

                    ; #15789: <==negation-removal== 74037 (pos)
                    (not (Pc_not_checked_p1))

                    ; #17751: <==negation-removal== 51310 (pos)
                    (not (not_checked_p1))

                    ; #25001: <==negation-removal== 21579 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #27048: <==uncertain_firing== 90478 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #27603: <==negation-removal== 90864 (pos)
                    (not (Pb_not_checked_p1))

                    ; #31059: <==uncertain_firing== 72534 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #33827: <==negation-removal== 64594 (pos)
                    (not (Bc_not_checked_p1))

                    ; #40910: <==negation-removal== 90478 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #41381: <==uncertain_firing== 21579 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #41785: <==negation-removal== 70858 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #49486: <==negation-removal== 19096 (pos)
                    (not (Pa_not_checked_p1))

                    ; #58507: <==uncertain_firing== 70858 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #69303: <==negation-removal== 72534 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #72505: <==negation-removal== 51702 (pos)
                    (not (Bb_not_checked_p1))

                    ; #82534: <==negation-removal== 54840 (pos)
                    (not (Ba_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15666: <==commonly_known== 48470 (pos)
                    (Bb_checked_p2)

                    ; #16948: <==commonly_known== 74689 (neg)
                    (Pb_checked_p2)

                    ; #22816: <==commonly_known== 48470 (pos)
                    (Bc_checked_p2)

                    ; #31540: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #48470: origin
                    (checked_p2)

                    ; #53885: <==commonly_known== 48470 (pos)
                    (Ba_checked_p2)

                    ; #77519: <==closure== 89595 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #87535: <==closure== 31540 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #89595: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #90036: <==commonly_known== 74689 (neg)
                    (Pc_checked_p2)

                    ; #90553: <==commonly_known== 74689 (neg)
                    (Pa_checked_p2)

                    ; #18953: <==negation-removal== 31540 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #31875: <==negation-removal== 15666 (pos)
                    (not (Pb_not_checked_p2))

                    ; #31940: <==negation-removal== 22816 (pos)
                    (not (Pc_not_checked_p2))

                    ; #40925: <==uncertain_firing== 89595 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #45383: <==negation-removal== 77519 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #46696: <==negation-removal== 53885 (pos)
                    (not (Pa_not_checked_p2))

                    ; #47395: <==negation-removal== 90036 (pos)
                    (not (Bc_not_checked_p2))

                    ; #52967: <==uncertain_firing== 77519 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #58430: <==negation-removal== 87535 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #59502: <==uncertain_firing== 87535 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #74689: <==negation-removal== 48470 (pos)
                    (not (not_checked_p2))

                    ; #76359: <==uncertain_firing== 31540 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #79395: <==negation-removal== 89595 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #84047: <==negation-removal== 16948 (pos)
                    (not (Bb_not_checked_p2))

                    ; #85735: <==negation-removal== 90553 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #24469: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #26782: <==commonly_known== 90813 (neg)
                    (Pc_checked_p3)

                    ; #60528: <==commonly_known== 90813 (neg)
                    (Pb_checked_p3)

                    ; #60692: <==commonly_known== 78229 (pos)
                    (Ba_checked_p3)

                    ; #63492: <==closure== 89554 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #69689: <==closure== 24469 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #70427: <==commonly_known== 78229 (pos)
                    (Bc_checked_p3)

                    ; #71132: <==commonly_known== 78229 (pos)
                    (Bb_checked_p3)

                    ; #78229: origin
                    (checked_p3)

                    ; #89554: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #91817: <==commonly_known== 90813 (neg)
                    (Pa_checked_p3)

                    ; #10963: <==negation-removal== 63492 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #11486: <==uncertain_firing== 24469 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #14459: <==uncertain_firing== 69689 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #22983: <==negation-removal== 70427 (pos)
                    (not (Pc_not_checked_p3))

                    ; #28235: <==negation-removal== 69689 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #49138: <==uncertain_firing== 89554 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #51255: <==negation-removal== 24469 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #58958: <==negation-removal== 71132 (pos)
                    (not (Pb_not_checked_p3))

                    ; #59541: <==negation-removal== 89554 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #61021: <==uncertain_firing== 63492 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #61530: <==negation-removal== 91817 (pos)
                    (not (Ba_not_checked_p3))

                    ; #73987: <==negation-removal== 60692 (pos)
                    (not (Pa_not_checked_p3))

                    ; #82477: <==negation-removal== 60528 (pos)
                    (not (Bb_not_checked_p3))

                    ; #90813: <==negation-removal== 78229 (pos)
                    (not (not_checked_p3))

                    ; #91545: <==negation-removal== 26782 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13470: <==commonly_known== 88419 (neg)
                    (Pc_checked_p4)

                    ; #21721: <==closure== 47524 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #28298: <==commonly_known== 37933 (pos)
                    (Ba_checked_p4)

                    ; #30986: <==commonly_known== 37933 (pos)
                    (Bc_checked_p4)

                    ; #37933: origin
                    (checked_p4)

                    ; #47524: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #49250: <==commonly_known== 88419 (neg)
                    (Pa_checked_p4)

                    ; #49427: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #51077: <==closure== 49427 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #52093: <==commonly_known== 88419 (neg)
                    (Pb_checked_p4)

                    ; #61528: <==commonly_known== 37933 (pos)
                    (Bb_checked_p4)

                    ; #10783: <==uncertain_firing== 21721 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #36838: <==negation-removal== 52093 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37415: <==negation-removal== 28298 (pos)
                    (not (Pa_not_checked_p4))

                    ; #41424: <==negation-removal== 51077 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #44408: <==negation-removal== 47524 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #44553: <==negation-removal== 21721 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #45461: <==negation-removal== 13470 (pos)
                    (not (Bc_not_checked_p4))

                    ; #51792: <==negation-removal== 61528 (pos)
                    (not (Pb_not_checked_p4))

                    ; #62111: <==uncertain_firing== 51077 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #66506: <==negation-removal== 49427 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #75008: <==uncertain_firing== 47524 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #75453: <==uncertain_firing== 49427 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #77213: <==negation-removal== 30986 (pos)
                    (not (Pc_not_checked_p4))

                    ; #88419: <==negation-removal== 37933 (pos)
                    (not (not_checked_p4))

                    ; #92770: <==negation-removal== 49250 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13136: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #14878: <==commonly_known== 74874 (neg)
                    (Pb_checked_p5)

                    ; #22436: <==commonly_known== 90532 (pos)
                    (Bc_checked_p5)

                    ; #25418: <==commonly_known== 90532 (pos)
                    (Bb_checked_p5)

                    ; #49418: <==closure== 13136 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #53177: <==commonly_known== 74874 (neg)
                    (Pa_checked_p5)

                    ; #63556: <==commonly_known== 90532 (pos)
                    (Ba_checked_p5)

                    ; #69274: <==commonly_known== 74874 (neg)
                    (Pc_checked_p5)

                    ; #86512: <==closure== 92134 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #90532: origin
                    (checked_p5)

                    ; #92134: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #10586: <==negation-removal== 53177 (pos)
                    (not (Ba_not_checked_p5))

                    ; #20155: <==uncertain_firing== 92134 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #26178: <==uncertain_firing== 13136 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #29291: <==negation-removal== 13136 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #33334: <==negation-removal== 92134 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #36897: <==negation-removal== 49418 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #52131: <==negation-removal== 63556 (pos)
                    (not (Pa_not_checked_p5))

                    ; #53192: <==negation-removal== 14878 (pos)
                    (not (Bb_not_checked_p5))

                    ; #56914: <==uncertain_firing== 49418 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #57152: <==negation-removal== 25418 (pos)
                    (not (Pb_not_checked_p5))

                    ; #57576: <==negation-removal== 86512 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #65578: <==negation-removal== 22436 (pos)
                    (not (Pc_not_checked_p5))

                    ; #74874: <==negation-removal== 90532 (pos)
                    (not (not_checked_p5))

                    ; #81754: <==negation-removal== 69274 (pos)
                    (not (Bc_not_checked_p5))

                    ; #90198: <==uncertain_firing== 86512 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11343: <==commonly_known== 37864 (neg)
                    (Pb_checked_p6)

                    ; #31538: <==commonly_known== 75093 (pos)
                    (Bb_checked_p6)

                    ; #31554: <==closure== 56214 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #40328: <==commonly_known== 37864 (neg)
                    (Pa_checked_p6)

                    ; #56214: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #62241: <==closure== 70226 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #64711: <==commonly_known== 75093 (pos)
                    (Ba_checked_p6)

                    ; #70226: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #75093: origin
                    (checked_p6)

                    ; #82862: <==commonly_known== 37864 (neg)
                    (Pc_checked_p6)

                    ; #86347: <==commonly_known== 75093 (pos)
                    (Bc_checked_p6)

                    ; #25563: <==negation-removal== 56214 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #25803: <==uncertain_firing== 62241 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #37864: <==negation-removal== 75093 (pos)
                    (not (not_checked_p6))

                    ; #38078: <==negation-removal== 62241 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #43065: <==negation-removal== 64711 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55008: <==negation-removal== 31538 (pos)
                    (not (Pb_not_checked_p6))

                    ; #59584: <==negation-removal== 70226 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #63012: <==negation-removal== 11343 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63808: <==negation-removal== 40328 (pos)
                    (not (Ba_not_checked_p6))

                    ; #64436: <==uncertain_firing== 56214 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #65078: <==uncertain_firing== 70226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #76370: <==negation-removal== 82862 (pos)
                    (not (Bc_not_checked_p6))

                    ; #89033: <==uncertain_firing== 31554 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #89476: <==negation-removal== 31554 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #91175: <==negation-removal== 86347 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #25651: <==commonly_known== 65308 (neg)
                    (Pb_checked_p7)

                    ; #29908: <==commonly_known== 69487 (pos)
                    (Ba_checked_p7)

                    ; #38556: <==commonly_known== 69487 (pos)
                    (Bb_checked_p7)

                    ; #41635: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #42913: <==closure== 41635 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #57868: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #58960: <==commonly_known== 65308 (neg)
                    (Pc_checked_p7)

                    ; #63450: <==commonly_known== 69487 (pos)
                    (Bc_checked_p7)

                    ; #68793: <==commonly_known== 65308 (neg)
                    (Pa_checked_p7)

                    ; #69487: origin
                    (checked_p7)

                    ; #91175: <==closure== 57868 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #12804: <==negation-removal== 25651 (pos)
                    (not (Bb_not_checked_p7))

                    ; #21926: <==negation-removal== 41635 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #24281: <==negation-removal== 38556 (pos)
                    (not (Pb_not_checked_p7))

                    ; #28218: <==negation-removal== 58960 (pos)
                    (not (Bc_not_checked_p7))

                    ; #46659: <==negation-removal== 63450 (pos)
                    (not (Pc_not_checked_p7))

                    ; #54116: <==uncertain_firing== 41635 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #56547: <==negation-removal== 29908 (pos)
                    (not (Pa_not_checked_p7))

                    ; #56838: <==uncertain_firing== 91175 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #61182: <==negation-removal== 57868 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #65308: <==negation-removal== 69487 (pos)
                    (not (not_checked_p7))

                    ; #67435: <==negation-removal== 91175 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #75711: <==negation-removal== 42913 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #78335: <==negation-removal== 68793 (pos)
                    (not (Ba_not_checked_p7))

                    ; #85500: <==uncertain_firing== 57868 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #89610: <==uncertain_firing== 42913 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17986: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #20540: <==closure== 17986 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #25087: <==commonly_known== 81576 (pos)
                    (Bb_checked_p8)

                    ; #31497: <==commonly_known== 89374 (neg)
                    (Pb_checked_p8)

                    ; #33805: <==commonly_known== 89374 (neg)
                    (Pc_checked_p8)

                    ; #45764: <==commonly_known== 81576 (pos)
                    (Ba_checked_p8)

                    ; #58651: <==closure== 94219 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #59089: <==commonly_known== 89374 (neg)
                    (Pa_checked_p8)

                    ; #80465: <==commonly_known== 81576 (pos)
                    (Bc_checked_p8)

                    ; #81576: origin
                    (checked_p8)

                    ; #94219: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #20685: <==uncertain_firing== 17986 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29547: <==negation-removal== 25087 (pos)
                    (not (Pb_not_checked_p8))

                    ; #32437: <==uncertain_firing== 94219 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #32575: <==negation-removal== 45764 (pos)
                    (not (Pa_not_checked_p8))

                    ; #33056: <==negation-removal== 59089 (pos)
                    (not (Ba_not_checked_p8))

                    ; #34416: <==negation-removal== 20540 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #37282: <==uncertain_firing== 20540 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #39777: <==negation-removal== 31497 (pos)
                    (not (Bb_not_checked_p8))

                    ; #43684: <==negation-removal== 94219 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #56883: <==negation-removal== 17986 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #60191: <==uncertain_firing== 58651 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #61814: <==negation-removal== 33805 (pos)
                    (not (Bc_not_checked_p8))

                    ; #65550: <==negation-removal== 80465 (pos)
                    (not (Pc_not_checked_p8))

                    ; #69455: <==negation-removal== 58651 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #89374: <==negation-removal== 81576 (pos)
                    (not (not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21277: <==commonly_known== 24852 (pos)
                    (Bc_checked_p9)

                    ; #24852: origin
                    (checked_p9)

                    ; #43578: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #44894: <==closure== 70506 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #46372: <==closure== 43578 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #65699: <==commonly_known== 10217 (neg)
                    (Pb_checked_p9)

                    ; #70506: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #81826: <==commonly_known== 24852 (pos)
                    (Bb_checked_p9)

                    ; #82563: <==commonly_known== 10217 (neg)
                    (Pc_checked_p9)

                    ; #82965: <==commonly_known== 10217 (neg)
                    (Pa_checked_p9)

                    ; #89051: <==commonly_known== 24852 (pos)
                    (Ba_checked_p9)

                    ; #10217: <==negation-removal== 24852 (pos)
                    (not (not_checked_p9))

                    ; #17676: <==negation-removal== 46372 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #23332: <==negation-removal== 82965 (pos)
                    (not (Ba_not_checked_p9))

                    ; #26548: <==uncertain_firing== 46372 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #29145: <==negation-removal== 81826 (pos)
                    (not (Pb_not_checked_p9))

                    ; #32325: <==uncertain_firing== 43578 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #60285: <==negation-removal== 44894 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #62267: <==uncertain_firing== 70506 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #66132: <==negation-removal== 82563 (pos)
                    (not (Bc_not_checked_p9))

                    ; #69152: <==negation-removal== 65699 (pos)
                    (not (Bb_not_checked_p9))

                    ; #69268: <==negation-removal== 43578 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #69993: <==negation-removal== 89051 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77179: <==uncertain_firing== 44894 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #78283: <==negation-removal== 21277 (pos)
                    (not (Pc_not_checked_p9))

                    ; #89683: <==negation-removal== 70506 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #19096: <==commonly_known== 51310 (pos)
                    (Ba_checked_p1)

                    ; #20973: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #23048: <==closure== 20973 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #29230: <==closure== 46791 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #46791: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #51310: origin
                    (checked_p1)

                    ; #51702: <==commonly_known== 17751 (neg)
                    (Pb_checked_p1)

                    ; #54840: <==commonly_known== 17751 (neg)
                    (Pa_checked_p1)

                    ; #64594: <==commonly_known== 17751 (neg)
                    (Pc_checked_p1)

                    ; #74037: <==commonly_known== 51310 (pos)
                    (Bc_checked_p1)

                    ; #90864: <==commonly_known== 51310 (pos)
                    (Bb_checked_p1)

                    ; #15789: <==negation-removal== 74037 (pos)
                    (not (Pc_not_checked_p1))

                    ; #16178: <==uncertain_firing== 20973 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #17751: <==negation-removal== 51310 (pos)
                    (not (not_checked_p1))

                    ; #27603: <==negation-removal== 90864 (pos)
                    (not (Pb_not_checked_p1))

                    ; #33827: <==negation-removal== 64594 (pos)
                    (not (Bc_not_checked_p1))

                    ; #44443: <==uncertain_firing== 23048 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #45621: <==uncertain_firing== 29230 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #49486: <==negation-removal== 19096 (pos)
                    (not (Pa_not_checked_p1))

                    ; #61051: <==uncertain_firing== 46791 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #65751: <==negation-removal== 46791 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #68078: <==negation-removal== 23048 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #70629: <==negation-removal== 29230 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #72505: <==negation-removal== 51702 (pos)
                    (not (Bb_not_checked_p1))

                    ; #80802: <==negation-removal== 20973 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #82534: <==negation-removal== 54840 (pos)
                    (not (Ba_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15666: <==commonly_known== 48470 (pos)
                    (Bb_checked_p2)

                    ; #16948: <==commonly_known== 74689 (neg)
                    (Pb_checked_p2)

                    ; #22816: <==commonly_known== 48470 (pos)
                    (Bc_checked_p2)

                    ; #36369: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #44641: <==closure== 36369 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #48470: origin
                    (checked_p2)

                    ; #53885: <==commonly_known== 48470 (pos)
                    (Ba_checked_p2)

                    ; #73596: <==closure== 90220 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #90036: <==commonly_known== 74689 (neg)
                    (Pc_checked_p2)

                    ; #90220: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #90553: <==commonly_known== 74689 (neg)
                    (Pa_checked_p2)

                    ; #10389: <==uncertain_firing== 73596 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #10924: <==negation-removal== 44641 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #14643: <==negation-removal== 36369 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #23499: <==negation-removal== 90220 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #27727: <==negation-removal== 73596 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #31875: <==negation-removal== 15666 (pos)
                    (not (Pb_not_checked_p2))

                    ; #31940: <==negation-removal== 22816 (pos)
                    (not (Pc_not_checked_p2))

                    ; #46696: <==negation-removal== 53885 (pos)
                    (not (Pa_not_checked_p2))

                    ; #47395: <==negation-removal== 90036 (pos)
                    (not (Bc_not_checked_p2))

                    ; #66065: <==uncertain_firing== 44641 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #74689: <==negation-removal== 48470 (pos)
                    (not (not_checked_p2))

                    ; #84047: <==negation-removal== 16948 (pos)
                    (not (Bb_not_checked_p2))

                    ; #85735: <==negation-removal== 90553 (pos)
                    (not (Ba_not_checked_p2))

                    ; #88157: <==uncertain_firing== 36369 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #90641: <==uncertain_firing== 90220 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #26782: <==commonly_known== 90813 (neg)
                    (Pc_checked_p3)

                    ; #60528: <==commonly_known== 90813 (neg)
                    (Pb_checked_p3)

                    ; #60692: <==commonly_known== 78229 (pos)
                    (Ba_checked_p3)

                    ; #61213: <==closure== 74456 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #69791: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #70427: <==commonly_known== 78229 (pos)
                    (Bc_checked_p3)

                    ; #71132: <==commonly_known== 78229 (pos)
                    (Bb_checked_p3)

                    ; #74456: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #75238: <==closure== 69791 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #78229: origin
                    (checked_p3)

                    ; #91817: <==commonly_known== 90813 (neg)
                    (Pa_checked_p3)

                    ; #11256: <==negation-removal== 74456 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #22983: <==negation-removal== 70427 (pos)
                    (not (Pc_not_checked_p3))

                    ; #23055: <==negation-removal== 69791 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #32609: <==uncertain_firing== 69791 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38176: <==uncertain_firing== 61213 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #42351: <==negation-removal== 75238 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #42790: <==negation-removal== 61213 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #44579: <==uncertain_firing== 74456 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #58958: <==negation-removal== 71132 (pos)
                    (not (Pb_not_checked_p3))

                    ; #61530: <==negation-removal== 91817 (pos)
                    (not (Ba_not_checked_p3))

                    ; #62646: <==uncertain_firing== 75238 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #73987: <==negation-removal== 60692 (pos)
                    (not (Pa_not_checked_p3))

                    ; #82477: <==negation-removal== 60528 (pos)
                    (not (Bb_not_checked_p3))

                    ; #90813: <==negation-removal== 78229 (pos)
                    (not (not_checked_p3))

                    ; #91545: <==negation-removal== 26782 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13470: <==commonly_known== 88419 (neg)
                    (Pc_checked_p4)

                    ; #16414: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #26162: <==closure== 16414 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #28298: <==commonly_known== 37933 (pos)
                    (Ba_checked_p4)

                    ; #30986: <==commonly_known== 37933 (pos)
                    (Bc_checked_p4)

                    ; #37933: origin
                    (checked_p4)

                    ; #47212: <==closure== 84435 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #49250: <==commonly_known== 88419 (neg)
                    (Pa_checked_p4)

                    ; #52093: <==commonly_known== 88419 (neg)
                    (Pb_checked_p4)

                    ; #61528: <==commonly_known== 37933 (pos)
                    (Bb_checked_p4)

                    ; #84435: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #13746: <==negation-removal== 47212 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #30022: <==uncertain_firing== 26162 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #34311: <==uncertain_firing== 16414 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #36838: <==negation-removal== 52093 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37415: <==negation-removal== 28298 (pos)
                    (not (Pa_not_checked_p4))

                    ; #37800: <==uncertain_firing== 47212 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #45461: <==negation-removal== 13470 (pos)
                    (not (Bc_not_checked_p4))

                    ; #51792: <==negation-removal== 61528 (pos)
                    (not (Pb_not_checked_p4))

                    ; #55603: <==negation-removal== 26162 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #56472: <==negation-removal== 16414 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #58980: <==negation-removal== 84435 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #77213: <==negation-removal== 30986 (pos)
                    (not (Pc_not_checked_p4))

                    ; #79933: <==uncertain_firing== 84435 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #88419: <==negation-removal== 37933 (pos)
                    (not (not_checked_p4))

                    ; #92770: <==negation-removal== 49250 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14611: <==closure== 54002 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #14878: <==commonly_known== 74874 (neg)
                    (Pb_checked_p5)

                    ; #22436: <==commonly_known== 90532 (pos)
                    (Bc_checked_p5)

                    ; #25418: <==commonly_known== 90532 (pos)
                    (Bb_checked_p5)

                    ; #36791: <==closure== 63605 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #53177: <==commonly_known== 74874 (neg)
                    (Pa_checked_p5)

                    ; #54002: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #63556: <==commonly_known== 90532 (pos)
                    (Ba_checked_p5)

                    ; #63605: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #69274: <==commonly_known== 74874 (neg)
                    (Pc_checked_p5)

                    ; #90532: origin
                    (checked_p5)

                    ; #10586: <==negation-removal== 53177 (pos)
                    (not (Ba_not_checked_p5))

                    ; #11201: <==negation-removal== 63605 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #15569: <==negation-removal== 14611 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #17889: <==uncertain_firing== 36791 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #23476: <==negation-removal== 36791 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #26147: <==uncertain_firing== 63605 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52131: <==negation-removal== 63556 (pos)
                    (not (Pa_not_checked_p5))

                    ; #52524: <==uncertain_firing== 14611 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #53192: <==negation-removal== 14878 (pos)
                    (not (Bb_not_checked_p5))

                    ; #53816: <==negation-removal== 54002 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #57152: <==negation-removal== 25418 (pos)
                    (not (Pb_not_checked_p5))

                    ; #65578: <==negation-removal== 22436 (pos)
                    (not (Pc_not_checked_p5))

                    ; #70631: <==uncertain_firing== 54002 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #74874: <==negation-removal== 90532 (pos)
                    (not (not_checked_p5))

                    ; #81754: <==negation-removal== 69274 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11343: <==commonly_known== 37864 (neg)
                    (Pb_checked_p6)

                    ; #31538: <==commonly_known== 75093 (pos)
                    (Bb_checked_p6)

                    ; #36118: <==closure== 71356 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #40328: <==commonly_known== 37864 (neg)
                    (Pa_checked_p6)

                    ; #42903: <==closure== 55719 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #55719: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #64711: <==commonly_known== 75093 (pos)
                    (Ba_checked_p6)

                    ; #71356: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #75093: origin
                    (checked_p6)

                    ; #82862: <==commonly_known== 37864 (neg)
                    (Pc_checked_p6)

                    ; #86347: <==commonly_known== 75093 (pos)
                    (Bc_checked_p6)

                    ; #30428: <==negation-removal== 42903 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #37864: <==negation-removal== 75093 (pos)
                    (not (not_checked_p6))

                    ; #43065: <==negation-removal== 64711 (pos)
                    (not (Pa_not_checked_p6))

                    ; #52194: <==negation-removal== 36118 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #52668: <==uncertain_firing== 55719 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #53806: <==uncertain_firing== 42903 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #55008: <==negation-removal== 31538 (pos)
                    (not (Pb_not_checked_p6))

                    ; #60843: <==uncertain_firing== 36118 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #63012: <==negation-removal== 11343 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63511: <==negation-removal== 71356 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #63808: <==negation-removal== 40328 (pos)
                    (not (Ba_not_checked_p6))

                    ; #70664: <==uncertain_firing== 71356 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #76370: <==negation-removal== 82862 (pos)
                    (not (Bc_not_checked_p6))

                    ; #83340: <==negation-removal== 55719 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #91175: <==negation-removal== 86347 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #13252: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #19882: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #25651: <==commonly_known== 65308 (neg)
                    (Pb_checked_p7)

                    ; #27366: <==closure== 13252 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #29908: <==commonly_known== 69487 (pos)
                    (Ba_checked_p7)

                    ; #38556: <==commonly_known== 69487 (pos)
                    (Bb_checked_p7)

                    ; #58960: <==commonly_known== 65308 (neg)
                    (Pc_checked_p7)

                    ; #63450: <==commonly_known== 69487 (pos)
                    (Bc_checked_p7)

                    ; #68793: <==commonly_known== 65308 (neg)
                    (Pa_checked_p7)

                    ; #69487: origin
                    (checked_p7)

                    ; #89284: <==closure== 19882 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #12804: <==negation-removal== 25651 (pos)
                    (not (Bb_not_checked_p7))

                    ; #16255: <==uncertain_firing== 13252 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #24281: <==negation-removal== 38556 (pos)
                    (not (Pb_not_checked_p7))

                    ; #28218: <==negation-removal== 58960 (pos)
                    (not (Bc_not_checked_p7))

                    ; #40378: <==uncertain_firing== 19882 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #46659: <==negation-removal== 63450 (pos)
                    (not (Pc_not_checked_p7))

                    ; #50000: <==uncertain_firing== 89284 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #56547: <==negation-removal== 29908 (pos)
                    (not (Pa_not_checked_p7))

                    ; #65308: <==negation-removal== 69487 (pos)
                    (not (not_checked_p7))

                    ; #65530: <==negation-removal== 89284 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #69029: <==negation-removal== 19882 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #72915: <==negation-removal== 27366 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #73672: <==uncertain_firing== 27366 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #78335: <==negation-removal== 68793 (pos)
                    (not (Ba_not_checked_p7))

                    ; #81528: <==negation-removal== 13252 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #20477: <==closure== 49346 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #25087: <==commonly_known== 81576 (pos)
                    (Bb_checked_p8)

                    ; #31497: <==commonly_known== 89374 (neg)
                    (Pb_checked_p8)

                    ; #33805: <==commonly_known== 89374 (neg)
                    (Pc_checked_p8)

                    ; #45764: <==commonly_known== 81576 (pos)
                    (Ba_checked_p8)

                    ; #48627: <==closure== 62156 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #49346: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #59089: <==commonly_known== 89374 (neg)
                    (Pa_checked_p8)

                    ; #62156: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #80465: <==commonly_known== 81576 (pos)
                    (Bc_checked_p8)

                    ; #81576: origin
                    (checked_p8)

                    ; #19164: <==negation-removal== 20477 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #20408: <==uncertain_firing== 62156 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #29547: <==negation-removal== 25087 (pos)
                    (not (Pb_not_checked_p8))

                    ; #32575: <==negation-removal== 45764 (pos)
                    (not (Pa_not_checked_p8))

                    ; #33056: <==negation-removal== 59089 (pos)
                    (not (Ba_not_checked_p8))

                    ; #39777: <==negation-removal== 31497 (pos)
                    (not (Bb_not_checked_p8))

                    ; #45055: <==uncertain_firing== 20477 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #50236: <==negation-removal== 62156 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #57836: <==uncertain_firing== 49346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #61814: <==negation-removal== 33805 (pos)
                    (not (Bc_not_checked_p8))

                    ; #65550: <==negation-removal== 80465 (pos)
                    (not (Pc_not_checked_p8))

                    ; #72993: <==negation-removal== 49346 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #76319: <==negation-removal== 48627 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #78734: <==uncertain_firing== 48627 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #89374: <==negation-removal== 81576 (pos)
                    (not (not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21277: <==commonly_known== 24852 (pos)
                    (Bc_checked_p9)

                    ; #24852: origin
                    (checked_p9)

                    ; #34087: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #39749: <==closure== 34087 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #41524: <==closure== 63496 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #63496: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #65699: <==commonly_known== 10217 (neg)
                    (Pb_checked_p9)

                    ; #81826: <==commonly_known== 24852 (pos)
                    (Bb_checked_p9)

                    ; #82563: <==commonly_known== 10217 (neg)
                    (Pc_checked_p9)

                    ; #82965: <==commonly_known== 10217 (neg)
                    (Pa_checked_p9)

                    ; #89051: <==commonly_known== 24852 (pos)
                    (Ba_checked_p9)

                    ; #10217: <==negation-removal== 24852 (pos)
                    (not (not_checked_p9))

                    ; #12644: <==negation-removal== 39749 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #15253: <==uncertain_firing== 41524 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #16767: <==negation-removal== 34087 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #23036: <==uncertain_firing== 39749 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #23332: <==negation-removal== 82965 (pos)
                    (not (Ba_not_checked_p9))

                    ; #29145: <==negation-removal== 81826 (pos)
                    (not (Pb_not_checked_p9))

                    ; #51151: <==uncertain_firing== 63496 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #63666: <==negation-removal== 41524 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #66132: <==negation-removal== 82563 (pos)
                    (not (Bc_not_checked_p9))

                    ; #69152: <==negation-removal== 65699 (pos)
                    (not (Bb_not_checked_p9))

                    ; #69993: <==negation-removal== 89051 (pos)
                    (not (Pa_not_checked_p9))

                    ; #75199: <==uncertain_firing== 34087 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #78283: <==negation-removal== 21277 (pos)
                    (not (Pc_not_checked_p9))

                    ; #88608: <==negation-removal== 63496 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))))

)