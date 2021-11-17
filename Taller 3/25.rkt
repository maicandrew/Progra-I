;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |25|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define n (read))
(define diagonal (sqrt (* 3 (expt n 2))))
(define radio (/ diagonal 2))
(define punto25 (* (/ 4 3) pi (expt radio 3)))
punto25