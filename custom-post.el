;; disable packages

;; org mode 中默认不开启 grip mode
;; (add-hook 'org-mode-hook
;;           (lambda (grip-mode -1))
;;           )

;;
;; (define-key org-mode-map (kbd "C-c C-g") nil)

;; eaf

;; 在 windows 下面都有更好的方案，pdf 用 zotero 或 Sumatra PDF, mindmap 用 draw.io
;; (add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework/")
;; (require 'eaf)

;; (require 'eaf-mindmap)
;; (require 'eaf-pdf-viewer)

;; remote editing

(defvar tramp-default-method "plink")

(use-package ssh-deploy
  :ensure t
  :demand
  :after hydra
  :hook ((after-save . ssh-deploy-after-save)
         (find-file . ssh-deploy-find-file))
  :config
  ;; (ssh-deploy-line-mode) ;; If you want mode-line feature
  ;; (ssh-deploy-add-menu) ;; If you want menu-bar feature
  (ssh-deploy-hydra "C-c M-z") ;; If you want the hydra feature
  )

;; (defun my-org-screenshot ()
;;   "Take a screenshot into a time stamped unique-named file in the
;;    same directory as the org-buffer and insert a link to this file."
;;   (interactive)
;;   (setq filename
;;         (concat
;;          (make-temp-name
;;           (concat (buffer-file-name)
;;                   "_"
;;                   (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
;;   (shell-command "snippingtool /clip")
;;   (shell-command (concat "powershell -command \"Add-Type -AssemblyName System.Windows.Forms;if ($([System.Windows.Forms.Clipboard]::ContainsImage())) {$image = [System.Windows.Forms.Clipboard]::GetImage();[System.Drawing.Bitmap]$image.Save('" filename "',[System.Drawing.Imaging.ImageFormat]::Png); Write-Output 'clipboard content saved as file'} else {Write-Output 'clipboard does not contain image data'}\""))
;;   (insert (concat "[[file:" filename "]]"))
;;   (org-display-inline-images))

;; lsp-bridge

;; (add-to-list 'load-path "~/.emacs.d/site-lisp/lsp-bridge")

;; (require 'yasnippet)
;; (yas-global-mode 1)

;; (require 'lsp-bridge)
;; (setq lsp-bridge-python-command "D:/Program Files/python311/python.exe")
;; (setq python-shell-exec-path "D:/Program Files/python311")

;; (global-lsp-bridge-mode)

;; ;; prog-mode

(defvar mermaid-flags "-s 1.5")
;;python
(defvar lsp-ruff-lsp-ruff-path ["D:/Program Files/python311/Scripts/ruff.exe"])
;; (setq lsp-pyls-plugins-flake8-config "~/.flake8")
;; (setq lsp-pylsp-plugins-flake8-config "~/.flake8")
;; (setq flycheck-python-flake8-executable "flake8")
(defvar lsp-ruff-lsp-ruff-args ["--config=~/pyproject.toml"])

(use-package python-black
  :demand t
  :after python
  :hook (python-mode . python-black-on-save-mode))


(setq python-prettify-symbols-alist
      '(("lambda" . "λ")
        ("->" . "→")
        ("!=" . "≠")
        ("==" . "≡")
        ("<=" . "≤")
        (">=" . "≥")
        ;; ("!" . "￢")
        ("null" . "∅")
        ("def" . "ƒ")
        ("and" . "∧")
        ("or" . "∨")
        ("in" . "∈")
        ("not in" . "∉")
        ("for" . "∀")
        ("return" . "⇨")
        ("yield" . "⇦")
        (" ** 2" . "²")
        ("np.sqrt" . "√")
        ("int" . "ℤ")
        ("float" . "ℝ")
        ;; ("bool" . "𝔹")
        ))


(setq python-shell-interpreter "D:\\Program Files\\python311\\python.exe")
(defvar lsp-pyright-python-executable-cmd "D:\\Program Files\\python311\\python.exe")
(defvar lsp-pyright-extra-paths "D:\\Program Files\\python311\\Lib\\site-packages\\")
(defvar flycheck-python-pycompile-executable "D:\\Program Files\\python311\\python.exe")

;; julia
(defvar lsp-julia-package-dir nil)
(defvar lsp-julia-flags `("-JD:/Program Files/julials/languageserver.so"))
(defvar lsp-julia-default-depot "~/.julia/")
(defvar lsp-julia-default-environment "~/.julia/environments/v1.9/")

;;sql
(use-package sqlformat
  :config
  (setq sqlformat-command 'sqlformat)
  (setq sqlformat-args '("-kupper" "--indent_columns" "-s" "-r"))
  (define-key sql-mode-map (kbd "C-c C-f") 'sqlformat-buffer)
  (add-hook 'sql-mode-hook 'sqlformat-on-save-mode)
  )


;; org mode and emacs-jupyter
(use-package zmq)

(use-package simple-httpd)

(setenv "PYDEVD_DISABLE_FILE_VALIDATION" "1")
(defvar org-roam-db-location "d:/docs/org/org-roam.db")
(defvar org-roam-directory "d:/docs/org/org-roam/")
(defvar org-directory "d:/docs/org")
(defvar org-projectile-file "TODOs.org")
(defvar centaur-org-directory org-directory)


(defvar org-download-screenshot-method "convert clipboard: %s")
(setq-default org-download-image-dir "./images")
(setq-default org-download-heading-lvl nil)
(defvar org-download-method 'directory)

(use-package org
  :config
  (unbind-key "C-c C-g" org-mode-map)
  (require 'org-download)
  (add-hook 'dired-mode-hook 'org-download-enable)
  (setq org-download-screenshot-method "convert clipboard: %s")
  (setq-default org-download-image-dir "./images")
  (setq-default org-download-heading-lvl nil)
  (setq org-download-method 'directory)
  ;; org inline images
  (setq org-image-actual-width nil)

  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (emacs-lisp . t)
     (python . t)
     (julia . t)
     (mermaid . t)
     (jupyter . t)
     )
   )

  (setq org-src-fontify-natively t
        org-src-window-setup 'current-window ;; edit in current window
        org-src-preserve-indentation t ;; do not put two spaces on the left
        org-src-tab-acts-natively t
        org-edit-src-content-indentation 0
	    org-confirm-babel-evaluate nil)
  (defvar org-superstar-headline-bullets-list '(?■ ?◆ ?▲ ?▶))
  (defvar org-src-strip-leading-and-trailing-blank-lines t)

  )


(use-package jupyter
  :defer t
  :init
  (defvar org-babel-default-header-args:jupyter-python '((:async . "yes")
                                                         (:session . "py")
                                                         (:kernel . "python3")))
  (defvar org-babel-default-header-args:jupyter-julia '((:async . "yes")
                                                        (:session . "jl")
                                                        (:kernel . "julia-1.8")))
  (defvar ob-async-no-async-languages-alist '("python" "jupyter-python" "julia" "jupyter-julia"))

  :after (:all org)
  )


;; org-dowload, support paste images to org-mode

(use-package org-download)
(use-package zotxt
  :ensure t
  )
