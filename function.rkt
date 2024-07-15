#lang racket

(define (my-function param)
  (define x param)
  (set! x (+ x 10))
  (if (> x 15)
      (set! x (- x 5))
      (set! x (+ x 5)))
  (for ([i (in-range 3)])
    (set! x (+ x i)))
  x)

(display "Enter an integer: ")
(flush-output)
(define input (read-line))
(define param (string->number input))
(if (and (= param 0) (not (string=? input "0")))
    (display "Invalid input\n")
    (display (my-function param)))
