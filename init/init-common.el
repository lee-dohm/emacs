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

;; Custom buffer functions
(defun save-all-the-buffers ()
  (save-some-buffers t))

(defun kill-this-buffer-volatile ()
  "Kill the current buffer without prompting if it is not modified."
  (interactive)
  (if (not (buffer-modified-p))
      (kill-this-buffer)
    (kill-buffer (current-buffer))))

(defun delete-file-and-buffer ()
  "Kill the current buffer and deletes the file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (when filename
      (if (vc-backend filename)
          (vc-delete-file filename)
        (progn
          (delete-file filename)
          (message "Deleted file %s" filename)
          (kill-buffer))))))

(defun rename-file-and-buffer ()
  "Rename the current buffer and file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (message "Buffer is not visiting a file!")
      (let ((new-name (read-file-name "New name: " filename)))
        (cond
         ((vc-backend filename) (vc-rename-file filename new-name))
         (t
          (rename-file filename new-name t)
          (set-visited-file-name new-name t t)))))))

;; Key mappings
(global-set-key (kbd "s-n") 'make-frame-command)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "M-s-ß") 'save-all-the-buffers)
(global-set-key (kbd "C-c r") 'rename-file-and-buffer)
(global-set-key (kbd "C-c D") 'delete-file-and-buffer)

;; make some use of the Super key
(global-set-key (kbd "s-l") 'goto-line)
(global-set-key (kbd "s-m") 'magit-status)
(global-set-key (kbd "s-w") 'kill-this-buffer-volatile)
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)

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
