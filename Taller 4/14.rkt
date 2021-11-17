;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |14|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (mayor n1 n2)
  (cond ((= n1 n2) (display "Los numeros son iguales"))
        ((> n1 n2) (begin
                     (display "El mayor es: ")
                      n1
                   )
        )
        ((> n2 n1) (begin
                     (display "El mayor es: ")
                      n2
                   )
        )
  )
)
(mayor (begin
         (display "Inserte el primer numero: ")
         (read)
       )
       (begin
         (display "Inserte el segundo numero: ")
         (read)
       )
)