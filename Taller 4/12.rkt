;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |12|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (resultado n1 n2)
  (cond ((< n2 0) (begin
                   (display "El producto de estos dos numeros es: ")
                   (* n1 n2)
                 )
        )
        (else (display "El segundo numero debe ser negativo"))
  )
)
(resultado (begin
             (display "Inserte primer numero: ")
             (read)
           )
           (begin
             (display "Inserte el segundo numero: ")
             (read)
           )
)