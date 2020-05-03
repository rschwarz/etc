
;; editing Dockerfile
;; see https://github.com/spotify/dockerfile-mode
(use-package dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

;; editing and completion for docker compose (YAML)
;; (use-package docker-compose-mode)

;; managing docker images and containers
;; (use-package docker)
