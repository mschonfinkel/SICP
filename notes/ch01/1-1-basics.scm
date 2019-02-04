(begin
  (define pi 3.14159)
  (define radius 10)
  (* pi (* radius radius))
  (define circumference (* 2 pi radius))
  circumference
  )

(begin
  (define (square x) (* x x))
  (define (sum-of-squares x y)
    (+ (square x) (square y)))

  (sum-of-squares 3 4)
  )

(begin
  (define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))
  (abs -10)
  )

(begin
  (define (>= x y) 
    (or (> x y) (= x y)))
  (>= 10 12)
  )

