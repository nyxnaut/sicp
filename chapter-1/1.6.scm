(define (average x y)
  (/ (+ x y) 2))
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
  guess
  (sqrt-iter (improve guess x)
             x)))

; why does the following not work in place of if in above

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; under applicative-order evaluation the cond would process both clauses
(new-if (good-enough? guess x) guess (sqrt-iter...)
(cond (([good-enough expansion]) guess ([sqrt-iter expansion]))))
; sqrt-iter gets evaluated every time causing an infinite loop
