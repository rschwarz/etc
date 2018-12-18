;; yaml customzation

(use-package yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

(use-package indent-tools)
(add-hook 'yaml-mode-hook (lambda () (indent-tools-minor-mode 1)))
