
;; Turns on spell checking for comments and strings in the following languages
(mapcar (lambda (mode-hook) (add-hook mode-hook 'flyspell-prog-mode))
        '(emacs-lisp-mode-hook
          enh-ruby-mode-hook 
          git-commit-mode-hook
          java-mode-hook))
