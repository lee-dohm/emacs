(require 'mouse)
(require 'lcd-frame-title)

;; Set sRGB color space
(setq ns-use-srgb-colorspace t)

;; Initial window size and position
(setq default-frame-alist
      '((height . 50)
        (width . 132)
        (left . 735)
        (top . 0)))

;; Frame title
(setq frame-title-format '(:eval (or (lcd-frame-title) "%b")))

;; Turn off the splash screen
(setq inhibit-startup-screen t)

;; Turn off the tool bar
(tool-bar-mode 0)

;; Make the cursor blink forever
(blink-cursor-mode)
(setq blink-cursor-blinks 0)

;; Mouse support
(xterm-mouse-mode t)
(defun track-mouse (e))
(setq mouse-sel-mode t)

;; Mode line
(setq line-number-mode t)
(setq column-number-mode t)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time
(setq scroll-conservatively 10000)

(defun organization-name ()
  "Retrieves the organization name to use for things like copyright notices."

  (interactive)
  (or (if (boundp 'organization-name) organization-name) (getenv "ORGANIZATION") "Lifted Studios"))
