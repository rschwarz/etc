;; shortcuts for repetitive work in LITIC

(define-skeleton rs-bug-entry
  "Add new link to issue in bug tracker"
  "Enter issue number: "
  "[[http://bugs.litic.com/issues/" str "][#" str "]]"
  )
