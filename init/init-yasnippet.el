;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

(require 'yasnippet)
(yas-global-mode 1)

(setq yas-snippet-dirs '("~/.emacs.d/snippets"))

(add-to-list 'auto-mode-alist '("\\.emacs\\.d/snippets" . snippet-mode))
(add-hook 'snippet-mode-hook (lambda () (setq require-final-newline nil)))
