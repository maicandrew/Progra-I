;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |34 - Sin terminar|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (promedio z n x f m)
  (if (>= z x)
      (promedio z z (+ x 1) (- x 1) (+ f m))
      (/ m (+ (- z x) 1))
  )
)
(promedio (begin
            (display "Inserte numero: ")
            (read)
          )
          1
          (begin
            (display "Inserte numero: ")
            (read)
          )
          0
          0
)