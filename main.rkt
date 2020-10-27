#lang codespells

(require 2htdp/image)

;TODO: Make a better rune.  Maybe need a general solution for
;  a rune that wraps up a bunch of assets...
;TODO: Many more rocks to add in the HugeRocksPack asset pack

(define noun-project-rock (bitmap/url "https://static.thenounproject.com/png/1747907-200.png"))

(define-classic-rune (gnarly-rock [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "brown"
  #:foreground noun-project-rock
  (spawn-this-mod-blueprint (~a "GnarlyRock" version)))

(define-classic-rune (forest-rock [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "brown"
  #:foreground noun-project-rock
  (spawn-this-mod-blueprint (~a "ForestRock" version)))

(define-classic-rune (black-rock [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "brown"
  #:foreground noun-project-rock
  (spawn-this-mod-blueprint (~a "BlackRock" version)))

(define-classic-rune (coal [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "brown"
  #:foreground noun-project-rock
  (spawn-this-mod-blueprint (~a "Coal" version)))


(define-classic-rune (metalic-rock [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "brown"
  #:foreground noun-project-rock
  (spawn-this-mod-blueprint (~a "MetalicRock" version)))

(define-classic-rune (floor-mossed-stone [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "brown"
  #:foreground noun-project-rock
  (spawn-this-mod-blueprint (~a "FloorMossedStone" version)))

(define-classic-rune-lang my-mod-lang
  (gnarly-rock forest-rock black-rock coal
               metalic-rock
               floor-mossed-stone))

(module+ main
  (codespells-workspace ;TODO: Change this to your local workspace if different
   (build-path (current-directory) ".." ".."))


  (once-upon-a-time
   #:world (voxel-world) ;(demo-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))
