;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

(add-to-list 'auto-mode-alist
             '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . enh-ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook 'yard-mode)
(add-hook 'enh-ruby-mode-hook (lambda () (interactive) (column-marker-1 100)))

;; Add more smartparens pairs
(require 'smartparens)
(sp-local-pair 'enh-ruby-mode "do" "end")
(sp-local-pair 'enh-ruby-mode "class" "end")
(sp-local-pair 'enh-ruby-mode "module" "end")
(sp-local-pair 'enh-ruby-mode "def" "end")
(sp-local-pair 'enh-ruby-mode "|" "|")
