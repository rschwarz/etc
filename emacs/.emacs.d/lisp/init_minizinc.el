;; MiniZinc customization

(use-package minizinc :pin manual)

(add-to-list 'auto-mode-alist '("\\.mzn\\'" . minizinc-mode))

(add-hook 'minizinc-mode-hook   (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'minizinc-mode-hook 'ws-butler-mode)
