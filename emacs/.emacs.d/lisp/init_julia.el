;; julia specific customizations

(add-hook 'julia-mode-hook   (lambda () (subword-mode 1)))
(add-hook 'julia-mode-hook   (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'julia-mode-hook   (lambda () (fci-mode 1)))
(add-hook 'julia-mode-hook   (lambda () (idle-highlight 1)))
(add-hook 'julia-mode-hook 'ws-butler-mode)
