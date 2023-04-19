
(load (expand-file-name "~/quicklisp/slime-helper.el"))

(setq inferior-lisp-program "/usr/bin/sbcl")

(use-package paredit
  :ensure t
  :hook ((lisp-mode . emacs-lisp-mode))
  :config
  (paredit-mode))

(use-package stumpwm-mode
  :ensure t)

(use-package lispyville
  :ensure t
  :hook (lisp-mode . emacs-lisp-mode)
  :config
  (define-key evil-normal-state-map "1" 'lispyville-barf) 
  (define-key evil-normal-state-map "2" 'lispyville-slurp) 
  (lispyville-set-key-theme '(operators c-w additional))
  (lispyville-mode))

(use-package slime
  :config
  (define-key evil-normal-state-map "3" 'slime-eval-last-expression)
  (define-key evil-normal-state-map "4" 'slime-eval-buffer)
  (define-key space-m-map "c" 'slime-connect)
  (define-key space-m-map "f" 'slime-eval-defun))
