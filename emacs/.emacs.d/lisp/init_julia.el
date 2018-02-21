;; julia specific customizations
(use-package julia-mode)
(use-package julia-shell)

(setq julia-shell-program "~/opt/julia/bin/julia")
(setq julia-shell-animate-logo nil)

(defun rs-julia-mode-config ()
  (local-set-key (kbd "C-c C-c") 'julia-shell-run-region-or-line)
  )
(add-hook 'julia-mode-hook 'rs-julia-mode-config)

(add-hook 'julia-mode-hook   (lambda () (subword-mode 1)))
(add-hook 'julia-mode-hook   (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'julia-mode-hook   (lambda () (fci-mode 1)))
(add-hook 'julia-mode-hook   (lambda () (idle-highlight-mode 1)))
(add-hook 'julia-mode-hook 'ws-butler-mode)
