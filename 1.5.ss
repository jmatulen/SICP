; Exercise 1.5. Ben Bitdiddle has invented a test to determine whether the
; interpreter he is faced with is using applicative-order evaluation or
; normal-order evaluation. He defines the following two procedures:

 (define (p) (p))

 (define (test x y)
   (if (= x 0)
   0
   y))

 ; Then he evaluates the expression

 (test 0 (p))

 ; What behavior will Ben observe with an interpreter that uses applicative-order
 ; evaluation? What behavior will he observe with an interpreter that uses
 ; normal-order evaluation? Explain your answer. (Assume that the evaluation rule
 ; for the special form if is the same whether the interpreter is using normal or
 ; applicative order: The predicate expression is evaluated first, and the result
 ; determines whether to evaluate the consequent or the alternative expression.)

 ; This will yield an infinite loop in an applicative order interpreter, because
 ; the procedure p returns itself, which when evaluated by an applicative order
 ; interpreter, will force the interpreter to again evaluate the procedure p,
 ; which again will yield another p procedure and so on. A normal order iterpreter
 ; will not experience this infinite loop, as the expressions are evaluated last,
 ; after being expanded out. The interpreter will correctly return 0 as the
 ; porcedure is intended.
