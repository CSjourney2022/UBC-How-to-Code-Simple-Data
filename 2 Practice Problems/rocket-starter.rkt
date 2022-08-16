;; =================
;; Data definitions:

;; RocketDescent is one of:
;; - Number(0, 100]
;; - false
;; Interp. false if rocket's descent has ended, otherwise number of kilometers left to Earth

(define RD1 100)  
(define RD2 50)   
(define RD3 false)   ; touchdown
 
#;
(define (fn-for-countdown rd)
  (cond [(and (number? b)
              (< 0 rd)
              (<= rd 100))
         (...rd)]
         [else (...)]))

;; Template rules used:
;;  - one of: 2 cases
;;  - atomic non-distinct: Integer(0, 100]
;;  - atomic distinct: false



;; =================
;; Functions:

;; RocketDescent -> String
;; produce rocket's remaining descent distance in a short string and "The rocket has landed!" whenthe descent is over

(check-expect (rocket-descent-to-msg 100) "Altitude is 100 kms.")
(check-expect (rocket-descent-to-msg 50) "Altitude is 50 kms.")
(check-expect (rocket-descent-to-msg 0) "The rocket has landed!")

; (define (rocket-descent-to-msg rd) "") ;stud

; <template from RocketDescent>
(define (rocket-descent-to-msg rd)
  (cond [(and (number? rd)
              (< 0 rd)
              (<= rd 100))
         (string-append "Altitude is " (number->string rd) " kms.")]
         [else "The rocket has landed!"]))

(rocket-descent-to-msg 100)
(rocket-descent-to-msg 50)
(rocket-descent-to-msg 0)
