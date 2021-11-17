;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |27|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Construir una función que reciba como parámetro un número natural N, y calcule la suma de todos
;los naturales menores que el número recibido.
(define (Suma n f m)
  (if (> n f)
      (Suma n (+ f 1) (+ f m))
      (begin
        (display "La suma de los numeros naturales menores que ")
        (display n)
        (display " es igual a: ")
        (display m)
      )
  )
)

(Suma (begin
        (display "Inserte numero: ")
        (read)
      )
      1
      0
)