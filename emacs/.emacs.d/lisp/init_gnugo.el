;; gnugo customizations

(use-package gnugo)
(setq gnugo-font-lock-keywords
  '(("X" . font-lock-function-name-face)
    ("O" . font-lock-warning-face)))
