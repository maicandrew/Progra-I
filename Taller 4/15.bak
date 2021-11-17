;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |15|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (par_pos n)
  (cond ((and (< n 0) (integer? (/ n 2))) (display "El numero es par negativo"))
        ((and (> n 0) (integer? (/ n 2))) (display "El numero es par positivo"))
        ((and (> n 0) (integer? (/ (+ 1 n) 2))) (display "El numero es impar positivo"))
        ((and (< n 0) (integer? (/ (+ 1 n) 2))) (display "El numero es impar negativo"))
        (else #f)
  )
)
(par_pos (begin
           (display "Inserte numero: ")
           (read)
         )
)