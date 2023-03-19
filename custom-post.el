
(use-package simple-httpd)

(setq org-roam-db-location "d:/docs/org/org-roam.db")
(setq org-roam-directory "d:/docs/org/org-roam/")
(setq org-directory "d:/docs/org")
(setq org-projectile-file "TODOs.org")
(setq centaur-org-directory org-directory)

(use-package org
  :config
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (emacs-lisp . t)
     (python . t)
     (julia . t)
     (jupyter . t)
     )
   )
  (setq org-src-fontify-natively t
        org-src-window-setup 'current-window ;; edit in current window
        org-src-strip-leading-and-trailing-blank-lines t
        org-src-preserve-indentation t ;; do not put two spaces on the left
        org-src-tab-acts-natively t
        org-edit-src-content-indentation 0
	    org-confirm-babel-evaluate nil)
  (setq org-confirm-babel-evaluate nil)
  (setq org-superstar-headline-bullets-list '(?■ ?◆ ?▲ ?▶))

  )


(use-package jupyter
  :defer t
  :init
  (setq org-babel-default-header-args:jupyter-python '((:async . "yes")
                                                       (:session . "py")
                                                       (:kernel . "python3")))
  (setq org-babel-default-header-args:jupyter-julia '((:async . "yes")
                                                      (:session . "jl")
                                                      (:kernel . "julia-1.8")))
  (setq ob-async-no-async-languages-alist '("python" "jupyter-python" "julia" "jupyter-julia"))

  :after (:all org)
  )
