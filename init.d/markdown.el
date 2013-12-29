(require 'markdown-mode)
(setq markdown-command "/usr/local/bin/multimarkdown")
(setq markdown-css-path (expand-file-name "data/markdown.css" lcd-emacs-config-dir))

(defun lcd-markdown-mode-keymappings ()
  (local-set-key (kbd "M-<right>") 'right-word)
  (local-set-key (kbd "M-<left>") 'left-word))

(add-hook 'markdown-mode-hook 'lcd-markdown-mode-keymappings)
