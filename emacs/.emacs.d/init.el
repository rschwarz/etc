;; customizations for emacs

;; also add local path
(add-to-list 'load-path "~/.emacs.d/")

(load "init_package.el")

(load "init_lookfeel.el")

(load "init_ada.el")
(load "init_c.el")
(load "init_cmake.el")
(load "init_csv.el")
(load "init_ein.el")
(load "init_elisp.el")
(load "init_git.el")
(load "init_gnugo.el")
(load "init_go.el")
(load "init_ido.el")
(load "init_literature.el")
(load "init_mail.el")
(load "init_markdown.el")
(load "init_minizinc.el")
(load "init_org.el")
(load "init_pdf.el")
(load "init_python.el")
(load "init_smex.el")
(load "init_tex.el")
(load "init_web.el")
(load "init_writegood.el")
(load "init_zimpl.el")

(load "init_keybindings.el")

(add-to-list 'load-path "~/org")
(load "gtd.el")

;; misc

(require 'rainbow-delimiters)

(setq-default custom-safe-themes
      (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6"
	      "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365"
	      default)))

(setq-default vc-follow-symlinks t)

;; no tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; emacs server/client
(server-start)
