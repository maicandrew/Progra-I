;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que calcule el factorial de un numero n
(define (fact n m)
      (if (>= n 1)
            (fact (- n 1) (* m n))
            (display m)
      )
)
(fact (begin
        (display "Inserte numero: ")
        (read)
      )
      1
)