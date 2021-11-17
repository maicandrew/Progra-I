;Dado un vector V de enteros y un número X, devolver el valor de veces que está X en el vector.
(define V (vector 1 2 3 4 5 6 5 8 9 10 11 8 13 14 15 16 1 18 19 5 21 3 23 18 8 26 22 7 7 7))
(define (buscar x tam cont)
  (if (>= tam 0)
      (if (= (vector-ref V tam) x)
           (buscar x (- tam 1) (+ cont 1))
           (buscar x (- tam 1) cont)
       )
      (begin
        (display "El numero ") (display x)
        (display " se encuentra ")(display cont)
        (display " veces en el vector.")
      )
  )
)
(buscar (begin
          (display "Inserte numero: ")
          (read)
        )
        (- (vector-length V) 1)
        0
)