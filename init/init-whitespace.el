;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

;; Make trailing whitespace visible and delete it before saving
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Key mapping for toggling whitespace-mode
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; Convert tabs to spaces before saving any file
(add-hook 'before-save-hook (lambda () (untabify (point-min) (point-max))))
