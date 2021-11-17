;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |16|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (funcion n1 n2)
  (cond ((> n1 n2) (begin
                     (display "La diferencia de estos dos numero es: ")
                     (- n1 n2)
                   )
        )
        ((integer? (/ n2 3)) (begin
                               (display "El producto de estos dos numeros es: ")
                               (* n1 n2)
                             )
        )
        ((= n1 n2) (begin
                     (display "La suma de estos dos numeros es: ")
                     (+ n1 n2)
                   )
        )
        (else (display "Los numeros no cumplen con las reglas del enunciado"))
  )
)
(funcion (begin
           (display "Inserte el primer numero: ")
           (read)
         )
         (begin
           (display "Inserte el segundo numero: ")
           (read)
         )
)