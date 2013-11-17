;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

(add-hook 'ruby-mode-hook 'yard-mode)
(add-hook 'ruby-mode-hook (lambda () (interactive) (column-marker-1 100)))
