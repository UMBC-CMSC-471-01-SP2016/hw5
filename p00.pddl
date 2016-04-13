;; There is only one block, A, which is on the table.  A sprayer with
;; red paint is on the table.  Our goal is to have A be red and the
;; arm empty.

(define (problem 00)
  (:domain hw5)
  (:objects A B C)
  (:init (arm-empty)
         (block A)
	 (on-table A)
         (block B)
	 (on B A) 
         (block C)
	 (on C B)
	 (clear C))
  (:goal (and (on A B) (on B C))))



