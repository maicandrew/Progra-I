;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (soluciones a b c)
  (cond ((> (sqr b) (* 4 a c))
         (display "La ecuación tiene dos soluciones"))
        ((= (sqr b) (* 4 a c))
         (display "La ecuación tiene una solución"))
        (else (display "La ecuación no tiene solución"))
  )
)
(soluciones (begin
              (display "Inserte a: ")
              (read)
            )
            (begin
              (display "Inserte b: ")
              (read)
            )
            (begin
              (display "Inserte c: ")
              (read)
            )
)