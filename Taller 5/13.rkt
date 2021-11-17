;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |13|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (wea2 x y)
    (if (integer? (/ x y))
      (begin
        (display (/ x y))
        (wea2 x (- y 1))
        (display (- y 1))
      )
      (display "")
    )
)
(wea2 (read) (read))