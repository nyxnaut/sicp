(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

;(define (good-enough? guess x)
;  (< (abs (- (square guess) x)) 0.0001))

(define (better-enough? prev guess)
  (< (abs (- prev guess)) 0.00001))

(define (sqrt-iter prev guess x)
;  (if (good-enough? guess x)
  (if (better-enough? prev guess)
  guess
  (sqrt-iter guess (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.2 1.0 x))

; the original implementation is limited in large number cases due to the limited number of digits
; in floating point we may not have enough precision to find a .0001 difference in a very large number.
; It also works poorly for small numbers as the .0001 limits the number of digits of precision you can
; get with small square roots. Instead we can check how much the guess changes, which lets us find
; answers both large and small to greater precision.

; Checking solutions online I found an alternative answer that I wouldn't have thought of
(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.001)))
