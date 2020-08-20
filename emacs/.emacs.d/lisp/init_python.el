;; python specific customizations

;; python-jedi
;; (setq jedi:server-command (quote ("python2" ".../jediepcserver.py")))
;; (setq jedi:setup-keys t)
;; (autoload 'jedi:setup "jedi" nil t)
;; (add-hook 'python-mode-hook 'jedi:setup)

;; (defun autopep8 ()
;;   (interactive)
;;   (shell-command-on-region
;;    (point-min)
;;    (point-max)
;;    "autopep8 -"
;;    t))

(add-hook 'python-mode-hook   (lambda () (subword-mode 1)))
(add-hook 'python-mode-hook   (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'python-mode-hook   (lambda () (fci-mode 1)))
(add-hook 'python-mode-hook   (lambda () (idle-highlight-mode 1)))

(use-package cython-mode :ensure nil)
(add-to-list 'auto-mode-alist '("\\.sage\\'" . cython-mode))
