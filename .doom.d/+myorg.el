;;; +org.el -*- lexical-binding: t; -*-


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "V:/org/")
(setq deft-directory "v:/org/.deft/")

(setq org-agenda-files '("V:/org/"))
(setq org-roam-db-location "v:/org/roam/org-roam.db")
(after! org

  (defvar +org-capture-favourite-file "V:/org/favourite.org")
  ;; (setq org-capture-default-favourite-file (file+headline (expand-file-name +org-capture-favourite-file org-directory)))
  (add-to-list 'org-capture-templates
               '(
                 "f" "(Web) Favourite" entry
                 ;; (file+headline (expand-file-name +org-capture-favourite-file org-directory) "Favourite")
                 (file+headline +org-capture-favourite-file "Favourite")
                 ;; (file+headline org-capture-default-favourite-file "Favourite")
                 "* %?\n" :prepend t)
               )
  )

(with-eval-after-load 'org
    (org-babel-do-load-languages
     'org-babel-load-languages
     '(
       (python . t)
       (jupyter . t)
       (dot . t)
       )
     )
    )
(setq ob-async-no-async-languages-alist '("jupyter-python"))
(add-hook! '+org-babel-load-functions
    (defun +org-babel-load-jupyter-h (lang)
      (and (string-prefix-p "jupyter-" (symbol-name lang))
       (require 'ob-jupyter)
           (require lang nil t))))

(setq bibtex-completion-bibliography '("V:/business/paper/cyb.bib"))
