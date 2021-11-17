;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (funcion n)
  (cond ((= (+ (* 4 (sqr n)) (* 6 n) 2) 462)
           (display "n válido"))
        (else (display "n inválido"))
  )
)
(funcion (begin
           (display "Inserte n: ")
           (read)
         )
)