;; org-mode customization
(require 'org)
(package-initialize)

;; special settings for latex export of org
(load "latexport.el")

; integrate globally (with exceptions)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

; some display settings
(setq org-hide-leading-stars t)
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
(setq org-hide-emphasis-markers t)

;; don't log changes, because they will kill performance in the long-term!
(setq org-log-repeat nil)

;; but for some things, we log it:
(setq org-log-into-drawer t) ; to hide them in LOGBOOK
(setq org-log-done 'time) ; CLOSED, to see "done" items at end of week

;; show total clocked time in hours, not days, as per:
;; http://stackoverflow.com/questions/17929979/emacs-org-mode-how-to-stop-total-in-column-view-showing-number-of-days
(setq org-time-clocksum-format '(:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t))

; safety
(setq org-catch-invisible-edits 'error)

; dependencies
(setq org-enforce-todo-dependencies t)
(setq org-agenda-dim-blocked-tasks t)
(setq org-enforce-todo-checkbox-dependencies nil)

; capture
(setq org-default-notes-file "~/org/notes.org")
(setq org-capture-templates '(("n" "Note" entry (file "~/org/notes.org") "* %?")))

; exporting, use tag `ignore` to exclude heading, but put content
(require 'ox-extra)
(ox-extras-activate '(ignore-headlines))

; allow exporting to MediaWiki syntax
(require 'ox-mediawiki)

; reset checkboxes in repeating tasks
(require 'org-checklist)

; nice bullet points
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list (quote ("●" "○")))

; org babel
(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (ledger . t)
   (python . t)
   (sh . t)
   (shell . t)
   ))
(setq org-babel-sh-command "zsh")
