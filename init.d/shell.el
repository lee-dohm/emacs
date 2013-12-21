(require 'shell-script-mode)

;; Required by some utilities because fish shell doesn't play well with Emacs
(setq-default explicit-shell-file-name "/bin/bash")
(setq-default shell-file-name "/bin/bash")

(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(add-to-list 'exec-path "/usr/local/bin")

(add-to-list 'auto-mode-alist '("\\.fish\\'" . shell-script-mode))
