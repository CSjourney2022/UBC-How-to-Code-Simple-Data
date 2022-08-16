;; String -> Boolean
;; produce true if length of s is less than 5
(check-expect (less-than-5? "string") false)
(check-expect (less-than-5? "") true)
(check-expect (less-than-5? "ring") true)

; (define (less-than-5? s)  ;stub
;    true)

; (define (less-than-5? s)  ;template
;    ... s)

(define (less-than-5? s)  ;template
   (< (string-length s) 5))

(less-than-5? "string")
