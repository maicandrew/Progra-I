;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |28|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Construir un programa que dados dos enteros M y N diferentes, calcule la suma de los cuadrados de
;los números que hay entre ellos, sin incluirlos.
(define (SumCuad n m f x)
  (if (> n m)
      (SumCuad (- n 1) m (- n 1) (+ (expt f 2) x)) ;NOTA: SOLO FUNCIONA PARA n > m
      (display x)
  )
)
(SumCuad (begin
           (display "Inserte numero mayor: ")
           (read)
         )
         (begin
           (display "Inserte numero menor: ")
           (read)
         )
         0
         0
)