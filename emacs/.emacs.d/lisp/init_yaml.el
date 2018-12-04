;; yaml customzation

(use-package yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

(use-package indent-tools)
(add-hook 'yaml-mode-hook (lambda () (indent-tools-minor-mode 1)))

(add-hook 'yaml-mode-hook
  (lambda ()
    (outline-minor-mode)
    (define-key yaml-mode-map (kbd "TAB") 'outline-toggle-children)
    (setq outline-regexp "^ *\\([A-Za-z0-9_-]*: *[>|]?$\\|-\\b\\)")))
