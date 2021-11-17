;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Seno) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (factorial num cont acum)
  (if (<= cont num)  
      (factorial num (+ cont 1)(* acum cont))
      acum       
  )
)


(define (mifactor num)
  (factorial num 1 1 )
)


(define (miseno x n sum)
    (if (>= n 0)
        (miseno x (- n 1) (+ sum 
                             (* (/ (expt -1 n)
                                   (mifactor (+ (* 2 n) 1))) 
                                (expt x (+ (* 2 n) 1))
                             )
                          )
         )
        (display sum)
        )
)

(define(seno x)
    (miseno x 4 0)   
) 
;llamado
(display "Seno (x) ")
(seno (read))