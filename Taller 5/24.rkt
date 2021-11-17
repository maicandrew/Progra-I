;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |24|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que reciba como parámetro un número entero N, lea N números.
;y devuelva el promedio de los datos leídos.
(define (promedio n f m)
  (if (>= n f)
      (promedio n (+ f 1) (+ f m))
      (/ m n)
  )
)
(promedio (begin
            (display "Inserte numero: ")
            (read)
          )
          1
          0
)