(require 'projectile)

(defun lcd-frame-title ()
  "Calculates the text to use for the frame title.

If we are in a projectile project, then it returns the project name
followed by the file name relative to the project root. Otherwise, it
returns the full file path with the standard abbreviations."
  (interactive)
  (if (projectile-project-p)
      (lcd-format-project-frame-title)
    (if (buffer-file-name)
        (abbreviate-file-name (buffer-file-name)))))

(defun lcd-format-project-frame-title ()
  "Formats the frame title when within a Projectile project."

  (format "[%s] %s"
          (projectile-project-name)
          (lcd-strip-dir-from-path (projectile-project-root) (buffer-file-name))))

(defun lcd-strip-dir-from-path (dir path)
  "Strips DIR from PATH if DIR matches the beginning of PATH."

  (if (lcd-string-starts-with path dir)
      (substring path (string-width dir) (string-width path))
    (path)))

(defun lcd-string-starts-with (s begins)
  "Returns non-nil if string S starts with BEGINS."

  (cond ((>= (string-width s) (string-width begins))
         (string-equal (substring s 0 (string-width begins)) begins))
        (t nil)))

(provide 'lcd-frame-title)
