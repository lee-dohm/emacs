;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

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

;; Set standard line wrapping behavior
(global-visual-line-mode 1)

;; Store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Add other ELPA repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Key mappings
(global-set-key (kbd "s-n") 'make-frame-command)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "M-s-ß") 'save-some-buffers)

(defun save-all-the-buffers ()
  (save-some-buffers t))

(define-key (current-global-map) [remap save-some-buffers] 'save-all-the-buffers)

;; make some use of the Super key
(define-key global-map (kbd "s-l") 'goto-line)
(define-key global-map (kbd "s-m") 'magit-status)
(define-key global-map (kbd "s-w") 'delete-frame)

;; Disable the bell when scrolling
(defun my-bell-function ()
  (unless (memq this-command
        '(isearch-abort abort-recursive-edit exit-minibuffer
              keyboard-quit mwheel-scroll down up next-line previous-line
              backward-char forward-char))
    (ding)))

(setq ring-bell-function 'my-bell-function)

;; Initial window size and position
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

;; Max column width highlight
(require 'column-marker)

;; Smart open line
(defun smart-open-line ()
  "Insert an empty line after the current line.
   Position the cursor at its beginning, according to the current mode."

  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(global-set-key [(shift return)] 'smart-open-line)

(defun smart-open-line-above ()
  "Insert an empty line above the current line.
   Position the cursor at it's beginning, according to the current mode."

  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(control shift return)] 'smart-open-line-above)