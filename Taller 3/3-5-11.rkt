;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 3-5-11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Taller 3: Puntos 3, 5 y 11
;Definimos radio como read ya que el radio se usa
;para todos los puntos aquí presentes.
(define radio (read))
;Para el punto 3 se necesita hallar la longitud de un circulo
;conociendo el radio, la longitud de un circulo se calcula con
;la siguiente ecuación: 2 * pi * radio
;definimos la función como punto3 y luego
;se escribe en notación prefija y se obtiene lo siguiente:
(define punto3 (* 2 pi radio))
;Para el punto 5 se debe hallar el área de un circulo
;conociendo el radio, cuya ecuación es: pi * (radio * radio)
;se define el nombre de la función y el proceso que realiza
;en notación prefija:
(define punto5 (* pi (expt radio 2)))
;Punto 11: nos piden hallar el volumen de una esfera conociendo el radio
;para esto, se usa la función: (4/3) * pi * (radio * radio * radio)
;Luego de tener la función, la nombramos y la escribimos en prefija:
(define punto11 (* (/ 4 3) pi (expt radio 2)))
;Para hacer funcionar este programa se debe insertar el radio
;y luego se escribe la función que desea que se ejecute
;Por ejemplo: Radio = 5
;si desea hallar la longitud del circulo con dicho radio,
;se ejecuta punto3, ya que es el identificador que le dimos a
;la funcón de longitud de un circulo.