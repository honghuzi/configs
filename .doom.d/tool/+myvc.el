;;; tool/+myvc.el -*- lexical-binding: t; -*-
(setq vc-svn-global-switches '("--non-interactive"))

(after! vc
  (defun vc-svn-retrieve-tag (dir name _update)
    "Retrieve a tag at and below DIR.
NAME is the name of the tag; if it is empty, do a `svn update'.
If UPDATE is non-nil, then update (resynch) any affected buffers.
NAME is assumed to be a URL."
    (vc-svn-command nil 0 dir "switch" name "--ignore-ancestry")
    ;; FIXME: parse the output and obey `update'.
    )
  )
