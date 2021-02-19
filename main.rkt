#lang codespells

(require rocks/mod-info)
(require 2htdp/image)


;TODO: Make a better rune.  Maybe need a general solution for
;  a rune that wraps up a bunch of assets...
;TODO: Many more rocks to add in the HugeRocksPack asset pack


(define-classic-rune (gnarly-rock [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/1747907-200.png")
  (with-scale 6
    (spawn-mod-blueprint pak-folder mod-name (~a "GnarlyRock" version))))

(define-classic-rune (forest-rock [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/2614278-200.png")
  (with-scale 6
    (spawn-mod-blueprint pak-folder mod-name (~a "ForestRock" version))))

(define-classic-rune (black-rock [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/438784-200.png")
  (with-scale 6
    (spawn-mod-blueprint pak-folder mod-name (~a "BlackRock" version))))

(define-classic-rune (coal [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/16776-200.png")
  (with-scale 12
    (spawn-mod-blueprint pak-folder mod-name (~a "Coal" version))))


(define-classic-rune (metallic-rock [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/746834-200.png")
  ;Metalic is mispelled in the Unreal project
  (with-scale 18
    (spawn-mod-blueprint pak-folder mod-name (~a "MetalicSmallRock" version))))

(define-classic-rune (floor-mossed-stone [version 1]) ;Note for docs: Only version = 1 works, but there are many rocks in the Mod that can be exposed as BPs
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/438790-200.png") 
  (with-scale 2
    (spawn-mod-blueprint pak-folder mod-name (~a "FloorMossedStone" version))))

(define-classic-rune-lang my-mod-lang #:eval-from main.rkt
  (gnarly-rock forest-rock black-rock coal
               metallic-rock
               floor-mossed-stone))

(module+ main
  (codespells-workspace ;TODO: Change this to your local workspace if different
   (build-path (current-directory) ".." ".."))


  (once-upon-a-time
   #:world (demo-world) ;(demo-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))
