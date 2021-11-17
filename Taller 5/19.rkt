;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |19|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que encuentre y retorne el máximo común divisor entre dos números a y b (enteros positivos).
(define (mcd x y z)
  (if (and (integer? (/ x z)) (integer? (/ y z)) (>= z 1))
      (display z)
      (mcd x y (- z 1))
  )
)
(mcd (begin
       (display "Inserte primer numero: ")
       (read)
     )
     (begin
       (display "Inserte segundo numero: ")
       (read)
     )
     1000
)