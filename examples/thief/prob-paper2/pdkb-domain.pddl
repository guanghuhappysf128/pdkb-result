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
                           (Pt_not_guard))
        :effect (and
                    ; #53877: origin
                    (goal)))

    (:action both-see-each-other
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #77541: <==commonly_known== 77541 (pos)
                    (Pt_guard)

                    ; #83225: origin
                    (thief)

                    ; #89062: <==commonly_known== 89062 (pos)
                    (Bt_guard)

                    ; #14466: <==closure== 57107 (pos)
                    (not (not_thief))

                    ; #59328: <==commonly_known== 59328 (neg)
                    (not (Pt_not_guard))

                    ; #74999: <==closure== 53084 (pos)
                    (not (Bt_not_guard))))

    (:action guard-sees-thief
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #83225: origin
                    (thief)

                    ; #14466: <==closure== 57107 (pos)
                    (not (not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #53193: <==commonly_known== 50324 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (Pt_guard))

                    ; #70757: <==commonly_known== 35786 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (Bt_guard))

                    ; #82467: <==commonly_known== 82108 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (Bt_guard))

                    ; #86472: <==commonly_known== 56860 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (Pt_guard))

                    ; #13355: <==closure== 34203 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (Bt_not_guard)))

                    ; #24194: <==commonly_known== 88480 (neg)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (Pt_not_guard)))

                    ; #28393: <==commonly_known== 28393 (neg)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))

                    ; #57728: <==closure== 76531 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #62352: <==commonly_known== 62352 (neg)
                    (when (and (and (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #65427: <==commonly_known== 65427 (neg)
                    (when (and (and (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #70336: <==commonly_known== 43567 (neg)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #89244: <==commonly_known== 89244 (neg)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #48257: <==commonly_known== 34099 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (thief))

                    ; #90849: <==commonly_known== 18124 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (not (not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #53877: origin
                    (goal)))

    (:action thief-sees-guard
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #77541: <==commonly_known== 77541 (pos)
                    (Pt_guard)

                    ; #89062: <==commonly_known== 89062 (pos)
                    (Bt_guard)

                    ; #59328: <==commonly_known== 59328 (neg)
                    (not (Pt_not_guard))

                    ; #74999: <==closure== 53084 (pos)
                    (not (Bt_not_guard))))

    (:action trick
        :precondition (and (Pt_Pg_not_thief)
                           (thief)
                           (Pt_guard)
                           (Bt_Pg_not_thief)
                           (Bt_guard))
        :effect (and
                    ; #53877: origin
                    (goal)))

)