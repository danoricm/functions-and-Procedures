;; function.s
(display "Enter an integer: ")
(let ((input (read-line)))
  (let ((param (string->number input)))
    (if (or (not param) (= param 0))
        (begin
          (display "Invalid input")
          (newline))
        (let ((result
                (let ((x (+ param 10)))
                  (if (> x 15)
                      (set! x (- x 5))
                      (set! x (+ x 5)))
                  (do ((i 0 (+ i 1)))
                      ((>= i 3) x)
                    (set! x (+ x i)))))))
          (display "Result: ")
          (display result)
          (newline)))))
