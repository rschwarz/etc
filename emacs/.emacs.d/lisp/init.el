;; customizations for emacs

;; also add local path
(add-to-list 'load-path "~/.emacs.d/lisp/")

(load "init_package.el")
(load "init_org.el")

(load "init_lookfeel.el")

(load "init_abbrev.el")
(load "init_ada.el")
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
;; (load "init_ido.el")
(load "init_julia.el")
(load "init_literature.el")
(load "init_litic.el")
(load "init_mail.el")
(load "init_markdown.el")
(load "init_minizinc.el")
(load "init_python.el")
;; (load "init_smex.el")
(load "init_tex.el")
(load "init_web.el")
(load "init_writegood.el")
(load "init_xquery.el")
(load "init_yaml.el")
(load "init_zimpl.el")

(load "init_keybindings.el")

(add-to-list 'load-path "~/org")
(load "gtd.el")

;; misc

(require 'rainbow-delimiters)

(setq-default vc-follow-symlinks t)

;; configure tabs
(setq-default indent-tabs-mode t)
(setq-default tab-width 8)

;; skeleton, no trailing newline
(setq skeleton-end-newline nil)

;; use octave-mode for MATLAB files
(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))

;; enable dumb-jump mode
(dumb-jump-mode)

;; emacs server/client
(server-start)
