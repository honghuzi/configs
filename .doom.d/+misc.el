;;; +misc.el -*- lexical-binding: t; -*-


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq enable-local-variables :safe)
;; (setq default-directory "V:/" )

(ivy-prescient-mode 1) ;; First, ivy-prescient-re-builder is assigned for counsel-rg.
(setf (alist-get 'counsel-rg ivy-re-builders-alist) #'ivy--regex-plus) ;; Second, overwrite ivy-prescient-re-builder by ivy--regex-plus

(with-eval-after-load 'eshell (set-language-environment "chinese-GB"))
