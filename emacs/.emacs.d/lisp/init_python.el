;; python specific customizations

;(use-package elpy :ensure t :init (elpy-enable))

(add-hook 'python-mode-hook   (lambda () (sphinx-doc-mode 1)))
(add-hook 'python-mode-hook   (lambda () (subword-mode 1)))
(add-hook 'python-mode-hook   (lambda () (idle-highlight-mode 1)))

(use-package sphinx-doc)

(use-package cython-mode :ensure nil)

