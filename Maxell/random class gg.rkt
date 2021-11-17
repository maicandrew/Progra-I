;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |random class gg|) (read-case-sensitive #t) (teachpacks ((lib "graphing.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "graphing.rkt" "teachpack" "htdp")) #f)))


(require (lib "graphics"))
(open-graphics)
; creamos una ventana
(define ventana (open-viewport "Ventana de Inico" 580 600))
;insertamos la imagen en la ventana en la posicion que queramos
((draw-pixmap ventana)"C:/Users/Sebastian Agudelo/Desktop/captura.png" (make-posn 0 0))
((draw-pixmap ventana)"C:/Users/Sebastian Agudelo/Desktop/asdasdasd.png" (make-posn 220 500))
((draw-pixmap ventana)"C:/Users/Sebastian Agudelo/Desktop/imagen1.png" (make-posn 220 290))
