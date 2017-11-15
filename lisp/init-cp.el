(use-package company
  :ensure t
  :ensure company-tern
  :config (progn
	    (add-to-list 'company-backends 'company-tern)
	    (setq company-minimum-prefix-length 1)
	    (define-key company-active-map (kbd "C-n") 'company-select-next)
	    (define-key company-active-map (kbd "C-p") 'company-select-previous)
  	  )
)

(provide 'init-cp)
