;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |14|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (wea n)
  (if (integer? (/ n 2))
      (display "Verdadero")
      (display "Falso")
  )
)
(wea (begin
       (display "Inserte numero: ")
       (read)
     )
)