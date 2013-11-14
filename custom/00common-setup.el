
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Defaults to using Source Code Pro as the text font
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default (
   (t (:inherit nil 
       :stipple nil 
       :background "White" 
       :foreground "Black" 
       :inverse-video nil 
       :box nil 
       :strike-through nil 
       :overline nil 
       :underline nil 
       :slant normal 
       :weight normal
       :height 130 
       :width normal 
       :foundry "apple" 
       :family "Source Code Pro")))))


;; Initial window size
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 132))

;; Specify the color theme to use
(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/site-lisp/themes/color-theme-railscasts.el")
(color-theme-railscasts)

;; GUI Settings
(setq inhibit-startup-screen t)
(tool-bar-mode 0)

(if (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

;; Mode line
(setq column-number-mode t)
(setq size-indication-mode t)

;; Editing
(setq-default indent-tabs-mode nil)
(setq require-final-newline t)

;; Spell Checking
(require 'flyspell-lazy)
(flyspell-lazy-mode 1)

;; Max column width guide
(require 'column-marker)

