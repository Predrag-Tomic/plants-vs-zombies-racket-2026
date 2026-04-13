#lang racket
(require 2htdp/image)
(require test-engine/racket-tests)
(require racket/local)
;; x -> Integer, y -> Integer
;;(define get-grid(x y)(
;;..x..
;;..y..)
;;)
(define (get-grid x y)
  (for/vector ([i (in-range y)])
    (make-vector x 0))
)
; given a numerical size, return a circle of radius with that size
; Input: Radius r Integer, Color c String -> Circle of size R with color C
;(define (make-coin r c)
; (...r ... c...))
(define (make-coin r c)
(circle r "solid" c))

; given a an array grid of some maximum size n by m, grid size N, grid color, grid outline color in a scene
; return a drawn grid of some size on the canvas
; list(list list ...), Integer, Integer, Integer, String, String -> secen with grid
; (define (draw-grid grid n m N solid_c inline_c))
; (... for i in range [0:len(grid)]
;     ..    for y in range [0:len(grid(i))]
;      ..     (place-image rect at x and y on grid))

(define (draw-grid grid n m N solid_c inline_c)
  (local [define s (empty-scene (* n N) (* m N))])
  
  (for ([i (in-range 0 (vector-length grid))])
    (for ([j (in-range 0 (vector-length (vector-ref grid i)))])
      (display i)
      (display j)
    )
  )
)





(check-expect (get-grid 3 3) (list (list 0 0 0) (list 0 0 0) (list 0 0 0)))
(check-expect (make-coin 5 "red") (circle 5 "solid" "red"))
