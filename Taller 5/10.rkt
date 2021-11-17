;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (suma n s)
  (if (>= n 1)
      (suma (- n 1) (+ (expt n n) s))
      (display s)
  )
)
(suma (begin
        (display "Inserte numero: ")
        (read)
      )
      0
)