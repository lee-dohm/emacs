;;
;; Copyright (c) 2013 by Lee Dohm. All rights reserved.
;;

(delete-selection-mode t)
(setq-default indent-tabs-mode nil)
(setq require-final-newline t)

(defun smart-open-line ()
  "Insert an empty line after the current line.

Position the cursor at its beginning, according to the current mode."

  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(global-set-key [(shift return)] 'smart-open-line)

(defun smart-open-line-above ()
  "Insert an empty line above the current line.
   Position the cursor at it's beginning, according to the current mode."

  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(control shift return)] 'smart-open-line-above)

(defun smarter-move-beginning-of-line (arg)
  "Move point back to indentation of beginning of line.

Move point to the first non-whitespace character on this line.
If point is already there, move to the beginning of the line.
Effectively toggle between the first non-whitespace character and
the beginning of the line.

If ARG is not nil or 1, move forward ARG - 1 lines first.  If
point reaches the beginning or end of the buffer, stop there."
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

;; Custom buffer functions
(defun save-all-the-buffers ()
  (save-some-buffers t))

(defun kill-this-buffer-volatile ()
  "Kill the current buffer without prompting if it is not modified."
  (interactive)
  (if (not (buffer-modified-p))
      (kill-this-buffer)
    (kill-buffer (current-buffer))))

(defun delete-file-and-buffer ()
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

(defun rename-file-and-buffer ()
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

;; Key mappings
(global-set-key (kbd "s-n") 'make-frame-command)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "M-s-ß") 'save-all-the-buffers)
(global-set-key (kbd "C-c r") 'rename-file-and-buffer)
(global-set-key (kbd "C-c D") 'delete-file-and-buffer)

(global-set-key [remap move-beginning-of-line] 'smarter-move-beginning-of-line)

;; make some use of the Super key
(global-set-key (kbd "s-l") 'goto-line)
(global-set-key (kbd "s-m") 'magit-status)
(global-set-key (kbd "s-w") 'kill-this-buffer-volatile)
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)

;; Standard navigation using arrows
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)
(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<left>") 'smarter-move-beginning-of-line)

(global-set-key (kbd "M-s-<left>") 'ns-prev-frame)
(global-set-key (kbd "M-s-<right>") 'ns-next-frame)
