(define (pascal row index)
  (if (or (= index 1) (= row index))
      1
      (+ (pascal (- row 1) (- index 1))
         (pascal (- row 1) index))))

(pascal 5 3) ; 6
