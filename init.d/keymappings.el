(require 'lcd-buffer)
(require 'lcd-cursor)
(require 'lcd-open-line)

(global-set-key (kbd "s-n") 'make-frame-command)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "M-s-ß") 'lcd-save-all-the-buffers)
(global-set-key (kbd "C-c r") 'lcd-rename-file-and-buffer)
(global-set-key (kbd "C-c D") 'lcd-delete-file-and-buffer)

;; Use the Super key for expected functions
(global-set-key (kbd "s-l") 'goto-line)
(global-set-key (kbd "s-m") 'magit-status)
(global-set-key (kbd "s-w") 'lcd-kill-this-buffer-volatile)
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)
(global-set-key (kbd "s-o") 'find-file)

;; Standard navigation using arrows
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)
(global-set-key (kbd "s-<right>") 'move-end-of-line)

(global-set-key (kbd "s-<left>") 'lcd-move-beginning-of-line)
(global-set-key [remap move-beginning-of-line] 'lcd-move-beginning-of-line)

(global-set-key (kbd "M-s-<left>") 'ns-prev-frame)
(global-set-key (kbd "M-s-<right>") 'ns-next-frame)

;; Map the open line functions to the normal keys
(global-set-key (kbd "S-<ret>") 'lcd-open-line)
(global-set-key (kbd "C-S-<ret>") 'lcd-open-line-above)
