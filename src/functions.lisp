(defun fib (n)
  "Return the nth Fibonacci number."
  (if (< n 2)
    n
    (+ (fib (- n 1)) (fib (- n 2)))
  )
)

;; functions can return multiple values i.e...
(defun many (n)
  (values n (* n 2) (* n 3))
)
;; (multiple-value-list (many 2)) -> (2, 4, 6)
;; (nth-value 1 (many 2)) -> (4)
;; (multiple-value-bind (first second third)
;;   (many 2)
;;   (list first second third)
;;  ) -> (2, 4, 6)
