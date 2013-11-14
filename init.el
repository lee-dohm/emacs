(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(add-to-list 'load-path "~/.emacs.d/custom")

(load "00common-setup.el")
(load "01projectile.el")
(load "02ruby.el")
(load "03shell.el")
(load "04flyspell.el")
