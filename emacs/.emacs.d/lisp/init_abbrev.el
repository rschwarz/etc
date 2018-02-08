;; custom abbreviations, expands after space

;; enable globally
(set-default 'abbrev-mode t)


;; don't store in separate file, have all here
(clear-abbrev-table global-abbrev-table)
(define-abbrev-table 'global-abbrev-table
  '(
    ;; actual abbreviations and shortcuts
    ("bc" "because")
    ("br" "best regards")
    ("btw" "by the way")
    ("bw" "best wishes")
    ("dld" "download")
    ("dln" "deadline")
    ("dvt" "development")
    ("fs" "first")
    ("fl" "finally")
    ("fn" "function")
    ("lan" "language")
    ("mgt" "management")
    ("opn" "optimization")
    ("se" "second")
    ("so" "solution")
    ("va" "variable")
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
