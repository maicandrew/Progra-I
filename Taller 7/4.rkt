;Hacer una función reciba un vector de enteros y un numero X, busque el número X en el vector
;y devuelva la posición donde se encuentra la primera vez ese número en el vector.
;En caso de no estar debe devolver -1.
(define vec1 (vector 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30))
(define (buscar x vec tam tam2)
  (if (<= tam tam2)
      (if (= (vector-ref vec tam) x)
           (begin
             (display "El numero ") (display x)
             (display " se encuentra en la posición: ")(display tam)
           )
           (buscar x vec (+ tam 1) tam2)
       )
      (display -1)
  )
)
(buscar (begin
          (display "Inserte numero: ")
          (read)
        )
        vec1
        0
        (- (vector-length vec1) 1)
)