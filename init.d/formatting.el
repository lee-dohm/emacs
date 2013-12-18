;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

(require 'column-marker)
(require 'fill-column-indicator)
(require 'whitespace)

;; Max line length
(setq-default fci-rule-column 100)
(setq whitespace-line-column 100)

;; Whitespace style
(setq whitespace-style '(face tabs
                              spaces
                              trailing
                              lines-tail
                              space-before-tab
                              newline
                              indentation
                              space-after-tab
                              space-mark
                              tab-mark))

(defun enable-whitespace-mode ()
  "Turns on whitespace mode."
  (whitespace-mode 1))

(defun whitespace-prog-mode-hook ()
  "Configures whitespace features for prog-mode and other related major modes."
  (enable-whitespace-mode)
  (fci-mode))

(add-hook 'prog-mode-hook 'whitespace-prog-mode-hook)
(add-hook 'yaml-mode-hook 'whitespace-prog-mode-hook)

;; Enable automatic reindenting
(electric-indent-mode 1)

;; Set line wrapping behavior for text files and other modes
(defun enable-visual-line-mode-hook ()
  (visual-line-mode 1))

(add-hook 'text-mode-hook 'enable-visual-line-mode-hook)
(add-hook 'grep-mode-hook 'enable-visual-line-mode-hook)

;; Key mapping for toggling whitespace-mode
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; Before saving files:
;; * Convert tabs to spaces
;; * Delete trailing whitespace
;; * Require final newline
(add-hook 'before-save-hook (lambda () (untabify (point-min) (point-max))))
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default require-final-newline t)
