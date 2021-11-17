;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Coseno) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (mifactor num cont acum)
  (if (>= num cont)
      (mifactor num (+ cont 1) (* cont acum))
      acum
  )
)

(define (factorial num)
  (mifactor num 1 1)
)

(define (micoseno x n sum)
  (if (>= n 0)
      (micoseno x (- n 1) (+ sum (* (/ (expt -1 n) (factorial (* 2 n))) (expt x (* 2 n)))))
      sum
  )
)

(define (coseno x)
  (micoseno x  0)
)


(coseno (begin
          (display "Inserte numero: ")
          (read)
        )
)