;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Quiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean
;; produce true if the area of the first iamge is larger than the second
(check-expect (first-larger?
               (rectangle 60 30 "outline" "black")
               (rectangle 67 64 "outline" "black")) false)
(check-expect (first-larger?
               (ellipse 60 100 "solid" "red")
               (rectangle 67 64 "outline" "black")) true)
(check-expect (first-larger?
               (ellipse 60 100 "solid" "red")
               (ellipse 60 100 "solid" "red")) false)

;(define (first-larger? img1 img2)
;  true)                               ;stub

;(define (first-larger? img1 img2)
;  ...img1 img2)                       ;template

(define (first-larger? img1 img2)
  (> (* (image-width img1) (image-height img1))
     (* (image-width img2) (image-height img2))))                              