;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

(require 'grizzl)
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)
(global-set-key (kbd "s-d") 'projectile-find-dir)
(global-set-key (kbd "s-f") 'projectile-find-file)
(global-set-key (kbd "s-g") 'projectile-grep)
(global-set-key (kbd "s-p") 'projectile-switch-project)
