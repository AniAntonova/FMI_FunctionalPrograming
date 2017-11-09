(define (prodEven a b) (if
                        (and (even? a) (= a b))
                        a
                        (if
                         (and (even? a)(even? b)) 
                         (* (prodEven (+ a 2) b) a)
                         (if
                          (and (even? a)(odd? b))
                         (* (prodEven (+ a 2) (- b 1)) a)
                         (if
                          (and(odd? a)(odd? b))
                          (*(prodEven(+ a 1) (- b 1)) a)
                        (* (prodEven (+ a 1) b) a) )))))
  ;(define (prodeven a b)
(define(id x) x)
(define(sq x) (-(* x x)))
(define (sumf f a b) (if (= a b) (f a) (+ (sumf f (+ a 1) b) (f a))))
(define (maxf f a b )(if ( = a b )(f a)(max(maxf f (+ a 1) b) ( f a ))  ))
