;; customizations for emacs

;; also add local path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; automatic package installation
(load "init_package.el")

;; load it before other packages
(load "init_diminish.el")

;; general/global settings
(load "init_lookfeel.el")

;; completion
(load "init_ivy.el")

;; mode specific
(load "init_abbrev.el")
(load "init_backup.el")
(load "init_c.el")
;; (load "init_cmake.el")
(load "init_docker.el")
(load "init_elisp.el")
(load "init_git.el")
;; (load "init_go.el")
(load "init_julia.el")
(load "init_literature.el")
(load "init_mail.el")
(load "init_markdown.el")
(load "init_org.el")
(load "init_python.el")
(load "init_tex.el")
(load "init_web.el")
(load "init_yaml.el")

;; global keybindings
(load "init_keybindings.el")

(add-to-list 'load-path "~/org")
(load "gtd.el")

;; misc (this should be cleaned up!)

(use-package rainbow-delimiters)

(use-package rainbow-mode)

;; no tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; enable dumb-jump mode
(use-package dumb-jump)
(dumb-jump-mode)

;; emacs server/client
(server-start)

;; ledger
(use-package ledger-mode)
