(require 2htdp/image)

;; Image Image -> Boolean
;; produce true if the first image is larger (height and width are both larger) than the second

(check-expect (first-larger?
               (rectangle 60 30 "outline" "black")
               (rectangle 67 66 "outline" "black")) false)
(check-expect (first-larger?
               (rectangle 77 76 "outline" "black")
               (rectangle 67 66 "outline" "black")) true)
(check-expect (first-larger?
               (ellipse 60 100 "solid" "red")
               (ellipse 60 100 "solid" "red")) false)
(check-expect (first-larger?
               (rectangle 70 30 "outline" "black")
               (rectangle 67 66 "outline" "black")) false)
(check-expect (first-larger?
               (rectangle 70 66 "outline" "black")
               (rectangle 67 66 "outline" "black")) false)
(check-expect (first-larger?
               (rectangle 67 66 "outline" "black")
               (rectangle 67 86 "outline" "black")) false)
(check-expect (first-larger?
               (rectangle 67 96 "outline" "black")
               (rectangle 67 86 "outline" "black")) false)
(check-expect (first-larger?
               (rectangle 50 76 "outline" "black")
               (rectangle 67 66 "outline" "black")) false)
(check-expect (first-larger?
               (rectangle 50 66 "outline" "black")
               (rectangle 67 66 "outline" "black")) false)

;(define (first-larger? img1 img2)
;  true)                               ;stub

;(define (first-larger? img1 img2)
;  ... img1 img2)                       ;template

(define (first-larger? img1 img2)
  (and (> (image-width img1) (image-width img2))
       (> (image-height img1) (image-height img2))))                              
