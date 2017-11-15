(use-package js2-mode
:ensure t
;;:ensure ac-js2
:init
(progn
(add-hook 'js-mode-hook 'js2-minor-mode)
;;(add-hook 'js2-mode-hook 'ac-js2-mode)
))

(use-package js2-refactor
:ensure t
:config 
(progn
(js2r-add-keybindings-with-prefix "C-c C-m")
;; eg. extract function with `C-c C-m ef`.
(add-hook 'js2-mode-hook #'js2-refactor-mode)))
(use-package tern
  :ensure t
  :config
  (progn
    (add-hook 'js-mode-hook (lambda () (tern-mode t)))
    (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
    (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
))

;;(use-package jade
;;:ensure t
;;)

(use-package nodejs-repl
:ensure t
)

(add-hook 'js-mode-hook
          (lambda ()
	   ;; (define-key 'ac-js2-mode-map (kbd "M-.") nil)
	   ;; (define-key js2-mode-map (kbd "M-.") nil)
	    (define-key js-mode-map (kbd "M-.") nil)
	    (define-key js-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-sexp)
           ; (define-key js-mode-map (kbd "C-c C-r") 'nodejs-repl-send-region);tern-rename 冲突
            (define-key js-mode-map (kbd "C-c C-l") 'nodejs-repl-load-file)
            (define-key js-mode-map (kbd "C-c C-z") 'nodejs-repl-switch-to-repl)
	    ))
           

(provide 'init-js)
