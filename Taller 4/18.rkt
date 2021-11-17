;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |18|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (ahorro inicial)
  (begin
    (display "El capital en 10 años será de: ")
    (* 0.03 120 inicial)
  )
)
(ahorro (begin
          (display "Inserte el ahorro inicial: ")
          (read)
        )
)