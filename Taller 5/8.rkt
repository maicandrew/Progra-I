;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (sumatoria n)
  (if (= n 0)
      1
      (if (>= n 1)
          (/ (* n (+ n 1)) 2)
          (if (<= n -1)
              (/ (* -1 (* (* n -1) (+ (* n -1) 1))) 2)
              (display "")
          )
      )
  )
)
(sumatoria (begin
            (display "Inserte numero: ")
            (read)
          )
)