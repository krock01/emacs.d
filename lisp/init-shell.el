;;; package shell

(use-package better-shell
    :ensure t
    :bind (("<f10>" . better-shell-shell)
	   ("<f11>" . better-shell-remote-open)))

(provide 'init-shell)

