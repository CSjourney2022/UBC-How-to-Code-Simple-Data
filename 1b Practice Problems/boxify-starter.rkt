(require 2htdp/image)

;;Image -> Image
;;Creat an "outline" rectange around an image
;(check-expect (boxify (ellipse 60 30 "solid" "red"))
;              (overlay(rectangle 60 30 "outline" "black")
;                      (ellipse 60 30 "solid" "red")))
;(check-expect (boxify (star 40 "solid" "gray")) 
;              (overlay (rectangle 67 64 "outline" "black")
;                       (star 40 "solid" "gray")))

;(define (boxify img1) img1) ;stub

;(define (boxify img1)
;  (... img1))               ;template

(define (boxify img1)
  (overlay (rectangle (+ (image-width img1) 2)
                      (+ (image-height img1) 2)
                      "outline"
                      "black")
           img1))

(boxify (ellipse 60 30 "solid" "red"))

(boxify (star 40 "solid" "gray"))
