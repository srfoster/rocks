#lang at-exp racket

(require rocks
	 codespells/lore)

(define-rune-collection-lore 
  #:name "Conjurings of Rock"
  #:description 
  @md{
  At the time, they called him foolish when @b{Ulrich Stoneface} retired to the mountains
  to "find unity with the stones."  But after his death, his collection of rock-conjuring 
  Runes was used to rebuild the @b{Seven Island Strongholds}.  A stone statue of him
  was erected there in his honor and stood for two thousand years.

  The Collection was thought to have been destroyed when the @b{Seven Island Strongholds} sank into the sea. But recently, I -- @b{Stephen the Scrivener} -- managed to uncover some of @b{Ulrich's} old research.  I have already made progress reconstructing some of his original Runes. 

  These are my field notes.
  }
  #:rune-lores
  (list
    (rune-lore
     #:name        "Gnarled Rock"
     #:rune        (gnarly-rock-rune)
     #:description @md{
     This Rune references a gnarled river rock identical to one that 
     @b{Ulrich Stoneface} was said to have
     meditated on for two years, eating only fish that happened to swim close enough to catch.

     @(rune-code-example
	(my-mod-lang #:with-paren-runes? #t)
	(gnarly-rock)
	gnarly-rock-demo.mp4)
     }
     )
    (rune-lore
     #:name        "Forest Rock"
     #:rune        (forest-rock-rune)
     #:description @md{
     This Rune references a forest rock that @b{Ulrich Stoneface} used as a landmark while
     navigating the @b{Endless Forests}. 


     @(rune-code-example
	(my-mod-lang #:with-paren-runes? #t)
	(forest-rock)
	forest-rock-demo.mp4)
     }
     )
    (rune-lore
     #:name        "Black Rock"
     #:rune        (black-rock-rune)
     #:description @md{
     This Rune references a fragment of obsidian that @b{Ulrich Stoneface} kept for
     good luck after finding it at the edge of the entrance to the @b{Volcanic Underground.}

     @(rune-code-example
	(my-mod-lang #:with-paren-runes? #t)
	(black-rock)
	black-rock-demo.mp4)
     }
     )
    (rune-lore
     #:name        "Coal"
     #:rune        (coal-rune)
     #:description @md{
     This Rune references the piece of coal that @b{Ulrich Stoneface} first managed to
     light on fire with magic -- his first test, as a boy, entering the 
     @b{Academy}.

     @(rune-code-example
	(my-mod-lang #:with-paren-runes? #t)
	(coal)
	coal-demo.mp4)
     }
     )
    (rune-lore
     #:name        "Metallic Rock"
     #:rune        (metallic-rock-rune)
     #:description @md{
     This Rune references a fragment of metal that @b{Ulrich Stoneface} is said to
     have used to trick the @b{Blind Dragon of the Escarpments} into giving up its 
     trove of ancient books.

     @(rune-code-example
	(my-mod-lang #:with-paren-runes? #t)
	(metallic-rock)
	metallic-rock-demo.mp4)
     }
     )
    (rune-lore
     #:name        "Floor Mossed Stone"
     #:rune        (floor-mossed-stone-rune)
     #:description @md{
     This Rune references a moss-covered stone that @b{Ulrich Stoneface} wished, for
     reasons unknown, to be used as his headstone.  For a thousand years, it sat
     at the base of his statue amidst @b{Seven Island Strongholds.}

     @(rune-code-example
	(my-mod-lang #:with-paren-runes? #t)
	(floor-mossed-stone)
	floor-mossed-stone-demo.mp4)
     }
     )
    )
  #:preview-image preview.png
  )

