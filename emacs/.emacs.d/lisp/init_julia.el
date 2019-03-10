;; julia specific customizations

(use-package julia-mode)
(use-package julia-repl)

(add-hook 'julia-mode-hook 'julia-repl-mode)
(add-hook 'julia-mode-hook (lambda () (subword-mode 1)))
(add-hook 'julia-mode-hook (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'julia-mode-hook (lambda () (fci-mode 1)))
(add-hook 'julia-mode-hook (lambda () (idle-highlight-mode 1)))
(add-hook 'julia-mode-hook 'ws-butler-mode)

(add-hook 'julia-repl-hook #'julia-repl-use-emacsclient)
