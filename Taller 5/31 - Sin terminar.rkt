;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |31 - Sin terminar|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Con base en el algoritmo de Euclides, determine el Máximo Común Divisor (M.C.D), dados dos
;números A y B. A y B se reemplazan por n y m.
(define (euclides n m)
  (if (> n m)
      (if (and (= (quotient n m) 0) (integer? (/ n m)))
          (display m)
          (euclides (quotient n m) m)
      )
      (if (> m n)
          (if (= (quotient m n) 0)
              (display n)
              (euclides n (quotient m n))
          )
          (if (= m n)
              (display n)
              (display "Error")
          )
      )
  )
)
(euclides (begin
            (display "Inserte primer numero: ")
            (read)
          )
          (begin
            (display "Inserte segundo numero: ")
            (read)
          )
)