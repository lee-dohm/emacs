(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

;; Load paths
(add-to-list 'load-path "~/.emacs.d/init")
(add-to-list 'load-path "~/.emacs.d/lib")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Load settings common to all modes
(load "init-common.el")

;; Load settings specific to certain modes or features
(load "init-abbrevs.el")
(load "init-compile.el")
(load "init-emacs-lisp.el")
(load "init-flyspell.el")
(load "init-formatting.el")
(load "init-projectile.el")
(load "init-ruby.el")
(load "init-shell.el")
(load "init-smartparens.el")
(load "init-theme.el")
(load "init-yasnippet.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("74cd303a4ca507246556c8c78a5fe33457dc4c1b0758d25b2c82cab3c594d56a"
                              "0911e29dc907e3774f89cb9b13e3abd03ae861b130e855e3ae0bf9d1c7eed852"
                              "31bfef452bee11d19df790b82dea35a3b275142032e06c6ecdc98007bf12466c"
                              default))))
