;; org-mode customization
(use-package org :ensure org-plus-contrib)
(use-package org-checklist :ensure nil)

(use-package ox-extra :ensure nil)
(use-package ox-mediawiki)
(use-package ox-rst)
(use-package ox-textile)
(use-package ox-gfm)

;; use auto-fill always
(add-hook 'org-mode-hook 'auto-fill-mode)

;; special settings for latex export of org
(load "latexport.el")

; integrate globally (with exceptions)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

; some display settings
(setq org-agenda-span 1)
(setq org-deadline-warning-days 7)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-timestamp-if-done t)
(setq org-agenda-time-leading-zero t)
(setq org-agenda-todo-list-sublevels nil)
(setq org-agenda-time-grid nil)
(setq org-agenda-window-setup 'current-window)
(setq org-agenda-prefix-format
      (quote ((agenda . " %-12c%?-12t% s")
              (timeline . "  % s")
              (todo . " %-12c")
              (tags . " %-12c")
              (search . " %-12c"))))
(setq org-agenda-tags-column -80)

; clean view
(setq org-hide-leading-stars t)
(setq org-odd-levels-only nil)
(setq org-adapt-indentation nil)

;; don't log changes, because they will kill performance in the long-term!
(setq org-log-repeat nil)

;; but for some things, we log it:
(setq org-log-into-drawer t) ; to hide them in LOGBOOK
(setq org-log-done 'time) ; CLOSED, to see "done" items at end of week

;; show total clocked time in hours, not days, as per:
(setq org-duration-format 'h:mm)

;; only show today's time on this task
(setq org-clock-mode-line-total 'today)

;; but don't show it at all now
(setq org-clock-clocked-in-display 'frame-title)

; safety
(setq org-catch-invisible-edits 'error)

; dependencies
(setq org-enforce-todo-dependencies t)
(setq org-agenda-dim-blocked-tasks t)
(setq org-enforce-todo-checkbox-dependencies nil)

; exporting, use tag `ignore` to exclude heading, but put content
(ox-extras-activate '(ignore-headlines))

; org babel
(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (ledger . t)
   (python . t)
   (shell . t)
   ))
(setq org-babel-sh-command "zsh")

;; ascii export
(setq org-ascii-inner-margin 0)
(setq org-ascii-text-width 78)

; org-roam
(setq org-roam-v2-ack t)
(use-package org-roam)
(setq org-roam-directory "~/org/roam")
(add-hook 'after-init-hook 'org-roam-mode)

;; moving subtrees to top/bottom of parent
;; https://emacs.stackexchange.com/a/43662/22225
(defun JK-org-move-to-extreme (up)
  "Move current org subtree to the end of its parent.
With prefix arg move subtree to the start of its parent."
  (interactive "P")
  (condition-case err
      (while t
        (funcall (if up
                     'org-move-subtree-up
                   'org-move-subtree-down)))
    (user-error
     (let ((err-msg (cadr err)))
       (unless (string-match "Cannot move past superior level or buffer limit" err-msg)
         (signal 'user-error (list err-msg)))))))
