(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (moe-dark)))
 '(package-selected-packages
   (quote
    (less-css-mode scss-mode sass-mode ox-reveal xref-js2 js-doc yasnippet exec-path-from-shell tide typescript-mode emmet-mode better-shell powerline dumb-jump counsel-projectile projectile treemacs-projectile treemacs neotree git-timemachine git-gutter magit ggtags dired-quick-sort dired+ nodejs-repl tern-auto-complete tern js2-refactor ac-js2 js2-mode web-mode iedit expand-region hungry-delete beacon undo-tree elpy jedi htmlize monokai-theme auto-complete try counsel ace-window which-key use-package)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))


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
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;(org-babel-load-file (expand-file-name "~/.emacs.d/krock_init.org"))

(require 'init-tweaks)

(require 'init-jump)

(require 'init-try)

(require 'init-which-key)

(require 'init-ace)

(require 'init-ivy)

(require 'init-avy)

(require 'init-ac)
;(require 'init-cp)

(require 'init-theme)

(require 'init-reveal)

;(setq python-shell-completion-native-enable nil)

(require 'init-path-shell)

;(use-package jedi
;  :ensure t
;  :init
;  (add-hook 'python-mode-hook 'jedi:setup)
;  (add-hook 'python-mode-hook 'jedi:ac-setup))

;(use-package elpy
;:ensure t
;:config 
;(elpy-enable))

(require 'init-yasnippet)

(require 'init-undo)

(require 'init-misc)

; mark and edit all copies of the marked region simultaniously. kbd C-;
(require 'init-iedit)

(require 'init-web)

(require 'init-js)

(require 'init-emmet)

(require 'init-css)

(require 'init-projectile)

;(use-package dired+
;  :ensure t
;  :config (require 'dired+)
;  )


;(use-package dired-quick-sort
;  :ensure t
;  :config
;  (dired-quick-sort-setup))

(require 'init-ibuffer)

(require 'init-gtag)

(require 'init-git)

;; babel stuff
;(org-babel-do-load-languages
; 'org-babel-load-languages
; '((python . t)
;   (emacs-lisp . t)
;   (C . t)
;   (js . t)
;   (dot . t)
;   (org . t)
;   ))

(require 'init-tree)

(require 'init-shell)

(require 'init-typescript)

(require 'init-js-doc)

(require 'init-check)

(provide 'init)
