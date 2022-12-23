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
; f11
(global-set-key (kbd "<f12>") 'magit-status)

; smooth scrolling
(global-set-key (kbd "<C-mouse-4>") 'scroll-down-line)
(global-set-key (kbd "<C-mouse-5>") 'scroll-up-line)

; for org-mode
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c L") 'rs-lit-entry)
(global-set-key (kbd "C-c q") 'JK-org-move-to-extreme)
; for org-roam
(global-set-key (kbd "C-c f") 'org-roam-node-find)
(global-set-key (kbd "C-c i") 'org-roam-node-insert)
(global-set-key (kbd "C-c t") 'org-roam-buffer-toggle)
(global-set-key (kbd "C-c s") 'org-roam-alias-add)
(global-set-key (kbd "C-c d") 'deft)

;; setup font size
(global-set-key (kbd "C-+") 'text-scale-adjust)

;; expand region
(global-set-key (kbd "C-=") 'er/expand-region)
