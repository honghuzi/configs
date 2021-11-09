;;; tool/+projectile.el -*- lexical-binding: t; -*-

(after! projectile
  (setq projectile-project-root-files-bottom-up '(".projectile" ".project" ".git" ".svn"))
  (setq projectile-project-root-files (append projectile-project-root-files-bottom-up projectile-project-root-files)
        projectile-project-root-files-bottom-up nil)
  )
