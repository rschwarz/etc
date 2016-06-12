;; c/c++ specific stuff

(setq-default c-basic-offset 4)
(setq-default c-default-style "bsd")
(setq-default c-syntactic-indentation t)

(add-hook 'c-mode-common-hook (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'c-mode-common-hook (lambda () (fci-mode 1)))
(add-hook 'c-mode-common-hook 'ws-butler-mode)

; for arduino
(add-to-list 'auto-mode-alist '("\\.ino\\'" . c-mode))
