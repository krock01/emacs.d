(setq inhibit-startup-message t)
(set-scroll-bar-mode nil)
(tool-bar-mode -1)
(setq make-backup-files nil)
(use-package maxframe
:ensure t
:config
(add-hook 'window-setup-hook 'maximize-frame t))
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "<f5>") 'revert-buffer)

(provide 'init-tweaks)
