#lang racket

(provide mod-name pak-folder main.rkt)

(require racket/runtime-path)

(define
  mod-name
  "Rocks")

(define-runtime-path
  pak-folder
  "BuildUnreal/WindowsNoEditor/Rocks/Content/Paks/")

(define-runtime-path
  main.rkt
  "main.rkt")


