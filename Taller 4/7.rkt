;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (utilidad años)
  (cond ((< años 1) (display "La utilidad es del 5% del salario"))
        ((and (>= años 1) (< años 2)) (display "La utilidad es del 7% del salario"))
        ((and (>= años 2) (< años 5)) (display "La utilidad es del 10% del salario"))
        ((and (>= años 5) (< años 10)) (display "La utilidad es del 15% del salario"))
        (else (display "La utilidad es del 20% del salario"))
  )
)
(utilidad (begin
            (display "Años de trabajo: ")
            (read)
          )
)