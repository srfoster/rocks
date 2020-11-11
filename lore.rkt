#lang at-exp racket

(require rocks
	 codespells/lore)

(define-rune-collection-lore 
  #:name "Conjurings of Rock"
  #:description 
  @md{
    The @b{Rocks} Rune Collection contains the rocks of our Wizard Fathers. Use them wisely.
  }
  #:rune-lores
  (list
    (rune-lore
     #:name        "Gnarly Rock Rune"
     #:rune        (gnarly-rock-rune)
     #:description "" 
     )
    (rune-lore
     #:name        "Forest Rock Rune"
     #:rune        (forest-rock-rune)
     #:description "" 
     )
    (rune-lore
     #:name        "Black Rock Rune"
     #:rune        (black-rock-rune)
     #:description "" 
     )
    (rune-lore
     #:name        "Coal Rune"
     #:rune        (coal-rune)
     #:description "" 
     )
    (rune-lore
     #:name        "Metallic Rock Rune"
     #:rune        (metallic-rock-rune)
     #:description "" 
     )
    (rune-lore
     #:name        "Floor Mossed Stone Rune"
     #:rune        (floor-mossed-stone-rune)
     #:description "" 
     )
    )
  #:preview-image (black-rock-rune)
  )

