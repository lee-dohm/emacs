;; Initial window size and position
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 132))

;; GUI Settings
(setq frame-title-format '(:eval (if (buffer-file-name) (abbreviate-file-name (buffer-file-name)) "%b")))
(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(blink-cursor-mode)

(if (not indicate-empty-lines)
    (toggle-indicate-empty-lines))

;; Mode line
(setq column-number-mode t)

(defun organization-name ()
  "Retrieves the organization name to use for the project."

  (interactive)
  (or (if (boundp 'organization-name) organization-name) (getenv "ORGANIZATION") "Lifted Studios")
  )
