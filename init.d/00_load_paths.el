;; Add personal elisp directory to load path if it exists
(if (file-exists-p lcd-elisp-dir)
    (add-to-list 'load-path lcd-elisp-dir))
