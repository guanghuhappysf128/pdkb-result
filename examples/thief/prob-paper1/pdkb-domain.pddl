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
                    ; #33978: origin
                    (goal)

                    ; #15453: <==negation-removal== 33978 (pos)
                    (not (not_goal))))

    (:action both-see-each-other
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #10135: <==commonly_known== 96366 (pos)
                    (Bt_Pg_thief)

                    ; #13169: <==commonly_known== 42523 (pos)
                    (Bt_Bg_thief)

                    ; #27116: <==closure== 13169 (pos)
                    (Pt_Pg_thief)

                    ; #33284: <==closure== 59210 (pos)
                    (Pg_Pt_guard)

                    ; #42523: origin
                    (Bg_thief)

                    ; #45338: <==commonly_known== 75681 (pos)
                    (Bg_Pt_guard)

                    ; #46586: origin
                    (Bt_guard)

                    ; #59210: <==commonly_known== 46586 (pos)
                    (Bg_Bt_guard)

                    ; #67651: <==commonly_known== 58664 (neg)
                    (Pt_Bg_thief)

                    ; #75681: <==closure== 46586 (pos)
                    (Pt_guard)

                    ; #95457: <==commonly_known== 63325 (neg)
                    (Pg_Bt_guard)

                    ; #96366: <==closure== 42523 (pos)
                    (Pg_thief)

                    ; #13834: <==negation-removal== 10135 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #17648: <==negation-removal== 67651 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #19279: <==negation-removal== 27116 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #26724: <==negation-removal== 33284 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #44612: <==negation-removal== 95457 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #46277: <==negation-removal== 59210 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #52866: <==negation-removal== 75681 (pos)
                    (not (Bt_not_guard))

                    ; #53287: <==negation-removal== 96366 (pos)
                    (not (Bg_not_thief))

                    ; #58664: <==negation-removal== 42523 (pos)
                    (not (Pg_not_thief))

                    ; #63325: <==negation-removal== 46586 (pos)
                    (not (Pt_not_guard))

                    ; #68355: <==negation-removal== 13169 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #88088: <==negation-removal== 45338 (pos)
                    (not (Pg_Bt_not_guard))))

    (:action guard-sees-thief
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #10135: <==commonly_known== 96366 (pos)
                    (Bt_Pg_thief)

                    ; #13169: <==commonly_known== 42523 (pos)
                    (Bt_Bg_thief)

                    ; #27116: <==closure== 13169 (pos)
                    (Pt_Pg_thief)

                    ; #42523: origin
                    (Bg_thief)

                    ; #67651: <==commonly_known== 58664 (neg)
                    (Pt_Bg_thief)

                    ; #96366: <==closure== 42523 (pos)
                    (Pg_thief)

                    ; #13834: <==negation-removal== 10135 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #17648: <==negation-removal== 67651 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #19279: <==negation-removal== 27116 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #53287: <==negation-removal== 96366 (pos)
                    (not (Bg_not_thief))

                    ; #58664: <==negation-removal== 42523 (pos)
                    (not (Pg_not_thief))

                    ; #68355: <==negation-removal== 13169 (pos)
                    (not (Pt_Pg_not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #13714: <==commonly_known== 74608 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (Bg_Pt_guard))

                    ; #14681: <==commonly_known== 33423 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (Bt_guard))

                    ; #25852: <==commonly_known== 33423 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (Bg_Bt_guard))

                    ; #32729: <==commonly_known== 20092 (neg)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Pt_guard))

                    ; #33423: origin
                    (when (and (thief))
                          (Bt_guard))

                    ; #36839: <==commonly_known== 45616 (neg)
                    (when (and (and (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Bt_guard))

                    ; #42412: <==commonly_known== 74946 (neg)
                    (when (and (Pg_thief))
                          (Pg_Bt_guard))

                    ; #46880: <==closure== 76172 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Pt_guard))

                    ; #51176: <==commonly_known== 47306 (neg)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Bt_guard))

                    ; #51803: <==commonly_known== 91585 (neg)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (Pg_Bt_guard))

                    ; #52353: <==closure== 25852 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (Pg_Pt_guard))

                    ; #74608: <==closure== 33423 (pos)
                    (when (and (thief))
                          (Pt_guard))

                    ; #76172: <==commonly_known== 14681 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Bg_Bt_guard))

                    ; #77375: <==commonly_known== 68076 (neg)
                    (when (and (Pg_thief))
                          (Pg_Pt_guard))

                    ; #81376: <==commonly_known== 74608 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (Pt_guard))

                    ; #86161: <==commonly_known== 81376 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Bg_Pt_guard))

                    ; #11095: <==negation-removal== 52353 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #11942: <==negation-removal== 36839 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #15612: <==negation-removal== 32729 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #20092: <==uncertain_firing== 81376 (pos)
                    (when (and (and (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #25297: <==uncertain_firing== 52353 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #27163: <==negation-removal== 74608 (pos)
                    (when (and (thief))
                          (not (Bt_not_guard)))

                    ; #28437: <==uncertain_firing== 51176 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #33915: <==negation-removal== 25852 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #40986: <==negation-removal== 51176 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #41968: <==negation-removal== 46880 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #43599: <==uncertain_firing== 13714 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #44499: <==negation-removal== 81376 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (not (Bt_not_guard)))

                    ; #45616: <==negation-removal== 14681 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (not (Pt_not_guard)))

                    ; #47306: <==uncertain_firing== 14681 (pos)
                    (when (and (and (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #49228: <==uncertain_firing== 86161 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #50992: <==negation-removal== 42412 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Pt_not_guard)))

                    ; #52558: <==uncertain_firing== 42412 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #55124: <==uncertain_firing== 76172 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #57270: <==uncertain_firing== 46880 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #60396: <==uncertain_firing== 25852 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #68076: <==uncertain_firing== 74608 (pos)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))

                    ; #69397: <==negation-removal== 86161 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #74946: <==uncertain_firing== 33423 (pos)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))

                    ; #79873: <==negation-removal== 13714 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #80455: <==negation-removal== 77375 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Bt_not_guard)))

                    ; #81261: <==negation-removal== 51803 (pos)
                    (when (and (and (Pg_thief)
                               (Bg_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #91585: <==negation-removal== 33423 (pos)
                    (when (and (thief))
                          (not (Pt_not_guard)))

                    ; #94276: <==negation-removal== 76172 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Pg_Pt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #12794: <==commonly_known== 72784 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (Bt_Pg_thief))

                    ; #13041: <==closure== 61807 (pos)
                    (when (and (guard))
                          (Pg_thief))

                    ; #13847: <==commonly_known== 88391 (neg)
                    (when (and (Pt_guard))
                          (Pt_Pg_thief))

                    ; #13912: <==closure== 28601 (pos)
                    (when (and (and (Bt_guard)
                               (Pt_guard)))
                          (Pt_Pg_thief))

                    ; #28601: <==commonly_known== 61807 (pos)
                    (when (and (and (Bt_guard)
                               (Pt_guard)))
                          (Bt_Bg_thief))

                    ; #39111: <==commonly_known== 45676 (neg)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (Pt_Bg_thief))

                    ; #39183: <==commonly_known== 73748 (neg)
                    (when (and (Pt_guard))
                          (Pt_Bg_thief))

                    ; #52418: <==closure== 64542 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (Pt_Pg_thief))

                    ; #53264: <==commonly_known== 49631 (neg)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (Pt_Pg_thief))

                    ; #61355: <==commonly_known== 13041 (pos)
                    (when (and (and (Bt_guard)
                               (Pt_guard)))
                          (Bt_Pg_thief))

                    ; #61807: origin
                    (when (and (guard))
                          (Bg_thief))

                    ; #64542: <==commonly_known== 75832 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (Bt_Bg_thief))

                    ; #72784: <==commonly_known== 13041 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (Pg_thief))

                    ; #75832: <==commonly_known== 61807 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (Bg_thief))

                    ; #78022: <==commonly_known== 54819 (neg)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (Pt_Bg_thief))

                    ; #92145: <==commonly_known== 49881 (neg)
                    (when (and (and (Bt_guard)
                               (Pt_guard)))
                          (Pt_Bg_thief))

                    ; #11082: <==negation-removal== 92145 (pos)
                    (when (and (and (Bt_guard)
                               (Pt_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #13814: <==negation-removal== 13912 (pos)
                    (when (and (and (Bt_guard)
                               (Pt_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #16470: <==negation-removal== 28601 (pos)
                    (when (and (and (Bt_guard)
                               (Pt_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #20753: <==negation-removal== 61355 (pos)
                    (when (and (and (Bt_guard)
                               (Pt_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #25405: <==negation-removal== 52418 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #27798: <==uncertain_firing== 52418 (pos)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #28731: <==negation-removal== 12794 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #28731: <==uncertain_firing== 39111 (pos)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #39676: <==negation-removal== 78022 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #39999: <==negation-removal== 64542 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #41844: <==uncertain_firing== 28601 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #45676: <==uncertain_firing== 75832 (pos)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #45733: <==uncertain_firing== 39183 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #49631: <==uncertain_firing== 72784 (pos)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #49881: <==negation-removal== 61807 (pos)
                    (when (and (guard))
                          (not (Pg_not_thief)))

                    ; #50921: <==uncertain_firing== 12794 (pos)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #54495: <==uncertain_firing== 64542 (pos)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #54819: <==negation-removal== 75832 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (not (Pg_not_thief)))

                    ; #55320: <==negation-removal== 72784 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (not (Bg_not_thief)))

                    ; #55727: <==negation-removal== 39183 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Pg_not_thief)))

                    ; #58359: <==uncertain_firing== 61355 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #59537: <==negation-removal== 13847 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Bg_not_thief)))

                    ; #60517: <==negation-removal== 39111 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #64449: <==negation-removal== 53264 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #68476: <==uncertain_firing== 13912 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #69658: <==negation-removal== 13041 (pos)
                    (when (and (guard))
                          (not (Bg_not_thief)))

                    ; #73748: <==uncertain_firing== 61807 (pos)
                    (when (and (not (not_guard)))
                          (not (Pg_not_thief)))

                    ; #88391: <==uncertain_firing== 13041 (pos)
                    (when (and (not (not_guard)))
                          (not (Bg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #33978: origin
                    (goal)

                    ; #15453: <==negation-removal== 33978 (pos)
                    (not (not_goal))))

    (:action thief-sees-guard
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #33284: <==closure== 59210 (pos)
                    (Pg_Pt_guard)

                    ; #45338: <==commonly_known== 75681 (pos)
                    (Bg_Pt_guard)

                    ; #46586: origin
                    (Bt_guard)

                    ; #59210: <==commonly_known== 46586 (pos)
                    (Bg_Bt_guard)

                    ; #75681: <==closure== 46586 (pos)
                    (Pt_guard)

                    ; #95457: <==commonly_known== 63325 (neg)
                    (Pg_Bt_guard)

                    ; #26724: <==negation-removal== 33284 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #44612: <==negation-removal== 95457 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #46277: <==negation-removal== 59210 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #52866: <==negation-removal== 75681 (pos)
                    (not (Bt_not_guard))

                    ; #63325: <==negation-removal== 46586 (pos)
                    (not (Pt_not_guard))

                    ; #88088: <==negation-removal== 45338 (pos)
                    (not (Pg_Bt_not_guard))))

    (:action trick
        :precondition (and (Pt_Pg_not_thief)
                           (Bt_guard)
                           (thief)
                           (Pt_guard)
                           (Bt_Pg_not_thief))
        :effect (and
                    ; #33978: origin
                    (goal)

                    ; #15453: <==negation-removal== 33978 (pos)
                    (not (not_goal))))

)