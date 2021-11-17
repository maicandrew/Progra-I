;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 12-13) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define ladob (read))
(define h (read))
(define areab (expt ladob 2))
(define punto12 (/ (* areab h) 3))
(define perb (* 4 ladob))
(define hl (sqrt (+ (expt (/ ladob 2) 2) (expt h 2))))
(define areal (/ (* perb hl) 2))
(define punto13 (+ areab areal))