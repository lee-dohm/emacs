(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

;; Load paths
(add-to-list 'load-path "~/.emacs.d/init")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Load settings common to all modes
(load "init-common.el")

;; Load settings specific to certain modes
(load "init-emacs-lisp.el")
(load "init-flyspell.el")
(load "init-projectile.el")
(load "init-ruby.el")
(load "init-shell.el")
