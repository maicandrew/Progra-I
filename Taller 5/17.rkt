;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Fibonacci) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (fibonacci n)
  (if (= n 0)
      0
      (if (= n 1)
          1
          (+ (fibonacci (- n 1)) (fibonacci (- n 2)))
      )
  )
)
(define (serie x n)
  (if (>= n x)
      (begin
        (display (fibonacci x))
        (newline)
        (serie (+ x 1) n)
      )
      (display "")
  )
)
(serie 1 (read))