;; package specifics

;; add repos
;; (package-initialize) ; no longer necessary?!
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; use-package
(require 'use-package)
(setq use-package-always-ensure t)

;; package development
(use-package package-lint)
