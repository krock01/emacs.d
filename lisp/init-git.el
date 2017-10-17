(use-package magit
:ensure t
:init
(progn
(bind-key "C-x g" 'magit-status)
))

(use-package git-gutter
:ensure t
:init
(global-git-gutter-mode +1))

(use-package git-timemachine
:ensure t
)

(provide 'init-git)
