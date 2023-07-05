;; first variable
(let ((str "Hello, world!")) (string-upcase str))
;; we can define multiple variavles for example
(let ((x 1) (y 5)) (+ x y))

;; A variable whose initial value depends on previous variable in the same form
;; use the `let*` keyword as you can see below y is defined from the value of x
(let* ((x 1) (y (+ x 1))) y) ;; -> 2

;; Dynamic variables are sort of like globals but are dynamically scoped...
;; the way to define them is:

(defparameter *string* "I'm global")

(defun print-variable () 
  (print *string*)
)

;; by dynamic scope what we mean is that the variable can be set to a different
;; value within a specific closure

(print-variable) ;; will print out "I'm global"

(let ((*string* "I have dynamic extent"))
  (print-variable) ;; Will print out "I have dynamic extent" 
)
;; After the above expression is ran the old value is restored
