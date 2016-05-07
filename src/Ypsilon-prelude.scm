(import (rnrs) (rnrs mutable-pairs) (rnrs mutable-strings) (rnrs io simple) (srfi :19) (rnrs r5rs (6)))
(define (current-second)
  (let ((d (current-date)))
    (+ (* 60 60 (date-hour d))
     (* 60 (date-minute d))
       (date-second d))))
(define (current-jiffy)
  (+ (current-second) (/ (date-nanosecond (current-date)) 1000000000)))
(define (jiffies-per-second)
  1)
(define (this-scheme-implementation-name)
  (string-append "ypsilon-" "unknown"))
