;;; +ui.el -*- lexical-binding: t; -*-
;; startup windows setup
(pushnew! initial-frame-alist '(width . 120) '(height . 35))
;; (add-hook 'window-setup-hook #'toggle-frame-maximized)
;; (add-hook 'window-setup-hook #'toggle-frame-fullscreen)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)
;; (setq doom-theme 'doom-solarized-light)

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
(defun +my/better-font()
  (interactive)
  ;; English font
  (if (display-graphic-p)
      (progn
        ;; fi, fl,ffi,ffg
        (set-face-attribute 'default nil :font (format "%s:pixelsize=%d" "Fira Code" 18.5)) ;; 11 13 17 19 23
        ;; (set-face-attribute 'default nil :font (format "%s:pixelsize=%d" "Iosevka" 18.5)) ;; 11 13 17 19 23
        ;; (set-face-attribute 'default nil :font (format "%s:pixelsize=%d" "Source Code Pro" 18)) ;; 11 13 17 19 23
        ;; Chinese font
        (dolist (charset '(kana han symbol cjk-misc bopomofo))
          (set-fontset-font (frame-parameter nil 'font)
                            charset
                            (font-spec :family "Microsoft Yahei")))) ;; 14 16 20 22 28
    ))
(defun +my|init-font(frame)
  (with-selected-frame frame
    (if (display-graphic-p)
        (+my/better-font))))

(if (and (fboundp 'daemonp) (daemonp))
    (add-hook 'after-make-frame-functions #'+my|init-font)
  (+my/better-font))



(defun setup-python-prettify-symbols ()
  "Set prettify symbols alist."
  (interactive)
  (setq prettify-symbols-alist '(("lambda" . "λ")
                                 ("->" . "→")
                                 ("!=" . "≠")
                                 ("==" . "≡")
                                 ("<=" . "≤")
                                 (">=" . "≥")
                                 ("!" . "￢")
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
                                 ("bool" . "𝔹")
                                 ))
  (prettify-symbols-mode 1)
  )
