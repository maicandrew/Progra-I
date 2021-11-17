(define (tabla n r)
  (if (<= r 10)
      (begin
        (display n)
        (display " * ")
        (display r)
        (display " = ")
        (display (* n r))
        (newline)
        (tabla n (+ r 1))
      )
  )
)
(tabla (begin
         (display "Inserte numero: ")
         (read)
       )
       1
)