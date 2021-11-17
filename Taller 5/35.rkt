;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |35|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Calcule la suma de los cubos de los números naturales que hay entre M y N. Siendo M y N diferentes. No tenga en cuenta los límites.
(define (SumCub n m f x)
  (if (> n m)
      (SumCub (- n 1) m (- n 1) (+ (expt f 3) x)) ;NOTA: SOLO FUNCIONA PARA n > m
      (display x)
  )
)
(SumCub (begin
           (display "Inserte primer numero: ")
           (read)
         )
         (begin
           (display "Inserte segundo numero: ")
           (read)
         )
         0
         0
)