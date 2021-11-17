;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Mayor A B C - if|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(display "Inserte los valores ")
(newline)
(define (Mayor A B C)
  (if (and (>= A B) (>= A C))
      (begin
        (display "El mayor es: ")
        A
      )
      (if (>= B C)
        (begin
          (display "El mayor es: ")
          B
        )
        (begin
          (display "El mayor es: ")
          C
        )
      )
  )
)
(Mayor (begin
         (display "Inserte A ")
         (read)
        )
        (begin
         (display "Inserte B ")
         (read)
        )
        (begin
         (display "Inserte C ")
         (read)
        )
)