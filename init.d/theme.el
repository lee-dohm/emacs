(add-to-list 'custom-theme-load-path
             (expand-file-name "themes" lcd-emacs-config-dir))

(load-theme 'railscasts t)

(set-face-attribute 'default nil :foundry "apple")
(set-face-attribute 'default nil :family "Source Code Pro")
(set-face-attribute 'default nil :height 130)
(set-face-attribute 'default nil :weight 'light)
