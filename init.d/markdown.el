(require 'markdown-mode)
(setq markdown-command "/usr/local/bin/multimarkdown")
(setq markdown-css-path (expand-file-name "data/markdown.css" user-emacs-directory))

(defun lcd-markdown-mode-customizations ()
  (local-set-key (kbd "M-<right>") 'right-word)
  (local-set-key (kbd "M-<left>") 'left-word)
  (set (make-local-variable 'electric-indent-mode) nil))

(add-hook 'markdown-mode-hook 'lcd-markdown-mode-customizations)
