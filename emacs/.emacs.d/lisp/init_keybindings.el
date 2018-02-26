;; global keybindings

(global-set-key (kbd "<f1>") 'comment-or-uncomment-region)
; f2 (some kind of modifier?)
; f3 start macro
; f4 end macro
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'recompile)
; f7
; f8
(global-set-key (kbd "<f9>") 'whitespace-cleanup)
; f10 menu-open
(global-set-key (kbd "<f11>") 'git-timemachine)
(global-set-key (kbd "<f12>") 'magit-status)

; smooth scrolling
(global-set-key (kbd "<C-mouse-4>") 'scroll-down-line)
(global-set-key (kbd "<C-mouse-5>") 'scroll-up-line)

; for org-mode
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c L") 'rs-lit-entry)
(global-set-key (kbd "C-c B") 'helm-bibtex)
(global-set-key (kbd "C-c b") 'rs-bug-entry) ; for LITIC

; helm
(global-set-key (kbd "C-c z") 'helm-z)
(global-set-key (kbd "C-c r") 'helm-org-rifle-directories)
(global-set-key (kbd "C-c j") 'helm-imenu) ; C-c C-j calls imenu

;; setup font size
(global-set-key (kbd "C-+") 'text-scale-adjust)

;; expand region
(global-set-key (kbd "C-=") 'er/expand-region)

;; ace-jump-word-mode (also accepts C-u for ace-jump-char-mode)
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
