;; Set location of personal elisp scripts
(setq lcd-elisp-dir (expand-file-name "elisp" user-emacs-directory))

;; Load all initialization scripts
(let ((init-dir (expand-file-name "init.d" user-emacs-directory)))
  (if (file-exists-p init-dir)
      (dolist (file (directory-files init-dir t "\\.el$"))
        (load file))))

;; Set up "custom" system
(setq custom-file (expand-file-name "emacs-customizations.el" user-emacs-directory))
(load custom-file)
