(use-package company
  :ensure t
  :config (progn
	    (setq company-minimum-prefix-length 1)
	    (define-key company-active-map (kbd "C-n") 'company-select-next)
	    (define-key company-active-map (kbd "C-p") 'company-select-previous)
	    (add-hook 'after-init-hook 'global-company-mode)
  	  )
)

(provide 'init-cp)
