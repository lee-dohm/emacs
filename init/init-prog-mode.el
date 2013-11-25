;;
;; Copyright (c) 2013 by Lee Dohm. All rights reserved.
;;

(require 'linum)
(require 'rainbow-mode)

(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'rainbow-mode)
