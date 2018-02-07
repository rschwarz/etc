;; git specifics

;; magit
(use-package magit)
(setq-default magit-default-tracking-name-function
              (quote magit-default-tracking-name-branch-only))
(setq-default magit-push-always-verify nil)

(add-hook 'magit-log-edit-mode-hook 'turn-on-orgstruct)

;; mo-git-blame
(use-package mo-git-blame)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)
