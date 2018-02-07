;; configuration for ein (emacs ipython notebook)

(use-package ein)

(setq ein:complete-on-dot nil)

;; ; better color, matching solarized-light
(custom-set-faces
 '(ein:cell-input-area ((t (:background "#eee8d5"))))
)
