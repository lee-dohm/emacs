;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

;; Package Repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(require 'dired-x)

;; Store all backup and autosave files in the tmp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Disable the bell in annoying situations
(defun custom-bell-function ()
  (unless (memq this-command
        '(isearch-abort abort-recursive-edit exit-minibuffer
              keyboard-quit mwheel-scroll down up next-line previous-line
              backward-char forward-char))
    (ding)))

(setq ring-bell-function 'custom-bell-function)

;; Initial window size and position
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 132))

;; GUI Settings
(setq frame-title-format '(:eval (if (buffer-file-name) (abbreviate-file-name (buffer-file-name)) "%b")))
(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(blink-cursor-mode t)

(if (not indicate-empty-lines)
    (toggle-indicate-empty-lines))

;; Smoother gesture scrolling
(setq scroll-step           1
      scroll-conservatively 10000)

;; Mode line
(setq column-number-mode t)

(defun organization-name ()
  "Retrieves the organization name to use for the project."

  (interactive)
  (or (if (boundp 'organization-name) organization-name) (getenv "ORGANIZATION") "Lifted Studios")
  )
