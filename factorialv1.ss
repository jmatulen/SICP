;Factorial Procedure - recursive process fashion
(define (factorial n)
    (if (or (= n 0) (= n 1))
        n
        (* n (factorial (- n 1)))))

