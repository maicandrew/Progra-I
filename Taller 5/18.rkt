;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |18|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que encuentre y devuelva el mínimo común múltiplo de dos números a y b (enteros positivos).
(define (mcm x y z)
  (if (and (= (remainder z x) 0) (= (remainder z y) 0))
      (display z)
      (mcm x y (+ z 1))
  )
)
(mcm (begin
       (display "Inserte primer numero: ")
       (read)
     )
     (begin
       (display "Inserte segundo numero: ")
       (read)
     )
     1
)