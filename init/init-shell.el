;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

(setq-default explicit-shell-file-name "/bin/bash")
(setq-default shell-file-name "/bin/bash")

(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(add-to-list 'exec-path "/usr/local/bin")

(add-to-list 'auto-mode-alist '("\\.fish\\'" . shell-script-mode))
