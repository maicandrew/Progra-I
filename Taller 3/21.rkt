;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |21|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define bil_1000 (read))
(define bil_2000 (read))
(define bil_5000 (read))
(define bil_10000 (read))
(define bil_20000 (read))
(define bil_50000 (read))
(define cant_1000 (* bil_1000 1000))
(define cant_2000 (* bil_2000 2000))
(define cant_5000 (* bil_5000 5000))
(define cant_10000 (* bil_10000 10000))
(define cant_20000 (* bil_20000 20000))
(define cant_50000 (* bil_50000 50000))
(define punto21 (+ cant_1000 cant_2000 cant_5000 cant_10000 cant_20000 cant_50000))
punto21