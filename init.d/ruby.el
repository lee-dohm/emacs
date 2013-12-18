(add-hook 'ruby-mode-hook 'yard-mode)
(add-hook 'ruby-mode-hook (lambda () (interactive) (column-marker-1 100)))

(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("[rR]akefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("pryrc\\'" . ruby-mode))
