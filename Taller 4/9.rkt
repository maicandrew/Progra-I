;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (descuento n precio)
  (cond ((< n 5) (begin
                   (display "Su descuento es de: $")
                   (* n precio 0.1)
                 )
        )
        ((and (>= n 5) (< n 10)) (begin
                                   (display "Su descuento es de: $")
                                   (* n precio 0.20)

                                 )
        )
        (else (begin
                (display "Su descuento es de: $")
                (* n precio 0.40)
              )
        )
  )
)
(descuento (begin
             (display "Inserte numero de computadoras ")
             (read)
           )
           1100000
)