;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (resultado edad hmlvl)
  (cond
     ((and (and (> edad 1) (<= edad 5)) (< hmlvl 11.5))
       (display "Resultado: Positivo")
     )
     ((and (and (> edad 5) (<= edad 10)) (< hmlvl 12.6))
       (display "Resultado: Positivo")
     )
     ((and (and (> edad 10) (<= edad 15)) (< hmlvl 13))
       (display "Resultado: Positivo")
     )
     (else (display "Resultado: Negativo"))
  )
)
(resultado (begin
             (display "Edad del paciente: ")
             (read)
           )
           (begin
             (display "Nivel de Hemoglobina: ")
             (read)
           )
)