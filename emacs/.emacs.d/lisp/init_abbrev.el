;; custom abbreviations, expands after space

;; enable globally
(set-default 'abbrev-mode t)

;; but don't show it in modeline
(diminish 'abbrev-mode)

;; don't store in separate file, have all here
(clear-abbrev-table global-abbrev-table)
(define-abbrev-table 'global-abbrev-table
  '(
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
    ("wether" "whether")
    ("wheather" "weather")
    ))
(setq save-abbrevs nil)
