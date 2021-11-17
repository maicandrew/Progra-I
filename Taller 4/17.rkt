;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |17|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (sum_dig n)
  (cond ((and (>= n 10) (< n 100)) (begin
                                      (display "La suma de los digitos es: ")
                                      (+ (quotient n 10) (remainder n 10))
                                    )
        )
        ((and (< n 10) (>= n 0)) (begin
                                   (display "La suma de los digitos es: ")
                                    n
                                  )
        )
        (else (display "El numero debe ser positivo y menor que 100: "))
  )
)
(sum_dig (begin
           (display "Inserte un numero positivo menor que 100: ")
           (read)
         )
)