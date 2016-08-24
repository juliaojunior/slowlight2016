(set! geometry-lattice (make lattice (size 3 (* 2 (+ 6 0.5)) no-size)))
(define-param r 0.2)
(define-param eps 11.97)
(define-param frac 0.5)

(set! geometry (list 

               
                (make cylinder (center 0 1) (radius (* 0.45 1)) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 0 1) (radius (* 0.45 frac)) (height infinity)  ;Furo no cilindro
                      (material air))
                (make cylinder (center 0 2) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 0 3) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 0 4) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 0 5) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 0 6) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))

                (make cylinder (center 1 1) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 1 1) (radius (* r frac)) (height infinity);	FURO NO DIELETRICO
                      (material air))
                (make cylinder (center 1 2) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 1 3) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 1 4) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 1 5) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 1 6) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))


                (make cylinder (center (- 0 1) 1) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center (- 0 1) 1) (radius (* r frac)) (height infinity);	FURO NO DIELETRICO
                      (material air))
                (make cylinder (center (- 0 1) 2) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center (- 0 1) 3) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center (- 0 1) 4) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center (- 0 1) 5) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center (- 0 1) 6) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))

                
                (make cylinder (center 0 (- 0 1)) (radius (* 0.45 1)) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 0 (- 0 1)) (radius (* 0.45 frac)) (height infinity); 	FURO NO DIELETRICO
                      (material air))
                (make cylinder (center 0 (- 0 2)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 0 (- 0 3)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 0 (- 0 4)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 0 (- 0 5)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 0 (- 0 6)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
			
                (make cylinder (center 1 (- 0 1)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 1 (- 0 1)) (radius (* r frac)) (height infinity);	FURO NO DIELETRICO
                      (material air))
                (make cylinder (center 1 (- 0 2)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 1 (- 0 3)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 1 (- 0 4)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 1 (- 0 5)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center 1 (- 0 6)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))

                (make cylinder (center (- 0 1) (- 0 1)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center (- 0 1) (- 0 1)) (radius (* r frac)) (height infinity); FURO NO DIELETRICO
                      (material air))
                (make cylinder (center (- 0 1) (- 0 2)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center (- 0 1) (- 0 3)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center (- 0 1) (- 0 4)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center (- 0 1) (- 0 5)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
                (make cylinder (center (- 0 1) (- 0 6)) (radius r) (height infinity)
                      (material (make dielectric (epsilon  eps))))
			
))

;(set! geometry (geometric-objects-lattice-duplicates geometry))

(set! resolution 16)

(set! k-points (list (vector3 0.0 0 0)
		     (vector3 0.5 0 0)
		)
)

(set! k-points (interpolate 40 k-points))

(set! num-bands 50)

(run-tm)

