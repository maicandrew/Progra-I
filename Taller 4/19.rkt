;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |19|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (suma_digi_pro n)
  (cond ((and (>= n 0) (<= n 9))
         (begin
           (display "El promedio de la suma de los digitos es: ")
           n
         )
        )
        ((and (<= n 99) (> n 9))
           (begin
             (display "El promedio de la suma de los digitos es: ")
             (/ (+ (remainder n 10) (quotient n 10)) 2)
           )
        )
        ((and (<= n 999) (> n 99))
         (begin
           (display "El promedio de la suma de los digitos es: ")
           (/ (+ (quotient n 100) (quotient (remainder n 100) 10) (remainder (remainder n 100) 10)) 3)
         )
        )
        (else (display "Solo funciona para numeros positivos menores que 1000"))
  )
)
(suma_digi_pro (begin
                 (display "Inserte un numero positivo menor que 1000: ")
                 (read)
               )
)