﻿(define (domain planificador)
    (:requirements :adl :typing)
    (:types contenido - item
            dia - item)
    (:functions
        (capacidadDia ?d - dia)           ;; Cuantos contenidos tiene asignado un dia.
        (ordenDia ?d - dia)               ;; le damos un valor a cada dia, para ver cuál va antes.
        (ultimoDia ?c - contenido)       ;; el ultimo dia que se le ha asignado a un predecesor de este contenido.
        (predecesores ?c - contenido)
        (predecesoresAsignados ?c - contenido))
    (:predicates
        (predecesor ?x - contenido ?y - contenido)  ;;x precede a y
        (visto ?x - contenido)                 
        (ver ?x - contenido)
        (contenidoAsignado ?c - contenido))

    (:action ver_predecesor :parameters (?x - contenido ?y - contenido)
        :precondition (and (predecesor ?x ?y) (not (ver ?x)) (ver ?y))
        :effect (and (ver ?x) (increase (predecesores ?y) 1)))

    (:action ver_contenido :parameters (?x - contenido)
        :precondition (and (ver ?x) (forall (?y - contenido) (or (not (predecesor ?y ?x)) (visto ?y))))
        :effect (and (not (ver ?x)) (visto ?x)))
        
    (:action asignar_contenidos :parameters (?d - dia ?x - contenido)
        :precondition (and (ver ?x) (not (contenidoAsignado ?x)) (< (capacidadDia ?d) 3) (> (ordenDia ?d) (ultimoDia ?x)) 
                        (= (predecesores ?x) (predecesoresAsignados ?x)))
        :effect  (and (increase (capacidadDia ?d) 1)
                (forall (?y - contenido) (when (predecesor ?x ?y) (and (assign (ultimoDia ?y) (ordenDia ?d)) 
                (increase (predecesoresAsignados ?y) 1) )))))

)