(require 'linum)

(defun custom-prog-mode ()
  (linum-mode))

(add-hook 'prog-mode-hook 'custom-prog-mode)
