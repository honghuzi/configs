
(use-package simple-httpd)

(setq org-roam-db-location "d:/docs/org/org-roam.db")
(setq org-roam-directory "d:/docs/org/org-roam/")
(setq org-directory "d:/docs/org")
(setq org-projectile-file "TODOs.org");; disable packages

;; org mode 中默认不开启 grip mode
;; (add-hook 'org-mode-hook
;;           (lambda (grip-mode -1))
;;           )

;;
;; (define-key org-mode-map (kbd "C-c C-g") nil)

;; prog-mode

;;python

(setq python-shell-interpreter "D:\\Program Files\\python311\\python.exe")
(setq lsp-pyright-python-executable-cmd "D:\\Program Files\\python311\\python.exe")
(setq lsp-pyright-extra-paths "D:\\Program Files\\python311\\Lib\\site-packages\\")
(setq flycheck-python-pycompile-executable "D:\\Program Files\\python311\\python.exe")

;; julia
(setq lsp-julia-package-dir nil)
(setq lsp-julia-flags `("-JD:/Program Files/julials/languageserver.so"))
(setq lsp-julia-default-depot "c:/Users/ccc/.julia/")
(setq lsp-julia-default-environment "c:/Users/ccc/.julia/environments/v1.9/")

;; org mode and emacs-jupyter
(use-package zmq)

(use-package simple-httpd)

(setenv "PYDEVD_DISABLE_FILE_VALIDATION" "1")
(setq org-roam-db-location "d:/docs/org/org-roam.db")
(setq org-roam-directory "d:/docs/org/org-roam/")
(setq org-directory "d:/docs/org")
(setq org-projectile-file "TODOs.org")
(setq centaur-org-directory org-directory)

(use-package org
  :config
  (unbind-key "C-c C-g" org-mode-map)
  (require 'org-download)
  (add-hook 'dired-mode-hook 'org-download-enable)
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

;; org-dowload, support paste images to org-mode

(use-package org-download)

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
