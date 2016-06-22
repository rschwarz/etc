;; look and feel

;; custom theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes")
(setq custom-safe-themes
      '("ce325ec1f2911a24bdfe0c2d3d71f3823eeb66b00930871d59f9a03be808d693"
        "9cb6358979981949d1ae9da907a5d38fb6cde1776e8956a1db150925f2dad6c1"
        "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6"
        "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365"
        default)
      )
(load-theme 'tango-plus)

;; no more prompts
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default confirm-nonexistent-file-or-buffer nil)
(setq-default ido-create-new-buffer 'always)
(setq-default kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions))
(setq-default use-file-dialog nil)

;; battery
(setq-default battery-mode-line-format "[%b%t]")
(display-battery-mode t)

;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)

;; no beeps
(setq-default visible-bell t)

(set-default-font "Monospace-9")

(display-time-mode t)
(setq-default display-time-24hr-format t)

(show-paren-mode t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq-default truncate-lines nil)
(setq-default indicate-buffer-boundaries nil)
(setq-default indicate-empty-lines t)

;; better buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; help enforce 80 column rule
;; add hooks with (lambda () (fci-mode 1))
(setq-default fci-rule-column 80)
;; for use with solarized-light:
(setq-default fci-rule-color "#eee8d5")
;; for use with solarized-dark:
;; (setq-default fci-rule-color "#073642")
(setq-default fill-column 80)

;; ediff
(setq ediff-highlight-all-diffs nil)
