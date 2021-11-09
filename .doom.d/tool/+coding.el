;;; tool/+coding.el -*- lexical-binding: t; -*-
(after! sql-interactive
  (add-hook 'sql-interactive-mode-hook
            (function
             (lambda ()
               (set-buffer-process-coding-system 'chinese-gbk 'chinese-gbk))))
  )
