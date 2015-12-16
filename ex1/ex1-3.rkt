#lang racket
(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y))
)

(define (bigger-sum-of-squares x y z)
  (cond ((>= x y z) (sum-of-squares x y))
        ((<= x y z) (sum-of-squares y z))
        (else (sum-of-squares x z))
  )
)

(bigger-sum-of-squares 1 2 3)
(bigger-sum-of-squares 3 2 1)
(bigger-sum-of-squares 3 1 2)
