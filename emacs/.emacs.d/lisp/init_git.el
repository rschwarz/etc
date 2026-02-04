;; git specifics

;; magit
(use-package magit)
(setq-default magit-default-tracking-name-function
              (quote magit-default-tracking-name-branch-only))
(setq-default magit-push-always-verify nil)

(use-package magit-pre-commit :after magit)
