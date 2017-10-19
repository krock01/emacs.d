(use-package auto-complete
:ensure t
:init
(progn
  (ac-config-default)
    (setq ac-auto-start 0
          ac-delay 0.2
          ac-quick-help-delay 1.
          ac-use-fuzzy t
          ac-fuzzy-enable t
          ;;ac-comphist-file (concat spacemacs-cache-directory "ac-comphist.dat")
          ;; use 'complete when auto-complete is disabled
          tab-always-indent 'complete
          ac-dwim t
	  ;ac-ignore-case t
	  )
        (setq ac-use-menu-map t)
	;; Default settings
	(define-key ac-menu-map "\C-n" 'ac-next)
	(define-key ac-menu-map "\C-p" 'ac-previous)
	(global-auto-complete-mode t)
;;  (setq ac-auto-start nil)              ;auto complete using clang is CPU sensitive
 ; (ac-set-trigger-key "<C-return>")
; (global-set-key "\M-/" 'auto-complete)
  ))

(provide 'init-ac)
