;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HW5 blocks world + painting (stub)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain hw5)
  (:requirements :strips)

  (:constants red green blue)

  (:predicates (on ?x ?y)            ; object ?x is on object ?y
	       (on-table ?x)         ; object ?x is on the table
	       (clear ?x)            ; nothing is on object ?x
	       (arm-empty)           ; the robot arm is holding nothing
	       (holding ?x)          ; the robot arm is holding object ?x
	       (color ?x ?color)     ; object ?x has color ?color
	       (block ?x)            ; object ?x is a block
	       (sprayer ?x ?color)   ; object ?x is a sprayer with color ?color
	       (paint-can ?x ?color) ; object ?x is a paint can with color ?color
	       (brush ?x)            ; object ?x is a brush
	       (water-bucket ?x)     ; object ?x is a water bucket
	       (clean ?b)            ; brush ?b is clean
	       (loaded ?b ?color)    ; brush ?b is loaded with paint of color ?color
     )

  (:action pick-up
	     :parameters (?ob1)
	     :precondition (and (clear ?ob1) (on-table ?ob1) (arm-empty))
	     :effect
	     (and (not (on-table ?ob1))
		   (not (clear ?ob1))
		   (not (arm-empty))
		   (holding ?ob1)))

  (:action put-down
	     :parameters (?ob)
	     :precondition (holding ?ob)
	     :effect
	     (and (not (holding ?ob))
		   (clear ?ob)
		   (arm-empty)
		   (on-table ?ob)))
  (:action stack
	     :parameters (?sob ?sunderob)
	     :precondition (and (holding ?sob) (clear ?sunderob))
	     :effect
	     (and (not (holding ?sob))
		   (not (clear ?sunderob))
		   (clear ?sob)
		   (arm-empty)
		   (on ?sob ?sunderob)))
  (:action unstack
	     :parameters (?sob ?sunderob)
	     :precondition (and (on ?sob ?sunderob) (clear ?sob) (arm-empty))
	     :effect
	     (and (holding ?sob)
		   (clear ?sunderob)
		   (not (clear ?sob))
		   (not (arm-empty))
		   (not (on ?sob ?sunderob))))

  (:action spray-paint
	     :parameters (?obj ?sprayer ?color)
	     :precondition (and (< 1 0))  ; REPLACE (< 1 0) WITH ONE OR MORE CONDITIONS
	     :effect (color ?obj ?color))

  (:action brush-paint
	     :parameters (?obj ?brush ?color)
	     :precondition (and (< 1 0))  ; REPLACE (< 1 0) WITH ONE OR MORE CONDITIONS
	     :effect (color ?obj ?color))

  (:action wash-brush
     :parameters (?brush ?waterbucket ?color)
     :precondition (and (< 1 0))       ; REPLACE (< 1 0) WITH ONE OR MORE CONDITIONS
     :effect (and (not (loaded ?brush ?color))
     	     	  (clean ?brush)))

  (:action load-brush
     :parameters (?brush ?can ?color)
     :precondition (and (< 1 0))      ; REPLACE (< 1 0) WITH ONE OR MORE CONDITIONS
     :effect (and (loaded ?brush ?color)
     	          (not (clean ?brush))))

)
