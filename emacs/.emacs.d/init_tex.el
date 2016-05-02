;; (la)tex specifics

;; nice paragraphs for LaTeX/diff
;; from http://pleasefindattached.blogspot.de/2011/12/emacsauctex-sentence-fill-greatly.html
(defadvice LaTeX-fill-region-as-paragraph (around LaTeX-sentence-filling)
  "Start each sentence on a new line."
  (let ((from (ad-get-arg 0))
        (to-marker (set-marker (make-marker) (ad-get-arg 1)))
        tmp-end)
    (while (< from (marker-position to-marker))
      (forward-sentence)
      ;; might have gone beyond to-marker --- use whichever is smaller:
      (ad-set-arg 1 (setq tmp-end (min (point) (marker-position to-marker))))
      ad-do-it
      (ad-set-arg 0 (setq from (point)))
      (unless (or
               (bolp)
               (looking-at "\\s *$"))
        (LaTeX-newline)))
    (set-marker to-marker nil)))
(ad-activate 'LaTeX-fill-region-as-paragraph)
;; We do not usually separate sentence by two spaces, but just a single one.
(setq sentence-end-double-space nil)


;; keep fixed font for TeX
;; Only change sectioning colour
(setq font-latex-fontify-sectioning 'color)
;; super-/sub-script on baseline
(setq font-latex-script-display (quote (nil)))
;; Do not change super-/sub-script font
(custom-set-faces
 '(font-latex-subscript-face ((t nil)))
 '(font-latex-superscript-face ((t nil)))
 )


;; use pdflatex by default with auctex
(setq-default TeX-PDF-mode t)

(setq-default TeX-view-program-selection '((output-pdf "xpdf") (output-html "xdg-open")))

(add-hook 'latex-mode-hook (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'latex-mode-hook 'ws-butler-mode)

(add-to-list 'auto-mode-alist '("\\.tikz\\'" . latex-mode))
