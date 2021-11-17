;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (compra vlr_compra dev incremento)
  (cond ((<= (* 3 (* vlr_compra (/ dev 100))) (* 3 (/ (* vlr_compra (/ incremento 100)) 2))) (display "Comprar el automóvil"))
        (else (display "Comprar el terreno"))
  )
)
(compra (begin
          (display "inserte el valor total de la compra: $")
          (read)
        )
        (begin
          (display "Devaluación anual del automóvil (%): ")
          (read)
        )
        (begin
          (display "Incremento anual del costo del terreno (%): ")
          (read)
        )
)