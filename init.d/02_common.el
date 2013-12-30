(require 'lcd-frame-title)

;; Initial window size and position
(setq default-frame-alist
      '((height . 50)
        (width . 132)
        (left . 735)
        (top . 0)))

;; GUI Settings
(setq frame-title-format '(:eval (or (lcd-frame-title) "%b")))

;; Turn off the splash screen
(setq inhibit-startup-screen t)

;; Turn off the tool bar
(tool-bar-mode 0)

;; Make the cursor blink forever
(blink-cursor-mode)
(setq blink-cursor-blinks 0)

;; Mode line
(setq line-number-mode t)
(setq column-number-mode t)

;; Automatically update copyright notices on files that are saved
(add-hook 'before-save-hook 'copyright-update)

(defun organization-name ()
  "Retrieves the organization name to use for things like copyright notices."

  (interactive)
  (or (if (boundp 'organization-name) organization-name) (getenv "ORGANIZATION") "Lifted Studios"))
