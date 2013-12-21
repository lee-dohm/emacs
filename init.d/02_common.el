(require 'lcd-frame-title)

;; Initial window size and position
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 132))

;; GUI Settings
(setq frame-title-format '(:eval (or (lcd-frame-title) "%b")))

;; Turn off the splash screen
(setq inhibit-startup-screen t)

;; Turn off the tool bar
(tool-bar-mode 0)

;; Make the cursor blink
(blink-cursor-mode)

(if (not indicate-empty-lines)
    (toggle-indicate-empty-lines))

;; Mode line
(setq line-number-mode t)
(setq column-number-mode t)

(defun organization-name ()
  "Retrieves the organization name to use for things like copyright notices."

  (interactive)
  (or (if (boundp 'organization-name) organization-name) (getenv "ORGANIZATION") "Lifted Studios"))
