;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |22 - B|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Escriba un programa para caso planteado, que permita calcular el valor del que se
;dispondrá, después de N periodos mensuales en el que un capital C, ha estado
;siendo incrementado por una tasa de interés mensual R.
;Interés Compuesto: El interés mensual se le vá sumando al capital, de tal
;forma que el interés pagado va aumentando mes a mes
(define (interes n c r)
  (if (>= n 1)
      (interes (- n 1) (+ (* c (/ r 100)) c) r)
      (display c)
  )
)
(interes (begin
           (display "Inserte numero de períodos: ")
           (read)
         )
         (begin
           (display "Inserte capital base: ")
           (read)
         )
         (begin
           (display "Inserte interés: ")
           (read)
         )
)