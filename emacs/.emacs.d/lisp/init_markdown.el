;; markdown specific customizations
(use-package markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; activate mode for specific websites (using It's All Text)
(add-to-list 'auto-mode-alist '("stack\\(exchange\\|overflow\\)\\.com.+\\.txt" . markdown-mode))
(add-to-list 'auto-mode-alist '("git\\.zib\\.de.+\\.txt" . markdown-mode))
