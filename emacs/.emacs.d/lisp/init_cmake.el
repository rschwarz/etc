;; cmake specifics

(use-package cmake-mode)

(setq auto-mode-alist
	  (append
	   '(("CMakeLists\\.txt\\'" . cmake-mode))
	   '(("\\.cmake\\'" . cmake-mode))
	   auto-mode-alist))

(add-hook 'cmake-mode-hook   (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'cmake-mode-hook 'ws-butler-mode)
