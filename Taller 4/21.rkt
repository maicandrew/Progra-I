;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |21|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (costo destino dias)
  (cond ((and (= destino 1) (= dias 2))
         (begin
           (display "El costo de su tiquete es: $")
           (* 135 2800)
         )
        )
        ((and (= destino 1) (= dias 1))
         (begin
           (display "El costo de su tiquete es: $")
           (+ (* 135 2800) (* 135 2800 0.05))
         )
        )
        ((and (= destino 1) (= dias 0))
         (begin
           (display "El costo de su tiquete es: $")
           (+ (* 135 2800) (* (+ (* 135 2800) (* 135 2800 0.05)) 0.08))
         )
        )
        ((and (= destino 2) (= dias 1))
         (begin
           (display "El costo de su tiquete es: $")
           395.000
         )
        )
        ((and (= destino 2) (= dias 2))
         (begin
           (display "El costo de su tiquete es: $")
           (- 395000 (* 395000 0.07))
         )
        )
        ((and (= destino 2) (= dias 0))
         (begin
           (display "El costo de su tiquete es: $")
           (* (+ (/ 395000 2800) (* (/ 395000 2800) 0.05)) 2800)
         )
        )
        (else (display "Destino o días faltantes inválidos"))
  )
)
(costo (begin
         (display "Destino 1: Bogotá")
         (newline)
         (display "Destino 2: San Andrés")
         (newline)
         (display "Seleccione su destino: ")
         (read)
       )
       (begin
         (display "Días faltantes para el vuelo: ")
         (read)
       )
)