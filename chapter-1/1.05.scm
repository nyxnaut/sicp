(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
; eval (assume if is the same in both conditions)
(test 0 (p))
; normal-order
(test 0 (p))
(test 0 (p))
(test 0 (p))
; it would continue expanding p to the value p and never finish

; applicative-order
(if (= 0 x) 0 y)
(if (= 0 0) 0 (p))
(if #t 0 (p))
0
; it would then evaluate the if statement find true and return 0
