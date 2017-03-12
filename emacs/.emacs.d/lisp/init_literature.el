;; Custom functions for handling academic literature.

;; The literature is managed in a git repo in ~/literature. There is a
;; file literature.org containing notes for any article. This has a
;; unique CUSTOM_ID set, that is also the BibTeX key.

;; The link type 'lit' points to the note in literature.org, but gets
;; exported to LaTeX as proper citation.
(org-add-link-type
 "lit"
 (lambda (path)
   (org-open-link-from-string
    (format "file:~/literature/literature.org::#%s" path)))
 (lambda (path desc format)
   (cond ((eq format 'latex)
          (if (not desc)
              (format "\\cite{%s}" path)
            (format "\\cite[%s]{%s}" desc path))))))

;; The skeletion is used to insert new entries to literature.org,
;; adding the CUSTOM_ID and further links automatically.
(define-skeleton rs-lit-entry
  "Add new entry to literature list"
  "Enter BibTeX key for new entry: "
  "* " _ str \n
  ":PROPERTIES:" \n
  ":CUSTOM_ID: " str \n
  ":END:" ?\n
  "** [[file:~/literature/" str ".pdf][pdf]]" ?\n
  "** [[file:~/literature/literature.bib::" str "][bibtex]]" ?\n
  )

(add-to-list 'org-file-apps
             '("\\.pdf\\'" . "xpdf %s"))

(add-to-list 'org-file-apps
             '("\\.djvu\\'" . "evince %s"))

(add-to-list 'org-file-apps
             '("\\.xoj\\'" . "xournal %s"))
