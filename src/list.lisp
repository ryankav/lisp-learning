;; lists use the builtin `list` function
(list 1 2 3)
;; the key word from first to tenth are available for access
(first (list 1 2 3)) ;; -> 1

;; In place manipulation can be done with setf
(defparameter my-list (list 1 2 3))
(setf (second my-list) 7)

;; to index lists more generally there is the `nth` function
(nth 1 (list 1 2 3)) ;; -> 2
;; which works with the setf function (The below assumes you've ran the`
;; defparameter for mylist above)
(setf (nth 0 my-list) 65)

;; Hgher order functions
;;
;; Map - standard iterate over collection and apply given function to each
;;       to each element and appending the returned result into a new list

