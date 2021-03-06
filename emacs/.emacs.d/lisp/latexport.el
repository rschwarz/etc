(use-package ox-latex :ensure nil)
(use-package ox-beamer :ensure nil)

(setq org-latex-default-packages-alist
      '(("AUTO" "inputenc" t ("pdflatex"))
	;; ("T1" "fontenc" t ("pdflatex")) ; disable to avoid xpdf bug
	("" "graphicx" t)
	("" "grffile" t)
	("" "longtable" nil)
	("" "wrapfig" nil)
	("" "rotating" nil)
	("normalem" "ulem" t)
	("" "amsmath" t)
	("" "textcomp" t)
	("" "amssymb" t)
	("" "capt-of" nil)
	("" "hyperref" nil)))

(setq org-latex-pdf-process '("pdflatex -interaction nonstopmode -output-directory %o %f"
                              "biber %b"
                              "pdflatex -interaction nonstopmode -output-directory %o %f"
                              "pdflatex -interaction nonstopmode -output-directory %o %f"))

(add-to-list 'org-latex-classes
             '("koma-article"
               "\\documentclass{scrartcl}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ))

(add-to-list 'org-latex-classes
             '("koma-report"
               "\\documentclass{scrreprt}"
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ))

(add-to-list 'org-latex-classes
             '("koma-book"
               "\\documentclass{scrbook}"
               ("\\part{%s}" . "\\part*{%s}")
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ))

(add-to-list 'org-latex-classes
             '("mathserif-beamer"
               "\\documentclass[presentation,mathserif]{beamer}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))

(add-to-list 'org-latex-classes
             '("mydiss"
               "\\documentclass{scrbook}"
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ))
