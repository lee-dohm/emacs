;; Prompts to create directory when saving a file if the parent directory does not yet exist
(add-hook 'before-save-hook
          (lambda ()
            (when buffer-file-name
              (let ((dir (file-name-directory buffer-file-name)))
                (when (and (not (file-exists-p dir))
                           (y-or-n-p (format "Directory %s does not exist. Create it?" dir)))
                  (make-directory dir t))))))

;; Automatically update copyright notices on files that are saved, prompting first
(setq copyright-query 'function)
(add-hook 'before-save-hook 'copyright-update)
