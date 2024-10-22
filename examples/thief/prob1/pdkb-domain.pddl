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
        :precondition (and (Pt_not_guard)
                           (thief))
        :effect (and
                    ; #15838: origin
                    (goal)

                    ; #73485: <==negation-removal== 15838 (pos)
                    (not (not_goal))))

    (:action both-see-each-other
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #22240: <==closure== 28250 (pos)
                    (Pg_Pt_guard)

                    ; #25302: origin
                    (Bt_guard)

                    ; #26933: <==commonly_known== 62745 (pos)
                    (Bt_Bg_thief)

                    ; #28250: <==commonly_known== 25302 (pos)
                    (Bg_Bt_guard)

                    ; #36899: <==closure== 25302 (pos)
                    (Pt_guard)

                    ; #62745: origin
                    (Bg_thief)

                    ; #67566: <==closure== 62745 (pos)
                    (Pg_thief)

                    ; #69504: <==commonly_known== 67566 (pos)
                    (Bt_Pg_thief)

                    ; #71802: <==commonly_known== 87686 (neg)
                    (Pg_Bt_guard)

                    ; #83260: <==commonly_known== 36899 (pos)
                    (Bg_Pt_guard)

                    ; #87871: <==commonly_known== 81372 (neg)
                    (Pt_Bg_thief)

                    ; #88856: <==closure== 26933 (pos)
                    (Pt_Pg_thief)

                    ; #11887: <==negation-removal== 36899 (pos)
                    (not (Bt_not_guard))

                    ; #30714: <==negation-removal== 26933 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #31046: <==negation-removal== 87871 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #51278: <==negation-removal== 28250 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #58189: <==negation-removal== 71802 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #67537: <==negation-removal== 88856 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #68312: <==negation-removal== 83260 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #69418: <==negation-removal== 22240 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #78259: <==negation-removal== 69504 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #81372: <==negation-removal== 62745 (pos)
                    (not (Pg_not_thief))

                    ; #87686: <==negation-removal== 25302 (pos)
                    (not (Pt_not_guard))

                    ; #91702: <==negation-removal== 67566 (pos)
                    (not (Bg_not_thief))))

    (:action guard-sees-thief
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #26933: <==commonly_known== 62745 (pos)
                    (Bt_Bg_thief)

                    ; #62745: origin
                    (Bg_thief)

                    ; #67566: <==closure== 62745 (pos)
                    (Pg_thief)

                    ; #69504: <==commonly_known== 67566 (pos)
                    (Bt_Pg_thief)

                    ; #87871: <==commonly_known== 81372 (neg)
                    (Pt_Bg_thief)

                    ; #88856: <==closure== 26933 (pos)
                    (Pt_Pg_thief)

                    ; #30714: <==negation-removal== 26933 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #31046: <==negation-removal== 87871 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #67537: <==negation-removal== 88856 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #78259: <==negation-removal== 69504 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #81372: <==negation-removal== 62745 (pos)
                    (not (Pg_not_thief))

                    ; #91702: <==negation-removal== 67566 (pos)
                    (not (Bg_not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #11739: <==commonly_known== 33984 (neg)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (Pg_Pt_guard))

                    ; #23478: <==commonly_known== 29245 (neg)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Pg_Bt_guard))

                    ; #25871: <==commonly_known== 45812 (neg)
                    (when (and (Pg_thief))
                          (Pg_Bt_guard))

                    ; #29264: <==commonly_known== 80960 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (Bg_Bt_guard))

                    ; #30701: <==commonly_known== 50631 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (Pt_guard))

                    ; #32920: <==commonly_known== 86539 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Bg_Bt_guard))

                    ; #44814: <==closure== 29264 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (Pg_Pt_guard))

                    ; #50631: <==closure== 80960 (pos)
                    (when (and (thief))
                          (Pt_guard))

                    ; #52770: <==commonly_known== 81447 (neg)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (Pg_Bt_guard))

                    ; #52921: <==commonly_known== 30701 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Bg_Pt_guard))

                    ; #59445: <==closure== 32920 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Pg_Pt_guard))

                    ; #68402: <==commonly_known== 23668 (neg)
                    (when (and (Pg_thief))
                          (Pg_Pt_guard))

                    ; #75303: <==commonly_known== 65579 (neg)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (Pg_Bt_guard))

                    ; #75528: <==commonly_known== 50631 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (Bg_Pt_guard))

                    ; #80960: origin
                    (when (and (thief))
                          (Bt_guard))

                    ; #86539: <==commonly_known== 80960 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (Bt_guard))

                    ; #23668: <==uncertain_firing== 50631 (pos)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))

                    ; #26504: <==negation-removal== 75303 (pos)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #26649: <==negation-removal== 32920 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #28526: <==uncertain_firing== 75303 (pos)
                    (when (and (and (not (Bg_Bt_not_thief))
                               (not (Bg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #29245: <==negation-removal== 86539 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (not (Pt_not_guard)))

                    ; #32280: <==negation-removal== 68402 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Bt_not_guard)))

                    ; #33984: <==uncertain_firing== 30701 (pos)
                    (when (and (and (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #34620: <==uncertain_firing== 75528 (pos)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #37983: <==negation-removal== 52921 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #38623: <==negation-removal== 30701 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (not (Bt_not_guard)))

                    ; #38908: <==negation-removal== 59445 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #39049: <==uncertain_firing== 59445 (pos)
                    (when (and (and (not (Bg_Bt_not_thief))
                               (not (Bg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #45147: <==negation-removal== 44814 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #45812: <==uncertain_firing== 80960 (pos)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))

                    ; #47032: <==uncertain_firing== 32920 (pos)
                    (when (and (and (not (Bg_Bt_not_thief))
                               (not (Bg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #47079: <==uncertain_firing== 25871 (pos)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #49619: <==uncertain_firing== 52921 (pos)
                    (when (and (and (not (Bg_Bt_not_thief))
                               (not (Bg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #49965: <==negation-removal== 25871 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Pt_not_guard)))

                    ; #50003: <==negation-removal== 29264 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #53284: <==negation-removal== 75528 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #59116: <==uncertain_firing== 44814 (pos)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #65579: <==uncertain_firing== 86539 (pos)
                    (when (and (and (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #72259: <==negation-removal== 23478 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #81447: <==negation-removal== 80960 (pos)
                    (when (and (thief))
                          (not (Pt_not_guard)))

                    ; #84918: <==negation-removal== 50631 (pos)
                    (when (and (thief))
                          (not (Bt_not_guard)))

                    ; #87724: <==negation-removal== 11739 (pos)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #91123: <==uncertain_firing== 29264 (pos)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #97878: <==negation-removal== 52770 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (not (Bg_Pt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #14120: <==commonly_known== 56520 (neg)
                    (when (and (Pt_guard))
                          (Pt_Bg_thief))

                    ; #20894: <==commonly_known== 22443 (neg)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (Pt_Pg_thief))

                    ; #27525: <==commonly_known== 75682 (neg)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Bg_thief))

                    ; #35700: <==commonly_known== 60579 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (Pg_thief))

                    ; #50205: <==commonly_known== 19217 (neg)
                    (when (and (Pt_guard))
                          (Pt_Pg_thief))

                    ; #57069: <==commonly_known== 68597 (neg)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (Pt_Bg_thief))

                    ; #60579: <==closure== 70914 (pos)
                    (when (and (guard))
                          (Pg_thief))

                    ; #67888: <==closure== 90780 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Bg_guard)))
                          (Pt_Pg_thief))

                    ; #67943: <==commonly_known== 60579 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Pg_thief))

                    ; #70914: origin
                    (when (and (guard))
                          (Bg_thief))

                    ; #73774: <==commonly_known== 70914 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (Bg_thief))

                    ; #78830: <==commonly_known== 70914 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Bg_thief))

                    ; #88754: <==commonly_known== 80409 (neg)
                    (when (and (and (Bt_Pg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Bg_guard)))
                          (Pt_Bg_thief))

                    ; #89400: <==commonly_known== 35700 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Bg_guard)))
                          (Bt_Pg_thief))

                    ; #90477: <==closure== 78830 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Pg_thief))

                    ; #90780: <==commonly_known== 73774 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Bg_guard)))
                          (Bt_Bg_thief))

                    ; #13324: <==negation-removal== 57069 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #19217: <==uncertain_firing== 60579 (pos)
                    (when (and (not (not_guard)))
                          (not (Bg_not_thief)))

                    ; #21654: <==uncertain_firing== 67888 (pos)
                    (when (and (and (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #22443: <==uncertain_firing== 35700 (pos)
                    (when (and (and (not (Bg_not_guard))
                               (not (Pg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #24134: <==negation-removal== 78830 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #27963: <==negation-removal== 90780 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Bg_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #30743: <==uncertain_firing== 78830 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #32794: <==negation-removal== 27525 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #35747: <==uncertain_firing== 67943 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #40192: <==uncertain_firing== 57069 (pos)
                    (when (and (and (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #44620: <==uncertain_firing== 89400 (pos)
                    (when (and (and (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #46171: <==negation-removal== 20894 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #50710: <==negation-removal== 88754 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Bg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #51094: <==negation-removal== 14120 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Pg_not_thief)))

                    ; #51521: <==negation-removal== 50205 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Bg_not_thief)))

                    ; #52489: <==negation-removal== 35700 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (not (Bg_not_thief)))

                    ; #56520: <==uncertain_firing== 70914 (pos)
                    (when (and (not (not_guard)))
                          (not (Pg_not_thief)))

                    ; #67380: <==uncertain_firing== 14120 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #68597: <==uncertain_firing== 73774 (pos)
                    (when (and (and (not (Bg_not_guard))
                               (not (Pg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #73193: <==negation-removal== 67943 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #74080: <==negation-removal== 67888 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Bg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #75682: <==negation-removal== 70914 (pos)
                    (when (and (guard))
                          (not (Pg_not_thief)))

                    ; #80409: <==negation-removal== 73774 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (not (Pg_not_thief)))

                    ; #82621: <==negation-removal== 60579 (pos)
                    (when (and (guard))
                          (not (Bg_not_thief)))

                    ; #84210: <==negation-removal== 90477 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #84763: <==uncertain_firing== 90477 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #86074: <==uncertain_firing== 90780 (pos)
                    (when (and (and (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #86987: <==negation-removal== 89400 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Bg_guard)))
                          (not (Pt_Bg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #15838: origin
                    (goal)

                    ; #73485: <==negation-removal== 15838 (pos)
                    (not (not_goal))))

    (:action thief-sees-guard
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #22240: <==closure== 28250 (pos)
                    (Pg_Pt_guard)

                    ; #25302: origin
                    (Bt_guard)

                    ; #28250: <==commonly_known== 25302 (pos)
                    (Bg_Bt_guard)

                    ; #36899: <==closure== 25302 (pos)
                    (Pt_guard)

                    ; #71802: <==commonly_known== 87686 (neg)
                    (Pg_Bt_guard)

                    ; #83260: <==commonly_known== 36899 (pos)
                    (Bg_Pt_guard)

                    ; #11887: <==negation-removal== 36899 (pos)
                    (not (Bt_not_guard))

                    ; #51278: <==negation-removal== 28250 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #58189: <==negation-removal== 71802 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #68312: <==negation-removal== 83260 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #69418: <==negation-removal== 22240 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #87686: <==negation-removal== 25302 (pos)
                    (not (Pt_not_guard))))

    (:action trick
        :precondition (and (Pt_guard)
                           (Bt_Pg_not_thief)
                           (Pt_Pg_not_thief)
                           (thief)
                           (Bt_guard))
        :effect (and
                    ; #15838: origin
                    (goal)

                    ; #73485: <==negation-removal== 15838 (pos)
                    (not (not_goal))))

)