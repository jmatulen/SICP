; Sqrt using the standard newton's method
(define (sqrt-iter guess x)
    (define (square x)
        (* x x))
    
    (define (abs x)
        (if (< x 0)
            (- x)
            x))
    
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) .0001))
    
    (define (average x y)
        (/ (+ x y) 2))
    
    (define (improve guess x)
        (average (/ x guess) guess))
    
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess x) x)))
    
; Sqrt Calculator using alternate improvement method
; This method is much faster than the original method
(define (sqrt-iter-v2 guess x)
    (define (square x)
        (* x x))
    
    (define (abs x)
        (if (< x 0)
            (- x)
            x))
    
    (define (average x y)
        (/ (+ x y) 2))
    
    (define (improve guess x)
        (average (/ x guess) guess))
    
    (define (good-enough? guess)
        (< (abs (- (improve guess x) guess)) .00000001))
    
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess x) x)))
    
(display (sqrt-iter-v2 1.0 1000000))

