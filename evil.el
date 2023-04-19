

(use-package evil
  :ensure t
  :demand t
  :init
  (setq evil-search-module 'evil-search)
  (setq evil-ex-complete-emacs-commands nil)
  (setq evil-vsplit-window-right t)
  (setq evil-split-window-below t)
  (setq evil-shift-round nil)
  (setq evil-want-C-u-scroll t)
  :config

  (evil-set-leader 'normal (kbd "SPC"))
  (define-prefix-command 'space-map)
  (define-key evil-normal-state-map (kbd "<SPC>") space-map)

  (define-prefix-command 'space-i-map)
  (define-key space-map "i" space-i-map)
;; ####################################
  (define-prefix-command 'space-f-map)
  (define-key space-map "f" space-f-map)

  (define-key space-f-map "d" 'last-buffer)


  (define-prefix-command 'space-o-map)
  (define-key space-map "o" space-o-map)

  ;; ####################################

  (define-prefix-command 'space-m-map)
  (define-key space-map "m" space-m-map)

;; #####################################
  (define-prefix-command 'space-l-map)
  (define-key space-map "l" space-l-map)

  (define-key space-l-map "e" 'eshell)
  (define-key space-l-map "v" 'vterm)
  (define-key space-l-map "s" 'magit-status)

  (define-key space-map "k" 'kill-current-buffer)
  (define-key space-map "j" 'dired-jump)
  (define-key space-map "1" 'delete-other-windows)
  (define-key space-map "2" 'delete-window)
  (define-key space-map "3" 'split-below)
  (define-key space-map "4" 'split-right)

  (add-hook 'dired-mode-hook
	    (lambda ()
	      (define-key evil-normal-state-local-map (kbd "<SPC>") space-map)
	      (define-key evil-motion-state-local-map (kbd "<SPC>") space-map)))

  (add-hook 'magit-status-mode-hook
	    (lambda ()
	      (define-key evil-normal-state-local-map (kbd "<SPC>") space-map)
	      (define-key evil-motion-state-local-map (kbd "<SPC>") space-map)))



  (evil-mode))

(use-package evil-collection
  :after evil-mode
  :ensure t
  :config
  (evil-collection-init))
