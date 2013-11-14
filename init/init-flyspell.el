
;; Configure spell checking to use aspell
(setq ispell-program-name "/usr/local/bin/aspell")
(setq ispell-list-command "list")

;; Turns on spell checking in text mode
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))

;; Turns on spell checking for comments and strings in the following languages
(mapcar (lambda (mode-hook) (add-hook mode-hook 'flyspell-prog-mode))
        '(emacs-lisp-mode-hook
          enh-ruby-mode-hook 
          git-commit-mode-hook
          java-mode-hook))
