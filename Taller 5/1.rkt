(define (saludar n)
  (if (>= n 1)
      (begin
        (display "Hola")
        (newline)
        (saludar (- n 1))
      )
      (display "")
  )
)
(saludar 10)