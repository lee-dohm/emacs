;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

(require 'fill-column-indicator)
(require 'whitespace)
(setq whitespace-line-column 100)
(setq-default fci-rule-column 100)
(setq whitespace-style '(face tabs
                              spaces
                              trailing
                              lines-tail
                              space-before-tab
                              newline
                              indentation
                              empty
                              space-after-tab
                              space-mark
                              tab-mark))

(defun enable-whitespace-mode ()
  (whitespace-mode 1))

(add-hook 'prog-mode-hook 'fci-mode)
(add-hook 'prog-mode-hook 'enable-whitespace-mode)

(defun auto-fill-comments ()
  (setq fill-column 72)
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (auto-fill-mode t))

(add-hook 'prog-mode-hook 'auto-fill-comments)

;; Make trailing whitespace visible and delete it before saving
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Key mapping for toggling whitespace-mode
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; Convert tabs to spaces before saving any file
(add-hook 'before-save-hook (lambda () (untabify (point-min) (point-max))))
