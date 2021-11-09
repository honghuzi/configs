;;; +python.el -*- lexical-binding: t; -*-


;; (use-package! python-black
;;   :demand t
;;   :after python)

;; (add-hook! 'python-mode-hook 'python-black-on-save-mode #'setup-python-prettify-symbols 'prettify-symbols-mode)
(add-hook! 'python-mode-hook  #'setup-python-prettify-symbols 'prettify-symbols-mode)

(setq pyvenv-virtualenvwrapper-python "c:/Users/cyb/Anaconda3/python.exe")
;; (setq treemacs-python-executable "c:/Users/cyb/Anaconda3/python.exe")
(setq python-check-command "c:/Users/cyb/Anaconda3/Scripts/flake8.exe")
(setq python-fill-docstring-style 'symmetric)
(setq dap-python-debugger 'debugpy)
(setq python-flymake-command '("flake8" "-"))


(setq flycheck-flake8rc "C:/Users/cyb/.flake8")
(setq lsp-pyls-plugins-flake8-config "C:/Users/cyb/.flake8")
(setq lsp-pylsp-plugins-flake8-config "c:/Users/cyb/.flake8")
(setq lsp-pyright-typechecking-mode "off")
(setq python-shell-prompt-detect-failure-warning nil)
(setq safe-local-variable-values '((projectile-project-test-cmd . "pytest -W ignore::DeprecationWarning")))

;; (add-hook! 'python-mode-hook
;;   (lambda ()
;;     (when-let ((r (locate-dominating-file default-directory ".pyroot")))
;;       (setq python-pytest-executable
;;             (concat "PYTHONPATH=" r " " "pytest")))))
;; Feel free to throw your own personal keybindings here



;; (setq ein:output-area-inlined-images t)

;; (setq python-shell-interpreter "ipython"
;;       python-shell-interpreter-args "--simple-prompt -i")
