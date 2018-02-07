;; ZIMPL customization

(use-package zimpl-mode :ensure nil)

(add-to-list 'auto-mode-alist '("\\.zpl\\'" . zimpl-mode))

(add-hook 'zimpl-mode-hook   (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'zimpl-mode-hook 'ws-butler-mode)
