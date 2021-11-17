(require (lib "graphics.ss" "graphics"))
(open-graphics)


(define start (open-viewport "Menu" 466 642))
(play-sound "Mega.mp3" #t)

;Teclado
(define (nave posx posy lad ventana img)
 (if(equal? lad 'u)
     ((draw-pixmap ventana) img (make-posn posx posy))
     (if (equal? lad 'd)
         ((draw-pixmap ventana) img (make-posn posx posy))

  (if (equal? lad 'l)
    
    ((draw-pixmap ventana) img (make-posn posx posy))

    (if(equal? lad 'r)
    ((draw-pixmap ventana) img (make-posn posx posy))

;else}
   (void)
    
     )
   )
  )
 )
)
  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; FUNCIÓN PRINCIPAL ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (teclado posx posy press ventana img ll lvl)
  (if (< lvl 3)
  (if (< ll (cond ((= lvl 1) 3) ((= lvl 2) 5) (else 1)))
  
  (if (equal? press 'up)
              (begin
                (vector-set! (vector-ref matriz (/ (- posy 35) 35)) (/ posx 35) 9)
                (limpiar posx posy ventana lvl)
                (nave posx (- posy 35) 'u ventana img)
              )
      
      (if (equal? press 'down)
              (begin
                (vector-set! (vector-ref matriz (/ (+ posy 35) 35)) (/ posx 35) 9)
                (limpiar posx posy ventana lvl)
                (nave posx (+ posy 35) 'd ventana img)
              )
          
          (if (equal? press 'left)
                      (begin
                        (vector-set! (vector-ref matriz (/ posy 35)) (/ (- posx 35) 35) 9)
                        (limpiar posx posy ventana lvl)
                        (nave (- posx 35) posy 'l ventana img)
                      )
          
              
              (if (equal? press 'right)
                        (begin
                          (vector-set! (vector-ref matriz (/ posy 35)) (/ (+ posx 35) 35) 9)
                          (limpiar posx posy ventana lvl)
                          (nave (+ posx 35) posy 'r ventana img)
                        )
                  
                  )
              )
          )
      )
      (begin
        (vector-set! linea9 14 7)
        ((draw-pixmap ventana) "Door.png" (make-posn (* 14 35) (* 9 35)))
        (teclado posx posy press ventana img 0 lvl)
      )
    )
    ((draw-pixmap ventana) "Win.png" (make-posn 92 163))
  )
)

;;;;;;;;;; Función de abrir puerta ;;;;;;;;;;

(define (puerta ventana)
  (begin
    ((draw-pixmap ventana) "Door.png" (make-posn (* 35 14) (* 35 9)))
    (sleep 0.2)
    ((draw-pixmap ventana) "Door2.png" (make-posn (* 35 14) (* 35 9)))
    (sleep 0.2)
    ((draw-pixmap ventana) "Door3.png" (make-posn (* 35 14) (* 35 9)))
    (sleep 0.2)
    ((draw-pixmap ventana) "Door4.png" (make-posn (* 35 14) (* 35 9)))
    (sleep 0.2)
  )
)
;;;;;;;;;;;;;;;;;; DIBUJAR NUEVO NIVEL ;;;;;;;;;;;;;;;;;;

(define (new-lvl ventana posx posy lvl vid)
  (begin
    (vector-set! (vector-ref matriz (/ posy 35)) (/ posx 35) 0)
    (vector-set! linea1 1 9)
    (vector-set! linea4 13 5)
    (vector-set! linea5 7 5)
    (vector-set! linea9 4 5)
    (vector-set! linea9 1 5)
    (vector-set! linea9 14 1)
    (vector-set! linea4 5 5)
    (dibujar 0 0 ventana (+ lvl 1) vid)
  ))




;Función que limpia movivmiento

(define (limpiar x y ventana lvl)
  (begin
  ((draw-pixmap ventana) (cond ((= lvl 1) "Grass.png") ((= lvl 2) "lava.png") (else "Black.png")) (make-posn x y))
  (vector-set! (vector-ref matriz (/ y 35)) (/ x 35) 0)
))

;Puntaje

(define (score jg ventana)
  (if (>= t 0)
      (begin
        ((draw-string ventana) (make-posn 400 20) (number->string pt))
        (sleep 1)
        ((draw-solid-rectangle ventana) (make-posn 400 5) 25 20 "white")
        (score (- pt 20) (- t 1) ventana)
      )
      (begin
        ((draw-pixmap ventana) "Vikingo.png" (make-posn 0 0))
        (if (get-mouse-click ventana)
        (close-viewport ventana))
      )
  )
)

;Vidas

(define images (vector "Life1.png" "Life2.png" "Life3.png" "Life4.png" "Life5.png"))
;Matriz

(define linea0 (make-vector 15 1))
(define linea1 (make-vector 15))
(define linea2 (make-vector 15))
(define linea3 (make-vector 15))
(define linea4 (make-vector 15))
(define linea5 (make-vector 15))
(define linea6 (make-vector 15))
(define linea7 (make-vector 15))
(define linea8 (make-vector 15))
(define linea9 (make-vector 15))
(define linea10 (make-vector 15 1))

(vector-set! linea1 0 1)
(vector-set! linea1 1 9)
(vector-set! linea1 14 1)

(vector-set! linea2 0 1)
(vector-set! linea2 1 1)
(vector-set! linea2 2 1)
(vector-set! linea2 4 1)
(vector-set! linea2 6 1)
(vector-set! linea2 8 1)
(vector-set! linea2 10 1)
(vector-set! linea2 12 1)
(vector-set! linea2 14 1)

(vector-set! linea3 0 1)
(vector-set! linea3 14 1)

(vector-set! linea4 0 1)
(vector-set! linea4 2 1)
(vector-set! linea4 4 1)
(vector-set! linea4 6 1)
(vector-set! linea4 8 1)
(vector-set! linea4 10 1)
(vector-set! linea4 12 1)
(vector-set! linea4 13 5)
(vector-set! linea4 14 1)

(vector-set! linea5 0 1)
(vector-set! linea5 6 1)
(vector-set! linea5 7 5)
(vector-set! linea5 8 1)
(vector-set! linea5 14 1)

(vector-set! linea6 0 1)
(vector-set! linea6 2 1)
(vector-set! linea6 4 1)
(vector-set! linea6 6 1)
(vector-set! linea6 7 1)
(vector-set! linea6 8 1)
(vector-set! linea6 10 1)
(vector-set! linea6 12 1)
(vector-set! linea6 14 1)

(vector-set! linea7 0 1)
(vector-set! linea7 14 1)

(vector-set! linea8 0 1)
(vector-set! linea8 3 1)
(vector-set! linea8 2 1)
(vector-set! linea8 4 1)
(vector-set! linea8 6 1)
(vector-set! linea8 8 1)
(vector-set! linea8 10 1)
(vector-set! linea8 12 1)
(vector-set! linea8 14 1)

(vector-set! linea9 0 1)
(vector-set! linea9 2 1)
(vector-set! linea9 4 5)
(vector-set! linea9 14 1)

(define matriz (vector
linea0
linea1
linea2
linea3
linea4
linea5
linea6
linea7
linea8
linea9
linea10))


(define (dibujar pos vec ventana lvl vid)
  (if (<= vec 10)
      (if (<= pos 14)
          (if (= (vector-ref (vector-ref matriz vec) pos) 0)
              (begin
                ((draw-pixmap ventana) (cond ((= lvl 1) "Grass.png") ((= lvl 2) "lava.png") (else "Black.png")) (make-posn (* pos 35) (* vec 35)))
                (dibujar (+ pos 1) vec ventana lvl vid)
              )
              (if (= (vector-ref (vector-ref matriz vec) pos) 1)
              (begin
                ((draw-pixmap ventana) (cond ((= lvl 1) "Brick.png") ((= lvl 2) "Brick.png") (else "Black.png")) (make-posn (* pos 35) (* vec 35)))
                (dibujar (+ pos 1) vec ventana lvl vid)
              )
              (if (= (vector-ref (vector-ref matriz vec) pos) 2)
              (begin
                ((draw-pixmap ventana) (cond ((= lvl 1) "Vikingo.png") ((= lvl 2) "Vikingo2.png") (else "Black.png")) (make-posn (* pos 35) (* vec 35)))
                (dibujar (+ pos 1) vec ventana lvl vid)
              )
              (if (= (vector-ref (vector-ref matriz vec) pos) 3)
              (begin
                ((draw-pixmap ventana) (cond ((= lvl 1) "Sparta.png") ((= lvl 2) "Sparta2.png") (else "Black.png")) (make-posn (* pos 35) (* vec 35)))
                (dibujar (+ pos 1) vec ventana lvl vid)
              )
              (if (= (vector-ref (vector-ref matriz vec) pos) 4)
              (begin
                ((draw-pixmap ventana) (cond ((= lvl 1) "Padre.png") ((= lvl 2) "Padre2.png") (else "Black.png")) (make-posn (* pos 35) (* vec 35)))
                (dibujar (+ pos 1) vec ventana lvl vid)
              )
              (if (= (vector-ref (vector-ref matriz vec) pos) 5)
              (begin
                ((draw-pixmap ventana) (cond ((= lvl 1) "Llaves.png") ((= lvl 2) "Llaves2.png") (else "Black.png")) (make-posn (* pos 35) (* vec 35)))
                (dibujar (+ pos 1) vec ventana lvl vid)
              )
              (if (= (vector-ref (vector-ref matriz vec) pos) 9)
                  (begin
                    ((draw-pixmap ventana) (cond ((= lvl 1) "Maxell.png") ((= lvl 2) "Maxell2.png") (else "Black.png")) (make-posn (* pos 35) (* vec 35)))
                    (dibujar (+ pos 1) vec ventana lvl vid)
                  )
              )))))))
            (dibujar 0 (+ vec 1) ventana lvl vid)
      )
      (movip 35 105 35 (* 7 35) 35 35 (cond ((= lvl 1) 0.1) ((= lvl 2) 0.05) (else 0)) ventana lvl 0 (cond ((= lvl 1) "Maxell.png") ((= lvl 2) "Maxell2.png") (else "Maxell2.png")) vid)
    )
)

(define (movdp posx1 posy1 posx2 posy2 posx posy t ventana lvl ll img vid)
  (if (> vid 0)
  (if (not (or (and (equal? posx1 posx) (equal? posy1 posy)) (and (equal? posx2 posx) (equal? posy2 posy))))
  (if (< posx1 (* 13 35))
      (begin
        ((draw-pixmap ventana) (cond ((= lvl 1) "Vikingo.png") ((= lvl 2) "Sparta2.png") (else "Black.png")) (make-posn posx1 posy1))
        ((draw-pixmap ventana) (cond ((= lvl 1) "Sparta.png") ((= lvl 2) "Vikingo2.png") (else "Black.png")) (make-posn posx2 posy2))
        (vector-set! (vector-ref matriz (/ posy1 35)) (/ posx1 35) 2)
        (vector-set! (vector-ref matriz (/ posy2 35)) (/ posx2 35) 2)
        (sleep t)
        (let ([tec (ready-key-press ventana)])
          (if (equal? tec #f)
              (begin
                (limpiar posx1 posy1 ventana lvl)
                (limpiar posx2 posy2 ventana lvl)
                (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 posx posy t ventana lvl ll img vid)
              )
              (if (equal? (key-value tec) 'up)
                  (if (= (vector-ref (vector-ref matriz (/ (- posy 35) 35)) (/ posx 35)) 1)
                      (begin
                        (limpiar posx2 posy2 ventana lvl)
                        (limpiar posx1 posy1 ventana lvl)
                        (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 posx posy t ventana lvl ll img vid)
                      )
                      (if (= (vector-ref (vector-ref matriz (/ (- posy 35) 35)) (/ posx 35)) 5)
                          (begin
                            (play-sound "Llaves.mp3" #t)
                            (teclado posx posy (key-value tec) ventana img ll lvl)
                            (limpiar posx1 posy1 ventana lvl)
                            (limpiar posx2 posy2 ventana lvl)
                            (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 posx (- posy 35) t ventana lvl (+ ll 1) img vid)
                          )
                          (begin
                            (teclado posx posy (key-value tec) ventana img ll lvl)
                            (limpiar posx1 posy1 ventana lvl)
                            (limpiar posx2 posy2 ventana lvl)
                            (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 posx (- posy 35) t ventana lvl ll img vid)
                          )
                      )
                  )
                  (if (equal? (key-value tec) 'down)
                      (if (= (vector-ref (vector-ref matriz (/ (+ posy 35) 35)) (/ posx 35)) 1)
                          (begin
                            (limpiar posx2 posy2 ventana lvl)
                            (limpiar posx1 posy1 ventana lvl)
                            (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 posx posy t ventana lvl ll img vid)
                          )
                          (if (= (vector-ref (vector-ref matriz (/ (+ posy 35) 35)) (/ posx 35)) 5)
                              (begin
                                (play-sound "Llaves.mp3" #t)
                                (teclado posx posy (key-value tec) ventana img ll lvl)
                                (limpiar posx1 posy1 ventana lvl)
                                (limpiar posx2 posy2 ventana lvl)
                                (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 posx (+ posy 35) t ventana lvl (+ ll 1) img vid)
                              )
                              (begin
                                (teclado posx posy (key-value tec) ventana img ll lvl)
                                (limpiar posx1 posy1 ventana lvl)
                                (limpiar posx2 posy2 ventana lvl)
                                (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 posx (+ posy 35) t ventana lvl ll img vid)
                              )
                          )
                      )
                      (if (equal? (key-value tec) 'left)
                          (if (= (vector-ref (vector-ref matriz (/ posy 35)) (/ (- posx 35) 35)) 1)
                              (begin
                                (limpiar posx2 posy2 ventana lvl)
                                (limpiar posx1 posy1 ventana lvl)
                                (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 posx posy t ventana lvl ll img vid)
                              )
                              (if (= (vector-ref (vector-ref matriz (/ posy 35)) (/ (- posx 35) 35)) 5)
                                  (begin
                                    (play-sound "Llaves.mp3" #t)
                                    (teclado posx posy (key-value tec) ventana img ll lvl)
                                    (limpiar posx1 posy1 ventana lvl)
                                    (limpiar posx2 posy2 ventana lvl)
                                    (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 (- posx 35) posy t ventana lvl (+ ll 1) img vid)
                                  )
                                  (begin
                                    (teclado posx posy (key-value tec) ventana img ll lvl)
                                    (limpiar posx1 posy1 ventana lvl)
                                    (limpiar posx2 posy2 ventana lvl)
                                    (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 (- posx 35) posy t ventana lvl ll img vid)
                                  )
                              )
                          )
                          (if (equal? (key-value tec) 'right)
                              (if (= (vector-ref (vector-ref matriz (/ posy 35)) (/ (+ posx 35) 35)) 1)
                                  (begin
                                    (limpiar posx1 posy1 ventana lvl)
                                    (limpiar posx2 posy2 ventana lvl)
                                    (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 posx posy t ventana lvl ll img vid)
                                  )
                                  (if (= (vector-ref (vector-ref matriz (/ posy 35)) (/ (+ posx 35) 35)) 5)
                                      (begin
                                        (play-sound "Llaves.mp3" #t)
                                        (teclado posx posy (key-value tec) ventana img ll lvl)
                                        (limpiar posx1 posy1 ventana lvl)
                                        (limpiar posx2 posy2 ventana lvl)
                                        (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 (+ posx 35) posy t ventana lvl (+ ll 1) img vid)
                                      )
                                      (if (= (vector-ref (vector-ref matriz (/ posy 35)) (/ (+ posx 35) 35)) 7)
                                      (begin
                                        (puerta ventana)
                                        (limpiar posx2 posy2 ventana lvl)
                                        (limpiar posx1 posy1 ventana lvl)
                                        (limpiar posx posy ventana lvl)
                                        (new-lvl ventana posx posy lvl vid)
                                      )
                                      (begin
                                        (teclado posx posy (key-value tec) ventana img ll lvl)
                                        (limpiar posx1 posy1 ventana lvl)
                                        (limpiar posx2 posy2 ventana lvl)
                                        (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 (+ posx 35) posy t ventana lvl ll img vid)
                                      ))
                                  )
                              )
                              (if (equal? (key-value tec) #\x)
                                  (close-viewport ventana)
                                  (begin
                                    (limpiar posx2 posy2 ventana lvl)
                                    (limpiar posx1 posy1 ventana lvl)
                                    (movdp (+ posx1 35) posy1 (+ posx2 35) posy2 posx posy t ventana lvl ll img vid)
                                  )
                              )
                          )
                      )
                  )
              )
          )
      )
    )
      (movip posx1 posy1 posx2 posy2 posx posy t ventana lvl ll img vid)
  )
  (begin
    (limpiar posx posy ventana lvl)
    (limpiar posx1 posy1 ventana lvl)
    (limpiar posx2 posy2 ventana lvl)
    ((draw-solid-rectangle ventana) (make-posn 0 0) 800 800 "black")
    ((draw-pixmap ventana) (vector-ref images (- vid 2)) (make-posn 125 152))
    (sleep 5)
    (cond ((= lvl 1)
           (begin
             (vector-set! (vector-ref matriz (/ posy 35)) (/ posx 35) 0)
             (vector-set! linea1 1 9)
             (vector-set! linea4 13 5)
             (vector-set! linea5 7 5)
             (vector-set! linea9 4 5)
             (vector-set! linea9 14 1)))
          ((= lvl 2)
           (begin
             (vector-set! (vector-ref matriz (/ posy 35)) (/ posx 35) 0)
             (vector-set! linea1 1 9)
             (vector-set! linea4 13 5)
             (vector-set! linea5 7 5)
             (vector-set! linea9 4 5)
             (vector-set! linea9 1 5)
             (vector-set! linea9 14 1)
             (vector-set! linea4 5 5)))
          (else (void)))
    (dibujar 0 0 ventana lvl (- vid 1))
  )
  )
  (begin
    ((draw-solid-rectangle ventana) (make-posn 0 0) 700 700 "black")
    (((draw-pixmap-posn "Over.png") ventana) (make-posn 62 162))
  )
  )
)


(define (movip posx1 posy1 posx2 posy2 posx posy t ventana lvl ll img vid)
  (if (> vid 0)
  (if (not (or (and (equal? posx1 posx) (equal? posy1 posy)) (and (equal? posx2 posx) (equal? posy2 posy))))
  (if (> posx1 35)
      (begin
        ((draw-pixmap ventana) (cond ((= lvl 1) "Vikingo.png") ((= lvl 2) "Sparta2.png") (else "Black.png")) (make-posn posx1 posy1))
        ((draw-pixmap ventana) (cond ((= lvl 1) "Sparta.png") ((= lvl 2) "Vikingo2.png") (else "Black.png")) (make-posn posx2 posy2))
        (vector-set! (vector-ref matriz (/ posy1 35)) (/ posx1 35) 2)
        (vector-set! (vector-ref matriz (/ posy2 35)) (/ posx2 35) 2)
        (sleep t)
        (let ([tec (ready-key-press ventana)])
          (if (equal? tec #f)
              (begin
                (limpiar posx1 posy1 ventana lvl)
                (limpiar posx2 posy2 ventana lvl)
                (movip (- posx1 35) posy1 (- posx2 35) posy2 posx posy t ventana lvl ll img vid)
              )
              (if (equal? (key-value tec) 'up)
                  (if (= (vector-ref (vector-ref matriz (/ (- posy 35) 35)) (/ posx 35)) 1)
                      (begin
                        (limpiar posx2 posy2 ventana lvl)
                        (limpiar posx1 posy1 ventana lvl)
                        (movip (- posx1 35) posy1 (- posx2 35) posy2 posx posy t ventana lvl ll img vid)
                      )
                      (if (= (vector-ref (vector-ref matriz (/ (- posy 35) 35)) (/ posx 35)) 5)
                          (begin
                            (play-sound "Llaves.mp3" #t)
                            (teclado posx posy (key-value tec) ventana img ll lvl)
                            (limpiar posx1 posy1 ventana lvl)
                            (limpiar posx2 posy2 ventana lvl)
                            (movip (- posx1 35) posy1 (- posx2 35) posy2 posx (- posy 35) t ventana lvl (+ ll 1) img vid)
                          )
                          (begin
                            (teclado posx posy (key-value tec) ventana img ll lvl)
                            (limpiar posx1 posy1 ventana lvl)
                            (limpiar posx2 posy2 ventana lvl)
                            (movip (- posx1 35) posy1 (- posx2 35) posy2 posx (- posy 35) t ventana lvl ll img vid)
                          )
                      )
                  )
                  (if (equal? (key-value tec) 'down)
                      (if (= (vector-ref (vector-ref matriz (/ (+ posy 35) 35)) (/ posx 35)) 1)
                          (begin
                            (limpiar posx2 posy2 ventana lvl)
                            (limpiar posx1 posy1 ventana lvl)
                            (movip (- posx1 35) posy1 (- posx2 35) posy2 posx posy t ventana lvl ll img vid)
                          )
                          (if (= (vector-ref (vector-ref matriz (/ (+ posy 35) 35)) (/ posx 35)) 5)
                              (begin
                                (play-sound "Llaves.mp3" #t)
                                (teclado posx posy (key-value tec) ventana img ll lvl)
                                (limpiar posx1 posy1 ventana lvl)
                                (limpiar posx2 posy2 ventana lvl)
                                (movip (- posx1 35) posy1 (- posx2 35) posy2 posx (+ posy 35) t ventana lvl (+ ll 1) img vid)
                              )
                              (begin
                                (teclado posx posy (key-value tec) ventana img ll lvl)
                                (limpiar posx1 posy1 ventana lvl)
                                (limpiar posx2 posy2 ventana lvl)
                                (movip (- posx1 35) posy1 (- posx2 35) posy2 posx (+ posy 35) t ventana lvl ll img vid)
                              )
                          )
                      )
                      (if (equal? (key-value tec) 'left)
                          (if (= (vector-ref (vector-ref matriz (/ posy 35)) (/ (- posx 35) 35)) 1)
                              (begin
                                (limpiar posx1 posy1 ventana lvl)
                                (movip (- posx1 35) posy1 (- posx2 35) posy2 posx posy t ventana lvl ll img vid)
                              )
                              (if (= (vector-ref (vector-ref matriz (/ posy 35)) (/ (- posx 35) 35)) 5)
                                  (begin
                                    (play-sound "Llaves.mp3" #t)
                                    (teclado posx posy (key-value tec) ventana img ll lvl)
                                    (limpiar posx1 posy1 ventana lvl)
                                    (limpiar posx2 posy2 ventana lvl)
                                    (movip (- posx1 35) posy1 (- posx2 35) posy2 (- posx 35) posy t ventana lvl (+ ll 1) img vid)
                                  )
                                  (begin
                                    (teclado posx posy (key-value tec) ventana img ll lvl)
                                    (limpiar posx1 posy1 ventana lvl)
                                    (limpiar posx2 posy2 ventana lvl)
                                    (movip (- posx1 35) posy1 (- posx2 35) posy2 (- posx 35) posy t ventana lvl ll img vid)
                                  )
                              )
                          )
                          (if (equal? (key-value tec) 'right)
                              (if (= (vector-ref (vector-ref matriz (/ posy 35)) (/ (+ posx 35) 35)) 1)
                                  (begin
                                    (limpiar posx1 posy1 ventana lvl)
                                    (limpiar posx2 posy2 ventana lvl)
                                    (movip (- posx1 35) posy1 (- posx2 35) posy2 posx posy t ventana lvl ll img vid)
                                  )
                                  (if (= (vector-ref (vector-ref matriz (/ posy 35)) (/ (+ posx 35) 35)) 5)
                                      (begin
                                        (play-sound "Llaves.mp3" #t)
                                        (teclado posx posy (key-value tec) ventana img ll lvl)
                                        (limpiar posx1 posy1 ventana lvl)
                                        (limpiar posx2 posy2 ventana lvl)
                                        (movip (- posx1 35) posy1 (- posx2 35) posy2 (+ posx 35) posy t ventana lvl (+ ll 1) img vid)
                                      )
                                      (if (= (vector-ref (vector-ref matriz (/ posy 35)) (/ (+ posx 35) 35)) 7)
                                      (begin
                                        (puerta ventana)
                                        (limpiar posx2 posy2 ventana lvl)
                                        (limpiar posx1 posy1 ventana lvl)
                                        (limpiar posx posy ventana lvl)
                                        (new-lvl ventana posx posy lvl vid)
                                      )
                                      (begin
                                        (teclado posx posy (key-value tec) ventana img ll lvl)
                                        (limpiar posx1 posy1 ventana lvl)
                                        (limpiar posx2 posy2 ventana lvl)
                                        (movip (- posx1 35) posy1 (- posx2 35) posy2 (+ posx 35) posy t ventana lvl ll img vid)
                                      ))
                                  )
                              )
                              (if (equal? (key-value tec) #\x)
                                  (close-viewport ventana)
                                  (begin
                                    (limpiar posx1 posy1 ventana lvl)
                                    (limpiar posx2 posy2 ventana lvl)
                                    (movip (- posx1 35) posy1 (- posx2 35) posy2 posx posy t ventana lvl ll img vid)
                                  )
                              )
                          )
                      )
                  )
              )
          )
      )
      )
      (movdp posx1 posy1 posx2 posy2 posx posy t ventana lvl ll img vid)
  )
  (begin
    (limpiar posx posy ventana lvl)
    (limpiar posx1 posy1 ventana lvl)
    (limpiar posx2 posy2 ventana lvl)
    (vector-set! linea1 1 9)
    ((draw-solid-rectangle ventana) (make-posn 0 0) 800 800 "black")
    ((draw-pixmap ventana) (vector-ref images (- vid 2)) (make-posn 125 152))
    (sleep 5)
    (cond ((= lvl 1)
           (begin
             (vector-set! (vector-ref matriz (/ posy 35)) (/ posx 35) 0)
             (vector-set! linea1 1 9)
             (vector-set! linea4 13 5)
             (vector-set! linea5 7 5)
             (vector-set! linea9 4 5)
             (vector-set! linea9 14 1)))
          ((= lvl 2)
           (begin
             (vector-set! (vector-ref matriz (/ posy 35)) (/ posx 35) 0)
             (vector-set! linea1 1 9)
             (vector-set! linea4 13 5)
             (vector-set! linea5 7 5)
             (vector-set! linea9 4 5)
             (vector-set! linea9 1 5)
             (vector-set! linea9 14 1)
             (vector-set! linea4 5 5)))
          (else (void)))
    (dibujar 0 0 ventana lvl (- vid 1))
  )
  )
  (begin
    ((draw-solid-rectangle ventana) (make-posn 0 0) 700 700 "black")
    (((draw-pixmap-posn "Over.png") ventana) (make-posn 62 162))
  )
  )
)

;Menú

(define (menu n inicio)
  ((draw-pixmap inicio) "tal vez.png" (make-posn 0 0))
  (get-mouse-click inicio)
  (define x (posn-x (query-mouse-posn inicio)))
  (define y (posn-y (query-mouse-posn inicio)))
      (if
       (and
        (>= x 140)
        (<= x 315)
        (>= y 250)            ;Inicia el juego
        (<= y 315))
       (begin
         (close-viewport inicio)
         (let ([jugar (open-viewport "Jugar" 525 385)])
            (dibujar 0 0 jugar 1 5)
         )
       )
       (if
       (and
        (>= x 145)
        (<= x 310)
        (>= y 330)            ;Muestra la ayuda
        (<= y 390))
       (begin
         (close-viewport inicio)
         (let ([ayuda (open-viewport "Ayuda" 751 400)])
         ((draw-pixmap ayuda) "Instrucciones.png" (make-posn 0 0))
           (if (get-mouse-click ayuda)
               (begin
                 ((draw-solid-rectangle ayuda) (make-posn 0 0) 800 800 "black")
                 ((draw-pixmap ayuda) "Moves.png" (make-posn 0 40))
                 (if (get-mouse-click ayuda)
                     (begin
                       (close-viewport ayuda)
                       (let ([w (open-viewport "Menu" 466 642)])
                         (menu n w))
           )
         )
       ))))
       (if
       (and
        (>= x 105)
        (<= x 350)
        (>= y 400)            ;Créditos
        (<= y 460))
        (begin
         (close-viewport inicio)
         (let ([creditos (open-viewport "Credits" 700 461)])
           (begin
             ((draw-solid-rectangle creditos) (make-posn 0 0) 800 800 "black")
             ((draw-pixmap creditos) "Creditos.png" (make-posn 0 160))
           )
           (if (get-mouse-click creditos)
               (begin
               ((draw-pixmap creditos) "Creditos1.png" (make-posn 0 0))
               (if (get-mouse-click creditos)
                   (begin
                     (close-viewport creditos)
                     (let ([w (open-viewport "Menu" 466 642)])
                       (menu n w))
           )
         )
       ))))
       (if
        (and
         (>= x 158)
         (<= x 297)
         (>= y 466)            ;Salir
         (<= y 528)
        )
        (close-viewport inicio)
        (menu n inicio)
        )
       ))))
(menu 3 start)








