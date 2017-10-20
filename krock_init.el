(defun load-if-exists (f)
  "load the elisp file only if it exists and is readable"
  (if (file-readable-p f)
      (load-file f)))
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;(load-if-exists "~/Dropbox/shared/mu4econfig.el")
;(load-if-exists "~/Dropbox/shared/not-for-github.el")

(require 'init-tweaks)

(require 'init-try)

(require 'init-which-key)

(require 'init-ace)

(require 'init-ivy)

(require 'init-avy)

(require 'init-ac)

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

(require 'init-projectile)

(require 'init-jump)

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
