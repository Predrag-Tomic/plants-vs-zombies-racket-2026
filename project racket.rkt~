
#lang racket
(require test-engine/racket-tests)
;; x -> Integer, y -> Integer
;;(define get-grid(x y)(
;;..x..
;;..y..)
;;)

(define (get-grid x y)
   (for/vector ([i (in-range y)])
    (for/vector ([i x]) i ))
)

(check-expect (get-grid 2 2) ((0 1) (0 1)))