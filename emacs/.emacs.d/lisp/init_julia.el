;; julia specific customizations

(use-package julia-mode)

(add-hook 'julia-mode-hook (lambda () (subword-mode 1)))
(add-hook 'julia-mode-hook (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'julia-mode-hook (lambda () (fci-mode 1)))
(add-hook 'julia-mode-hook (lambda () (idle-highlight-mode 1)))

(use-package vterm)
(use-package julia-snail
  :hook (julia-mode . julia-snail-mode))
