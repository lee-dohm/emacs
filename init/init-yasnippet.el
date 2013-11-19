;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))

(yas-global-mode 1)

(add-to-list 'auto-mode-alist '("\\.emacs\\.d/snippets" . snippet-mode))
