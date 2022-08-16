;; BuildingStatus is one of:
;; - "new"
;; - "old"
;; - "heritage"
;; interp. the status of a building
;; <examples are redundant for enumerations>

#;
(define (fn-for-building-status bs)
  (cond [(string=? "new" bs) (...)]
        [(string=? "old" bs) (...)]
        [(string=? "heritage" bs) (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: "new"
;;  - atomic distinct: "old"
;;  - atomic distinct: "heritage"



;; =================
;; Functions:

;; BuildingStatus -> String
;; produce "yes" if the building is classified as "old" and to be demolished

(check-expect (demolish? "new") "no")
(check-expect (demolish? "old") "yes")
(check-expect (demolish? "heritage") "no")

; define (demolish? bs) "yes") ;stud
; <template from BuildingStatus>

(define (demolish? bs)
  (cond [(string=? "new" bs) "no"]
        [(string=? "old" bs) "yes"]
        [(string=? "heritage" bs) "no"]))

(demolish? "new")
(demolish? "old")
(demolish? "heritage")


