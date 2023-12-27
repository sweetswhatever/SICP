#lang scheme

(define (square x) (* x x))

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
							 x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (good-enough? guess x)
	(< (abs(- guess (improve guess x))) 0.001))

(define (sqrt x)
	(sqrt-iter 1.0 x))

(square (sqrt 0.0001))

(square (sqrt 18446744073709551616))