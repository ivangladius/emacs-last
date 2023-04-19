
(use-package smex
  :ensure t)

(shell-command "setxkbmap -option caps:escape && xset r rate 200 40")

(defun load-init ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'modus-vivendi t))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))


(set-face-attribute 'default nil
                    :family "Jetbrains Mono"
                    :height 130
                    :weight 'normal
                    :width 'normal)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)


(setq inhibit-splash-screen t)
(transient-mark-mode 1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq display-line-numbers 'relative)
(global-display-line-numbers-mode)

(setq mode-line-modes
      (mapcar (lambda (elem)
                (pcase elem
                  (`(:propertize (,_ minor-mode-alist . ,_) . ,_)
                   "")
                  (t elem)))
              mode-line-modes))

(display-time-mode 1)

(setq indent-tabs-mode t)
(setq tab-width 4)

(setq dired-listing-switches "-allht")
