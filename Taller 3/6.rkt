;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Taller 3: Punto 6
;Para el taller se debe hallar el area de un anillo
;El area de un anillo se halla tomando la diferencia
;de las areas de los circulos que lo conforma,
;es decir, hallar el area del circulo mayor y del menor
;y al area del mayor, restarle el area del circulo menor

;Definimos el radio interior como radioin y el exterior como radio ex
;ya que necesitamos saber el radio para conocer el area del circulo
(define radioin (read))
(define radioex (read))
;Una vez definidos los radios interior y exterior, respectivamente
;definimos el area de cada circulo:
(define areain (* pi (expt radioin 2)))
(define areaex (* pi (expt radioex 2)))
;Ahora definimos la funcion de restar las areas y ya podemos
;hallar el area de nuestro anillo
(define punto6 (- areaex areain))
punto6