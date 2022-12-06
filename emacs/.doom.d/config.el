;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;;; Personal Info
(setq user-full-name "KR7X"
      user-mail-address "carlosreyesml18@gmail.com")

;;; Split rules
(setq! evil-vsplit-window-right t
       evil-split-window-below t
       auto-save-default t)

;;; Fonts settings
(setq doom-font (font-spec :family "mononoki Nerd Font Mono" :size 15)
      doom-variable-pitch-font (font-spec :family "mononoki Nerd Font" :size 16))

(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

;;; Custom
(setq doom-theme 'doom-vibrant)
(setq display-line-numbers-type 'relative)

;;; DataScience
(after! dap-mode
  (setq dap-python-debugger 'debugpy))

(setq org-babel-default-header-args:jupyter-python
      '((:session . "python3")
        (:kernel . "python3")))


(use-package! tree-sitter
   :hook (prog-mode . turn-on-tree-sitter-mode)
   :hook (tree-sitter-after-on . tree-sitter-hl-mode)
   :config
   (require 'tree-sitter-langs)
   ;; This makes every node a link to a section of code
   (setq tree-sitter-debug-jump-buttons t
         ;; and this highlights the entire sub tree in your code
         tree-sitter-debug-highlight-jump-region t));;; KEYS


;;; DASHBOARD CUSTOMIZATION
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-footer)


(defun kr7x-banner ()
  (let* ((banner '("KKKKKKKKK    KKKKKKKRRRRRRRRRRRRRRRRR   77777777777777777777XXXXXXX       XXXXXXX"
                   "K:::::::K    K:::::KR::::::::::::::::R  7::::::::::::::::::7X:::::X       X:::::X"
                   "K:::::::K    K:::::KR::::::RRRRRR:::::R 7::::::::::::::::::7X:::::X       X:::::X"
                   "K:::::::K   K::::::KRR:::::R     R:::::R777777777777:::::::7X::::::X     X::::::X"
                   "KK::::::K  K:::::KKK  R::::R     R:::::R           7::::::7 XXX:::::X   X:::::XXX"
                   "  K:::::K K:::::K     R::::R     R:::::R          7::::::7     X:::::X X:::::X   "
                   "  K::::::K:::::K      R::::RRRRRR:::::R          7::::::7       X:::::X:::::X    "
                   "  K:::::::::::K       R:::::::::::::RR          7::::::7         X:::::::::X     "
                   "  K:::::::::::K       R::::RRRRRR:::::R        7::::::7          X:::::::::X     "
                   "  K::::::K:::::K      R::::R     R:::::R      7::::::7          X:::::X:::::X    "
                   "  K:::::K K:::::K     R::::R     R:::::R     7::::::7          X:::::X X:::::X   "
                   "KK::::::K  K:::::KKK  R::::R     R:::::R    7::::::7        XXX:::::X   X:::::XXX"
                   "K:::::::K   K::::::KRR:::::R     R:::::R   7::::::7         X::::::X     X::::::X"
                   "K:::::::K    K:::::KR::::::R     R:::::R  7::::::7          X:::::X       X:::::X"
                   "K:::::::K    K:::::KR::::::R     R:::::R 7::::::7           X:::::X       X:::::X"
                   "KKKKKKKKK    KKKKKKKRRRRRRRR     RRRRRRR77777777            XXXXXXX       XXXXXXX"
                  ))
         (longest-line (apply #'max (mapcar #'length banner))))
    (put-text-property
     (point)
     (dolist (line banner (point))
       (insert (+doom-dashboard--center
                +doom-dashboard--width
                (concat line (make-string (max 0 (- longest-line (length line))) 32)))
               "\n"))
     'face 'doom-dashboard-banner)))

(setq +doom-dashboard-ascii-banner-fn #'kr7x-banner)
