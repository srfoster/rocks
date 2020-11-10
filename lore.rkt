#lang at-exp racket

(require rocks/main
	 website-js)

(provide name
         description
         runes
         )

(define (name)
  "Rocks"
  )

(define (description)
  @md{
    The @b{Rocks} Rune Collection contains the rocks of our Wizard Fathers. Use them wisely.
  })

(define (runes)
  (list
    @md{
    ## Gnarly Rock Rune

    @(gnarly-rock-rune)}

    @md{
    ## Forest Rock Rune

    @(forest-rock-rune)}

    @md{ 
    ## Black Rock Rune

    @(black-rock-rune)}
    
    @md{ 
    ## Coal Rune

    @(coal-rune)}
    
    @md{ 
    ## Metallic Rock Rune

    @(metallic-rock-rune)}
    
    @md{ 
    ## Floor Mossed Stone Rune

    @(floor-mossed-stone-rune)}

    )
  )

#;
(module+ main
	 (render #:to "out" 
		 (list
		   (bootstrap-files)
		   (lore))))
