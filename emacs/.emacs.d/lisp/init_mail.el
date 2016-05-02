;; customize modes for editing messages

(add-to-list 'auto-mode-alist '("tmpmsg\\." . message-mode))
(add-to-list 'auto-mode-alist '("\\.eml\\'" . message-mode))
(add-hook 'message-mode-hook 'turn-on-orgstruct)
