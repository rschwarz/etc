;; diminish (names of minor modes in modeline)
(use-package diminish)

;; some built-in stuff

(use-package autorevert
  :diminish auto-revert-mode
  :init
  (global-auto-revert-mode))
