(defpackage :difference-of-squares
  (:use :cl)
  (:export :sum-of-squares
           :square-of-sum
           :difference))

(in-package :difference-of-squares)
(defun list-to-n (n) 
  "Makes a list of integers from 1 to n inclusive"
  (loop :for n :below n :collect (+ n 1))
)

(defun square-of-sum (n)
  "Calculates the square of the sum for a given number."
  (* (reduce '+ (list-to-n n)) (reduce '+ (list-to-n n)))
  )

(defun sum-of-squares (n)
  "Calculates the sum of squares for a given number."
  (reduce '+ (map 'list (lambda (it) (* it it)) (list-to-n n)))
  )

(defun difference (n)
  "Finds the diff. between the square of the sum and the sum of the squares."
  (- (square-of-sum n) (sum-of-squares n))
)
