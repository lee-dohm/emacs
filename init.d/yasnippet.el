(require 'yasnippet)
(yas-global-mode 1)

(setq yas-snippet-dirs (expand-file-name "snippets" lcd-emacs-config-dir))

(add-to-list 'auto-mode-alist '("\\.emacs\\.d/snippets" . snippet-mode))
(add-hook 'snippet-mode-hook (lambda () (setq require-final-newline nil)))
