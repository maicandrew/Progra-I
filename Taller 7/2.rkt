;Hacer una función que reciba un entero N y devuelva un vector de tamaño N,
;con enteros leidos por teclado.

(define (segundo n m)
  (make-vector n m)
)
(segundo (begin
           (display "Inserte tamaño del vector: ")
           (read)
         )
         (begin
           (display "Inserte numero: ")
           (read)
         )
)