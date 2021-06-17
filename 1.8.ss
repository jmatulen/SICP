; Calculate the cube root
(define (cubrt-iter guess x)
    (define (square x)
        (* x x))
    
    (define (abs x)
        (if (< x 0)
            (- x)
            x))
    
    (define (improve guess x)
        (/ (+ (/ x (square guess)) (* 2 guess)) 3))
    
    (define (good-enough? guess)
        (< (abs (- (improve guess x) guess)) .00000001))
    
    (if (good-enough? guess)
        guess
        (cubrt-iter (improve guess x) x)))
    
(display (cubrt-iter 1.0 27))

