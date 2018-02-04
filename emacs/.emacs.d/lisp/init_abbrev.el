;; custom abbreviations, expands after space

;; enable globally
(set-default 'abbrev-mode t)

;; don't store in separate file, have all here
(clear-abbrev-table global-abbrev-table)
(define-abbrev-table 'global-abbrev-table
  '(
    ("bc" "because")
    ("btw" "by the way")
    ))
(setq save-abbrevs nil)
