
;; use guile in scheme-mode
(setq-default scheme-program-name "guile")

;; geiser
(use-package geiser)
(setq geiser-repl-skip-version-check-p t) ; only have guile 2.0, wants 2.2
