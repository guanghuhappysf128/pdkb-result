(define (domain thief)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_goal)
        (not_guard)
        (not_thief)
        (Bg_not_guard)
        (Bg_not_thief)
        (Bg_Bg_not_guard)
        (Bg_Bg_not_thief)
        (Bg_Bg_guard)
        (Bg_Bg_thief)
        (Bg_Bt_not_guard)
        (Bg_Bt_not_thief)
        (Bg_Bt_guard)
        (Bg_Bt_thief)
        (Bg_Pg_not_guard)
        (Bg_Pg_not_thief)
        (Bg_Pg_guard)
        (Bg_Pg_thief)
        (Bg_Pt_not_guard)
        (Bg_Pt_not_thief)
        (Bg_Pt_guard)
        (Bg_Pt_thief)
        (Bg_guard)
        (Bg_thief)
        (Bt_not_guard)
        (Bt_not_thief)
        (Bt_Bg_not_guard)
        (Bt_Bg_not_thief)
        (Bt_Bg_guard)
        (Bt_Bg_thief)
        (Bt_Bt_not_guard)
        (Bt_Bt_not_thief)
        (Bt_Bt_guard)
        (Bt_Bt_thief)
        (Bt_Pg_not_guard)
        (Bt_Pg_not_thief)
        (Bt_Pg_guard)
        (Bt_Pg_thief)
        (Bt_Pt_not_guard)
        (Bt_Pt_not_thief)
        (Bt_Pt_guard)
        (Bt_Pt_thief)
        (Bt_guard)
        (Bt_thief)
        (Pg_not_guard)
        (Pg_not_thief)
        (Pg_Bg_not_guard)
        (Pg_Bg_not_thief)
        (Pg_Bg_guard)
        (Pg_Bg_thief)
        (Pg_Bt_not_guard)
        (Pg_Bt_not_thief)
        (Pg_Bt_guard)
        (Pg_Bt_thief)
        (Pg_Pg_not_guard)
        (Pg_Pg_not_thief)
        (Pg_Pg_guard)
        (Pg_Pg_thief)
        (Pg_Pt_not_guard)
        (Pg_Pt_not_thief)
        (Pg_Pt_guard)
        (Pg_Pt_thief)
        (Pg_guard)
        (Pg_thief)
        (Pt_not_guard)
        (Pt_not_thief)
        (Pt_Bg_not_guard)
        (Pt_Bg_not_thief)
        (Pt_Bg_guard)
        (Pt_Bg_thief)
        (Pt_Bt_not_guard)
        (Pt_Bt_not_thief)
        (Pt_Bt_guard)
        (Pt_Bt_thief)
        (Pt_Pg_not_guard)
        (Pt_Pg_not_thief)
        (Pt_Pg_guard)
        (Pt_Pg_thief)
        (Pt_Pt_not_guard)
        (Pt_Pt_not_thief)
        (Pt_Pt_guard)
        (Pt_Pt_thief)
        (Pt_guard)
        (Pt_thief)
        (goal)
        (guard)
        (thief)
    )

    (:action ambush
        :precondition (and (thief)
                           (not (guard)))
        :effect (and
                    ; #33489: origin
                    (goal)))

    (:action both-see-each-other
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #14399: <==commonly_known== 14399 (pos)
                    (Pg_thief)

                    ; #17923: <==commonly_known== 17923 (pos)
                    (Bg_thief)

                    ; #80558: origin
                    (guard)

                    ; #29717: <==commonly_known== 29717 (neg)
                    (not (Pg_not_thief))

                    ; #33702: <==closure== 77541 (pos)
                    (not (not_guard))

                    ; #38586: <==closure== 78402 (pos)
                    (not (Bg_not_thief))))

    (:action guard-sees-thief
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #14399: <==commonly_known== 14399 (pos)
                    (Pg_thief)

                    ; #17923: <==commonly_known== 17923 (pos)
                    (Bg_thief)

                    ; #29717: <==commonly_known== 29717 (neg)
                    (not (Pg_not_thief))

                    ; #38586: <==closure== 78402 (pos)
                    (not (Bg_not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #26509: <==commonly_known== 56046 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (guard))

                    ; #89784: <==commonly_known== 11478 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #31596: <==commonly_known== 31822 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)
                               (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (Bg_thief))

                    ; #60295: <==commonly_known== 79563 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (Pg_thief))

                    ; #66590: <==commonly_known== 90697 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)
                               (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (Pg_thief))

                    ; #91540: <==commonly_known== 52906 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (Bg_thief))

                    ; #46540: <==commonly_known== 46540 (neg)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #49861: <==closure== 35656 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)
                               (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #50167: <==closure== 28092 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (not (Bg_not_thief)))

                    ; #55129: <==commonly_known== 42548 (neg)
                    (when (and (and (Bg_guard)
                               (Pg_guard)
                               (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #56163: <==commonly_known== 86031 (neg)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (not (Pg_not_thief)))

                    ; #61178: <==commonly_known== 61178 (neg)
                    (when (and (not (not_guard)))
                          (not (Bg_not_thief)))

                    ; #85023: <==commonly_known== 85023 (neg)
                    (when (and (not (not_guard)))
                          (not (Pg_not_thief)))

                    ; #87143: <==commonly_known== 87143 (neg)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Pg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #33489: origin
                    (goal)))

    (:action thief-sees-guard
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #80558: origin
                    (guard)

                    ; #33702: <==closure== 77541 (pos)
                    (not (not_guard))))

    (:action trick
        :precondition (and (thief)
                           (guard)
                           (Pg_not_thief)
                           (not (Pg_thief))
                           (not (Bg_thief))
                           (not (not_guard)))
        :effect (and
                    ; #33489: origin
                    (goal)))

)