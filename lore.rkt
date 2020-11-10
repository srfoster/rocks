#lang at-exp racket

(require rocks/main
	 website-js)

(provide name
         description
         runes
         preview-image
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
    (list
     "Gnarly Rock Rune"
     (gnarly-rock-rune)
     "" 
     )
    (list
     "Forest Rock Rune"
     (forest-rock-rune)
     "" 
     )
    (list
     "Black Rock Rune"
     (black-rock-rune)
     "" 
     )
    (list
     "Coal Rune"
     (coal-rune)
     "" 
     )
    (list
     "Metallic Rock Rune"
     (metallic-rock-rune)
     "" 
     )
    (list
     "Floor Mossed Stone Rune"
     (floor-mossed-stone-rune)
     "" 
     )
    )
  )

(define (preview-image)
  (black-rock-rune)
  )
