;; Configuration directories and file names
(setq lcd-emacs-init-file (or load-file-name buffer-file-name))
(setq lcd-emacs-config-dir
      (file-name-directory lcd-emacs-init-file))
(setq user-emacs-directory lcd-emacs-config-dir)
(setq lcd-elisp-dir
      (expand-file-name "elisp" lcd-emacs-config-dir))
(setq lcd-init-dir
      (expand-file-name "init.d" lcd-emacs-config-dir))

;; Load all initialization scripts
(if (file-exists-p lcd-init-dir)
    (dolist (file (directory-files lcd-init-dir t "\\.el$"))
      (load file)))

;; Set up "custom" system
(setq custom-file
      (expand-file-name "emacs-customizations.el" lcd-emacs-config-dir))
(load custom-file)
