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
  "Turns on whitespace mode."
  (whitespace-mode 1))

(defun auto-fill-comments ()
  "Auto-fills comments only."
  (setq fill-column 72)
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (auto-fill-mode t))

(defun whitespace-prog-mode-hook ()
  "Configures whitespace features for prog-mode and other related major modes."
  (fci-mode)
  (enable-whitespace-mode)
  (auto-fill-comments)
  (lambda () (local-set-key (kbd "RET") 'newline-and-indent)))

(add-hook 'prog-mode-hook 'whitespace-prog-mode-hook)
(add-hook 'yaml-mode-hook 'whitespace-prog-mode-hook)

;; Make trailing whitespace visible and delete it before saving
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Key mapping for toggling whitespace-mode
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; Convert tabs to spaces before saving any file
(add-hook 'before-save-hook (lambda () (untabify (point-min) (point-max))))
