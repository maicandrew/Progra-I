;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (tabla n r)
  (if (<= r 10)
      (begin
        (display n)
        (display " * ")
        (display r)
        (display " = ")
        (display (* n r))
        (newline)
        (tabla n (+ r 1))
      )
      (display "")
  )
)
(define (z n f)
  (if (<= f n)
      (begin
        (tabla f 1)
        (z n (+ f 1))
      )
      (display "")
  )
)
(z (begin
     (display "Inserte numero: ")
     (read)
   )
   1
)