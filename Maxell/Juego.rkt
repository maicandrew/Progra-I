;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Juego) (read-case-sensitive #t) (teachpacks ((lib "graphing.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "graphing.rkt" "teachpack" "htdp")) #f)))
(require(lib "graphics.ss" "graphics")) (open-graphics)
(define ventana (open-viewport "ventana" 800 500))


(define (nave posx posy lad)
 (if(equal? lad 'u)
    ((draw-pixmap ventana) "C:/Users/Sebastian Agudelo/Desktop/eskeloto.png" (make-posn posx posy))
     (if (equal? lad 'd)
         ((draw-pixmap ventana) "C:/Users/Sebastian Agudelo/Desktop/eskeloto.png" (make-posn posx posy))

  (if (equal? lad 'l)
    
    ((draw-pixmap ventana) "C:/Users/Sebastian Agudelo/Desktop/eskeloto.png" (make-posn posx posy))

    (if(equal? lad 'r)
    ((draw-pixmap ventana) "C:/Users/Sebastian Agudelo/Desktop/eskeloto.png" (make-posn posx posy))

;else}
   (void)
    
     )
   )
  )
 )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (teclado posx posy press)

 (if (equal? press 'up)
  (begin
    (nave posx posy 'u)
     (teclado posx (- posy 10) (key-value (get-key-press ventana)) ))
  


  (if (equal? press 'down)
  (begin
    (nave posx posy 'd)
     (teclado posx(+ posy 10)(key-value (get-key-press ventana)) ))

  (if (equal? press 'left)
  (begin
    (nave posx posy 'l)
     (teclado(- posx 10) posy (key-value (get-key-press ventana)) ))


  (if (equal? press 'right)
   (begin
     (nave posx posy 'r)
     (teclado (+ posx 10) posy (key-value (get-key-press ventana)) ))

  ;else
  (teclado  posx posy (key-value (get-key-press ventana)) )
  
  )
  )
  ) 
 )
)





;Prueba
(teclado 50 100 10)
