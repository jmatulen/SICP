; Exercise 1.3. Define a procedure that takes three numbers as arguments and
; returns the sum of the squares of the two larger numbers.

 (define (sumOfLargerSquares x y z)
     (define (square x)  (* x x))
     (cond ((and (< x y) (< x z)) (+ (square z) (square y)))
           ((and (< x y) (> x z)) (+ (square x) (square y)))
           ((and (< y x) (< y z)) (+ (square x) ( square z)))))
