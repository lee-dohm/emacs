(require 'haml-mode)

(add-hook 'haml-mode-hook
          (lambda ()
            (electric-indent-local-mode -1)))
