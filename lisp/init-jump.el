(use-package dumb-jump
  :bind (
	 ("M-g o" . dumb-jump-go-other-window)
         ("M-g j" . dumb-jump-go)
	 ("M-g b" . dumb-jump-back)
	 ("M-g q" . dumb-jump-quick-look)
         ("M-g i" . dumb-jump-go-prompt)
         ("M-g x" . dumb-jump-go-prefer-external)
         ("M-g z" . dumb-jump-go-prefer-external-other-window)
	 )
  :config (progn
	    (setq dumb-jump-selector 'ivy) ;; (setq dumb-jump-selector 'helm)
	    (setq dumb-jump-force-searcher 'ag)
	    (setq dumb-jump-prefer-searcher 'ag)
	    )
  :ensure)
(provide 'init-jump)
