(define l (list 1 2 3 4))

;(define(acc a b nl next term comb)
(define (id x) x)

(define (acclist list nl term op)
  (if(null? list)
     nl
     (op  (term(car list))
        (acclist (cdr list) nl term op))))

;(acclist (list 1 2 3) 0 (lambda(x) (+ x 1)) +)
;(acclist (list 1 2 3) #f even? (lambda (x y) (or x y)))
;(acclist (list 1 2 3) '() even? cons)

(define (pl l)
  (if (null? l)
      '()
      (cons  (+ 1 (car l))
             (pl(cdr l)))))

(define functions (list sin cos sqrt (lambda (x) (* x x)) (lambda (x) (* x x x))))

(define (nfx f k arg)
  (if(= k 1)
     (f arg)
     (f (nfx f (- k 1)  (f arg)))))

(define (nx f k)
  (if (= k 1)
      f
       (lambda(x) (f ((nx f (- k 1)) x )))))



