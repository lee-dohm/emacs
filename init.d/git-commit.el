(require 'git-commit-mode)

(add-hook 'git-commit-mode-hook 'turn-on-auto-fill)
(setq git-commit-fill-column 72)
