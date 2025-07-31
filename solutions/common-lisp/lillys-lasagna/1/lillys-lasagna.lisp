(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

;; Define function expected-time-in-oven
(defun expected-time-in-oven () 
  "Returns the expected time in oven"
  '337
)
;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (actual) 
  "Calculates how much longer the lasagna needs to cook based on actual time provided"
  (- (expected-time-in-oven) actual)
)
;; Define function preparation-time-in-minutes
(defun preparation-time-in-minutes (layers) 
  "Returns preparation time based on the number of lasagna layers"
  (* layers 19)
)
;; Define function elapsed-time-in-minutes
(defun elapsed-time-in-minutes (layers minutes)
  "Returns the total amount of time spent on cooking the lasagna"
  (+
    (preparation-time-in-minutes layers) minutes
  )
)