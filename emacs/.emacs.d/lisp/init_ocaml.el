;; from https://github.com/realworldocaml/book/wiki/Installation-Instructions

(setq auto-mode-alist
      (append '(("\\.ml[ily]?$" . tuareg-mode)
                ("\\.topml$" . tuareg-mode))
              auto-mode-alist)) 
(autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
(add-hook 'tuareg-mode-hook 'utop-setup-ocaml-buffer)
(add-hook 'tuareg-mode-hook 'ws-butler-mode)

;; setup tuareg colors
(custom-set-faces
 '(tuareg-font-lock-error-face ((t (:inherit font-lock-warning-face))))
 '(tuareg-font-lock-governing-face ((t (:inherit font-lock-builtin-face))))
 '(tuareg-font-lock-interactive-output-face ((t (:inherit font-lock-constant-face))))
 '(tuareg-font-lock-multistage-face ((t (:inherit font-lock-preprocessor-face))))
 '(tuareg-font-lock-operator-face ((t (:inherit font-lock-builtin-face))))
)

(setq opam-share (substring (shell-command-to-string "opam config var share") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

;; -- merlin setup ---------------------------------------

(require 'merlin)

;; Enable Merlin for ML buffers
(add-hook 'tuareg-mode-hook 'merlin-mode)

;; So you can do it on a mac, where `C-<up>` and `C-<down>` are used
;; by spaces.
(define-key merlin-mode-map
  (kbd "C-c <up>") 'merlin-type-enclosing-go-up)
(define-key merlin-mode-map
  (kbd "C-c <down>") 'merlin-type-enclosing-go-down)
(set-face-background 'merlin-type-face "#88FF44")

;; setup ocp-indent
(require 'ocp-indent)

(add-hook 'tuareg-mode-hook (lambda () (fci-mode 1)))
