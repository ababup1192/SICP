#lang racket

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
)
(a-plus-abs-b 1 5)
; (> 5 0) #t
; (+ 1 5)
; 6
(a-plus-abs-b -5 -5)
; (> -5 0) #f
; (- -5 -5)
; 0
(a-plus-abs-b 1 -5)
; #f
; (- 1 -5)
; 6
(a-plus-abs-b 3 -5)
; #f
; (- 3 -5)
; 8
