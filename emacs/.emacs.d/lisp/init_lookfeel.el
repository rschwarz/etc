;; look and feel

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
