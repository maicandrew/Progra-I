;Hacer una función que reciba un valor entero N y devuelva un vector de tamaño N,
;donde cada posición contiene el valor -1.

(define (primero n)
  (make-vector n -1)
)
(primero (begin
           (display "Inserte tamaño del vector: ")
           (read)
         )
)