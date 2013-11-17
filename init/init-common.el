;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

;; Add other ELPA repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(defun save-all-the-buffers ()
  (save-some-buffers t))

(defun kill-this-buffer-volatile ()
  "Kill the current buffer without prompting if it is not modified."
  (interactive)
  (if (not (buffer-modified-p))
      (kill-this-buffer)))

;; Key mappings
(global-set-key (kbd "s-n") 'make-frame-command)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "M-s-ß") 'save-all-the-buffers)

;; make some use of the Super key
(global-set-key (kbd "s-l") 'goto-line)
(global-set-key (kbd "s-m") 'magit-status)
(global-set-key (kbd "s-w") 'kill-this-buffer-volatile)
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)

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

(defun smarter-move-beginning-of-line (arg)
  "Move point back to indentation of beginning of line.

Move point to the first non-whitespace character on this line.
If point is already there, move to the beginning of the line.
Effectively toggle between the first non-whitespace character and
the beginning of the line.

If ARG is not nil or 1, move forward ARG - 1 lines first.  If
point reaches the beginning or end of the buffer, stop there."
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

;; remap C-a to `smarter-move-beginning-of-line'
(global-set-key [remap move-beginning-of-line]
                'smarter-move-beginning-of-line)
