#|1.5
Ben Bitdiddle has invented a test to determine
whether the interpreter he is faced with is
using applicative-order evaluation or
normal-order evaluation. He defines the
following two procedures:
|#

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y
   ))

;Then he evaluates the expression
(test 0 (p))

#|
=> applicative-order evaluation will
yield an infinite loop, since (= x 0)
returns the second argument, which
is p, which calls itself.

=> normal-order evaluation will
yield the following:

(test 0 (p)) -> (if (= x 0) 0 (p)) ->
(if (#t) 0 (p)) -> 0

this way, p is never reduced, since it's
never called.
