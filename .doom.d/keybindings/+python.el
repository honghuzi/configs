;;; lang/keybindings/+python.el -*- lexical-binding: t; -*-


(map! :after python
      :map python-mode-map
      :leader
      (:desc "run ipython repl" :nv "m r i" #'+python/open-ipython-repl)
      (:desc "run jupyter repl" :nv "m r j" #'+python/open-jupyter-repl)
      )

;; (:desc "run ipython repl" "m r i" #'+python/open-ipython-repl))
