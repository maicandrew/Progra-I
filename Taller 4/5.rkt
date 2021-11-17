;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (descuento vlrcompra n)
  (cond
    ((< n 74)
     (begin
       (display "Su decuento es del 15%")
       (newline)
       (display "El del descuento es: $")
       (* vlrcompra 0.15)))
      (else (begin
              (display "Su descuento es del 20%")
              (newline)
              (display "El valor del descuento es: $")
              (* vlrcompra 0.20)
            )
      )
   )
)
(descuento (begin
             (display "Inserte el valor de la compra: $")
             (read)
           )
           (begin
             (display "Inserte numero escogido: ")
             (read)
           )
)