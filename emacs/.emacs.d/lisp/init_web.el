(use-package web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-hook 'web-mode-hook 'ws-butler-mode)

(use-package emmet-mode)
(add-hook 'web-mode-hook   (lambda () (emmet-mode 1)))
