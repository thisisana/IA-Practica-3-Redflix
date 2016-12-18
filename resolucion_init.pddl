
(define (problem planifiacion1) (:domain planificador)
  (:objects serieA serieB - serie
	    cap1A cap2A cap3A cap4A cap5A cap1B cap2B cap3B cap4B cap5B - capitulo
	    pel1A pel2A pel1B pel2B - pelicula)


(:init 
   (serie serieA)
   (serie serieB)

   (capitulo cap1A)
   (capitulo cap2A)
   (capitulo cap3A)
   (capitulo cap4A)
   (capitulo cap5A)
   (capitulo cap1B)
   (capitulo cap2B)
   (capitulo cap3B)
   (capitulo cap4B)
   (capitulo cap5B) 
 
   (pelicula pel1A)
   (pelicula pel2A)
   (pelicula pel1B)
   (pelicula pel2B)

   (pertenece cap1A serieA)
   (pertenece cap2A serieA) 
   (pertenece cap3A serieA)
   (pertenece cap4A serieA)
   (pertenece cap5A serieA)
   (pertenece cap1B serieB)
   (pertenece cap2B serieB)
   (pertenece cap3B serieB)
   (pertenece cap4B serieB)
   (pertenece cap5B serieB)
   
   (pertenece pel1A serieA)
   (pertenece pel2A serieA)
   (pertenece pel1B serieB)
   (pertenece pel2B serieB)

   (predecesor cap1A cap2A)
   (predecesor cap2A cap3A)
   (predecesor cap3A cap4A)
   (predecesor cap4A cap5A)
   (predecesor cap5A pel1A)
   (predecesor pel1A pel2A)

   (predecesor cap1B cap2B)
   (predecesor cap2B cap3B)
   (predecesor cap3B cap4B)
   (predecesor cap4B cap5B)
   (predecesor cap5B pel1B)
   (predecesor pel1B pel2B)
   
   (visto cap1A serieA)
   (visto cap2B serieB)

   (quiere pel2A serieA)
   (quiere pel2B serieB)
)

	(:goal (and (forall (?x - pelicula) (not (quiere ?x)))) (forall (?y - capitulo) (not (quiere ?y))))

	      
)

