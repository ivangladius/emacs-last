
(use-package swiper
  :ensure t)

(use-package counsel
  :ensure t)

(use-package ivy
  :ensure t
  :init
  (setq enable-recursive-minibuffers t
		ivy-height 15)
  :bind (("M-x" . counsel-M-x)
		 ("M-i" . swiper))
  :config

  (define-key space-i-map "e" 'counsel-find-file)
  (define-key space-i-map "r" 'counsel-recentf)

  (define-key space-f-map "e" 'counsel-switch-buffer)
  (define-key space-f-map "q" 'counsel-yank-pop)

  (ivy-mode))
