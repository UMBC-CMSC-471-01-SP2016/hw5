;; Block A is on the table, block B on A and there is nothing on B.  A
;; water bucket, a brush, a A blue sprayer and a red paint can are on
;; the table and clear.  The goal is to for A to be colored red and B
;; blue and the brush be clean.

(define (problem 1)
  (:domain hw5)
  (:objects ... )
  (:init (arm-empty)
         ... block A is on the table ...
	 ... block B is on block A and there's nothing on B ...
         ... there is a blue sprayer on the table and nothing is on it ...
	 ... there is a red paint can on the table and noting is on it ...
	 ... there is a clean brush on the table and nothing is on it  ...
	 ... there is a water bucket on the table and nothing is on it ...
      )
  (:goal (and (arm-empty)
              ... A is red ...
              ... B is blue ...
              ... the brush is clean ...
           )))





