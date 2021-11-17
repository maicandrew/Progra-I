;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 1-2-4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Taller 3: Puntos 1, 2 y 4
;Definimos n como un valor para read.
;Luego, definimos la funcion que equivale a cada ejercicio
(define n (read))
;El primer punto es la funcion (n * n) + n + 24
;Ya se definió n como un valor en read, ahora se define el
;punto 1 con el identificador que queramos (Yo uso "Punto1")
;y definimos la función en notación prefija
(define punto1 (+ (expt n 2) n 24))
;Para el punto dos la función infija es (1/3) - ((n * n * n)* 55)
;Se escibe l función en notación prefija y el resultado es el siguiente:
(define punto2 (* (- (/ 1 3) (expt n 3) 55)))
;Para el punto cuatro,el objetivo es crear una función que
;eleve a n al cuadrado sin usar funciones predefinidas como sqr o expt
;Un cuadrado es la multiplicación de un numero por sí mismo,
;de esta manera: n * n
;Se pasa dicha función a notación prefija y teneos el siguiente resultado:
(define punto4 (* n n))