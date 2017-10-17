(use-package projectile
  :ensure t
  :config
  (projectile-mode)
  (setq projectile-enable-caching t)
  (setq projectile-completion-system 'ivy)
)

(use-package counsel-projectile
  :ensure t
  :config
  (counsel-projectile-on))

(provide 'init-projectile)
