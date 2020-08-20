(use-package web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tmpl?\\'" . web-mode))

(use-package emmet-mode)
(add-hook 'web-mode-hook   (lambda () (emmet-mode 1)))

(use-package restclient)
(use-package restclient-helm)
