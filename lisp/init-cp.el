(use-package company
  :ensure t
  :ensure company-tern
  :bind ("C-." . company-complete-common)
  :config (progn
	    ;;	    (setq company-minimum-prefix-length 1)
	    (add-to-list 'company-backends 'company-tern)
	    (define-key company-active-map (kbd "C-n") 'company-select-next)
	    (define-key company-active-map (kbd "C-p") 'company-select-previous)
	    (add-hook 'after-init-hook 'global-company-mode)
  	  )
)

(provide 'init-cp)
