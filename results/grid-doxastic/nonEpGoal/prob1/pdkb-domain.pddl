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
                    ; #10862: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #11394: <==closure== 10862 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #11865: <==closure== 29752 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #29752: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #90128: <==closure== 90895 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #90895: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #13398: <==uncertain_firing== 29752 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #17482: <==negation-removal== 29752 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #24336: <==negation-removal== 11865 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #42596: <==negation-removal== 10862 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #47291: <==negation-removal== 90128 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #48202: <==uncertain_firing== 90895 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #48459: <==uncertain_firing== 11865 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #58708: <==negation-removal== 11394 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65846: <==uncertain_firing== 90128 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71747: <==uncertain_firing== 11394 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #78586: <==negation-removal== 90895 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #86199: <==uncertain_firing== 10862 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #10862: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #11394: <==closure== 10862 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #11865: <==closure== 29752 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #29752: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #90128: <==closure== 90895 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #90895: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #13398: <==uncertain_firing== 29752 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #17482: <==negation-removal== 29752 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #24336: <==negation-removal== 11865 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #42596: <==negation-removal== 10862 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #47291: <==negation-removal== 90128 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #48202: <==uncertain_firing== 90895 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #48459: <==uncertain_firing== 11865 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #58708: <==negation-removal== 11394 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65846: <==uncertain_firing== 90128 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71747: <==uncertain_firing== 11394 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #78586: <==negation-removal== 90895 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #86199: <==uncertain_firing== 10862 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #10862: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #11394: <==closure== 10862 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #11865: <==closure== 29752 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #29752: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #90128: <==closure== 90895 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #90895: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #13398: <==uncertain_firing== 29752 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #17482: <==negation-removal== 29752 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #24336: <==negation-removal== 11865 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #42596: <==negation-removal== 10862 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #47291: <==negation-removal== 90128 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #48202: <==uncertain_firing== 90895 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #48459: <==uncertain_firing== 11865 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #58708: <==negation-removal== 11394 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65846: <==uncertain_firing== 90128 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71747: <==uncertain_firing== 11394 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #78586: <==negation-removal== 90895 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #86199: <==uncertain_firing== 10862 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #54119: <==closure== 57551 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #57551: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #70025: <==closure== 72846 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #72846: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #83898: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #89636: <==closure== 83898 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #21577: <==uncertain_firing== 54119 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #22098: <==uncertain_firing== 72846 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #25000: <==negation-removal== 83898 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #33280: <==uncertain_firing== 83898 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #34495: <==uncertain_firing== 57551 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #34830: <==negation-removal== 89636 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #36102: <==uncertain_firing== 70025 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #39979: <==negation-removal== 70025 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #51625: <==uncertain_firing== 89636 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #58315: <==negation-removal== 57551 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69794: <==negation-removal== 54119 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #83302: <==negation-removal== 72846 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #54119: <==closure== 57551 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #57551: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #70025: <==closure== 72846 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #72846: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #83898: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #89636: <==closure== 83898 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #21577: <==uncertain_firing== 54119 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #22098: <==uncertain_firing== 72846 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #25000: <==negation-removal== 83898 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #33280: <==uncertain_firing== 83898 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #34495: <==uncertain_firing== 57551 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #34830: <==negation-removal== 89636 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #36102: <==uncertain_firing== 70025 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #39979: <==negation-removal== 70025 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #51625: <==uncertain_firing== 89636 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #58315: <==negation-removal== 57551 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69794: <==negation-removal== 54119 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #83302: <==negation-removal== 72846 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #54119: <==closure== 57551 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #57551: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #70025: <==closure== 72846 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #72846: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #83898: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #89636: <==closure== 83898 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #21577: <==uncertain_firing== 54119 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #22098: <==uncertain_firing== 72846 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #25000: <==negation-removal== 83898 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #33280: <==uncertain_firing== 83898 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #34495: <==uncertain_firing== 57551 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #34830: <==negation-removal== 89636 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #36102: <==uncertain_firing== 70025 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #39979: <==negation-removal== 70025 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #51625: <==uncertain_firing== 89636 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #58315: <==negation-removal== 57551 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69794: <==negation-removal== 54119 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #83302: <==negation-removal== 72846 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #17872: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #22566: <==closure== 17872 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #51293: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #54178: <==closure== 51293 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #71723: <==closure== 91757 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #91757: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #21461: <==negation-removal== 17872 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #22086: <==uncertain_firing== 54178 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #25387: <==uncertain_firing== 51293 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #40047: <==negation-removal== 71723 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #41458: <==uncertain_firing== 91757 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #56568: <==uncertain_firing== 71723 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #58215: <==negation-removal== 22566 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #70140: <==uncertain_firing== 22566 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #72812: <==uncertain_firing== 17872 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #78015: <==negation-removal== 91757 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #88795: <==negation-removal== 54178 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #90903: <==negation-removal== 51293 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #17872: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #22566: <==closure== 17872 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #51293: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #54178: <==closure== 51293 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #71723: <==closure== 91757 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #91757: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #21461: <==negation-removal== 17872 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #22086: <==uncertain_firing== 54178 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #25387: <==uncertain_firing== 51293 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #40047: <==negation-removal== 71723 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #41458: <==uncertain_firing== 91757 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #56568: <==uncertain_firing== 71723 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #58215: <==negation-removal== 22566 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #70140: <==uncertain_firing== 22566 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #72812: <==uncertain_firing== 17872 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #78015: <==negation-removal== 91757 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #88795: <==negation-removal== 54178 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #90903: <==negation-removal== 51293 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #17872: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #22566: <==closure== 17872 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #51293: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #54178: <==closure== 51293 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #71723: <==closure== 91757 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #91757: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #21461: <==negation-removal== 17872 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #22086: <==uncertain_firing== 54178 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #25387: <==uncertain_firing== 51293 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #40047: <==negation-removal== 71723 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #41458: <==uncertain_firing== 91757 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #56568: <==uncertain_firing== 71723 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #58215: <==negation-removal== 22566 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #70140: <==uncertain_firing== 22566 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #72812: <==uncertain_firing== 17872 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #78015: <==negation-removal== 91757 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #88795: <==negation-removal== 54178 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #90903: <==negation-removal== 51293 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #12696: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #13133: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #19064: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #50539: <==closure== 12696 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #68021: <==closure== 19064 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #78544: <==closure== 13133 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #13773: <==uncertain_firing== 13133 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #18371: <==uncertain_firing== 19064 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #21037: <==uncertain_firing== 12696 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #21473: <==negation-removal== 50539 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #23622: <==uncertain_firing== 68021 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #32126: <==negation-removal== 68021 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #39418: <==uncertain_firing== 50539 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #43267: <==negation-removal== 19064 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #48468: <==negation-removal== 12696 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #66954: <==uncertain_firing== 78544 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #87021: <==negation-removal== 13133 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #98866: <==negation-removal== 78544 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #12696: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #13133: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #19064: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #50539: <==closure== 12696 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #68021: <==closure== 19064 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #78544: <==closure== 13133 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #13773: <==uncertain_firing== 13133 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #18371: <==uncertain_firing== 19064 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #21037: <==uncertain_firing== 12696 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #21473: <==negation-removal== 50539 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #23622: <==uncertain_firing== 68021 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #32126: <==negation-removal== 68021 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #39418: <==uncertain_firing== 50539 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #43267: <==negation-removal== 19064 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #48468: <==negation-removal== 12696 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #66954: <==uncertain_firing== 78544 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #87021: <==negation-removal== 13133 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #98866: <==negation-removal== 78544 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #12696: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #13133: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #19064: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #50539: <==closure== 12696 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #68021: <==closure== 19064 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #78544: <==closure== 13133 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #13773: <==uncertain_firing== 13133 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #18371: <==uncertain_firing== 19064 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #21037: <==uncertain_firing== 12696 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #21473: <==negation-removal== 50539 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #23622: <==uncertain_firing== 68021 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #32126: <==negation-removal== 68021 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #39418: <==uncertain_firing== 50539 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #43267: <==negation-removal== 19064 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #48468: <==negation-removal== 12696 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #66954: <==uncertain_firing== 78544 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #87021: <==negation-removal== 13133 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #98866: <==negation-removal== 78544 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #15020: <==closure== 85479 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #16524: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #26906: <==closure== 16524 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #85479: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #87056: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #89523: <==closure== 87056 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #28676: <==negation-removal== 87056 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #38687: <==uncertain_firing== 26906 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #44508: <==negation-removal== 16524 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #47172: <==negation-removal== 26906 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47439: <==uncertain_firing== 85479 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #57789: <==uncertain_firing== 15020 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63421: <==negation-removal== 85479 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #66594: <==uncertain_firing== 16524 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #67990: <==negation-removal== 15020 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #73093: <==uncertain_firing== 87056 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #76642: <==negation-removal== 89523 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #78986: <==uncertain_firing== 89523 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #15020: <==closure== 85479 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #16524: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #26906: <==closure== 16524 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #85479: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #87056: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #89523: <==closure== 87056 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #28676: <==negation-removal== 87056 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #38687: <==uncertain_firing== 26906 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #44508: <==negation-removal== 16524 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #47172: <==negation-removal== 26906 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47439: <==uncertain_firing== 85479 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #57789: <==uncertain_firing== 15020 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63421: <==negation-removal== 85479 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #66594: <==uncertain_firing== 16524 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #67990: <==negation-removal== 15020 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #73093: <==uncertain_firing== 87056 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #76642: <==negation-removal== 89523 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #78986: <==uncertain_firing== 89523 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #15020: <==closure== 85479 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #16524: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #26906: <==closure== 16524 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #85479: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #87056: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #89523: <==closure== 87056 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #28676: <==negation-removal== 87056 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #38687: <==uncertain_firing== 26906 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #44508: <==negation-removal== 16524 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #47172: <==negation-removal== 26906 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47439: <==uncertain_firing== 85479 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #57789: <==uncertain_firing== 15020 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63421: <==negation-removal== 85479 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #66594: <==uncertain_firing== 16524 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #67990: <==negation-removal== 15020 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #73093: <==uncertain_firing== 87056 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #76642: <==negation-removal== 89523 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #78986: <==uncertain_firing== 89523 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #11663: <==closure== 91178 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #14517: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #63112: <==closure== 75166 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #68004: <==closure== 14517 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #75166: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #91178: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #44260: <==uncertain_firing== 91178 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #48584: <==negation-removal== 75166 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #53759: <==uncertain_firing== 14517 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #67379: <==uncertain_firing== 68004 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #70138: <==negation-removal== 14517 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #72426: <==negation-removal== 11663 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #73706: <==negation-removal== 68004 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #74881: <==negation-removal== 63112 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86260: <==uncertain_firing== 63112 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86674: <==uncertain_firing== 75166 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87035: <==uncertain_firing== 11663 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #87719: <==negation-removal== 91178 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #11663: <==closure== 91178 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #14517: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #63112: <==closure== 75166 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #68004: <==closure== 14517 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #75166: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #91178: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #44260: <==uncertain_firing== 91178 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #48584: <==negation-removal== 75166 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #53759: <==uncertain_firing== 14517 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #67379: <==uncertain_firing== 68004 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #70138: <==negation-removal== 14517 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #72426: <==negation-removal== 11663 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #73706: <==negation-removal== 68004 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #74881: <==negation-removal== 63112 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86260: <==uncertain_firing== 63112 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86674: <==uncertain_firing== 75166 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87035: <==uncertain_firing== 11663 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #87719: <==negation-removal== 91178 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #11663: <==closure== 91178 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #14517: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #63112: <==closure== 75166 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #68004: <==closure== 14517 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #75166: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #91178: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #44260: <==uncertain_firing== 91178 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #48584: <==negation-removal== 75166 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #53759: <==uncertain_firing== 14517 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #67379: <==uncertain_firing== 68004 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #70138: <==negation-removal== 14517 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #72426: <==negation-removal== 11663 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #73706: <==negation-removal== 68004 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #74881: <==negation-removal== 63112 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86260: <==uncertain_firing== 63112 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86674: <==uncertain_firing== 75166 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87035: <==uncertain_firing== 11663 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #87719: <==negation-removal== 91178 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #20709: <==closure== 90148 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #41162: <==closure== 51766 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #51766: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #65953: <==closure== 88098 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #88098: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #90148: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #10260: <==negation-removal== 88098 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #10363: <==uncertain_firing== 90148 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #37977: <==uncertain_firing== 20709 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #44390: <==uncertain_firing== 41162 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #57122: <==negation-removal== 65953 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #58560: <==negation-removal== 20709 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #59576: <==uncertain_firing== 51766 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #60033: <==negation-removal== 41162 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #68040: <==uncertain_firing== 65953 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #73759: <==negation-removal== 90148 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #76202: <==negation-removal== 51766 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #88089: <==uncertain_firing== 88098 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #20709: <==closure== 90148 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #41162: <==closure== 51766 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #51766: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #65953: <==closure== 88098 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #88098: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #90148: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #10260: <==negation-removal== 88098 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #10363: <==uncertain_firing== 90148 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #37977: <==uncertain_firing== 20709 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #44390: <==uncertain_firing== 41162 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #57122: <==negation-removal== 65953 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #58560: <==negation-removal== 20709 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #59576: <==uncertain_firing== 51766 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #60033: <==negation-removal== 41162 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #68040: <==uncertain_firing== 65953 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #73759: <==negation-removal== 90148 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #76202: <==negation-removal== 51766 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #88089: <==uncertain_firing== 88098 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #20709: <==closure== 90148 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #41162: <==closure== 51766 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #51766: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #65953: <==closure== 88098 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #88098: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #90148: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #10260: <==negation-removal== 88098 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #10363: <==uncertain_firing== 90148 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #37977: <==uncertain_firing== 20709 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #44390: <==uncertain_firing== 41162 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #57122: <==negation-removal== 65953 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #58560: <==negation-removal== 20709 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #59576: <==uncertain_firing== 51766 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #60033: <==negation-removal== 41162 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #68040: <==uncertain_firing== 65953 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #73759: <==negation-removal== 90148 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #76202: <==negation-removal== 51766 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #88089: <==uncertain_firing== 88098 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #13848: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #38570: <==closure== 13848 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #40031: <==closure== 78889 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #48397: <==closure== 87203 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #78889: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #87203: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #20002: <==uncertain_firing== 40031 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #20561: <==negation-removal== 13848 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #21597: <==uncertain_firing== 78889 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #24315: <==uncertain_firing== 13848 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #26785: <==negation-removal== 78889 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #41386: <==negation-removal== 87203 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #42878: <==uncertain_firing== 87203 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #67599: <==uncertain_firing== 38570 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #71350: <==uncertain_firing== 48397 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #80444: <==negation-removal== 48397 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #82112: <==negation-removal== 38570 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #88090: <==negation-removal== 40031 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #13848: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #38570: <==closure== 13848 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #40031: <==closure== 78889 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #48397: <==closure== 87203 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #78889: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #87203: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #20002: <==uncertain_firing== 40031 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #20561: <==negation-removal== 13848 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #21597: <==uncertain_firing== 78889 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #24315: <==uncertain_firing== 13848 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #26785: <==negation-removal== 78889 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #41386: <==negation-removal== 87203 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #42878: <==uncertain_firing== 87203 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #67599: <==uncertain_firing== 38570 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #71350: <==uncertain_firing== 48397 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #80444: <==negation-removal== 48397 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #82112: <==negation-removal== 38570 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #88090: <==negation-removal== 40031 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #13848: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #38570: <==closure== 13848 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #40031: <==closure== 78889 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #48397: <==closure== 87203 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #78889: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #87203: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #20002: <==uncertain_firing== 40031 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #20561: <==negation-removal== 13848 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #21597: <==uncertain_firing== 78889 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #24315: <==uncertain_firing== 13848 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #26785: <==negation-removal== 78889 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #41386: <==negation-removal== 87203 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #42878: <==uncertain_firing== 87203 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #67599: <==uncertain_firing== 38570 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #71350: <==uncertain_firing== 48397 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #80444: <==negation-removal== 48397 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #82112: <==negation-removal== 38570 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #88090: <==negation-removal== 40031 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #25389: <==closure== 86328 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #37069: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #37837: <==closure== 81186 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #78209: <==closure== 37069 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #81186: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #86328: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #13412: <==uncertain_firing== 37069 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #23934: <==negation-removal== 81186 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #26466: <==uncertain_firing== 81186 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #31987: <==negation-removal== 86328 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #37741: <==negation-removal== 37069 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #54267: <==uncertain_firing== 86328 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #61287: <==negation-removal== 25389 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #69851: <==uncertain_firing== 25389 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #70235: <==uncertain_firing== 78209 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #72078: <==negation-removal== 37837 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73415: <==negation-removal== 78209 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #78037: <==uncertain_firing== 37837 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #25389: <==closure== 86328 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #37069: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #37837: <==closure== 81186 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #78209: <==closure== 37069 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #81186: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #86328: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #13412: <==uncertain_firing== 37069 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #23934: <==negation-removal== 81186 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #26466: <==uncertain_firing== 81186 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #31987: <==negation-removal== 86328 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #37741: <==negation-removal== 37069 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #54267: <==uncertain_firing== 86328 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #61287: <==negation-removal== 25389 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #69851: <==uncertain_firing== 25389 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #70235: <==uncertain_firing== 78209 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #72078: <==negation-removal== 37837 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73415: <==negation-removal== 78209 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #78037: <==uncertain_firing== 37837 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #25389: <==closure== 86328 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #37069: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #37837: <==closure== 81186 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #78209: <==closure== 37069 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #81186: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #86328: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #13412: <==uncertain_firing== 37069 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #23934: <==negation-removal== 81186 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #26466: <==uncertain_firing== 81186 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #31987: <==negation-removal== 86328 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #37741: <==negation-removal== 37069 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #54267: <==uncertain_firing== 86328 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #61287: <==negation-removal== 25389 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #69851: <==uncertain_firing== 25389 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #70235: <==uncertain_firing== 78209 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #72078: <==negation-removal== 37837 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73415: <==negation-removal== 78209 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #78037: <==uncertain_firing== 37837 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #13439: origin
                    (Bc_survivorat_s_p1)

                    ; #21894: <==closure== 85922 (pos)
                    (Pa_survivorat_s_p1)

                    ; #25767: origin
                    (Bb_survivorat_s_p1)

                    ; #71588: <==closure== 25767 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76093: <==closure== 13439 (pos)
                    (Pc_survivorat_s_p1)

                    ; #85922: origin
                    (Ba_survivorat_s_p1)

                    ; #37781: <==negation-removal== 25767 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #59266: <==negation-removal== 76093 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #61854: <==negation-removal== 21894 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #84010: <==negation-removal== 71588 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #89458: <==negation-removal== 13439 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #92156: <==negation-removal== 85922 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #13439: origin
                    (Bc_survivorat_s_p1)

                    ; #21894: <==closure== 85922 (pos)
                    (Pa_survivorat_s_p1)

                    ; #25767: origin
                    (Bb_survivorat_s_p1)

                    ; #71588: <==closure== 25767 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76093: <==closure== 13439 (pos)
                    (Pc_survivorat_s_p1)

                    ; #85922: origin
                    (Ba_survivorat_s_p1)

                    ; #37781: <==negation-removal== 25767 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #59266: <==negation-removal== 76093 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #61854: <==negation-removal== 21894 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #84010: <==negation-removal== 71588 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #89458: <==negation-removal== 13439 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #92156: <==negation-removal== 85922 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #13439: origin
                    (Bc_survivorat_s_p1)

                    ; #21894: <==closure== 85922 (pos)
                    (Pa_survivorat_s_p1)

                    ; #25767: origin
                    (Bb_survivorat_s_p1)

                    ; #71588: <==closure== 25767 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76093: <==closure== 13439 (pos)
                    (Pc_survivorat_s_p1)

                    ; #85922: origin
                    (Ba_survivorat_s_p1)

                    ; #37781: <==negation-removal== 25767 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #59266: <==negation-removal== 76093 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #61854: <==negation-removal== 21894 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #84010: <==negation-removal== 71588 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #89458: <==negation-removal== 13439 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #92156: <==negation-removal== 85922 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #31095: <==closure== 81574 (pos)
                    (Pb_survivorat_s_p2)

                    ; #36070: origin
                    (Bc_survivorat_s_p2)

                    ; #55797: origin
                    (Ba_survivorat_s_p2)

                    ; #65200: <==closure== 36070 (pos)
                    (Pc_survivorat_s_p2)

                    ; #81574: origin
                    (Bb_survivorat_s_p2)

                    ; #88869: <==closure== 55797 (pos)
                    (Pa_survivorat_s_p2)

                    ; #14976: <==negation-removal== 65200 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #24222: <==negation-removal== 55797 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #40925: <==negation-removal== 88869 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #53366: <==negation-removal== 36070 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #57606: <==negation-removal== 81574 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #62884: <==negation-removal== 31095 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #31095: <==closure== 81574 (pos)
                    (Pb_survivorat_s_p2)

                    ; #36070: origin
                    (Bc_survivorat_s_p2)

                    ; #55797: origin
                    (Ba_survivorat_s_p2)

                    ; #65200: <==closure== 36070 (pos)
                    (Pc_survivorat_s_p2)

                    ; #81574: origin
                    (Bb_survivorat_s_p2)

                    ; #88869: <==closure== 55797 (pos)
                    (Pa_survivorat_s_p2)

                    ; #14976: <==negation-removal== 65200 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #24222: <==negation-removal== 55797 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #40925: <==negation-removal== 88869 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #53366: <==negation-removal== 36070 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #57606: <==negation-removal== 81574 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #62884: <==negation-removal== 31095 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #31095: <==closure== 81574 (pos)
                    (Pb_survivorat_s_p2)

                    ; #36070: origin
                    (Bc_survivorat_s_p2)

                    ; #55797: origin
                    (Ba_survivorat_s_p2)

                    ; #65200: <==closure== 36070 (pos)
                    (Pc_survivorat_s_p2)

                    ; #81574: origin
                    (Bb_survivorat_s_p2)

                    ; #88869: <==closure== 55797 (pos)
                    (Pa_survivorat_s_p2)

                    ; #14976: <==negation-removal== 65200 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #24222: <==negation-removal== 55797 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #40925: <==negation-removal== 88869 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #53366: <==negation-removal== 36070 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #57606: <==negation-removal== 81574 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #62884: <==negation-removal== 31095 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #29091: origin
                    (Bc_survivorat_s_p3)

                    ; #32406: <==closure== 67415 (pos)
                    (Pa_survivorat_s_p3)

                    ; #48805: origin
                    (Bb_survivorat_s_p3)

                    ; #59681: <==closure== 48805 (pos)
                    (Pb_survivorat_s_p3)

                    ; #63846: <==closure== 29091 (pos)
                    (Pc_survivorat_s_p3)

                    ; #67415: origin
                    (Ba_survivorat_s_p3)

                    ; #20618: <==negation-removal== 67415 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #22563: <==negation-removal== 59681 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #39129: <==negation-removal== 63846 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #43298: <==negation-removal== 48805 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #52762: <==negation-removal== 32406 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #70077: <==negation-removal== 29091 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #29091: origin
                    (Bc_survivorat_s_p3)

                    ; #32406: <==closure== 67415 (pos)
                    (Pa_survivorat_s_p3)

                    ; #48805: origin
                    (Bb_survivorat_s_p3)

                    ; #59681: <==closure== 48805 (pos)
                    (Pb_survivorat_s_p3)

                    ; #63846: <==closure== 29091 (pos)
                    (Pc_survivorat_s_p3)

                    ; #67415: origin
                    (Ba_survivorat_s_p3)

                    ; #20618: <==negation-removal== 67415 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #22563: <==negation-removal== 59681 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #39129: <==negation-removal== 63846 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #43298: <==negation-removal== 48805 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #52762: <==negation-removal== 32406 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #70077: <==negation-removal== 29091 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #29091: origin
                    (Bc_survivorat_s_p3)

                    ; #32406: <==closure== 67415 (pos)
                    (Pa_survivorat_s_p3)

                    ; #48805: origin
                    (Bb_survivorat_s_p3)

                    ; #59681: <==closure== 48805 (pos)
                    (Pb_survivorat_s_p3)

                    ; #63846: <==closure== 29091 (pos)
                    (Pc_survivorat_s_p3)

                    ; #67415: origin
                    (Ba_survivorat_s_p3)

                    ; #20618: <==negation-removal== 67415 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #22563: <==negation-removal== 59681 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #39129: <==negation-removal== 63846 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #43298: <==negation-removal== 48805 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #52762: <==negation-removal== 32406 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #70077: <==negation-removal== 29091 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #26314: <==closure== 28369 (pos)
                    (Pa_survivorat_s_p4)

                    ; #28369: origin
                    (Ba_survivorat_s_p4)

                    ; #46795: <==closure== 87435 (pos)
                    (Pc_survivorat_s_p4)

                    ; #51529: <==closure== 63632 (pos)
                    (Pb_survivorat_s_p4)

                    ; #63632: origin
                    (Bb_survivorat_s_p4)

                    ; #87435: origin
                    (Bc_survivorat_s_p4)

                    ; #19105: <==negation-removal== 28369 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #20766: <==negation-removal== 26314 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #22110: <==negation-removal== 51529 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #29045: <==negation-removal== 63632 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #34793: <==negation-removal== 87435 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #40679: <==negation-removal== 46795 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #26314: <==closure== 28369 (pos)
                    (Pa_survivorat_s_p4)

                    ; #28369: origin
                    (Ba_survivorat_s_p4)

                    ; #46795: <==closure== 87435 (pos)
                    (Pc_survivorat_s_p4)

                    ; #51529: <==closure== 63632 (pos)
                    (Pb_survivorat_s_p4)

                    ; #63632: origin
                    (Bb_survivorat_s_p4)

                    ; #87435: origin
                    (Bc_survivorat_s_p4)

                    ; #19105: <==negation-removal== 28369 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #20766: <==negation-removal== 26314 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #22110: <==negation-removal== 51529 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #29045: <==negation-removal== 63632 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #34793: <==negation-removal== 87435 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #40679: <==negation-removal== 46795 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #26314: <==closure== 28369 (pos)
                    (Pa_survivorat_s_p4)

                    ; #28369: origin
                    (Ba_survivorat_s_p4)

                    ; #46795: <==closure== 87435 (pos)
                    (Pc_survivorat_s_p4)

                    ; #51529: <==closure== 63632 (pos)
                    (Pb_survivorat_s_p4)

                    ; #63632: origin
                    (Bb_survivorat_s_p4)

                    ; #87435: origin
                    (Bc_survivorat_s_p4)

                    ; #19105: <==negation-removal== 28369 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #20766: <==negation-removal== 26314 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #22110: <==negation-removal== 51529 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #29045: <==negation-removal== 63632 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #34793: <==negation-removal== 87435 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #40679: <==negation-removal== 46795 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #11240: origin
                    (Bb_survivorat_s_p5)

                    ; #29250: origin
                    (Bc_survivorat_s_p5)

                    ; #58473: origin
                    (Ba_survivorat_s_p5)

                    ; #72231: <==closure== 29250 (pos)
                    (Pc_survivorat_s_p5)

                    ; #80970: <==closure== 58473 (pos)
                    (Pa_survivorat_s_p5)

                    ; #90227: <==closure== 11240 (pos)
                    (Pb_survivorat_s_p5)

                    ; #10247: <==negation-removal== 58473 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #39042: <==negation-removal== 90227 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #61282: <==negation-removal== 72231 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #67785: <==negation-removal== 80970 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #72480: <==negation-removal== 11240 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #86626: <==negation-removal== 29250 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #11240: origin
                    (Bb_survivorat_s_p5)

                    ; #29250: origin
                    (Bc_survivorat_s_p5)

                    ; #58473: origin
                    (Ba_survivorat_s_p5)

                    ; #72231: <==closure== 29250 (pos)
                    (Pc_survivorat_s_p5)

                    ; #80970: <==closure== 58473 (pos)
                    (Pa_survivorat_s_p5)

                    ; #90227: <==closure== 11240 (pos)
                    (Pb_survivorat_s_p5)

                    ; #10247: <==negation-removal== 58473 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #39042: <==negation-removal== 90227 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #61282: <==negation-removal== 72231 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #67785: <==negation-removal== 80970 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #72480: <==negation-removal== 11240 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #86626: <==negation-removal== 29250 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #11240: origin
                    (Bb_survivorat_s_p5)

                    ; #29250: origin
                    (Bc_survivorat_s_p5)

                    ; #58473: origin
                    (Ba_survivorat_s_p5)

                    ; #72231: <==closure== 29250 (pos)
                    (Pc_survivorat_s_p5)

                    ; #80970: <==closure== 58473 (pos)
                    (Pa_survivorat_s_p5)

                    ; #90227: <==closure== 11240 (pos)
                    (Pb_survivorat_s_p5)

                    ; #10247: <==negation-removal== 58473 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #39042: <==negation-removal== 90227 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #61282: <==negation-removal== 72231 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #67785: <==negation-removal== 80970 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #72480: <==negation-removal== 11240 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #86626: <==negation-removal== 29250 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #22045: <==closure== 81071 (pos)
                    (Pc_survivorat_s_p6)

                    ; #31928: origin
                    (Bb_survivorat_s_p6)

                    ; #60978: <==closure== 90501 (pos)
                    (Pa_survivorat_s_p6)

                    ; #81071: origin
                    (Bc_survivorat_s_p6)

                    ; #85723: <==closure== 31928 (pos)
                    (Pb_survivorat_s_p6)

                    ; #90501: origin
                    (Ba_survivorat_s_p6)

                    ; #18505: <==negation-removal== 85723 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #26162: <==negation-removal== 81071 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #28605: <==negation-removal== 31928 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #57740: <==negation-removal== 22045 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #67655: <==negation-removal== 60978 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #74972: <==negation-removal== 90501 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #22045: <==closure== 81071 (pos)
                    (Pc_survivorat_s_p6)

                    ; #31928: origin
                    (Bb_survivorat_s_p6)

                    ; #60978: <==closure== 90501 (pos)
                    (Pa_survivorat_s_p6)

                    ; #81071: origin
                    (Bc_survivorat_s_p6)

                    ; #85723: <==closure== 31928 (pos)
                    (Pb_survivorat_s_p6)

                    ; #90501: origin
                    (Ba_survivorat_s_p6)

                    ; #18505: <==negation-removal== 85723 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #26162: <==negation-removal== 81071 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #28605: <==negation-removal== 31928 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #57740: <==negation-removal== 22045 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #67655: <==negation-removal== 60978 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #74972: <==negation-removal== 90501 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #22045: <==closure== 81071 (pos)
                    (Pc_survivorat_s_p6)

                    ; #31928: origin
                    (Bb_survivorat_s_p6)

                    ; #60978: <==closure== 90501 (pos)
                    (Pa_survivorat_s_p6)

                    ; #81071: origin
                    (Bc_survivorat_s_p6)

                    ; #85723: <==closure== 31928 (pos)
                    (Pb_survivorat_s_p6)

                    ; #90501: origin
                    (Ba_survivorat_s_p6)

                    ; #18505: <==negation-removal== 85723 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #26162: <==negation-removal== 81071 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #28605: <==negation-removal== 31928 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #57740: <==negation-removal== 22045 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #67655: <==negation-removal== 60978 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #74972: <==negation-removal== 90501 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #15493: <==closure== 75338 (pos)
                    (Pa_survivorat_s_p7)

                    ; #61993: <==closure== 79749 (pos)
                    (Pb_survivorat_s_p7)

                    ; #63455: origin
                    (Bc_survivorat_s_p7)

                    ; #75338: origin
                    (Ba_survivorat_s_p7)

                    ; #79749: origin
                    (Bb_survivorat_s_p7)

                    ; #86876: <==closure== 63455 (pos)
                    (Pc_survivorat_s_p7)

                    ; #20236: <==negation-removal== 15493 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #56136: <==negation-removal== 79749 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #61393: <==negation-removal== 86876 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #67511: <==negation-removal== 61993 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #87869: <==negation-removal== 63455 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #95437: <==negation-removal== 75338 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #15493: <==closure== 75338 (pos)
                    (Pa_survivorat_s_p7)

                    ; #61993: <==closure== 79749 (pos)
                    (Pb_survivorat_s_p7)

                    ; #63455: origin
                    (Bc_survivorat_s_p7)

                    ; #75338: origin
                    (Ba_survivorat_s_p7)

                    ; #79749: origin
                    (Bb_survivorat_s_p7)

                    ; #86876: <==closure== 63455 (pos)
                    (Pc_survivorat_s_p7)

                    ; #20236: <==negation-removal== 15493 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #56136: <==negation-removal== 79749 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #61393: <==negation-removal== 86876 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #67511: <==negation-removal== 61993 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #87869: <==negation-removal== 63455 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #95437: <==negation-removal== 75338 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #15493: <==closure== 75338 (pos)
                    (Pa_survivorat_s_p7)

                    ; #61993: <==closure== 79749 (pos)
                    (Pb_survivorat_s_p7)

                    ; #63455: origin
                    (Bc_survivorat_s_p7)

                    ; #75338: origin
                    (Ba_survivorat_s_p7)

                    ; #79749: origin
                    (Bb_survivorat_s_p7)

                    ; #86876: <==closure== 63455 (pos)
                    (Pc_survivorat_s_p7)

                    ; #20236: <==negation-removal== 15493 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #56136: <==negation-removal== 79749 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #61393: <==negation-removal== 86876 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #67511: <==negation-removal== 61993 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #87869: <==negation-removal== 63455 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #95437: <==negation-removal== 75338 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #49873: origin
                    (Ba_survivorat_s_p8)

                    ; #59181: <==closure== 64126 (pos)
                    (Pc_survivorat_s_p8)

                    ; #63362: <==closure== 86070 (pos)
                    (Pb_survivorat_s_p8)

                    ; #64126: origin
                    (Bc_survivorat_s_p8)

                    ; #84737: <==closure== 49873 (pos)
                    (Pa_survivorat_s_p8)

                    ; #86070: origin
                    (Bb_survivorat_s_p8)

                    ; #36315: <==negation-removal== 64126 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #41235: <==negation-removal== 59181 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #47623: <==negation-removal== 63362 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #50509: <==negation-removal== 84737 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #69545: <==negation-removal== 49873 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #94519: <==negation-removal== 86070 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #49873: origin
                    (Ba_survivorat_s_p8)

                    ; #59181: <==closure== 64126 (pos)
                    (Pc_survivorat_s_p8)

                    ; #63362: <==closure== 86070 (pos)
                    (Pb_survivorat_s_p8)

                    ; #64126: origin
                    (Bc_survivorat_s_p8)

                    ; #84737: <==closure== 49873 (pos)
                    (Pa_survivorat_s_p8)

                    ; #86070: origin
                    (Bb_survivorat_s_p8)

                    ; #36315: <==negation-removal== 64126 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #41235: <==negation-removal== 59181 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #47623: <==negation-removal== 63362 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #50509: <==negation-removal== 84737 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #69545: <==negation-removal== 49873 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #94519: <==negation-removal== 86070 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #49873: origin
                    (Ba_survivorat_s_p8)

                    ; #59181: <==closure== 64126 (pos)
                    (Pc_survivorat_s_p8)

                    ; #63362: <==closure== 86070 (pos)
                    (Pb_survivorat_s_p8)

                    ; #64126: origin
                    (Bc_survivorat_s_p8)

                    ; #84737: <==closure== 49873 (pos)
                    (Pa_survivorat_s_p8)

                    ; #86070: origin
                    (Bb_survivorat_s_p8)

                    ; #36315: <==negation-removal== 64126 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #41235: <==negation-removal== 59181 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #47623: <==negation-removal== 63362 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #50509: <==negation-removal== 84737 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #69545: <==negation-removal== 49873 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #94519: <==negation-removal== 86070 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #17740: <==closure== 84001 (pos)
                    (Pb_survivorat_s_p9)

                    ; #25614: <==closure== 76222 (pos)
                    (Pc_survivorat_s_p9)

                    ; #33496: origin
                    (Ba_survivorat_s_p9)

                    ; #76222: origin
                    (Bc_survivorat_s_p9)

                    ; #84001: origin
                    (Bb_survivorat_s_p9)

                    ; #89850: <==closure== 33496 (pos)
                    (Pa_survivorat_s_p9)

                    ; #21219: <==negation-removal== 76222 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #30772: <==negation-removal== 84001 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #58152: <==negation-removal== 17740 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #62773: <==negation-removal== 33496 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #77996: <==negation-removal== 25614 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82146: <==negation-removal== 89850 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #17740: <==closure== 84001 (pos)
                    (Pb_survivorat_s_p9)

                    ; #25614: <==closure== 76222 (pos)
                    (Pc_survivorat_s_p9)

                    ; #33496: origin
                    (Ba_survivorat_s_p9)

                    ; #76222: origin
                    (Bc_survivorat_s_p9)

                    ; #84001: origin
                    (Bb_survivorat_s_p9)

                    ; #89850: <==closure== 33496 (pos)
                    (Pa_survivorat_s_p9)

                    ; #21219: <==negation-removal== 76222 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #30772: <==negation-removal== 84001 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #58152: <==negation-removal== 17740 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #62773: <==negation-removal== 33496 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #77996: <==negation-removal== 25614 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82146: <==negation-removal== 89850 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #17740: <==closure== 84001 (pos)
                    (Pb_survivorat_s_p9)

                    ; #25614: <==closure== 76222 (pos)
                    (Pc_survivorat_s_p9)

                    ; #33496: origin
                    (Ba_survivorat_s_p9)

                    ; #76222: origin
                    (Bc_survivorat_s_p9)

                    ; #84001: origin
                    (Bb_survivorat_s_p9)

                    ; #89850: <==closure== 33496 (pos)
                    (Pa_survivorat_s_p9)

                    ; #21219: <==negation-removal== 76222 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #30772: <==negation-removal== 84001 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #58152: <==negation-removal== 17740 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #62773: <==negation-removal== 33496 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #77996: <==negation-removal== 25614 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82146: <==negation-removal== 89850 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #28463: origin
                    (at_a_p1)

                    ; #77350: origin
                    (not_at_a_p1)

                    ; #28463: <==negation-removal== 77350 (pos)
                    (not (at_a_p1))

                    ; #77350: <==negation-removal== 28463 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #64345: origin
                    (at_a_p2)

                    ; #77350: origin
                    (not_at_a_p1)

                    ; #28463: <==negation-removal== 77350 (pos)
                    (not (at_a_p1))

                    ; #76297: <==negation-removal== 64345 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #10820: origin
                    (at_a_p3)

                    ; #77350: origin
                    (not_at_a_p1)

                    ; #28463: <==negation-removal== 77350 (pos)
                    (not (at_a_p1))

                    ; #40433: <==negation-removal== 10820 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #18186: origin
                    (at_a_p4)

                    ; #77350: origin
                    (not_at_a_p1)

                    ; #28463: <==negation-removal== 77350 (pos)
                    (not (at_a_p1))

                    ; #46297: <==negation-removal== 18186 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #29593: origin
                    (at_a_p5)

                    ; #77350: origin
                    (not_at_a_p1)

                    ; #28463: <==negation-removal== 77350 (pos)
                    (not (at_a_p1))

                    ; #34560: <==negation-removal== 29593 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #31961: origin
                    (at_a_p6)

                    ; #77350: origin
                    (not_at_a_p1)

                    ; #28463: <==negation-removal== 77350 (pos)
                    (not (at_a_p1))

                    ; #80924: <==negation-removal== 31961 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #36752: origin
                    (at_a_p7)

                    ; #77350: origin
                    (not_at_a_p1)

                    ; #28463: <==negation-removal== 77350 (pos)
                    (not (at_a_p1))

                    ; #36680: <==negation-removal== 36752 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #15334: origin
                    (at_a_p8)

                    ; #77350: origin
                    (not_at_a_p1)

                    ; #28463: <==negation-removal== 77350 (pos)
                    (not (at_a_p1))

                    ; #58405: <==negation-removal== 15334 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #19853: origin
                    (at_a_p9)

                    ; #77350: origin
                    (not_at_a_p1)

                    ; #25701: <==negation-removal== 19853 (pos)
                    (not (not_at_a_p9))

                    ; #28463: <==negation-removal== 77350 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #28463: origin
                    (at_a_p1)

                    ; #76297: origin
                    (not_at_a_p2)

                    ; #64345: <==negation-removal== 76297 (pos)
                    (not (at_a_p2))

                    ; #77350: <==negation-removal== 28463 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #64345: origin
                    (at_a_p2)

                    ; #76297: origin
                    (not_at_a_p2)

                    ; #64345: <==negation-removal== 76297 (pos)
                    (not (at_a_p2))

                    ; #76297: <==negation-removal== 64345 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #10820: origin
                    (at_a_p3)

                    ; #76297: origin
                    (not_at_a_p2)

                    ; #40433: <==negation-removal== 10820 (pos)
                    (not (not_at_a_p3))

                    ; #64345: <==negation-removal== 76297 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #18186: origin
                    (at_a_p4)

                    ; #76297: origin
                    (not_at_a_p2)

                    ; #46297: <==negation-removal== 18186 (pos)
                    (not (not_at_a_p4))

                    ; #64345: <==negation-removal== 76297 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #29593: origin
                    (at_a_p5)

                    ; #76297: origin
                    (not_at_a_p2)

                    ; #34560: <==negation-removal== 29593 (pos)
                    (not (not_at_a_p5))

                    ; #64345: <==negation-removal== 76297 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #31961: origin
                    (at_a_p6)

                    ; #76297: origin
                    (not_at_a_p2)

                    ; #64345: <==negation-removal== 76297 (pos)
                    (not (at_a_p2))

                    ; #80924: <==negation-removal== 31961 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #36752: origin
                    (at_a_p7)

                    ; #76297: origin
                    (not_at_a_p2)

                    ; #36680: <==negation-removal== 36752 (pos)
                    (not (not_at_a_p7))

                    ; #64345: <==negation-removal== 76297 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #15334: origin
                    (at_a_p8)

                    ; #76297: origin
                    (not_at_a_p2)

                    ; #58405: <==negation-removal== 15334 (pos)
                    (not (not_at_a_p8))

                    ; #64345: <==negation-removal== 76297 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #19853: origin
                    (at_a_p9)

                    ; #76297: origin
                    (not_at_a_p2)

                    ; #25701: <==negation-removal== 19853 (pos)
                    (not (not_at_a_p9))

                    ; #64345: <==negation-removal== 76297 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #28463: origin
                    (at_a_p1)

                    ; #40433: origin
                    (not_at_a_p3)

                    ; #10820: <==negation-removal== 40433 (pos)
                    (not (at_a_p3))

                    ; #77350: <==negation-removal== 28463 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #40433: origin
                    (not_at_a_p3)

                    ; #64345: origin
                    (at_a_p2)

                    ; #10820: <==negation-removal== 40433 (pos)
                    (not (at_a_p3))

                    ; #76297: <==negation-removal== 64345 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #10820: origin
                    (at_a_p3)

                    ; #40433: origin
                    (not_at_a_p3)

                    ; #10820: <==negation-removal== 40433 (pos)
                    (not (at_a_p3))

                    ; #40433: <==negation-removal== 10820 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #18186: origin
                    (at_a_p4)

                    ; #40433: origin
                    (not_at_a_p3)

                    ; #10820: <==negation-removal== 40433 (pos)
                    (not (at_a_p3))

                    ; #46297: <==negation-removal== 18186 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #29593: origin
                    (at_a_p5)

                    ; #40433: origin
                    (not_at_a_p3)

                    ; #10820: <==negation-removal== 40433 (pos)
                    (not (at_a_p3))

                    ; #34560: <==negation-removal== 29593 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #31961: origin
                    (at_a_p6)

                    ; #40433: origin
                    (not_at_a_p3)

                    ; #10820: <==negation-removal== 40433 (pos)
                    (not (at_a_p3))

                    ; #80924: <==negation-removal== 31961 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #36752: origin
                    (at_a_p7)

                    ; #40433: origin
                    (not_at_a_p3)

                    ; #10820: <==negation-removal== 40433 (pos)
                    (not (at_a_p3))

                    ; #36680: <==negation-removal== 36752 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #15334: origin
                    (at_a_p8)

                    ; #40433: origin
                    (not_at_a_p3)

                    ; #10820: <==negation-removal== 40433 (pos)
                    (not (at_a_p3))

                    ; #58405: <==negation-removal== 15334 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #19853: origin
                    (at_a_p9)

                    ; #40433: origin
                    (not_at_a_p3)

                    ; #10820: <==negation-removal== 40433 (pos)
                    (not (at_a_p3))

                    ; #25701: <==negation-removal== 19853 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #28463: origin
                    (at_a_p1)

                    ; #46297: origin
                    (not_at_a_p4)

                    ; #18186: <==negation-removal== 46297 (pos)
                    (not (at_a_p4))

                    ; #77350: <==negation-removal== 28463 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #46297: origin
                    (not_at_a_p4)

                    ; #64345: origin
                    (at_a_p2)

                    ; #18186: <==negation-removal== 46297 (pos)
                    (not (at_a_p4))

                    ; #76297: <==negation-removal== 64345 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #10820: origin
                    (at_a_p3)

                    ; #46297: origin
                    (not_at_a_p4)

                    ; #18186: <==negation-removal== 46297 (pos)
                    (not (at_a_p4))

                    ; #40433: <==negation-removal== 10820 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #18186: origin
                    (at_a_p4)

                    ; #46297: origin
                    (not_at_a_p4)

                    ; #18186: <==negation-removal== 46297 (pos)
                    (not (at_a_p4))

                    ; #46297: <==negation-removal== 18186 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #29593: origin
                    (at_a_p5)

                    ; #46297: origin
                    (not_at_a_p4)

                    ; #18186: <==negation-removal== 46297 (pos)
                    (not (at_a_p4))

                    ; #34560: <==negation-removal== 29593 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #31961: origin
                    (at_a_p6)

                    ; #46297: origin
                    (not_at_a_p4)

                    ; #18186: <==negation-removal== 46297 (pos)
                    (not (at_a_p4))

                    ; #80924: <==negation-removal== 31961 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #36752: origin
                    (at_a_p7)

                    ; #46297: origin
                    (not_at_a_p4)

                    ; #18186: <==negation-removal== 46297 (pos)
                    (not (at_a_p4))

                    ; #36680: <==negation-removal== 36752 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #15334: origin
                    (at_a_p8)

                    ; #46297: origin
                    (not_at_a_p4)

                    ; #18186: <==negation-removal== 46297 (pos)
                    (not (at_a_p4))

                    ; #58405: <==negation-removal== 15334 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #19853: origin
                    (at_a_p9)

                    ; #46297: origin
                    (not_at_a_p4)

                    ; #18186: <==negation-removal== 46297 (pos)
                    (not (at_a_p4))

                    ; #25701: <==negation-removal== 19853 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #28463: origin
                    (at_a_p1)

                    ; #34560: origin
                    (not_at_a_p5)

                    ; #29593: <==negation-removal== 34560 (pos)
                    (not (at_a_p5))

                    ; #77350: <==negation-removal== 28463 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #34560: origin
                    (not_at_a_p5)

                    ; #64345: origin
                    (at_a_p2)

                    ; #29593: <==negation-removal== 34560 (pos)
                    (not (at_a_p5))

                    ; #76297: <==negation-removal== 64345 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #10820: origin
                    (at_a_p3)

                    ; #34560: origin
                    (not_at_a_p5)

                    ; #29593: <==negation-removal== 34560 (pos)
                    (not (at_a_p5))

                    ; #40433: <==negation-removal== 10820 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #18186: origin
                    (at_a_p4)

                    ; #34560: origin
                    (not_at_a_p5)

                    ; #29593: <==negation-removal== 34560 (pos)
                    (not (at_a_p5))

                    ; #46297: <==negation-removal== 18186 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #29593: origin
                    (at_a_p5)

                    ; #34560: origin
                    (not_at_a_p5)

                    ; #29593: <==negation-removal== 34560 (pos)
                    (not (at_a_p5))

                    ; #34560: <==negation-removal== 29593 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #31961: origin
                    (at_a_p6)

                    ; #34560: origin
                    (not_at_a_p5)

                    ; #29593: <==negation-removal== 34560 (pos)
                    (not (at_a_p5))

                    ; #80924: <==negation-removal== 31961 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #34560: origin
                    (not_at_a_p5)

                    ; #36752: origin
                    (at_a_p7)

                    ; #29593: <==negation-removal== 34560 (pos)
                    (not (at_a_p5))

                    ; #36680: <==negation-removal== 36752 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #15334: origin
                    (at_a_p8)

                    ; #34560: origin
                    (not_at_a_p5)

                    ; #29593: <==negation-removal== 34560 (pos)
                    (not (at_a_p5))

                    ; #58405: <==negation-removal== 15334 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #19853: origin
                    (at_a_p9)

                    ; #34560: origin
                    (not_at_a_p5)

                    ; #25701: <==negation-removal== 19853 (pos)
                    (not (not_at_a_p9))

                    ; #29593: <==negation-removal== 34560 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #28463: origin
                    (at_a_p1)

                    ; #80924: origin
                    (not_at_a_p6)

                    ; #31961: <==negation-removal== 80924 (pos)
                    (not (at_a_p6))

                    ; #77350: <==negation-removal== 28463 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #64345: origin
                    (at_a_p2)

                    ; #80924: origin
                    (not_at_a_p6)

                    ; #31961: <==negation-removal== 80924 (pos)
                    (not (at_a_p6))

                    ; #76297: <==negation-removal== 64345 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #10820: origin
                    (at_a_p3)

                    ; #80924: origin
                    (not_at_a_p6)

                    ; #31961: <==negation-removal== 80924 (pos)
                    (not (at_a_p6))

                    ; #40433: <==negation-removal== 10820 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #18186: origin
                    (at_a_p4)

                    ; #80924: origin
                    (not_at_a_p6)

                    ; #31961: <==negation-removal== 80924 (pos)
                    (not (at_a_p6))

                    ; #46297: <==negation-removal== 18186 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #29593: origin
                    (at_a_p5)

                    ; #80924: origin
                    (not_at_a_p6)

                    ; #31961: <==negation-removal== 80924 (pos)
                    (not (at_a_p6))

                    ; #34560: <==negation-removal== 29593 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #31961: origin
                    (at_a_p6)

                    ; #80924: origin
                    (not_at_a_p6)

                    ; #31961: <==negation-removal== 80924 (pos)
                    (not (at_a_p6))

                    ; #80924: <==negation-removal== 31961 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #36752: origin
                    (at_a_p7)

                    ; #80924: origin
                    (not_at_a_p6)

                    ; #31961: <==negation-removal== 80924 (pos)
                    (not (at_a_p6))

                    ; #36680: <==negation-removal== 36752 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #15334: origin
                    (at_a_p8)

                    ; #80924: origin
                    (not_at_a_p6)

                    ; #31961: <==negation-removal== 80924 (pos)
                    (not (at_a_p6))

                    ; #58405: <==negation-removal== 15334 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #19853: origin
                    (at_a_p9)

                    ; #80924: origin
                    (not_at_a_p6)

                    ; #25701: <==negation-removal== 19853 (pos)
                    (not (not_at_a_p9))

                    ; #31961: <==negation-removal== 80924 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #28463: origin
                    (at_a_p1)

                    ; #36680: origin
                    (not_at_a_p7)

                    ; #36752: <==negation-removal== 36680 (pos)
                    (not (at_a_p7))

                    ; #77350: <==negation-removal== 28463 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #36680: origin
                    (not_at_a_p7)

                    ; #64345: origin
                    (at_a_p2)

                    ; #36752: <==negation-removal== 36680 (pos)
                    (not (at_a_p7))

                    ; #76297: <==negation-removal== 64345 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #10820: origin
                    (at_a_p3)

                    ; #36680: origin
                    (not_at_a_p7)

                    ; #36752: <==negation-removal== 36680 (pos)
                    (not (at_a_p7))

                    ; #40433: <==negation-removal== 10820 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #18186: origin
                    (at_a_p4)

                    ; #36680: origin
                    (not_at_a_p7)

                    ; #36752: <==negation-removal== 36680 (pos)
                    (not (at_a_p7))

                    ; #46297: <==negation-removal== 18186 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #29593: origin
                    (at_a_p5)

                    ; #36680: origin
                    (not_at_a_p7)

                    ; #34560: <==negation-removal== 29593 (pos)
                    (not (not_at_a_p5))

                    ; #36752: <==negation-removal== 36680 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #31961: origin
                    (at_a_p6)

                    ; #36680: origin
                    (not_at_a_p7)

                    ; #36752: <==negation-removal== 36680 (pos)
                    (not (at_a_p7))

                    ; #80924: <==negation-removal== 31961 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #36680: origin
                    (not_at_a_p7)

                    ; #36752: origin
                    (at_a_p7)

                    ; #36680: <==negation-removal== 36752 (pos)
                    (not (not_at_a_p7))

                    ; #36752: <==negation-removal== 36680 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #15334: origin
                    (at_a_p8)

                    ; #36680: origin
                    (not_at_a_p7)

                    ; #36752: <==negation-removal== 36680 (pos)
                    (not (at_a_p7))

                    ; #58405: <==negation-removal== 15334 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #19853: origin
                    (at_a_p9)

                    ; #36680: origin
                    (not_at_a_p7)

                    ; #25701: <==negation-removal== 19853 (pos)
                    (not (not_at_a_p9))

                    ; #36752: <==negation-removal== 36680 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #28463: origin
                    (at_a_p1)

                    ; #58405: origin
                    (not_at_a_p8)

                    ; #15334: <==negation-removal== 58405 (pos)
                    (not (at_a_p8))

                    ; #77350: <==negation-removal== 28463 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #58405: origin
                    (not_at_a_p8)

                    ; #64345: origin
                    (at_a_p2)

                    ; #15334: <==negation-removal== 58405 (pos)
                    (not (at_a_p8))

                    ; #76297: <==negation-removal== 64345 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #10820: origin
                    (at_a_p3)

                    ; #58405: origin
                    (not_at_a_p8)

                    ; #15334: <==negation-removal== 58405 (pos)
                    (not (at_a_p8))

                    ; #40433: <==negation-removal== 10820 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #18186: origin
                    (at_a_p4)

                    ; #58405: origin
                    (not_at_a_p8)

                    ; #15334: <==negation-removal== 58405 (pos)
                    (not (at_a_p8))

                    ; #46297: <==negation-removal== 18186 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #29593: origin
                    (at_a_p5)

                    ; #58405: origin
                    (not_at_a_p8)

                    ; #15334: <==negation-removal== 58405 (pos)
                    (not (at_a_p8))

                    ; #34560: <==negation-removal== 29593 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #31961: origin
                    (at_a_p6)

                    ; #58405: origin
                    (not_at_a_p8)

                    ; #15334: <==negation-removal== 58405 (pos)
                    (not (at_a_p8))

                    ; #80924: <==negation-removal== 31961 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #36752: origin
                    (at_a_p7)

                    ; #58405: origin
                    (not_at_a_p8)

                    ; #15334: <==negation-removal== 58405 (pos)
                    (not (at_a_p8))

                    ; #36680: <==negation-removal== 36752 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #15334: origin
                    (at_a_p8)

                    ; #58405: origin
                    (not_at_a_p8)

                    ; #15334: <==negation-removal== 58405 (pos)
                    (not (at_a_p8))

                    ; #58405: <==negation-removal== 15334 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #19853: origin
                    (at_a_p9)

                    ; #58405: origin
                    (not_at_a_p8)

                    ; #15334: <==negation-removal== 58405 (pos)
                    (not (at_a_p8))

                    ; #25701: <==negation-removal== 19853 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #25701: origin
                    (not_at_a_p9)

                    ; #28463: origin
                    (at_a_p1)

                    ; #19853: <==negation-removal== 25701 (pos)
                    (not (at_a_p9))

                    ; #77350: <==negation-removal== 28463 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #25701: origin
                    (not_at_a_p9)

                    ; #64345: origin
                    (at_a_p2)

                    ; #19853: <==negation-removal== 25701 (pos)
                    (not (at_a_p9))

                    ; #76297: <==negation-removal== 64345 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #10820: origin
                    (at_a_p3)

                    ; #25701: origin
                    (not_at_a_p9)

                    ; #19853: <==negation-removal== 25701 (pos)
                    (not (at_a_p9))

                    ; #40433: <==negation-removal== 10820 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #18186: origin
                    (at_a_p4)

                    ; #25701: origin
                    (not_at_a_p9)

                    ; #19853: <==negation-removal== 25701 (pos)
                    (not (at_a_p9))

                    ; #46297: <==negation-removal== 18186 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #25701: origin
                    (not_at_a_p9)

                    ; #29593: origin
                    (at_a_p5)

                    ; #19853: <==negation-removal== 25701 (pos)
                    (not (at_a_p9))

                    ; #34560: <==negation-removal== 29593 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #25701: origin
                    (not_at_a_p9)

                    ; #31961: origin
                    (at_a_p6)

                    ; #19853: <==negation-removal== 25701 (pos)
                    (not (at_a_p9))

                    ; #80924: <==negation-removal== 31961 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #25701: origin
                    (not_at_a_p9)

                    ; #36752: origin
                    (at_a_p7)

                    ; #19853: <==negation-removal== 25701 (pos)
                    (not (at_a_p9))

                    ; #36680: <==negation-removal== 36752 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #15334: origin
                    (at_a_p8)

                    ; #25701: origin
                    (not_at_a_p9)

                    ; #19853: <==negation-removal== 25701 (pos)
                    (not (at_a_p9))

                    ; #58405: <==negation-removal== 15334 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #19853: origin
                    (at_a_p9)

                    ; #25701: origin
                    (not_at_a_p9)

                    ; #19853: <==negation-removal== 25701 (pos)
                    (not (at_a_p9))

                    ; #25701: <==negation-removal== 19853 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #50998: origin
                    (at_b_p1)

                    ; #69017: origin
                    (not_at_b_p1)

                    ; #50998: <==negation-removal== 69017 (pos)
                    (not (at_b_p1))

                    ; #69017: <==negation-removal== 50998 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #13935: origin
                    (at_b_p2)

                    ; #69017: origin
                    (not_at_b_p1)

                    ; #12660: <==negation-removal== 13935 (pos)
                    (not (not_at_b_p2))

                    ; #50998: <==negation-removal== 69017 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #53534: origin
                    (at_b_p3)

                    ; #69017: origin
                    (not_at_b_p1)

                    ; #15055: <==negation-removal== 53534 (pos)
                    (not (not_at_b_p3))

                    ; #50998: <==negation-removal== 69017 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #67393: origin
                    (at_b_p4)

                    ; #69017: origin
                    (not_at_b_p1)

                    ; #25283: <==negation-removal== 67393 (pos)
                    (not (not_at_b_p4))

                    ; #50998: <==negation-removal== 69017 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #56772: origin
                    (at_b_p5)

                    ; #69017: origin
                    (not_at_b_p1)

                    ; #50998: <==negation-removal== 69017 (pos)
                    (not (at_b_p1))

                    ; #80042: <==negation-removal== 56772 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #36393: origin
                    (at_b_p6)

                    ; #69017: origin
                    (not_at_b_p1)

                    ; #47278: <==negation-removal== 36393 (pos)
                    (not (not_at_b_p6))

                    ; #50998: <==negation-removal== 69017 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #52070: origin
                    (at_b_p7)

                    ; #69017: origin
                    (not_at_b_p1)

                    ; #50998: <==negation-removal== 69017 (pos)
                    (not (at_b_p1))

                    ; #82535: <==negation-removal== 52070 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #10665: origin
                    (at_b_p8)

                    ; #69017: origin
                    (not_at_b_p1)

                    ; #50998: <==negation-removal== 69017 (pos)
                    (not (at_b_p1))

                    ; #55852: <==negation-removal== 10665 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #69017: origin
                    (not_at_b_p1)

                    ; #70387: origin
                    (at_b_p9)

                    ; #50998: <==negation-removal== 69017 (pos)
                    (not (at_b_p1))

                    ; #68777: <==negation-removal== 70387 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p2)

                    ; #50998: origin
                    (at_b_p1)

                    ; #13935: <==negation-removal== 12660 (pos)
                    (not (at_b_p2))

                    ; #69017: <==negation-removal== 50998 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p2)

                    ; #13935: origin
                    (at_b_p2)

                    ; #12660: <==negation-removal== 13935 (pos)
                    (not (not_at_b_p2))

                    ; #13935: <==negation-removal== 12660 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p2)

                    ; #53534: origin
                    (at_b_p3)

                    ; #13935: <==negation-removal== 12660 (pos)
                    (not (at_b_p2))

                    ; #15055: <==negation-removal== 53534 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p2)

                    ; #67393: origin
                    (at_b_p4)

                    ; #13935: <==negation-removal== 12660 (pos)
                    (not (at_b_p2))

                    ; #25283: <==negation-removal== 67393 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p2)

                    ; #56772: origin
                    (at_b_p5)

                    ; #13935: <==negation-removal== 12660 (pos)
                    (not (at_b_p2))

                    ; #80042: <==negation-removal== 56772 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p2)

                    ; #36393: origin
                    (at_b_p6)

                    ; #13935: <==negation-removal== 12660 (pos)
                    (not (at_b_p2))

                    ; #47278: <==negation-removal== 36393 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p2)

                    ; #52070: origin
                    (at_b_p7)

                    ; #13935: <==negation-removal== 12660 (pos)
                    (not (at_b_p2))

                    ; #82535: <==negation-removal== 52070 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #10665: origin
                    (at_b_p8)

                    ; #12660: origin
                    (not_at_b_p2)

                    ; #13935: <==negation-removal== 12660 (pos)
                    (not (at_b_p2))

                    ; #55852: <==negation-removal== 10665 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p2)

                    ; #70387: origin
                    (at_b_p9)

                    ; #13935: <==negation-removal== 12660 (pos)
                    (not (at_b_p2))

                    ; #68777: <==negation-removal== 70387 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #15055: origin
                    (not_at_b_p3)

                    ; #50998: origin
                    (at_b_p1)

                    ; #53534: <==negation-removal== 15055 (pos)
                    (not (at_b_p3))

                    ; #69017: <==negation-removal== 50998 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #13935: origin
                    (at_b_p2)

                    ; #15055: origin
                    (not_at_b_p3)

                    ; #12660: <==negation-removal== 13935 (pos)
                    (not (not_at_b_p2))

                    ; #53534: <==negation-removal== 15055 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #15055: origin
                    (not_at_b_p3)

                    ; #53534: origin
                    (at_b_p3)

                    ; #15055: <==negation-removal== 53534 (pos)
                    (not (not_at_b_p3))

                    ; #53534: <==negation-removal== 15055 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #15055: origin
                    (not_at_b_p3)

                    ; #67393: origin
                    (at_b_p4)

                    ; #25283: <==negation-removal== 67393 (pos)
                    (not (not_at_b_p4))

                    ; #53534: <==negation-removal== 15055 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #15055: origin
                    (not_at_b_p3)

                    ; #56772: origin
                    (at_b_p5)

                    ; #53534: <==negation-removal== 15055 (pos)
                    (not (at_b_p3))

                    ; #80042: <==negation-removal== 56772 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #15055: origin
                    (not_at_b_p3)

                    ; #36393: origin
                    (at_b_p6)

                    ; #47278: <==negation-removal== 36393 (pos)
                    (not (not_at_b_p6))

                    ; #53534: <==negation-removal== 15055 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #15055: origin
                    (not_at_b_p3)

                    ; #52070: origin
                    (at_b_p7)

                    ; #53534: <==negation-removal== 15055 (pos)
                    (not (at_b_p3))

                    ; #82535: <==negation-removal== 52070 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #10665: origin
                    (at_b_p8)

                    ; #15055: origin
                    (not_at_b_p3)

                    ; #53534: <==negation-removal== 15055 (pos)
                    (not (at_b_p3))

                    ; #55852: <==negation-removal== 10665 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #15055: origin
                    (not_at_b_p3)

                    ; #70387: origin
                    (at_b_p9)

                    ; #53534: <==negation-removal== 15055 (pos)
                    (not (at_b_p3))

                    ; #68777: <==negation-removal== 70387 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #25283: origin
                    (not_at_b_p4)

                    ; #50998: origin
                    (at_b_p1)

                    ; #67393: <==negation-removal== 25283 (pos)
                    (not (at_b_p4))

                    ; #69017: <==negation-removal== 50998 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #13935: origin
                    (at_b_p2)

                    ; #25283: origin
                    (not_at_b_p4)

                    ; #12660: <==negation-removal== 13935 (pos)
                    (not (not_at_b_p2))

                    ; #67393: <==negation-removal== 25283 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #25283: origin
                    (not_at_b_p4)

                    ; #53534: origin
                    (at_b_p3)

                    ; #15055: <==negation-removal== 53534 (pos)
                    (not (not_at_b_p3))

                    ; #67393: <==negation-removal== 25283 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #25283: origin
                    (not_at_b_p4)

                    ; #67393: origin
                    (at_b_p4)

                    ; #25283: <==negation-removal== 67393 (pos)
                    (not (not_at_b_p4))

                    ; #67393: <==negation-removal== 25283 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #25283: origin
                    (not_at_b_p4)

                    ; #56772: origin
                    (at_b_p5)

                    ; #67393: <==negation-removal== 25283 (pos)
                    (not (at_b_p4))

                    ; #80042: <==negation-removal== 56772 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #25283: origin
                    (not_at_b_p4)

                    ; #36393: origin
                    (at_b_p6)

                    ; #47278: <==negation-removal== 36393 (pos)
                    (not (not_at_b_p6))

                    ; #67393: <==negation-removal== 25283 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #25283: origin
                    (not_at_b_p4)

                    ; #52070: origin
                    (at_b_p7)

                    ; #67393: <==negation-removal== 25283 (pos)
                    (not (at_b_p4))

                    ; #82535: <==negation-removal== 52070 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #10665: origin
                    (at_b_p8)

                    ; #25283: origin
                    (not_at_b_p4)

                    ; #55852: <==negation-removal== 10665 (pos)
                    (not (not_at_b_p8))

                    ; #67393: <==negation-removal== 25283 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #25283: origin
                    (not_at_b_p4)

                    ; #70387: origin
                    (at_b_p9)

                    ; #67393: <==negation-removal== 25283 (pos)
                    (not (at_b_p4))

                    ; #68777: <==negation-removal== 70387 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #50998: origin
                    (at_b_p1)

                    ; #80042: origin
                    (not_at_b_p5)

                    ; #56772: <==negation-removal== 80042 (pos)
                    (not (at_b_p5))

                    ; #69017: <==negation-removal== 50998 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #13935: origin
                    (at_b_p2)

                    ; #80042: origin
                    (not_at_b_p5)

                    ; #12660: <==negation-removal== 13935 (pos)
                    (not (not_at_b_p2))

                    ; #56772: <==negation-removal== 80042 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #53534: origin
                    (at_b_p3)

                    ; #80042: origin
                    (not_at_b_p5)

                    ; #15055: <==negation-removal== 53534 (pos)
                    (not (not_at_b_p3))

                    ; #56772: <==negation-removal== 80042 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #67393: origin
                    (at_b_p4)

                    ; #80042: origin
                    (not_at_b_p5)

                    ; #25283: <==negation-removal== 67393 (pos)
                    (not (not_at_b_p4))

                    ; #56772: <==negation-removal== 80042 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #56772: origin
                    (at_b_p5)

                    ; #80042: origin
                    (not_at_b_p5)

                    ; #56772: <==negation-removal== 80042 (pos)
                    (not (at_b_p5))

                    ; #80042: <==negation-removal== 56772 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #36393: origin
                    (at_b_p6)

                    ; #80042: origin
                    (not_at_b_p5)

                    ; #47278: <==negation-removal== 36393 (pos)
                    (not (not_at_b_p6))

                    ; #56772: <==negation-removal== 80042 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #52070: origin
                    (at_b_p7)

                    ; #80042: origin
                    (not_at_b_p5)

                    ; #56772: <==negation-removal== 80042 (pos)
                    (not (at_b_p5))

                    ; #82535: <==negation-removal== 52070 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #10665: origin
                    (at_b_p8)

                    ; #80042: origin
                    (not_at_b_p5)

                    ; #55852: <==negation-removal== 10665 (pos)
                    (not (not_at_b_p8))

                    ; #56772: <==negation-removal== 80042 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #70387: origin
                    (at_b_p9)

                    ; #80042: origin
                    (not_at_b_p5)

                    ; #56772: <==negation-removal== 80042 (pos)
                    (not (at_b_p5))

                    ; #68777: <==negation-removal== 70387 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #47278: origin
                    (not_at_b_p6)

                    ; #50998: origin
                    (at_b_p1)

                    ; #36393: <==negation-removal== 47278 (pos)
                    (not (at_b_p6))

                    ; #69017: <==negation-removal== 50998 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #13935: origin
                    (at_b_p2)

                    ; #47278: origin
                    (not_at_b_p6)

                    ; #12660: <==negation-removal== 13935 (pos)
                    (not (not_at_b_p2))

                    ; #36393: <==negation-removal== 47278 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #47278: origin
                    (not_at_b_p6)

                    ; #53534: origin
                    (at_b_p3)

                    ; #15055: <==negation-removal== 53534 (pos)
                    (not (not_at_b_p3))

                    ; #36393: <==negation-removal== 47278 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #47278: origin
                    (not_at_b_p6)

                    ; #67393: origin
                    (at_b_p4)

                    ; #25283: <==negation-removal== 67393 (pos)
                    (not (not_at_b_p4))

                    ; #36393: <==negation-removal== 47278 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #47278: origin
                    (not_at_b_p6)

                    ; #56772: origin
                    (at_b_p5)

                    ; #36393: <==negation-removal== 47278 (pos)
                    (not (at_b_p6))

                    ; #80042: <==negation-removal== 56772 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #36393: origin
                    (at_b_p6)

                    ; #47278: origin
                    (not_at_b_p6)

                    ; #36393: <==negation-removal== 47278 (pos)
                    (not (at_b_p6))

                    ; #47278: <==negation-removal== 36393 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #47278: origin
                    (not_at_b_p6)

                    ; #52070: origin
                    (at_b_p7)

                    ; #36393: <==negation-removal== 47278 (pos)
                    (not (at_b_p6))

                    ; #82535: <==negation-removal== 52070 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #10665: origin
                    (at_b_p8)

                    ; #47278: origin
                    (not_at_b_p6)

                    ; #36393: <==negation-removal== 47278 (pos)
                    (not (at_b_p6))

                    ; #55852: <==negation-removal== 10665 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #47278: origin
                    (not_at_b_p6)

                    ; #70387: origin
                    (at_b_p9)

                    ; #36393: <==negation-removal== 47278 (pos)
                    (not (at_b_p6))

                    ; #68777: <==negation-removal== 70387 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #50998: origin
                    (at_b_p1)

                    ; #82535: origin
                    (not_at_b_p7)

                    ; #52070: <==negation-removal== 82535 (pos)
                    (not (at_b_p7))

                    ; #69017: <==negation-removal== 50998 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #13935: origin
                    (at_b_p2)

                    ; #82535: origin
                    (not_at_b_p7)

                    ; #12660: <==negation-removal== 13935 (pos)
                    (not (not_at_b_p2))

                    ; #52070: <==negation-removal== 82535 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #53534: origin
                    (at_b_p3)

                    ; #82535: origin
                    (not_at_b_p7)

                    ; #15055: <==negation-removal== 53534 (pos)
                    (not (not_at_b_p3))

                    ; #52070: <==negation-removal== 82535 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #67393: origin
                    (at_b_p4)

                    ; #82535: origin
                    (not_at_b_p7)

                    ; #25283: <==negation-removal== 67393 (pos)
                    (not (not_at_b_p4))

                    ; #52070: <==negation-removal== 82535 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #56772: origin
                    (at_b_p5)

                    ; #82535: origin
                    (not_at_b_p7)

                    ; #52070: <==negation-removal== 82535 (pos)
                    (not (at_b_p7))

                    ; #80042: <==negation-removal== 56772 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #36393: origin
                    (at_b_p6)

                    ; #82535: origin
                    (not_at_b_p7)

                    ; #47278: <==negation-removal== 36393 (pos)
                    (not (not_at_b_p6))

                    ; #52070: <==negation-removal== 82535 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #52070: origin
                    (at_b_p7)

                    ; #82535: origin
                    (not_at_b_p7)

                    ; #52070: <==negation-removal== 82535 (pos)
                    (not (at_b_p7))

                    ; #82535: <==negation-removal== 52070 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #10665: origin
                    (at_b_p8)

                    ; #82535: origin
                    (not_at_b_p7)

                    ; #52070: <==negation-removal== 82535 (pos)
                    (not (at_b_p7))

                    ; #55852: <==negation-removal== 10665 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #70387: origin
                    (at_b_p9)

                    ; #82535: origin
                    (not_at_b_p7)

                    ; #52070: <==negation-removal== 82535 (pos)
                    (not (at_b_p7))

                    ; #68777: <==negation-removal== 70387 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #50998: origin
                    (at_b_p1)

                    ; #55852: origin
                    (not_at_b_p8)

                    ; #10665: <==negation-removal== 55852 (pos)
                    (not (at_b_p8))

                    ; #69017: <==negation-removal== 50998 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #13935: origin
                    (at_b_p2)

                    ; #55852: origin
                    (not_at_b_p8)

                    ; #10665: <==negation-removal== 55852 (pos)
                    (not (at_b_p8))

                    ; #12660: <==negation-removal== 13935 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #53534: origin
                    (at_b_p3)

                    ; #55852: origin
                    (not_at_b_p8)

                    ; #10665: <==negation-removal== 55852 (pos)
                    (not (at_b_p8))

                    ; #15055: <==negation-removal== 53534 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #55852: origin
                    (not_at_b_p8)

                    ; #67393: origin
                    (at_b_p4)

                    ; #10665: <==negation-removal== 55852 (pos)
                    (not (at_b_p8))

                    ; #25283: <==negation-removal== 67393 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #55852: origin
                    (not_at_b_p8)

                    ; #56772: origin
                    (at_b_p5)

                    ; #10665: <==negation-removal== 55852 (pos)
                    (not (at_b_p8))

                    ; #80042: <==negation-removal== 56772 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #36393: origin
                    (at_b_p6)

                    ; #55852: origin
                    (not_at_b_p8)

                    ; #10665: <==negation-removal== 55852 (pos)
                    (not (at_b_p8))

                    ; #47278: <==negation-removal== 36393 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #52070: origin
                    (at_b_p7)

                    ; #55852: origin
                    (not_at_b_p8)

                    ; #10665: <==negation-removal== 55852 (pos)
                    (not (at_b_p8))

                    ; #82535: <==negation-removal== 52070 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #10665: origin
                    (at_b_p8)

                    ; #55852: origin
                    (not_at_b_p8)

                    ; #10665: <==negation-removal== 55852 (pos)
                    (not (at_b_p8))

                    ; #55852: <==negation-removal== 10665 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #55852: origin
                    (not_at_b_p8)

                    ; #70387: origin
                    (at_b_p9)

                    ; #10665: <==negation-removal== 55852 (pos)
                    (not (at_b_p8))

                    ; #68777: <==negation-removal== 70387 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #50998: origin
                    (at_b_p1)

                    ; #68777: origin
                    (not_at_b_p9)

                    ; #69017: <==negation-removal== 50998 (pos)
                    (not (not_at_b_p1))

                    ; #70387: <==negation-removal== 68777 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #13935: origin
                    (at_b_p2)

                    ; #68777: origin
                    (not_at_b_p9)

                    ; #12660: <==negation-removal== 13935 (pos)
                    (not (not_at_b_p2))

                    ; #70387: <==negation-removal== 68777 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #53534: origin
                    (at_b_p3)

                    ; #68777: origin
                    (not_at_b_p9)

                    ; #15055: <==negation-removal== 53534 (pos)
                    (not (not_at_b_p3))

                    ; #70387: <==negation-removal== 68777 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #67393: origin
                    (at_b_p4)

                    ; #68777: origin
                    (not_at_b_p9)

                    ; #25283: <==negation-removal== 67393 (pos)
                    (not (not_at_b_p4))

                    ; #70387: <==negation-removal== 68777 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #56772: origin
                    (at_b_p5)

                    ; #68777: origin
                    (not_at_b_p9)

                    ; #70387: <==negation-removal== 68777 (pos)
                    (not (at_b_p9))

                    ; #80042: <==negation-removal== 56772 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #36393: origin
                    (at_b_p6)

                    ; #68777: origin
                    (not_at_b_p9)

                    ; #47278: <==negation-removal== 36393 (pos)
                    (not (not_at_b_p6))

                    ; #70387: <==negation-removal== 68777 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #52070: origin
                    (at_b_p7)

                    ; #68777: origin
                    (not_at_b_p9)

                    ; #70387: <==negation-removal== 68777 (pos)
                    (not (at_b_p9))

                    ; #82535: <==negation-removal== 52070 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #10665: origin
                    (at_b_p8)

                    ; #68777: origin
                    (not_at_b_p9)

                    ; #55852: <==negation-removal== 10665 (pos)
                    (not (not_at_b_p8))

                    ; #70387: <==negation-removal== 68777 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #68777: origin
                    (not_at_b_p9)

                    ; #70387: origin
                    (at_b_p9)

                    ; #68777: <==negation-removal== 70387 (pos)
                    (not (not_at_b_p9))

                    ; #70387: <==negation-removal== 68777 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #27016: origin
                    (at_c_p1)

                    ; #49344: origin
                    (not_at_c_p1)

                    ; #27016: <==negation-removal== 49344 (pos)
                    (not (at_c_p1))

                    ; #49344: <==negation-removal== 27016 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #41353: origin
                    (at_c_p2)

                    ; #49344: origin
                    (not_at_c_p1)

                    ; #27016: <==negation-removal== 49344 (pos)
                    (not (at_c_p1))

                    ; #57912: <==negation-removal== 41353 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #46394: origin
                    (at_c_p3)

                    ; #49344: origin
                    (not_at_c_p1)

                    ; #12432: <==negation-removal== 46394 (pos)
                    (not (not_at_c_p3))

                    ; #27016: <==negation-removal== 49344 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #49344: origin
                    (not_at_c_p1)

                    ; #71803: origin
                    (at_c_p4)

                    ; #27016: <==negation-removal== 49344 (pos)
                    (not (at_c_p1))

                    ; #53607: <==negation-removal== 71803 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #49344: origin
                    (not_at_c_p1)

                    ; #79361: origin
                    (at_c_p5)

                    ; #27016: <==negation-removal== 49344 (pos)
                    (not (at_c_p1))

                    ; #71094: <==negation-removal== 79361 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #49344: origin
                    (not_at_c_p1)

                    ; #57306: origin
                    (at_c_p6)

                    ; #27016: <==negation-removal== 49344 (pos)
                    (not (at_c_p1))

                    ; #33052: <==negation-removal== 57306 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #47919: origin
                    (at_c_p7)

                    ; #49344: origin
                    (not_at_c_p1)

                    ; #27016: <==negation-removal== 49344 (pos)
                    (not (at_c_p1))

                    ; #64268: <==negation-removal== 47919 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #49344: origin
                    (not_at_c_p1)

                    ; #85958: origin
                    (at_c_p8)

                    ; #26413: <==negation-removal== 85958 (pos)
                    (not (not_at_c_p8))

                    ; #27016: <==negation-removal== 49344 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #49344: origin
                    (not_at_c_p1)

                    ; #67904: origin
                    (at_c_p9)

                    ; #27016: <==negation-removal== 49344 (pos)
                    (not (at_c_p1))

                    ; #29085: <==negation-removal== 67904 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #27016: origin
                    (at_c_p1)

                    ; #57912: origin
                    (not_at_c_p2)

                    ; #41353: <==negation-removal== 57912 (pos)
                    (not (at_c_p2))

                    ; #49344: <==negation-removal== 27016 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #41353: origin
                    (at_c_p2)

                    ; #57912: origin
                    (not_at_c_p2)

                    ; #41353: <==negation-removal== 57912 (pos)
                    (not (at_c_p2))

                    ; #57912: <==negation-removal== 41353 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #46394: origin
                    (at_c_p3)

                    ; #57912: origin
                    (not_at_c_p2)

                    ; #12432: <==negation-removal== 46394 (pos)
                    (not (not_at_c_p3))

                    ; #41353: <==negation-removal== 57912 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #57912: origin
                    (not_at_c_p2)

                    ; #71803: origin
                    (at_c_p4)

                    ; #41353: <==negation-removal== 57912 (pos)
                    (not (at_c_p2))

                    ; #53607: <==negation-removal== 71803 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #57912: origin
                    (not_at_c_p2)

                    ; #79361: origin
                    (at_c_p5)

                    ; #41353: <==negation-removal== 57912 (pos)
                    (not (at_c_p2))

                    ; #71094: <==negation-removal== 79361 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #57306: origin
                    (at_c_p6)

                    ; #57912: origin
                    (not_at_c_p2)

                    ; #33052: <==negation-removal== 57306 (pos)
                    (not (not_at_c_p6))

                    ; #41353: <==negation-removal== 57912 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #47919: origin
                    (at_c_p7)

                    ; #57912: origin
                    (not_at_c_p2)

                    ; #41353: <==negation-removal== 57912 (pos)
                    (not (at_c_p2))

                    ; #64268: <==negation-removal== 47919 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #57912: origin
                    (not_at_c_p2)

                    ; #85958: origin
                    (at_c_p8)

                    ; #26413: <==negation-removal== 85958 (pos)
                    (not (not_at_c_p8))

                    ; #41353: <==negation-removal== 57912 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #57912: origin
                    (not_at_c_p2)

                    ; #67904: origin
                    (at_c_p9)

                    ; #29085: <==negation-removal== 67904 (pos)
                    (not (not_at_c_p9))

                    ; #41353: <==negation-removal== 57912 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #12432: origin
                    (not_at_c_p3)

                    ; #27016: origin
                    (at_c_p1)

                    ; #46394: <==negation-removal== 12432 (pos)
                    (not (at_c_p3))

                    ; #49344: <==negation-removal== 27016 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #12432: origin
                    (not_at_c_p3)

                    ; #41353: origin
                    (at_c_p2)

                    ; #46394: <==negation-removal== 12432 (pos)
                    (not (at_c_p3))

                    ; #57912: <==negation-removal== 41353 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #12432: origin
                    (not_at_c_p3)

                    ; #46394: origin
                    (at_c_p3)

                    ; #12432: <==negation-removal== 46394 (pos)
                    (not (not_at_c_p3))

                    ; #46394: <==negation-removal== 12432 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #12432: origin
                    (not_at_c_p3)

                    ; #71803: origin
                    (at_c_p4)

                    ; #46394: <==negation-removal== 12432 (pos)
                    (not (at_c_p3))

                    ; #53607: <==negation-removal== 71803 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #12432: origin
                    (not_at_c_p3)

                    ; #79361: origin
                    (at_c_p5)

                    ; #46394: <==negation-removal== 12432 (pos)
                    (not (at_c_p3))

                    ; #71094: <==negation-removal== 79361 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #12432: origin
                    (not_at_c_p3)

                    ; #57306: origin
                    (at_c_p6)

                    ; #33052: <==negation-removal== 57306 (pos)
                    (not (not_at_c_p6))

                    ; #46394: <==negation-removal== 12432 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #12432: origin
                    (not_at_c_p3)

                    ; #47919: origin
                    (at_c_p7)

                    ; #46394: <==negation-removal== 12432 (pos)
                    (not (at_c_p3))

                    ; #64268: <==negation-removal== 47919 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #12432: origin
                    (not_at_c_p3)

                    ; #85958: origin
                    (at_c_p8)

                    ; #26413: <==negation-removal== 85958 (pos)
                    (not (not_at_c_p8))

                    ; #46394: <==negation-removal== 12432 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #12432: origin
                    (not_at_c_p3)

                    ; #67904: origin
                    (at_c_p9)

                    ; #29085: <==negation-removal== 67904 (pos)
                    (not (not_at_c_p9))

                    ; #46394: <==negation-removal== 12432 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #27016: origin
                    (at_c_p1)

                    ; #53607: origin
                    (not_at_c_p4)

                    ; #49344: <==negation-removal== 27016 (pos)
                    (not (not_at_c_p1))

                    ; #71803: <==negation-removal== 53607 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #41353: origin
                    (at_c_p2)

                    ; #53607: origin
                    (not_at_c_p4)

                    ; #57912: <==negation-removal== 41353 (pos)
                    (not (not_at_c_p2))

                    ; #71803: <==negation-removal== 53607 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #46394: origin
                    (at_c_p3)

                    ; #53607: origin
                    (not_at_c_p4)

                    ; #12432: <==negation-removal== 46394 (pos)
                    (not (not_at_c_p3))

                    ; #71803: <==negation-removal== 53607 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #53607: origin
                    (not_at_c_p4)

                    ; #71803: origin
                    (at_c_p4)

                    ; #53607: <==negation-removal== 71803 (pos)
                    (not (not_at_c_p4))

                    ; #71803: <==negation-removal== 53607 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #53607: origin
                    (not_at_c_p4)

                    ; #79361: origin
                    (at_c_p5)

                    ; #71094: <==negation-removal== 79361 (pos)
                    (not (not_at_c_p5))

                    ; #71803: <==negation-removal== 53607 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #53607: origin
                    (not_at_c_p4)

                    ; #57306: origin
                    (at_c_p6)

                    ; #33052: <==negation-removal== 57306 (pos)
                    (not (not_at_c_p6))

                    ; #71803: <==negation-removal== 53607 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #47919: origin
                    (at_c_p7)

                    ; #53607: origin
                    (not_at_c_p4)

                    ; #64268: <==negation-removal== 47919 (pos)
                    (not (not_at_c_p7))

                    ; #71803: <==negation-removal== 53607 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #53607: origin
                    (not_at_c_p4)

                    ; #85958: origin
                    (at_c_p8)

                    ; #26413: <==negation-removal== 85958 (pos)
                    (not (not_at_c_p8))

                    ; #71803: <==negation-removal== 53607 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #53607: origin
                    (not_at_c_p4)

                    ; #67904: origin
                    (at_c_p9)

                    ; #29085: <==negation-removal== 67904 (pos)
                    (not (not_at_c_p9))

                    ; #71803: <==negation-removal== 53607 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #27016: origin
                    (at_c_p1)

                    ; #71094: origin
                    (not_at_c_p5)

                    ; #49344: <==negation-removal== 27016 (pos)
                    (not (not_at_c_p1))

                    ; #79361: <==negation-removal== 71094 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #41353: origin
                    (at_c_p2)

                    ; #71094: origin
                    (not_at_c_p5)

                    ; #57912: <==negation-removal== 41353 (pos)
                    (not (not_at_c_p2))

                    ; #79361: <==negation-removal== 71094 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #46394: origin
                    (at_c_p3)

                    ; #71094: origin
                    (not_at_c_p5)

                    ; #12432: <==negation-removal== 46394 (pos)
                    (not (not_at_c_p3))

                    ; #79361: <==negation-removal== 71094 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #71094: origin
                    (not_at_c_p5)

                    ; #71803: origin
                    (at_c_p4)

                    ; #53607: <==negation-removal== 71803 (pos)
                    (not (not_at_c_p4))

                    ; #79361: <==negation-removal== 71094 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #71094: origin
                    (not_at_c_p5)

                    ; #79361: origin
                    (at_c_p5)

                    ; #71094: <==negation-removal== 79361 (pos)
                    (not (not_at_c_p5))

                    ; #79361: <==negation-removal== 71094 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #57306: origin
                    (at_c_p6)

                    ; #71094: origin
                    (not_at_c_p5)

                    ; #33052: <==negation-removal== 57306 (pos)
                    (not (not_at_c_p6))

                    ; #79361: <==negation-removal== 71094 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #47919: origin
                    (at_c_p7)

                    ; #71094: origin
                    (not_at_c_p5)

                    ; #64268: <==negation-removal== 47919 (pos)
                    (not (not_at_c_p7))

                    ; #79361: <==negation-removal== 71094 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #71094: origin
                    (not_at_c_p5)

                    ; #85958: origin
                    (at_c_p8)

                    ; #26413: <==negation-removal== 85958 (pos)
                    (not (not_at_c_p8))

                    ; #79361: <==negation-removal== 71094 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #67904: origin
                    (at_c_p9)

                    ; #71094: origin
                    (not_at_c_p5)

                    ; #29085: <==negation-removal== 67904 (pos)
                    (not (not_at_c_p9))

                    ; #79361: <==negation-removal== 71094 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #27016: origin
                    (at_c_p1)

                    ; #33052: origin
                    (not_at_c_p6)

                    ; #49344: <==negation-removal== 27016 (pos)
                    (not (not_at_c_p1))

                    ; #57306: <==negation-removal== 33052 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #33052: origin
                    (not_at_c_p6)

                    ; #41353: origin
                    (at_c_p2)

                    ; #57306: <==negation-removal== 33052 (pos)
                    (not (at_c_p6))

                    ; #57912: <==negation-removal== 41353 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #33052: origin
                    (not_at_c_p6)

                    ; #46394: origin
                    (at_c_p3)

                    ; #12432: <==negation-removal== 46394 (pos)
                    (not (not_at_c_p3))

                    ; #57306: <==negation-removal== 33052 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #33052: origin
                    (not_at_c_p6)

                    ; #71803: origin
                    (at_c_p4)

                    ; #53607: <==negation-removal== 71803 (pos)
                    (not (not_at_c_p4))

                    ; #57306: <==negation-removal== 33052 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #33052: origin
                    (not_at_c_p6)

                    ; #79361: origin
                    (at_c_p5)

                    ; #57306: <==negation-removal== 33052 (pos)
                    (not (at_c_p6))

                    ; #71094: <==negation-removal== 79361 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #33052: origin
                    (not_at_c_p6)

                    ; #57306: origin
                    (at_c_p6)

                    ; #33052: <==negation-removal== 57306 (pos)
                    (not (not_at_c_p6))

                    ; #57306: <==negation-removal== 33052 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #33052: origin
                    (not_at_c_p6)

                    ; #47919: origin
                    (at_c_p7)

                    ; #57306: <==negation-removal== 33052 (pos)
                    (not (at_c_p6))

                    ; #64268: <==negation-removal== 47919 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #33052: origin
                    (not_at_c_p6)

                    ; #85958: origin
                    (at_c_p8)

                    ; #26413: <==negation-removal== 85958 (pos)
                    (not (not_at_c_p8))

                    ; #57306: <==negation-removal== 33052 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #33052: origin
                    (not_at_c_p6)

                    ; #67904: origin
                    (at_c_p9)

                    ; #29085: <==negation-removal== 67904 (pos)
                    (not (not_at_c_p9))

                    ; #57306: <==negation-removal== 33052 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #27016: origin
                    (at_c_p1)

                    ; #64268: origin
                    (not_at_c_p7)

                    ; #47919: <==negation-removal== 64268 (pos)
                    (not (at_c_p7))

                    ; #49344: <==negation-removal== 27016 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #41353: origin
                    (at_c_p2)

                    ; #64268: origin
                    (not_at_c_p7)

                    ; #47919: <==negation-removal== 64268 (pos)
                    (not (at_c_p7))

                    ; #57912: <==negation-removal== 41353 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #46394: origin
                    (at_c_p3)

                    ; #64268: origin
                    (not_at_c_p7)

                    ; #12432: <==negation-removal== 46394 (pos)
                    (not (not_at_c_p3))

                    ; #47919: <==negation-removal== 64268 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #64268: origin
                    (not_at_c_p7)

                    ; #71803: origin
                    (at_c_p4)

                    ; #47919: <==negation-removal== 64268 (pos)
                    (not (at_c_p7))

                    ; #53607: <==negation-removal== 71803 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #64268: origin
                    (not_at_c_p7)

                    ; #79361: origin
                    (at_c_p5)

                    ; #47919: <==negation-removal== 64268 (pos)
                    (not (at_c_p7))

                    ; #71094: <==negation-removal== 79361 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #57306: origin
                    (at_c_p6)

                    ; #64268: origin
                    (not_at_c_p7)

                    ; #33052: <==negation-removal== 57306 (pos)
                    (not (not_at_c_p6))

                    ; #47919: <==negation-removal== 64268 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #47919: origin
                    (at_c_p7)

                    ; #64268: origin
                    (not_at_c_p7)

                    ; #47919: <==negation-removal== 64268 (pos)
                    (not (at_c_p7))

                    ; #64268: <==negation-removal== 47919 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #64268: origin
                    (not_at_c_p7)

                    ; #85958: origin
                    (at_c_p8)

                    ; #26413: <==negation-removal== 85958 (pos)
                    (not (not_at_c_p8))

                    ; #47919: <==negation-removal== 64268 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #64268: origin
                    (not_at_c_p7)

                    ; #67904: origin
                    (at_c_p9)

                    ; #29085: <==negation-removal== 67904 (pos)
                    (not (not_at_c_p9))

                    ; #47919: <==negation-removal== 64268 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #26413: origin
                    (not_at_c_p8)

                    ; #27016: origin
                    (at_c_p1)

                    ; #49344: <==negation-removal== 27016 (pos)
                    (not (not_at_c_p1))

                    ; #85958: <==negation-removal== 26413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #26413: origin
                    (not_at_c_p8)

                    ; #41353: origin
                    (at_c_p2)

                    ; #57912: <==negation-removal== 41353 (pos)
                    (not (not_at_c_p2))

                    ; #85958: <==negation-removal== 26413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #26413: origin
                    (not_at_c_p8)

                    ; #46394: origin
                    (at_c_p3)

                    ; #12432: <==negation-removal== 46394 (pos)
                    (not (not_at_c_p3))

                    ; #85958: <==negation-removal== 26413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #26413: origin
                    (not_at_c_p8)

                    ; #71803: origin
                    (at_c_p4)

                    ; #53607: <==negation-removal== 71803 (pos)
                    (not (not_at_c_p4))

                    ; #85958: <==negation-removal== 26413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #26413: origin
                    (not_at_c_p8)

                    ; #79361: origin
                    (at_c_p5)

                    ; #71094: <==negation-removal== 79361 (pos)
                    (not (not_at_c_p5))

                    ; #85958: <==negation-removal== 26413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #26413: origin
                    (not_at_c_p8)

                    ; #57306: origin
                    (at_c_p6)

                    ; #33052: <==negation-removal== 57306 (pos)
                    (not (not_at_c_p6))

                    ; #85958: <==negation-removal== 26413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #26413: origin
                    (not_at_c_p8)

                    ; #47919: origin
                    (at_c_p7)

                    ; #64268: <==negation-removal== 47919 (pos)
                    (not (not_at_c_p7))

                    ; #85958: <==negation-removal== 26413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #26413: origin
                    (not_at_c_p8)

                    ; #85958: origin
                    (at_c_p8)

                    ; #26413: <==negation-removal== 85958 (pos)
                    (not (not_at_c_p8))

                    ; #85958: <==negation-removal== 26413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #26413: origin
                    (not_at_c_p8)

                    ; #67904: origin
                    (at_c_p9)

                    ; #29085: <==negation-removal== 67904 (pos)
                    (not (not_at_c_p9))

                    ; #85958: <==negation-removal== 26413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #27016: origin
                    (at_c_p1)

                    ; #29085: origin
                    (not_at_c_p9)

                    ; #49344: <==negation-removal== 27016 (pos)
                    (not (not_at_c_p1))

                    ; #67904: <==negation-removal== 29085 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #29085: origin
                    (not_at_c_p9)

                    ; #41353: origin
                    (at_c_p2)

                    ; #57912: <==negation-removal== 41353 (pos)
                    (not (not_at_c_p2))

                    ; #67904: <==negation-removal== 29085 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #29085: origin
                    (not_at_c_p9)

                    ; #46394: origin
                    (at_c_p3)

                    ; #12432: <==negation-removal== 46394 (pos)
                    (not (not_at_c_p3))

                    ; #67904: <==negation-removal== 29085 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #29085: origin
                    (not_at_c_p9)

                    ; #71803: origin
                    (at_c_p4)

                    ; #53607: <==negation-removal== 71803 (pos)
                    (not (not_at_c_p4))

                    ; #67904: <==negation-removal== 29085 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #29085: origin
                    (not_at_c_p9)

                    ; #79361: origin
                    (at_c_p5)

                    ; #67904: <==negation-removal== 29085 (pos)
                    (not (at_c_p9))

                    ; #71094: <==negation-removal== 79361 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #29085: origin
                    (not_at_c_p9)

                    ; #57306: origin
                    (at_c_p6)

                    ; #33052: <==negation-removal== 57306 (pos)
                    (not (not_at_c_p6))

                    ; #67904: <==negation-removal== 29085 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #29085: origin
                    (not_at_c_p9)

                    ; #47919: origin
                    (at_c_p7)

                    ; #64268: <==negation-removal== 47919 (pos)
                    (not (not_at_c_p7))

                    ; #67904: <==negation-removal== 29085 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #29085: origin
                    (not_at_c_p9)

                    ; #85958: origin
                    (at_c_p8)

                    ; #26413: <==negation-removal== 85958 (pos)
                    (not (not_at_c_p8))

                    ; #67904: <==negation-removal== 29085 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #29085: origin
                    (not_at_c_p9)

                    ; #67904: origin
                    (at_c_p9)

                    ; #29085: <==negation-removal== 67904 (pos)
                    (not (not_at_c_p9))

                    ; #67904: <==negation-removal== 29085 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24529: <==closure== 56693 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #32406: <==commonly_known== 71609 (neg)
                    (Pa_checked_p1)

                    ; #51312: origin
                    (checked_p1)

                    ; #56693: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #59736: <==commonly_known== 51312 (pos)
                    (Bb_checked_p1)

                    ; #62240: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #62312: <==commonly_known== 51312 (pos)
                    (Ba_checked_p1)

                    ; #70771: <==commonly_known== 71609 (neg)
                    (Pb_checked_p1)

                    ; #77619: <==commonly_known== 51312 (pos)
                    (Bc_checked_p1)

                    ; #80910: <==commonly_known== 71609 (neg)
                    (Pc_checked_p1)

                    ; #89459: <==closure== 62240 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #15410: <==negation-removal== 24529 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #19867: <==uncertain_firing== 56693 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #32978: <==uncertain_firing== 89459 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #44953: <==negation-removal== 62240 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #47919: <==uncertain_firing== 62240 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #65977: <==negation-removal== 77619 (pos)
                    (not (Pc_not_checked_p1))

                    ; #71609: <==negation-removal== 51312 (pos)
                    (not (not_checked_p1))

                    ; #72038: <==negation-removal== 59736 (pos)
                    (not (Pb_not_checked_p1))

                    ; #73731: <==negation-removal== 32406 (pos)
                    (not (Ba_not_checked_p1))

                    ; #74186: <==uncertain_firing== 24529 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #76183: <==negation-removal== 70771 (pos)
                    (not (Bb_not_checked_p1))

                    ; #77485: <==negation-removal== 89459 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #78938: <==negation-removal== 80910 (pos)
                    (not (Bc_not_checked_p1))

                    ; #86255: <==negation-removal== 62312 (pos)
                    (not (Pa_not_checked_p1))

                    ; #86328: <==negation-removal== 56693 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #13363: <==commonly_known== 54065 (pos)
                    (Bc_checked_p2)

                    ; #16359: <==commonly_known== 54065 (pos)
                    (Ba_checked_p2)

                    ; #28691: <==commonly_known== 68918 (neg)
                    (Pa_checked_p2)

                    ; #34221: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #37798: <==closure== 63410 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #40887: <==closure== 34221 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #54065: origin
                    (checked_p2)

                    ; #54587: <==commonly_known== 68918 (neg)
                    (Pc_checked_p2)

                    ; #60214: <==commonly_known== 54065 (pos)
                    (Bb_checked_p2)

                    ; #63410: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #74191: <==commonly_known== 68918 (neg)
                    (Pb_checked_p2)

                    ; #18970: <==negation-removal== 74191 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20131: <==uncertain_firing== 37798 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27529: <==negation-removal== 34221 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #34841: <==uncertain_firing== 63410 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #36282: <==negation-removal== 37798 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #46932: <==negation-removal== 60214 (pos)
                    (not (Pb_not_checked_p2))

                    ; #59401: <==negation-removal== 63410 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #60947: <==negation-removal== 28691 (pos)
                    (not (Ba_not_checked_p2))

                    ; #62008: <==negation-removal== 13363 (pos)
                    (not (Pc_not_checked_p2))

                    ; #64390: <==uncertain_firing== 40887 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #68918: <==negation-removal== 54065 (pos)
                    (not (not_checked_p2))

                    ; #78471: <==negation-removal== 40887 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #83280: <==negation-removal== 54587 (pos)
                    (not (Bc_not_checked_p2))

                    ; #83893: <==uncertain_firing== 34221 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #84782: <==negation-removal== 16359 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11693: <==commonly_known== 54245 (neg)
                    (Pb_checked_p3)

                    ; #20645: <==closure== 91751 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #28915: origin
                    (checked_p3)

                    ; #31814: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #35064: <==closure== 31814 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #35422: <==commonly_known== 28915 (pos)
                    (Ba_checked_p3)

                    ; #43411: <==commonly_known== 28915 (pos)
                    (Bb_checked_p3)

                    ; #50629: <==commonly_known== 28915 (pos)
                    (Bc_checked_p3)

                    ; #80506: <==commonly_known== 54245 (neg)
                    (Pc_checked_p3)

                    ; #80657: <==commonly_known== 54245 (neg)
                    (Pa_checked_p3)

                    ; #91751: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #17457: <==uncertain_firing== 20645 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #21204: <==uncertain_firing== 31814 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #21634: <==negation-removal== 31814 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #24373: <==negation-removal== 11693 (pos)
                    (not (Bb_not_checked_p3))

                    ; #40557: <==negation-removal== 50629 (pos)
                    (not (Pc_not_checked_p3))

                    ; #41285: <==uncertain_firing== 91751 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #46483: <==uncertain_firing== 35064 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #54245: <==negation-removal== 28915 (pos)
                    (not (not_checked_p3))

                    ; #56144: <==negation-removal== 35422 (pos)
                    (not (Pa_not_checked_p3))

                    ; #59154: <==negation-removal== 35064 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #67183: <==negation-removal== 80657 (pos)
                    (not (Ba_not_checked_p3))

                    ; #79762: <==negation-removal== 20645 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #86337: <==negation-removal== 80506 (pos)
                    (not (Bc_not_checked_p3))

                    ; #86917: <==negation-removal== 91751 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #90776: <==negation-removal== 43411 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #27915: <==commonly_known== 37585 (neg)
                    (Pb_checked_p4)

                    ; #32285: <==closure== 90547 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #39987: origin
                    (checked_p4)

                    ; #77722: <==commonly_known== 39987 (pos)
                    (Bb_checked_p4)

                    ; #78129: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #78293: <==commonly_known== 37585 (neg)
                    (Pc_checked_p4)

                    ; #79667: <==closure== 78129 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #85959: <==commonly_known== 39987 (pos)
                    (Ba_checked_p4)

                    ; #90547: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #91339: <==commonly_known== 39987 (pos)
                    (Bc_checked_p4)

                    ; #99666: <==commonly_known== 37585 (neg)
                    (Pa_checked_p4)

                    ; #12092: <==negation-removal== 91339 (pos)
                    (not (Pc_not_checked_p4))

                    ; #12902: <==negation-removal== 78293 (pos)
                    (not (Bc_not_checked_p4))

                    ; #15370: <==negation-removal== 90547 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #15645: <==negation-removal== 79667 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #24774: <==negation-removal== 77722 (pos)
                    (not (Pb_not_checked_p4))

                    ; #25586: <==negation-removal== 32285 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #30276: <==uncertain_firing== 79667 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #37585: <==negation-removal== 39987 (pos)
                    (not (not_checked_p4))

                    ; #43607: <==negation-removal== 78129 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #65381: <==negation-removal== 27915 (pos)
                    (not (Bb_not_checked_p4))

                    ; #72235: <==negation-removal== 85959 (pos)
                    (not (Pa_not_checked_p4))

                    ; #76638: <==uncertain_firing== 78129 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #77165: <==negation-removal== 99666 (pos)
                    (not (Ba_not_checked_p4))

                    ; #90025: <==uncertain_firing== 90547 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #95151: <==uncertain_firing== 32285 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #26729: <==commonly_known== 64295 (neg)
                    (Pa_checked_p5)

                    ; #29865: origin
                    (checked_p5)

                    ; #33852: <==commonly_known== 29865 (pos)
                    (Bc_checked_p5)

                    ; #37604: <==commonly_known== 64295 (neg)
                    (Pc_checked_p5)

                    ; #46704: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #61464: <==closure== 92030 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #71066: <==commonly_known== 29865 (pos)
                    (Bb_checked_p5)

                    ; #79910: <==commonly_known== 64295 (neg)
                    (Pb_checked_p5)

                    ; #84398: <==closure== 46704 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #89845: <==commonly_known== 29865 (pos)
                    (Ba_checked_p5)

                    ; #92030: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #13997: <==uncertain_firing== 46704 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #16108: <==negation-removal== 26729 (pos)
                    (not (Ba_not_checked_p5))

                    ; #20224: <==negation-removal== 89845 (pos)
                    (not (Pa_not_checked_p5))

                    ; #20973: <==uncertain_firing== 61464 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #43226: <==negation-removal== 92030 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #45905: <==negation-removal== 37604 (pos)
                    (not (Bc_not_checked_p5))

                    ; #47369: <==negation-removal== 46704 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #50634: <==uncertain_firing== 84398 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #60161: <==uncertain_firing== 92030 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #63099: <==negation-removal== 71066 (pos)
                    (not (Pb_not_checked_p5))

                    ; #64295: <==negation-removal== 29865 (pos)
                    (not (not_checked_p5))

                    ; #66178: <==negation-removal== 33852 (pos)
                    (not (Pc_not_checked_p5))

                    ; #70961: <==negation-removal== 61464 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #73913: <==negation-removal== 79910 (pos)
                    (not (Bb_not_checked_p5))

                    ; #89429: <==negation-removal== 84398 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #18905: <==closure== 73695 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #21250: <==commonly_known== 52007 (neg)
                    (Pb_checked_p6)

                    ; #24303: <==commonly_known== 52007 (neg)
                    (Pa_checked_p6)

                    ; #26282: <==commonly_known== 72476 (pos)
                    (Bb_checked_p6)

                    ; #27663: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #46594: <==commonly_known== 72476 (pos)
                    (Bc_checked_p6)

                    ; #54060: <==closure== 27663 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #66502: <==commonly_known== 72476 (pos)
                    (Ba_checked_p6)

                    ; #72476: origin
                    (checked_p6)

                    ; #73695: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #90004: <==commonly_known== 52007 (neg)
                    (Pc_checked_p6)

                    ; #22543: <==uncertain_firing== 54060 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #28791: <==negation-removal== 46594 (pos)
                    (not (Pc_not_checked_p6))

                    ; #31497: <==negation-removal== 21250 (pos)
                    (not (Bb_not_checked_p6))

                    ; #35391: <==negation-removal== 66502 (pos)
                    (not (Pa_not_checked_p6))

                    ; #36231: <==negation-removal== 73695 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #36442: <==negation-removal== 24303 (pos)
                    (not (Ba_not_checked_p6))

                    ; #43571: <==negation-removal== 90004 (pos)
                    (not (Bc_not_checked_p6))

                    ; #52007: <==negation-removal== 72476 (pos)
                    (not (not_checked_p6))

                    ; #54911: <==negation-removal== 18905 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #56201: <==negation-removal== 54060 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #66378: <==uncertain_firing== 18905 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #72186: <==uncertain_firing== 73695 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #76599: <==negation-removal== 26282 (pos)
                    (not (Pb_not_checked_p6))

                    ; #91804: <==uncertain_firing== 27663 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #92002: <==negation-removal== 27663 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #23633: <==commonly_known== 81407 (pos)
                    (Ba_checked_p7)

                    ; #24883: <==closure== 70948 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #47028: <==commonly_known== 81407 (pos)
                    (Bb_checked_p7)

                    ; #63940: <==commonly_known== 25192 (neg)
                    (Pb_checked_p7)

                    ; #67438: <==commonly_known== 25192 (neg)
                    (Pc_checked_p7)

                    ; #70948: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #80047: <==commonly_known== 81407 (pos)
                    (Bc_checked_p7)

                    ; #81407: origin
                    (checked_p7)

                    ; #81610: <==closure== 86008 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #86008: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #87868: <==commonly_known== 25192 (neg)
                    (Pa_checked_p7)

                    ; #10987: <==negation-removal== 24883 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #12674: <==negation-removal== 80047 (pos)
                    (not (Pc_not_checked_p7))

                    ; #21675: <==negation-removal== 67438 (pos)
                    (not (Bc_not_checked_p7))

                    ; #24335: <==uncertain_firing== 70948 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25192: <==negation-removal== 81407 (pos)
                    (not (not_checked_p7))

                    ; #26616: <==negation-removal== 47028 (pos)
                    (not (Pb_not_checked_p7))

                    ; #31404: <==negation-removal== 87868 (pos)
                    (not (Ba_not_checked_p7))

                    ; #34396: <==uncertain_firing== 86008 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #43801: <==negation-removal== 81610 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #46105: <==uncertain_firing== 24883 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #51373: <==uncertain_firing== 81610 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #53325: <==negation-removal== 63940 (pos)
                    (not (Bb_not_checked_p7))

                    ; #56069: <==negation-removal== 23633 (pos)
                    (not (Pa_not_checked_p7))

                    ; #79194: <==negation-removal== 86008 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #87118: <==negation-removal== 70948 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15631: <==commonly_known== 15959 (pos)
                    (Bb_checked_p8)

                    ; #15959: origin
                    (checked_p8)

                    ; #31075: <==closure== 51245 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #42232: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #51245: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #54800: <==commonly_known== 15959 (pos)
                    (Ba_checked_p8)

                    ; #65005: <==commonly_known== 56254 (neg)
                    (Pa_checked_p8)

                    ; #70353: <==commonly_known== 15959 (pos)
                    (Bc_checked_p8)

                    ; #86771: <==commonly_known== 56254 (neg)
                    (Pc_checked_p8)

                    ; #89397: <==closure== 42232 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #89988: <==commonly_known== 56254 (neg)
                    (Pb_checked_p8)

                    ; #23975: <==negation-removal== 70353 (pos)
                    (not (Pc_not_checked_p8))

                    ; #25038: <==uncertain_firing== 51245 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #35968: <==negation-removal== 15631 (pos)
                    (not (Pb_not_checked_p8))

                    ; #49874: <==uncertain_firing== 31075 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #55544: <==negation-removal== 42232 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #56254: <==negation-removal== 15959 (pos)
                    (not (not_checked_p8))

                    ; #60225: <==negation-removal== 86771 (pos)
                    (not (Bc_not_checked_p8))

                    ; #64610: <==negation-removal== 54800 (pos)
                    (not (Pa_not_checked_p8))

                    ; #69262: <==uncertain_firing== 42232 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #78618: <==negation-removal== 65005 (pos)
                    (not (Ba_not_checked_p8))

                    ; #81849: <==uncertain_firing== 89397 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #84708: <==negation-removal== 31075 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #85221: <==negation-removal== 89988 (pos)
                    (not (Bb_not_checked_p8))

                    ; #86416: <==negation-removal== 89397 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #89259: <==negation-removal== 51245 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11931: <==commonly_known== 13353 (neg)
                    (Pa_checked_p9)

                    ; #21058: <==closure== 21162 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #21162: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #26665: <==commonly_known== 84885 (pos)
                    (Bb_checked_p9)

                    ; #30191: <==commonly_known== 13353 (neg)
                    (Pc_checked_p9)

                    ; #33262: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #37582: <==commonly_known== 84885 (pos)
                    (Bc_checked_p9)

                    ; #53555: <==closure== 33262 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #74980: <==commonly_known== 13353 (neg)
                    (Pb_checked_p9)

                    ; #83322: <==commonly_known== 84885 (pos)
                    (Ba_checked_p9)

                    ; #84885: origin
                    (checked_p9)

                    ; #13353: <==negation-removal== 84885 (pos)
                    (not (not_checked_p9))

                    ; #32927: <==uncertain_firing== 53555 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #34911: <==uncertain_firing== 21058 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #36255: <==negation-removal== 21058 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #41703: <==negation-removal== 11931 (pos)
                    (not (Ba_not_checked_p9))

                    ; #46154: <==uncertain_firing== 21162 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #60253: <==uncertain_firing== 33262 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #67770: <==negation-removal== 30191 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68729: <==negation-removal== 26665 (pos)
                    (not (Pb_not_checked_p9))

                    ; #75472: <==negation-removal== 53555 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #78424: <==negation-removal== 37582 (pos)
                    (not (Pc_not_checked_p9))

                    ; #81181: <==negation-removal== 21162 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #82347: <==negation-removal== 83322 (pos)
                    (not (Pa_not_checked_p9))

                    ; #83042: <==negation-removal== 74980 (pos)
                    (not (Bb_not_checked_p9))

                    ; #84916: <==negation-removal== 33262 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #32406: <==commonly_known== 71609 (neg)
                    (Pa_checked_p1)

                    ; #32718: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #51312: origin
                    (checked_p1)

                    ; #59736: <==commonly_known== 51312 (pos)
                    (Bb_checked_p1)

                    ; #62312: <==commonly_known== 51312 (pos)
                    (Ba_checked_p1)

                    ; #64053: <==closure== 32718 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #70771: <==commonly_known== 71609 (neg)
                    (Pb_checked_p1)

                    ; #77619: <==commonly_known== 51312 (pos)
                    (Bc_checked_p1)

                    ; #80910: <==commonly_known== 71609 (neg)
                    (Pc_checked_p1)

                    ; #83604: <==closure== 91655 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #91655: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #47291: <==uncertain_firing== 83604 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #51083: <==negation-removal== 32718 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #58229: <==negation-removal== 91655 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #61456: <==negation-removal== 64053 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65977: <==negation-removal== 77619 (pos)
                    (not (Pc_not_checked_p1))

                    ; #71609: <==negation-removal== 51312 (pos)
                    (not (not_checked_p1))

                    ; #72038: <==negation-removal== 59736 (pos)
                    (not (Pb_not_checked_p1))

                    ; #73731: <==negation-removal== 32406 (pos)
                    (not (Ba_not_checked_p1))

                    ; #74996: <==uncertain_firing== 91655 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #76183: <==negation-removal== 70771 (pos)
                    (not (Bb_not_checked_p1))

                    ; #78938: <==negation-removal== 80910 (pos)
                    (not (Bc_not_checked_p1))

                    ; #80032: <==uncertain_firing== 32718 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #83026: <==uncertain_firing== 64053 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #83980: <==negation-removal== 83604 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #86255: <==negation-removal== 62312 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10090: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #13363: <==commonly_known== 54065 (pos)
                    (Bc_checked_p2)

                    ; #16359: <==commonly_known== 54065 (pos)
                    (Ba_checked_p2)

                    ; #28691: <==commonly_known== 68918 (neg)
                    (Pa_checked_p2)

                    ; #54065: origin
                    (checked_p2)

                    ; #54587: <==commonly_known== 68918 (neg)
                    (Pc_checked_p2)

                    ; #59849: <==closure== 78838 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #60214: <==commonly_known== 54065 (pos)
                    (Bb_checked_p2)

                    ; #74191: <==commonly_known== 68918 (neg)
                    (Pb_checked_p2)

                    ; #78838: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #81423: <==closure== 10090 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #18970: <==negation-removal== 74191 (pos)
                    (not (Bb_not_checked_p2))

                    ; #22645: <==negation-removal== 81423 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #30573: <==uncertain_firing== 78838 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #33543: <==negation-removal== 78838 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #46932: <==negation-removal== 60214 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54336: <==negation-removal== 59849 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #59924: <==uncertain_firing== 10090 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #60947: <==negation-removal== 28691 (pos)
                    (not (Ba_not_checked_p2))

                    ; #62008: <==negation-removal== 13363 (pos)
                    (not (Pc_not_checked_p2))

                    ; #68918: <==negation-removal== 54065 (pos)
                    (not (not_checked_p2))

                    ; #75568: <==uncertain_firing== 81423 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #80364: <==uncertain_firing== 59849 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #83280: <==negation-removal== 54587 (pos)
                    (not (Bc_not_checked_p2))

                    ; #84782: <==negation-removal== 16359 (pos)
                    (not (Pa_not_checked_p2))

                    ; #89984: <==negation-removal== 10090 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11693: <==commonly_known== 54245 (neg)
                    (Pb_checked_p3)

                    ; #15132: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #28915: origin
                    (checked_p3)

                    ; #35422: <==commonly_known== 28915 (pos)
                    (Ba_checked_p3)

                    ; #43411: <==commonly_known== 28915 (pos)
                    (Bb_checked_p3)

                    ; #50629: <==commonly_known== 28915 (pos)
                    (Bc_checked_p3)

                    ; #54810: <==closure== 15132 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #80313: <==closure== 80913 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #80506: <==commonly_known== 54245 (neg)
                    (Pc_checked_p3)

                    ; #80657: <==commonly_known== 54245 (neg)
                    (Pa_checked_p3)

                    ; #80913: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #18001: <==negation-removal== 80913 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #24373: <==negation-removal== 11693 (pos)
                    (not (Bb_not_checked_p3))

                    ; #30285: <==negation-removal== 15132 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #34555: <==uncertain_firing== 80913 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #40557: <==negation-removal== 50629 (pos)
                    (not (Pc_not_checked_p3))

                    ; #42598: <==negation-removal== 54810 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #45284: <==uncertain_firing== 80313 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #54245: <==negation-removal== 28915 (pos)
                    (not (not_checked_p3))

                    ; #56144: <==negation-removal== 35422 (pos)
                    (not (Pa_not_checked_p3))

                    ; #57809: <==uncertain_firing== 54810 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #67183: <==negation-removal== 80657 (pos)
                    (not (Ba_not_checked_p3))

                    ; #74124: <==negation-removal== 80313 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #74778: <==uncertain_firing== 15132 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #86337: <==negation-removal== 80506 (pos)
                    (not (Bc_not_checked_p3))

                    ; #90776: <==negation-removal== 43411 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #24667: <==closure== 48548 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #27915: <==commonly_known== 37585 (neg)
                    (Pb_checked_p4)

                    ; #39987: origin
                    (checked_p4)

                    ; #48548: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #59914: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #77722: <==commonly_known== 39987 (pos)
                    (Bb_checked_p4)

                    ; #78293: <==commonly_known== 37585 (neg)
                    (Pc_checked_p4)

                    ; #85959: <==commonly_known== 39987 (pos)
                    (Ba_checked_p4)

                    ; #86551: <==closure== 59914 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #91339: <==commonly_known== 39987 (pos)
                    (Bc_checked_p4)

                    ; #99666: <==commonly_known== 37585 (neg)
                    (Pa_checked_p4)

                    ; #12092: <==negation-removal== 91339 (pos)
                    (not (Pc_not_checked_p4))

                    ; #12902: <==negation-removal== 78293 (pos)
                    (not (Bc_not_checked_p4))

                    ; #24774: <==negation-removal== 77722 (pos)
                    (not (Pb_not_checked_p4))

                    ; #28523: <==uncertain_firing== 48548 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #34889: <==uncertain_firing== 59914 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #37585: <==negation-removal== 39987 (pos)
                    (not (not_checked_p4))

                    ; #38501: <==negation-removal== 48548 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #38670: <==negation-removal== 24667 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #55307: <==uncertain_firing== 86551 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #59040: <==uncertain_firing== 24667 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #65381: <==negation-removal== 27915 (pos)
                    (not (Bb_not_checked_p4))

                    ; #72235: <==negation-removal== 85959 (pos)
                    (not (Pa_not_checked_p4))

                    ; #76630: <==negation-removal== 59914 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #76766: <==negation-removal== 86551 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #77165: <==negation-removal== 99666 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #25353: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #26729: <==commonly_known== 64295 (neg)
                    (Pa_checked_p5)

                    ; #29865: origin
                    (checked_p5)

                    ; #33852: <==commonly_known== 29865 (pos)
                    (Bc_checked_p5)

                    ; #37604: <==commonly_known== 64295 (neg)
                    (Pc_checked_p5)

                    ; #45078: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #65908: <==closure== 45078 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #71066: <==commonly_known== 29865 (pos)
                    (Bb_checked_p5)

                    ; #79910: <==commonly_known== 64295 (neg)
                    (Pb_checked_p5)

                    ; #81014: <==closure== 25353 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #89845: <==commonly_known== 29865 (pos)
                    (Ba_checked_p5)

                    ; #10818: <==uncertain_firing== 65908 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #16108: <==negation-removal== 26729 (pos)
                    (not (Ba_not_checked_p5))

                    ; #20224: <==negation-removal== 89845 (pos)
                    (not (Pa_not_checked_p5))

                    ; #20423: <==negation-removal== 81014 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #29704: <==negation-removal== 25353 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #40490: <==uncertain_firing== 25353 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #45905: <==negation-removal== 37604 (pos)
                    (not (Bc_not_checked_p5))

                    ; #63099: <==negation-removal== 71066 (pos)
                    (not (Pb_not_checked_p5))

                    ; #64295: <==negation-removal== 29865 (pos)
                    (not (not_checked_p5))

                    ; #66178: <==negation-removal== 33852 (pos)
                    (not (Pc_not_checked_p5))

                    ; #68796: <==uncertain_firing== 81014 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #73913: <==negation-removal== 79910 (pos)
                    (not (Bb_not_checked_p5))

                    ; #83319: <==negation-removal== 65908 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #89220: <==negation-removal== 45078 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #91636: <==uncertain_firing== 45078 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #21250: <==commonly_known== 52007 (neg)
                    (Pb_checked_p6)

                    ; #24303: <==commonly_known== 52007 (neg)
                    (Pa_checked_p6)

                    ; #26282: <==commonly_known== 72476 (pos)
                    (Bb_checked_p6)

                    ; #41369: <==closure== 74229 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #46594: <==commonly_known== 72476 (pos)
                    (Bc_checked_p6)

                    ; #66502: <==commonly_known== 72476 (pos)
                    (Ba_checked_p6)

                    ; #67715: <==closure== 70335 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #70335: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #72476: origin
                    (checked_p6)

                    ; #74229: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #90004: <==commonly_known== 52007 (neg)
                    (Pc_checked_p6)

                    ; #21495: <==negation-removal== 74229 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #28791: <==negation-removal== 46594 (pos)
                    (not (Pc_not_checked_p6))

                    ; #31178: <==negation-removal== 67715 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #31497: <==negation-removal== 21250 (pos)
                    (not (Bb_not_checked_p6))

                    ; #33456: <==negation-removal== 70335 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #34950: <==uncertain_firing== 74229 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #35391: <==negation-removal== 66502 (pos)
                    (not (Pa_not_checked_p6))

                    ; #36442: <==negation-removal== 24303 (pos)
                    (not (Ba_not_checked_p6))

                    ; #43571: <==negation-removal== 90004 (pos)
                    (not (Bc_not_checked_p6))

                    ; #52007: <==negation-removal== 72476 (pos)
                    (not (not_checked_p6))

                    ; #63131: <==uncertain_firing== 70335 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #76599: <==negation-removal== 26282 (pos)
                    (not (Pb_not_checked_p6))

                    ; #83358: <==negation-removal== 41369 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #89914: <==uncertain_firing== 41369 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #99547: <==uncertain_firing== 67715 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #23633: <==commonly_known== 81407 (pos)
                    (Ba_checked_p7)

                    ; #30462: <==closure== 83297 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #31711: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #47028: <==commonly_known== 81407 (pos)
                    (Bb_checked_p7)

                    ; #57630: <==closure== 31711 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #63940: <==commonly_known== 25192 (neg)
                    (Pb_checked_p7)

                    ; #67438: <==commonly_known== 25192 (neg)
                    (Pc_checked_p7)

                    ; #80047: <==commonly_known== 81407 (pos)
                    (Bc_checked_p7)

                    ; #81407: origin
                    (checked_p7)

                    ; #83297: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #87868: <==commonly_known== 25192 (neg)
                    (Pa_checked_p7)

                    ; #12674: <==negation-removal== 80047 (pos)
                    (not (Pc_not_checked_p7))

                    ; #13306: <==negation-removal== 83297 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #19026: <==negation-removal== 57630 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #21675: <==negation-removal== 67438 (pos)
                    (not (Bc_not_checked_p7))

                    ; #25192: <==negation-removal== 81407 (pos)
                    (not (not_checked_p7))

                    ; #26616: <==negation-removal== 47028 (pos)
                    (not (Pb_not_checked_p7))

                    ; #31404: <==negation-removal== 87868 (pos)
                    (not (Ba_not_checked_p7))

                    ; #40650: <==negation-removal== 30462 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #53325: <==negation-removal== 63940 (pos)
                    (not (Bb_not_checked_p7))

                    ; #56069: <==negation-removal== 23633 (pos)
                    (not (Pa_not_checked_p7))

                    ; #58350: <==uncertain_firing== 31711 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #73368: <==uncertain_firing== 57630 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #87327: <==uncertain_firing== 83297 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #90629: <==uncertain_firing== 30462 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #92154: <==negation-removal== 31711 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15631: <==commonly_known== 15959 (pos)
                    (Bb_checked_p8)

                    ; #15959: origin
                    (checked_p8)

                    ; #30878: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #54800: <==commonly_known== 15959 (pos)
                    (Ba_checked_p8)

                    ; #65005: <==commonly_known== 56254 (neg)
                    (Pa_checked_p8)

                    ; #70353: <==commonly_known== 15959 (pos)
                    (Bc_checked_p8)

                    ; #70971: <==closure== 74327 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #74327: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #80271: <==closure== 30878 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #86771: <==commonly_known== 56254 (neg)
                    (Pc_checked_p8)

                    ; #89988: <==commonly_known== 56254 (neg)
                    (Pb_checked_p8)

                    ; #11009: <==uncertain_firing== 30878 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #22705: <==negation-removal== 70971 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #23975: <==negation-removal== 70353 (pos)
                    (not (Pc_not_checked_p8))

                    ; #24199: <==negation-removal== 80271 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #32396: <==negation-removal== 30878 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #33759: <==uncertain_firing== 70971 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #35968: <==negation-removal== 15631 (pos)
                    (not (Pb_not_checked_p8))

                    ; #50992: <==negation-removal== 74327 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #56254: <==negation-removal== 15959 (pos)
                    (not (not_checked_p8))

                    ; #60225: <==negation-removal== 86771 (pos)
                    (not (Bc_not_checked_p8))

                    ; #64610: <==negation-removal== 54800 (pos)
                    (not (Pa_not_checked_p8))

                    ; #65913: <==uncertain_firing== 74327 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #68326: <==uncertain_firing== 80271 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #78618: <==negation-removal== 65005 (pos)
                    (not (Ba_not_checked_p8))

                    ; #85221: <==negation-removal== 89988 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11931: <==commonly_known== 13353 (neg)
                    (Pa_checked_p9)

                    ; #21804: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #26665: <==commonly_known== 84885 (pos)
                    (Bb_checked_p9)

                    ; #30191: <==commonly_known== 13353 (neg)
                    (Pc_checked_p9)

                    ; #37582: <==commonly_known== 84885 (pos)
                    (Bc_checked_p9)

                    ; #44805: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #49201: <==closure== 44805 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #59088: <==closure== 21804 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #74980: <==commonly_known== 13353 (neg)
                    (Pb_checked_p9)

                    ; #83322: <==commonly_known== 84885 (pos)
                    (Ba_checked_p9)

                    ; #84885: origin
                    (checked_p9)

                    ; #13353: <==negation-removal== 84885 (pos)
                    (not (not_checked_p9))

                    ; #14244: <==uncertain_firing== 49201 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #20796: <==uncertain_firing== 44805 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #41703: <==negation-removal== 11931 (pos)
                    (not (Ba_not_checked_p9))

                    ; #48901: <==uncertain_firing== 59088 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #56199: <==negation-removal== 44805 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #58258: <==negation-removal== 49201 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #67770: <==negation-removal== 30191 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68729: <==negation-removal== 26665 (pos)
                    (not (Pb_not_checked_p9))

                    ; #78424: <==negation-removal== 37582 (pos)
                    (not (Pc_not_checked_p9))

                    ; #79381: <==negation-removal== 59088 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #82347: <==negation-removal== 83322 (pos)
                    (not (Pa_not_checked_p9))

                    ; #82957: <==uncertain_firing== 21804 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #83042: <==negation-removal== 74980 (pos)
                    (not (Bb_not_checked_p9))

                    ; #87661: <==negation-removal== 21804 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #31510: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #32406: <==commonly_known== 71609 (neg)
                    (Pa_checked_p1)

                    ; #41482: <==closure== 31510 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #51312: origin
                    (checked_p1)

                    ; #59736: <==commonly_known== 51312 (pos)
                    (Bb_checked_p1)

                    ; #61375: <==closure== 90231 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #62312: <==commonly_known== 51312 (pos)
                    (Ba_checked_p1)

                    ; #70771: <==commonly_known== 71609 (neg)
                    (Pb_checked_p1)

                    ; #77619: <==commonly_known== 51312 (pos)
                    (Bc_checked_p1)

                    ; #80910: <==commonly_known== 71609 (neg)
                    (Pc_checked_p1)

                    ; #90231: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #34201: <==uncertain_firing== 41482 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #43496: <==negation-removal== 41482 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #45208: <==uncertain_firing== 90231 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #52995: <==uncertain_firing== 61375 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #54510: <==negation-removal== 31510 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #55672: <==negation-removal== 61375 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #65977: <==negation-removal== 77619 (pos)
                    (not (Pc_not_checked_p1))

                    ; #71609: <==negation-removal== 51312 (pos)
                    (not (not_checked_p1))

                    ; #72038: <==negation-removal== 59736 (pos)
                    (not (Pb_not_checked_p1))

                    ; #73438: <==negation-removal== 90231 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #73731: <==negation-removal== 32406 (pos)
                    (not (Ba_not_checked_p1))

                    ; #74486: <==uncertain_firing== 31510 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #76183: <==negation-removal== 70771 (pos)
                    (not (Bb_not_checked_p1))

                    ; #78938: <==negation-removal== 80910 (pos)
                    (not (Bc_not_checked_p1))

                    ; #86255: <==negation-removal== 62312 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #13363: <==commonly_known== 54065 (pos)
                    (Bc_checked_p2)

                    ; #16359: <==commonly_known== 54065 (pos)
                    (Ba_checked_p2)

                    ; #28691: <==commonly_known== 68918 (neg)
                    (Pa_checked_p2)

                    ; #42192: <==closure== 78056 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #54065: origin
                    (checked_p2)

                    ; #54587: <==commonly_known== 68918 (neg)
                    (Pc_checked_p2)

                    ; #60214: <==commonly_known== 54065 (pos)
                    (Bb_checked_p2)

                    ; #63034: <==closure== 89344 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #74191: <==commonly_known== 68918 (neg)
                    (Pb_checked_p2)

                    ; #78056: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #89344: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #12304: <==uncertain_firing== 42192 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #18970: <==negation-removal== 74191 (pos)
                    (not (Bb_not_checked_p2))

                    ; #30203: <==negation-removal== 78056 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #46932: <==negation-removal== 60214 (pos)
                    (not (Pb_not_checked_p2))

                    ; #53165: <==uncertain_firing== 78056 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #60947: <==negation-removal== 28691 (pos)
                    (not (Ba_not_checked_p2))

                    ; #62008: <==negation-removal== 13363 (pos)
                    (not (Pc_not_checked_p2))

                    ; #65472: <==negation-removal== 89344 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #68918: <==negation-removal== 54065 (pos)
                    (not (not_checked_p2))

                    ; #72383: <==negation-removal== 63034 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #75712: <==negation-removal== 42192 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #80034: <==uncertain_firing== 63034 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #83280: <==negation-removal== 54587 (pos)
                    (not (Bc_not_checked_p2))

                    ; #84325: <==uncertain_firing== 89344 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #84782: <==negation-removal== 16359 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11693: <==commonly_known== 54245 (neg)
                    (Pb_checked_p3)

                    ; #28915: origin
                    (checked_p3)

                    ; #35422: <==commonly_known== 28915 (pos)
                    (Ba_checked_p3)

                    ; #43411: <==commonly_known== 28915 (pos)
                    (Bb_checked_p3)

                    ; #47819: <==closure== 91799 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #50629: <==commonly_known== 28915 (pos)
                    (Bc_checked_p3)

                    ; #65605: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #80506: <==commonly_known== 54245 (neg)
                    (Pc_checked_p3)

                    ; #80657: <==commonly_known== 54245 (neg)
                    (Pa_checked_p3)

                    ; #82036: <==closure== 65605 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #91799: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #10973: <==negation-removal== 82036 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #24373: <==negation-removal== 11693 (pos)
                    (not (Bb_not_checked_p3))

                    ; #40404: <==negation-removal== 91799 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #40557: <==negation-removal== 50629 (pos)
                    (not (Pc_not_checked_p3))

                    ; #40918: <==uncertain_firing== 65605 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #50269: <==uncertain_firing== 91799 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #54245: <==negation-removal== 28915 (pos)
                    (not (not_checked_p3))

                    ; #56144: <==negation-removal== 35422 (pos)
                    (not (Pa_not_checked_p3))

                    ; #62092: <==uncertain_firing== 82036 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #67183: <==negation-removal== 80657 (pos)
                    (not (Ba_not_checked_p3))

                    ; #68478: <==negation-removal== 47819 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #71946: <==uncertain_firing== 47819 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #86337: <==negation-removal== 80506 (pos)
                    (not (Bc_not_checked_p3))

                    ; #90776: <==negation-removal== 43411 (pos)
                    (not (Pb_not_checked_p3))

                    ; #91188: <==negation-removal== 65605 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10743: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #15917: <==closure== 18740 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #18740: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #27915: <==commonly_known== 37585 (neg)
                    (Pb_checked_p4)

                    ; #39987: origin
                    (checked_p4)

                    ; #64785: <==closure== 10743 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #77722: <==commonly_known== 39987 (pos)
                    (Bb_checked_p4)

                    ; #78293: <==commonly_known== 37585 (neg)
                    (Pc_checked_p4)

                    ; #85959: <==commonly_known== 39987 (pos)
                    (Ba_checked_p4)

                    ; #91339: <==commonly_known== 39987 (pos)
                    (Bc_checked_p4)

                    ; #99666: <==commonly_known== 37585 (neg)
                    (Pa_checked_p4)

                    ; #12092: <==negation-removal== 91339 (pos)
                    (not (Pc_not_checked_p4))

                    ; #12902: <==negation-removal== 78293 (pos)
                    (not (Bc_not_checked_p4))

                    ; #21040: <==negation-removal== 64785 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #21430: <==uncertain_firing== 15917 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #22712: <==uncertain_firing== 18740 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #24774: <==negation-removal== 77722 (pos)
                    (not (Pb_not_checked_p4))

                    ; #26841: <==negation-removal== 18740 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #28109: <==negation-removal== 15917 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #32701: <==uncertain_firing== 10743 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #37585: <==negation-removal== 39987 (pos)
                    (not (not_checked_p4))

                    ; #65381: <==negation-removal== 27915 (pos)
                    (not (Bb_not_checked_p4))

                    ; #72235: <==negation-removal== 85959 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77165: <==negation-removal== 99666 (pos)
                    (not (Ba_not_checked_p4))

                    ; #80665: <==uncertain_firing== 64785 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #90221: <==negation-removal== 10743 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #26729: <==commonly_known== 64295 (neg)
                    (Pa_checked_p5)

                    ; #28566: <==closure== 87074 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #29865: origin
                    (checked_p5)

                    ; #33852: <==commonly_known== 29865 (pos)
                    (Bc_checked_p5)

                    ; #37604: <==commonly_known== 64295 (neg)
                    (Pc_checked_p5)

                    ; #51510: <==closure== 76108 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #71066: <==commonly_known== 29865 (pos)
                    (Bb_checked_p5)

                    ; #76108: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #79910: <==commonly_known== 64295 (neg)
                    (Pb_checked_p5)

                    ; #87074: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #89845: <==commonly_known== 29865 (pos)
                    (Ba_checked_p5)

                    ; #16108: <==negation-removal== 26729 (pos)
                    (not (Ba_not_checked_p5))

                    ; #20224: <==negation-removal== 89845 (pos)
                    (not (Pa_not_checked_p5))

                    ; #25664: <==negation-removal== 87074 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #30168: <==uncertain_firing== 87074 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #45905: <==negation-removal== 37604 (pos)
                    (not (Bc_not_checked_p5))

                    ; #56022: <==uncertain_firing== 51510 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #57830: <==negation-removal== 28566 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #61701: <==uncertain_firing== 28566 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #63099: <==negation-removal== 71066 (pos)
                    (not (Pb_not_checked_p5))

                    ; #64295: <==negation-removal== 29865 (pos)
                    (not (not_checked_p5))

                    ; #66178: <==negation-removal== 33852 (pos)
                    (not (Pc_not_checked_p5))

                    ; #67546: <==negation-removal== 51510 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #73913: <==negation-removal== 79910 (pos)
                    (not (Bb_not_checked_p5))

                    ; #77013: <==negation-removal== 76108 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #86628: <==uncertain_firing== 76108 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14232: <==closure== 51150 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #21250: <==commonly_known== 52007 (neg)
                    (Pb_checked_p6)

                    ; #24303: <==commonly_known== 52007 (neg)
                    (Pa_checked_p6)

                    ; #26282: <==commonly_known== 72476 (pos)
                    (Bb_checked_p6)

                    ; #39215: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #46594: <==commonly_known== 72476 (pos)
                    (Bc_checked_p6)

                    ; #51150: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #63692: <==closure== 39215 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #66502: <==commonly_known== 72476 (pos)
                    (Ba_checked_p6)

                    ; #72476: origin
                    (checked_p6)

                    ; #90004: <==commonly_known== 52007 (neg)
                    (Pc_checked_p6)

                    ; #28791: <==negation-removal== 46594 (pos)
                    (not (Pc_not_checked_p6))

                    ; #31497: <==negation-removal== 21250 (pos)
                    (not (Bb_not_checked_p6))

                    ; #35391: <==negation-removal== 66502 (pos)
                    (not (Pa_not_checked_p6))

                    ; #36442: <==negation-removal== 24303 (pos)
                    (not (Ba_not_checked_p6))

                    ; #43571: <==negation-removal== 90004 (pos)
                    (not (Bc_not_checked_p6))

                    ; #46763: <==uncertain_firing== 39215 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #46859: <==negation-removal== 63692 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #48566: <==uncertain_firing== 51150 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #52007: <==negation-removal== 72476 (pos)
                    (not (not_checked_p6))

                    ; #60656: <==negation-removal== 14232 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #63577: <==uncertain_firing== 63692 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #71890: <==uncertain_firing== 14232 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #73272: <==negation-removal== 51150 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #76599: <==negation-removal== 26282 (pos)
                    (not (Pb_not_checked_p6))

                    ; #81537: <==negation-removal== 39215 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12656: <==closure== 37971 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #23633: <==commonly_known== 81407 (pos)
                    (Ba_checked_p7)

                    ; #37971: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #47028: <==commonly_known== 81407 (pos)
                    (Bb_checked_p7)

                    ; #63940: <==commonly_known== 25192 (neg)
                    (Pb_checked_p7)

                    ; #65590: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #67438: <==commonly_known== 25192 (neg)
                    (Pc_checked_p7)

                    ; #80047: <==commonly_known== 81407 (pos)
                    (Bc_checked_p7)

                    ; #81407: origin
                    (checked_p7)

                    ; #82116: <==closure== 65590 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #87868: <==commonly_known== 25192 (neg)
                    (Pa_checked_p7)

                    ; #10213: <==uncertain_firing== 12656 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #12674: <==negation-removal== 80047 (pos)
                    (not (Pc_not_checked_p7))

                    ; #19776: <==uncertain_firing== 82116 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #21675: <==negation-removal== 67438 (pos)
                    (not (Bc_not_checked_p7))

                    ; #24354: <==negation-removal== 12656 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #25192: <==negation-removal== 81407 (pos)
                    (not (not_checked_p7))

                    ; #26616: <==negation-removal== 47028 (pos)
                    (not (Pb_not_checked_p7))

                    ; #31404: <==negation-removal== 87868 (pos)
                    (not (Ba_not_checked_p7))

                    ; #40814: <==negation-removal== 65590 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #53325: <==negation-removal== 63940 (pos)
                    (not (Bb_not_checked_p7))

                    ; #56069: <==negation-removal== 23633 (pos)
                    (not (Pa_not_checked_p7))

                    ; #73246: <==negation-removal== 37971 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #74404: <==uncertain_firing== 37971 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #76065: <==negation-removal== 82116 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #97083: <==uncertain_firing== 65590 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14602: <==closure== 71309 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #15631: <==commonly_known== 15959 (pos)
                    (Bb_checked_p8)

                    ; #15959: origin
                    (checked_p8)

                    ; #16493: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #54800: <==commonly_known== 15959 (pos)
                    (Ba_checked_p8)

                    ; #58765: <==closure== 16493 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #65005: <==commonly_known== 56254 (neg)
                    (Pa_checked_p8)

                    ; #70353: <==commonly_known== 15959 (pos)
                    (Bc_checked_p8)

                    ; #71309: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #86771: <==commonly_known== 56254 (neg)
                    (Pc_checked_p8)

                    ; #89988: <==commonly_known== 56254 (neg)
                    (Pb_checked_p8)

                    ; #16225: <==negation-removal== 14602 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #21040: <==uncertain_firing== 58765 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #23975: <==negation-removal== 70353 (pos)
                    (not (Pc_not_checked_p8))

                    ; #33448: <==negation-removal== 16493 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #35968: <==negation-removal== 15631 (pos)
                    (not (Pb_not_checked_p8))

                    ; #43685: <==negation-removal== 58765 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #50046: <==uncertain_firing== 14602 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #56254: <==negation-removal== 15959 (pos)
                    (not (not_checked_p8))

                    ; #60225: <==negation-removal== 86771 (pos)
                    (not (Bc_not_checked_p8))

                    ; #64610: <==negation-removal== 54800 (pos)
                    (not (Pa_not_checked_p8))

                    ; #70880: <==uncertain_firing== 71309 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #77781: <==negation-removal== 71309 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #78618: <==negation-removal== 65005 (pos)
                    (not (Ba_not_checked_p8))

                    ; #85221: <==negation-removal== 89988 (pos)
                    (not (Bb_not_checked_p8))

                    ; #99304: <==uncertain_firing== 16493 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11931: <==commonly_known== 13353 (neg)
                    (Pa_checked_p9)

                    ; #16757: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #26665: <==commonly_known== 84885 (pos)
                    (Bb_checked_p9)

                    ; #30191: <==commonly_known== 13353 (neg)
                    (Pc_checked_p9)

                    ; #37582: <==commonly_known== 84885 (pos)
                    (Bc_checked_p9)

                    ; #74980: <==commonly_known== 13353 (neg)
                    (Pb_checked_p9)

                    ; #77719: <==closure== 16757 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #83322: <==commonly_known== 84885 (pos)
                    (Ba_checked_p9)

                    ; #84603: <==closure== 89764 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #84885: origin
                    (checked_p9)

                    ; #89764: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #11750: <==uncertain_firing== 16757 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #13353: <==negation-removal== 84885 (pos)
                    (not (not_checked_p9))

                    ; #17351: <==negation-removal== 77719 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #26407: <==uncertain_firing== 84603 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #35438: <==uncertain_firing== 89764 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #36895: <==negation-removal== 84603 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #41703: <==negation-removal== 11931 (pos)
                    (not (Ba_not_checked_p9))

                    ; #43359: <==negation-removal== 16757 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #57613: <==uncertain_firing== 77719 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #67770: <==negation-removal== 30191 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68729: <==negation-removal== 26665 (pos)
                    (not (Pb_not_checked_p9))

                    ; #72225: <==negation-removal== 89764 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #78424: <==negation-removal== 37582 (pos)
                    (not (Pc_not_checked_p9))

                    ; #82347: <==negation-removal== 83322 (pos)
                    (not (Pa_not_checked_p9))

                    ; #83042: <==negation-removal== 74980 (pos)
                    (not (Bb_not_checked_p9))))

)