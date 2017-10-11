(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (monokai-theme auto-complete try counsel ace-window which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))

;; 去掉启动界面的信息
(setq inhibit-startup-message t)
;; 隐藏tool-bar
(tool-bar-mode -1)

(require 'package)
;; 关闭原包的启动
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "http://elpa.emacs-china.org/melpa/"))

(package-initialize)

;; 启动'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

;; key tip
(use-package which-key
	     :ensure t
	     :config
	     (which-key-mode))


;; org-mode extension
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))


;; window
;;C-c left or right toggle other windows
(winner-mode 1)
;; shift-left down right up goto the window
;;(windmove-default-keybindings)
;; ace-window C-x o number
(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
    ))

;; it looks like counsel is a requirement for swiper
(use-package counsel
  :ensure t
  )

(use-package ivy
  :ensure t
  :diminish (ivy-mode)
  :bind (("C-x b" . ivy-switch-buffer))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-display-style 'fancy))

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)
	 ("C-r" . swiper)
	 ("C-c C-r" . ivy-resume)
	 ("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))

;; search char and done witch char
(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-char))

;; auto complete
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))
;; theme
(use-package monokai-theme
  :ensure t
  :config (load-theme 'monokai t))
