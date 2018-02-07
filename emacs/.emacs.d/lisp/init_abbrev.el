;; custom abbreviations, expands after space

;; enable globally
(set-default 'abbrev-mode t)

;; don't store in separate file, have all here
(clear-abbrev-table global-abbrev-table)
(define-abbrev-table 'global-abbrev-table
  '(
    ;; actual abbreviations and shortcuts
    ("bc" "because")
    ("btw" "by the way")
    ("br" "best regards")
    ("bw" "best wishes")
    ;; common typos (US over UK spelling)
    ("approximatly" "approximately")
    ("degenarate" "degenerate")
    ("existance" "existence")
    ("explicitely" "explicitly")
    ("implicitely" "implicitly")
    ("incumbant" "incumbent")
    ("modelled" "modeled")
    ("occurance" "occurrence")
    ("practise" "practice")
    ("readibility" "readability")
    ("substract" "subtract")
    ("substracted" "subtracted")
    ("substraction" "subtraction")
    ("teh" "the")
    ))
(setq save-abbrevs nil)
