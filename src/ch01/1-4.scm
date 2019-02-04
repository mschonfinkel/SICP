#| 1.4
Observe that our model of evaluation allows for
combinations whose operators are compound expressions.
Use this observation to describe the behavior
of the following procedure:

(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

The if statement returns a function {+, -}
depending on the value of b.

if (b = -b') => a - (-b') = a + b'
otherwise a + b'

This is equivalent to the following definition:
|#

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

(abs -10)

(define (a-plus-abs-b a b)
  (+ a (abs b))
  )

(a-plus-abs-b 10 -10)

(a-plus-abs-b -10 -10)
