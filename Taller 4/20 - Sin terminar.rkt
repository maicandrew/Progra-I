;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |20 - Sin terminar|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (primo n)
  (cond ((integer? (sqrt n)) (display "El numero no es primo"))
        ((integer? (or (/ n 2) (/ n 3) (/ n 5) (/ n 7) (/ n 11) (/ n 13)))
         (display "El numero no es primo")
        )
        (else (display "El numero es primo"))
  )
)
(primo (begin
         (display "Inserte numero: ")
         (read)
       )
)