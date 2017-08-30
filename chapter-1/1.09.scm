; case 1
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))
; case 2
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
; command
(+ 4 5)

; expansion 1
(if #f
    (inc (+ (dec 4) 5)))
(inc
    (inc (+ (dec 3) 5))
    5)
;...

; expansion 2
(if #f
    (+ 3 6))
(if #f
    (+ 2 7))
;... 9
