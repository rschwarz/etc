;; customize backup
;;
;; Should not use files `fname~` anymore, but store all backups in this separate
;; directory. This will make it easier to find the actual files and require less
;; gitignore config.

;; copied from https://groups.google.com/forum/#!topic/emacs-helm/Sy9uwIrG3N8
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs_backup"))
      backup-by-copying t
      version-control t
      kept-old-versions 2
      kept-new-versions 20
      delete-old-versions t)
(setq tramp-backup-directory-alist backup-directory-alist)
(setq auto-save-file-name-transforms nil)
