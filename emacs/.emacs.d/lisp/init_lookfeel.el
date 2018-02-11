;; look and feel

;; custom theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes")
(load-theme 'tango-plus t)

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

;; (set-default-font "Liberation Mono-12") ; thin, spacy
;; (set-default-font "Inconsolata-14") ; round, no italics
(set-default-font "DejaVuSansMono-12") ; simple, good unicode support!

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
(use-package uniquify :ensure nil) ; is built-in?
(setq uniquify-buffer-name-style 'forward)

;; help enforce 80 column rule
;; add hooks with (lambda () (fci-mode 1))
(use-package fill-column-indicator)
(setq-default fci-rule-column 80)
(setq-default fci-rule-color "#dddddd") ;; with solarized-light
;; (setq-default fci-rule-color "#eee8d5") ;; with solarized-light
;; (setq-default fci-rule-color "#073642") ;; with solarized-dark:
(setq-default fill-column 80)

;; ediff
;; only show selected diffs
(setq ediff-highlight-all-diffs nil)
;; don't open separate little "frame" for control
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
;; prefer buffers next to each other, if wide enough
(setq ediff-split-window-function
      (if (> (frame-width) 160)
	  'split-window-horizontally
	'split-window-vertically))

;; paste at point, not where the mouse points
(setq mouse-yank-at-point t)

;; replace zap-to-char
(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR." t)
(global-set-key (kbd "M-z") 'zap-up-to-char)

;; always add newline at EOF
(setq require-final-newline t)

;; idle-highlight mode
(use-package idle-highlight-mode)
(custom-set-faces '(idle-highlight ((t (:inherit lazy-highlight)))))

;; expand-region
(use-package expand-region)

;; ace-jump
(use-package ace-jump-mode)
