;; stuff for coding in golang
(use-package go-mode)

(add-hook 'go-mode-hook (lambda () (subword-mode 1)))
(add-hook 'go-mode-hook (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'go-mode-hook (lambda () (fci-mode 1)))
(add-hook 'go-mode-hook (lambda () (idle-highlight-mode 1)))
(add-hook 'go-mode-hook 'ws-butler-mode)

; https://godoc.org/golang.org/x/tools/cmd/goimports
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
