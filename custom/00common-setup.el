
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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

(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/site-lisp/themes/color-theme-railscasts.el")
(color-theme-railscasts)
