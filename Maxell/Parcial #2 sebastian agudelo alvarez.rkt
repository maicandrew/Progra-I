
;PORFAVOR EJECUTAR EN LENGUAJE "MUY GRANDE" O "PRETTY BIG"
;-------------------------------------------------------------

;Cuadrado 5*5
(newline)
(define (cuadrado n m)
  (if (> m 0)
      (begin
        (display (make-string n #\*) )
        (newline)
        (cuadrado n (- m 1) )
       )
   )
 )

(cuadrado 5 5)
(display (make-string 25 #\-) )
(newline)
;---------------------------------------------------------------------------------------------------------------------------------
;Rectangulo
(define (rectangulo x y)
  (if (> y 0)
      (begin
        (display (make-string x #\*) )
        (newline)
        (rectangulo x (- y 1) )
       )
   )
 )
(rectangulo 16 3)
(display (make-string 25 #\-) )
(newline)
;---------------------------------------------------------------------------------------------------------------------------------
;trianguloR

(define (trianguloR a s)
  (if (> s 0)
      (begin
        (display (make-string a #\*) )
        (newline)
        (trianguloR (+ a 1) (- s 1) )
       )
   )
 )
(trianguloR 1 7)
(display (make-string 25 #\-) )
 (newline)       
;----------------------------------------------------------------------------------------------------------------------------------

;triangulo

(define (triangulo k l)
  (if (> l 0)
      (begin
        (display (make-string k #\*) )
        (newline)
        (triangulo (+ k 1) (- l 1) )
       )

       (begin
        (display (make-string k #\*) )
        (newline)
        (triangulo (- k 1) (- l 1) )
       )
     )
   )
  
(triangulo 1 6)
(display (make-string 25 #\-) )
(newline)