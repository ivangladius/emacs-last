
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(when (not (package-installed-p 'use-package))
  (package-install 'use-package))

(use-package general
  :ensure t)

(load "~/.emacs.d/settings")
(load "~/.emacs.d/window")
(load "~/.emacs.d/evil")

(load "~/.emacs.d/ivy")

(load "~/.emacs.d/projectile")
(load "~/.emacs.d/magit")
(load "~/.emacs.d/vterm")

(load "~/.emacs.d/ace-window")

;; LANG
(load "~/.emacs.d/common-lisp")


;;(load "~/.emacs.d/functions.el")




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("512ce140ea9c1521ccaceaa0e73e2487e2d3826cc9d287275550b47c04072bc4" default))
 '(package-selected-packages
   '(lispyville general smex circe rainbow-delimiters paredit stumpwm-mode vterm magit evil-collection ace-window which-key projectile counsel ivy evil doom-themes use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
