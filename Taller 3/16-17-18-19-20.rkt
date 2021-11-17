;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 16-17-18-19-20) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define longitud (read))
(define in_cm (* longitud 2.54))
(define cm_in (/ longitud 2.54))
(define ft_in (* longitud 12))
(define yd_ft (* longitud 3))
(define mi_yd (* longitud 1760))
(define mi_cm (* mi_yd yd_ft ft_in in_cm))