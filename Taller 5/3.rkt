;Hacer un programa que escriba los primeros N números enteros.
(define (enteros n f)
  (if (>= n f)
      (begin
        (display f)
        (newline)
        (enteros n (+ f 1))
      )
      (display "")
  )
)
(enteros (begin
           (display "Numero máximo que desea mostrar: ")
           (read)
         )
         1
)