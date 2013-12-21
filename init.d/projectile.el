(require 'flx-ido)
(require 'projectile)
(projectile-global-mode)

(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)
(global-set-key (kbd "s-d") 'projectile-find-dir)
(global-set-key (kbd "s-f") 'projectile-find-file)
(global-set-key (kbd "s-g") 'projectile-ag)
(global-set-key (kbd "s-p") 'projectile-switch-project)
