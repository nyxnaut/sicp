; f(n) {
; n < 3:  n
; n >= 3: f(n-1) + 2*f(n-2) + 3*f(n-3)

; tree-recursion
(define (tree-f n)
  (cond ((< n 3) n)
        (else (+ (tree-f (- n 1))
                    (* 2 (tree-f (- n 2)))
                    (* 3 (tree-f (- n 3)))))))
(tree-f 3) ; 3*0 + 2*1 +2 == 4
(tree-f 4) ; 3*1 + 2*2 + (f 3) == 11
(tree-f 5) ; 3*2 + 2*(f 3) + (f 4) == 25

; linear

(define (linear-f n)
  (define (f-iter fn-1 fn-2 fn-3 count)
    (if (= count 3)
        (+ fn-1 (* 2 fn-2) (* 3 fn-3))
        (f-iter (+ fn-1 (* 2 fn-2) (* 3 fn-3))
                fn-1
                fn-2
                (- count 1))))
  (cond ((< n 3) n)
        (else (f-iter 2 1 0 n))))

(linear-f 3) ; 4
(linear-f 4) ; 11
(linear-f 5) ; 25
