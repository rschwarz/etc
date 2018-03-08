
;; use guile in scheme-mode
(setq-default scheme-program-name "guile")

;; geiser
(use-package geiser)

;; paredit
(use-package paredit
  :diminish)
(add-hook 'scheme-mode-hook (lambda () (paredit-mode 1)))
