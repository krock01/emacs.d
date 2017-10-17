(global-hl-line-mode t)
(use-package beacon
:ensure t
:config
(beacon-mode 1))
(use-package hungry-delete
:ensure t
:config
(global-hungry-delete-mode))
(use-package expand-region
:ensure t
:config
(global-set-key (kbd "C-=") 'er/expand-region))
(setq save-interprogram-paste-before-kill t)


(global-auto-revert-mode 1) ;; you might not want this
(setq auto-revert-verbose nil) ;; or this
(global-set-key (kbd "<f5>") 'revert-buffer)

(provide 'init-misc)
