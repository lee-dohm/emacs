;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

(deftheme railscasts
  "Based on the Railscasts textmate theme by Ryan Bates.")

(custom-theme-set-faces
 'railscasts
 '(default ((t (:foreground "#e6e1dc" :background "#282828"))))
 '(cursor ((t (:foreground "#444444" :background "#ffffff"))))
 '(highlight ((t (:background "darkolivegreen"))))
 '(region ((t (:background "#555577"))))
 '(primary-selection ((t (:background "#555577"))))
 '(secondary-selection ((t (:background "translatable"))))

 '(font-lock-builtin-face ((t (:foreground "#d0d0ff"))))
 '(font-lock-comment-face ((t (:foreground "#bc9458"))))
 '(font-lock-constant-face ((t (:foreground "#6d9cbe"))))
 '(font-lock-doc-string-face ((t (:foreground "#a5c261"))))
 '(font-lock-function-name-face ((t (:foreground "#ffc66d"))))
 '(font-lock-keyword-face ((t (:foreground "#cc7833"))))
 '(font-lock-preprocessor-face ((t (:foreground "#cc7833"))))
 '(font-lock-reference-face ((t (:foreground "LightSteelBlue"))))
 '(font-lock-string-face ((t (:foreground "#a5c261"))))
 '(font-lock-type-face ((t (:foreground "white"))))
 '(font-lock-variable-name-face ((t (:foreground "LightSteelBlue"))))
 '(font-lock-warning-face ((t (:foreground "#ff6600"))))

 '(erb-out-delim-face ((t (:foreground "#E6E1DC"))))
 '(erb-delim-face ((t (:foreground "#E6E1DC" ))))
 '(erb-exec-face ((t (:background "#191919"))))
 '(erb-out-face ((t (:background "#191919"))))

 '(modeline ((t (:background "#a5baf1" :foreground "black"))))
 '(modeline-buffer-id ((t (:background "#a5baf1" :foreground "black"))))
 '(modeline-mousable ((t (:background "#a5baf1" :foreground "black"))))
 '(modeline-mousable-minor-mode ((t (:background "#a5baf1" :foreground "black"))))

 '(button ((t (:underline t :foreground "#6d9cbe"))))
 '(link ((t (:underline t :foreground "#6d9cbe"))))
 '(link-visited ((t (:underline t :foreground "#6d9cbe"))))

 '(isearch ((t (:background "#555555"))))
 '(minibuffer-prompt ((t (:bold t :foreground "#cc7833"))))
 '(show-paren-match-face ((t (:foreground "#444444" :background "#cc7833"))))
 '(show-paren-mismatch-face ((t (:foreground "#444444" :background "#990000"))))
 '(lazy-highlight ((t (:background "#cc7833"))))

 ;; '(enh-ruby-op-face ((t (:foreground "#CC7833"))))
 ;; '(enh-ruby-string-delimiter-face ((t (:foreground "#A5C261"))))

 '(whitespace-space ((t (:background "#282828" :foreground "gray30"))))
 '(whitespace-tab ((t (:background "#ff6600" :foreground "black"))))

 '(sp-show-pair-match-face ((t (:background "#555577"))))
 )

(provide-theme 'railscasts)
