(define (sumRange a b) (if
                        (= a b)
                        a
                        (if
                         (> a b)
                         (sumRange b a)
                         (+ (sumRange (+ a 1) b) a))))
