; take 3 numbers as arguments and return the sum of squares for two larger
(define (sum-of-squares x y)
  (+ (* x x) (* y y)))
(define (sum-of-greater-two-squares x y z)
  (if (> x y)
      (sum-of-squares x (if (> y z) y z))
      (sum-of-squares y (if (> x z) x z))))
(sum-of-greater-two-squares 2 3 4) ; 25
(sum-of-greater-two-squares 3 2 4) ; 25
(sum-of-greater-two-squares 4 3 2) ; 25
