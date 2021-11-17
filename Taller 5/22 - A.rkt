;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |22 - A|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Escriba un programa para caso planteado, que permita calcular el valor del que se
;dispondrá, después de N periodos mensuales en el que un capital C, ha estado
;siendo incrementado por una tasa de interés mensual R. Se presentan dos casos:
;A. Interés simple: El capital no se incrementa con el interés mensual, es decir el
;interés pagado es el mismo para cada periodo mensual.
(define (interes n c r)
  (begin
    (display "En ")
    (display n)
    (display " períodos mensuales, se dispondrá de: ")
    (+ (* (/ r 100) c n) c)
  )
)
;NOTA DEL AUTOR (Michael Grisales): El código está en forma iterativa ya que es más eficiente que uno en forma recursiva.

;Llamado
(interes (begin
          (display "Inserte los períodos mensuales: ")
          (read)
        )
         (begin
          (display "Inserte el capital: ")
          (read)
        )
         (begin
          (display "Inserte el interes por período mensual: ")
          (read)
        )
)