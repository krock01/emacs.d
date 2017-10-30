(use-package color-theme
:ensure t)
(use-package zenburn-theme
  :ensure t
  :config (load-theme 'zenburn t))
;(use-package spacemacs-theme
;  :ensure t
;  ;:init
;  ;(load-theme 'spacemacs-dark t)
;  )

;(use-package base16-theme
;:ensure t
;)

;(use-package moe-theme
;:ensure t)

;(use-package eziam-theme
;:ensure t)

;(use-package alect-themes
;:ensure t)

 
; (load-theme 'base16-flat t)
;(moe-dark)
(use-package powerline
:ensure t
:config
(setq powerline-arrow-shape 'arrow)
(powerline-default-theme )
)
(provide 'init-theme)
