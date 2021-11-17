(require (lib "graphics"))
(open-graphics)
(define juego(open-viewport "Baile" 700 415))
((draw-pixmap juego)"Casa de Heidy.png"(make-posn 0 0))
(if (get-mouse-click juego)
(begin 
(if
 (and
  (>=(posn-x (query-mouse-posn juego))30)
  (<= (posn-x(query-mouse-posn juego))150)
  (>= (posn-y(query-mouse-posn juego))30)            ;INICIO
  (<=(posn-y (query-mouse-posn juego))150))
 (begin
  (close-viewport juego)
  ((draw-pixmap (open-viewport "Wea" 1080 1080))"IMG_1571.jpg"(make-posn 0 0))
  ))))