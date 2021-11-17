;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Lineas ahorcado|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "htdp")) #f)))
(define wea1 (line 0 30 'black))
(define wea2 (add-line wea1 0 0 100 0 'black))
(define wea3 (add-line wea2 100 0 100 120 'black))
(add-line wea3 70 120 130 120 'black)