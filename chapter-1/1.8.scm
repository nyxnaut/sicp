(define (improve guess x)
  (/ (+ (/ x (* guess guess))(* guess 2))
     3))
(define (good-enough? guess x)
  (< (abs (- guess (improve guess x)))
     (* guess 0.001)))
(define (iter-cube-root guess x)
  (if (good-enough? guess x)
      guess
      (iter-cube-root (improve guess x) x)))
(define (cube-root x)
  (iter-cube-root 1.0 x))

(cube-root 8) ; 2.000004911674404
