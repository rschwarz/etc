;; Ivy etc

;; install
(use-package ivy)
(use-package counsel)
(use-package swiper)

;; enable globally
(ivy-mode 1)
(counsel-mode 1)

;; customization
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d)")
