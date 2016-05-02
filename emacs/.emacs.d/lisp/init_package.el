;; package specifics

;; import 'loop' definition
(require 'cl)

;; add repos
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; define list of packages we always want
;; those are installed automatically, if missing
;; (adapted from https://github.com/bbatsov/prelude/*/prelude-packages.el)
(defvar prelude-packages
  '(
    auto-complete
    auto-complete-clang-async
    cmake-mode
    ein
    fill-column-indicator
    gitconfig-mode
    gitignore-mode
    gnugo
    go-mode
    julia-mode
    ledger-mode
    magit
    markdown-mode
    mo-git-blame
    org-bullets
    org-plus-contrib
    org-magit
    pdf-tools
    rainbow-delimiters
    rainbow-mode
    smex
    web-mode
    ws-butler
    yasnippet-bundle
    )
  "A list of packages to ensure are installed at launch.")

(defun prelude-packages-installed-p ()
  (loop for p in prelude-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (prelude-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p prelude-packages)
    (when (not (package-installed-p p))
      (package-install p))))
