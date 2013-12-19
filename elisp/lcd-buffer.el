;; Custom buffer functions

(defun lcd-save-all-the-buffers ()
  "Save all buffers."

  (interactive)
  (save-some-buffers t))

(defun lcd-kill-this-buffer-volatile ()
  "Kill the current buffer without prompting if it is not modified."

  (interactive)
  (if (not (buffer-modified-p))
      (kill-this-buffer)
    (kill-buffer (current-buffer))))

(defun lcd-delete-file-and-buffer ()
  "Kill the current buffer and deletes the file it is visiting."

  (interactive)
  (let ((filename (buffer-file-name)))
    (when filename
      (if (vc-backend filename)
          (vc-delete-file filename)
        (progn
          (delete-file filename)
          (message "Deleted file %s" filename)
          (kill-buffer))))))

(defun lcd-rename-file-and-buffer ()
  "Rename the current buffer and file it is visiting."

  (interactive)
  (let ((filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (message "Buffer is not visiting a file!")
      (let ((new-name (read-file-name "New name: " filename)))
        (cond
         ((vc-backend filename) (vc-rename-file filename new-name))
         (t
          (rename-file filename new-name t)
          (set-visited-file-name new-name t t)))))))

(provide 'lcd-buffer)
