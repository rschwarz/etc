;; customizations for emacs

;; also add local path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; automatic package installation
(load "init_package.el")

;; load it before other packages
(load "init_diminish.el")

;; general/global settings
(load "init_lookfeel.el")

;; mode specific
(load "init_abbrev.el")
;; (load "init_ada.el")
(load "init_backup.el")
(load "init_c.el")
;; (load "init_cmake.el")
;; (load "init_csv.el")
;; (load "init_ein.el")
(load "init_docker.el")
(load "init_elisp.el")
(load "init_git.el")
(load "init_gnugo.el")
(load "init_go.el")
(load "init_helm.el")
(load "init_hy.el")
;; (load "init_ido.el")
(load "init_julia.el")
(load "init_literature.el")
(load "init_litic.el")
(load "init_mail.el")
(load "init_markdown.el")
;; (load "init_minizinc.el")
;; (load "init_ocaml.el")
(load "init_org.el")
(load "init_python.el")
(load "init_r.el")
;; (load "init_smex.el")
(load "init_sql.el")
(load "init_tex.el")
(load "init_web.el")
(load "init_writegood.el")
;; (load "init_xquery.el")
(load "init_yaml.el")
(load "init_zimpl.el")

;; global keybindings
(load "init_keybindings.el")

(add-to-list 'load-path "~/org")
(load "gtd.el")

;; misc (this should be cleaned up!)

(use-package rainbow-delimiters)

(use-package rainbow-mode)

(use-package tldr)

(setq-default vc-follow-symlinks t)

;; no tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; skeleton, no trailing newline
(setq skeleton-end-newline nil)

;; use octave-mode for MATLAB files
(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))

;; enable dumb-jump mode
(use-package dumb-jump)
(dumb-jump-mode)

;; emacs server/client
(server-start)

;; ledger
(use-package ledger-mode)

(use-package ws-butler
  :diminish)
