; Factorial procedure - iterative process fashion
(define (factorial-iter product counter n)
    (if (or (= n 0) (= n 1))
        n
        (if (> counter n)
            product
            (factorial-iter (* product counter)
                           (+ 1 counter)
                            n))))

