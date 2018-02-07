
;; editing Dockerfile
;; see https://github.com/spotify/dockerfile-mode
(use-package dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
