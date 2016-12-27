﻿(define (problem extensio4) (:domain planificador)
		(:objects c0 c1 c2 - contenido
		         d0 d1 d2 - dia)
(:init
(predecesor c0 c1)
(visto c0)
(visto c1)
(ver c1)
(= (ordenDia d0) 0)
(= (ordenDia d1) 1)
(= (ordenDia d2) 2)
(= (ultimoDia c0) 0)
(= (ultimoDia c1) 0)
(= (ultimoDia c2) 0)
(= (capacidadDia d0) 0)
(= (capacidadDia d1) 0)
(= (capacidadDia d2) 0)
(= (predecesores c0) 0)
(= (predecesores c1) 0)
(= (predecesores c2) 0)
(= (predecesoresAsignados c0) 0)
(= (predecesoresAsignados c1) 0)
(= (predecesoresAsignados c2) 0)
)

 (:goal (and (forall (?x - contenido) (not (ver ?x))))))



