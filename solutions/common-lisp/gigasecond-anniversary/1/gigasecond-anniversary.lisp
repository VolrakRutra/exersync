(defpackage :gigasecond-anniversary
  (:use :cl)
  (:export :from))
(in-package :gigasecond-anniversary)

(defun from (year month day hour minute second) 
  (multiple-value-bind (s m h d mo y) 
    (decode-universal-time 
      (+ 
        (encode-universal-time second minute hour day month year) 1000000000
      )
    )
    (list y mo d h m s)
  )
)
