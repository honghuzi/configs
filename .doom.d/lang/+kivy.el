;;; lang/+kivy.el -*- lexical-binding: t; -*-

(require 'kivy-mode)
(add-to-list 'auto-mode-alist '("\\.kv$" . kivy-mode))
(add-hook 'kivy-mode-hook
          '(lambda ()
             (electric-indent-local-mode t)))
