(use-package company
  :ensure t
	  
  :config (progn
  	  (define-key company-active-map (kbd "C-n") 'company-select-next)
  	  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  	  )
)

(provide 'init-cp)
