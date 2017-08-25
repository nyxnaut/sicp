(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;if b is greater than zero, we can simply add it to a
;if b is less than zero, we can subtract, canceling the negatives to get the sum of |b|
