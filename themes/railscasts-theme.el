
(deftheme railscasts
  "Based on the great Railscasts theme by Ryan Bates")

(let 
  (custom-theme-set-faces
   'railscasts
   `(default ((,class (:foreground "#f8f8f8" :background "#282828"))))
   `(cursor ((,class (:background "#5a647e"))))
   `(region ((,class (:background "#555577"))))
   `(fringe ((,class (:background "#282828"))))
   `(highlight ((,class (:background "darkolivegreen"))))
   `(primary-selection ((,class (:background "#555577"))))
   `(secondary-selection ((,class (:background "darkslateblue"))))
   `(isearch ((,class (:background "#555555"))))
   `(minibuffer-prompt ((,class (:weight bold :background "#ff6600"))))

   `(font-lock-builtin-face ((,class (:foreground "#d0d0ff"))))
   `(font-lock-comment-face ((,class (:foreground "#bc9458"))))
   `(font-lock-constant-face ((,class (:foreground "#6d9cbe"))))
   `(font-lock-doc-string-face ((,class (:foreground "#a5c261"))))
   `(font-lock-function-name-face ((,class (:foreground "#ffc66d"))))
   `(font-lock-keyword-face ((,class (:foreground "#cc7833"))))
   `(font-lock-preprocessor-face ((,class (:foreground "#cc7833"))))
   `(font-lock-reference-face ((,class (:foreground "LightSteelBlue"))))
   `(font-lock-string-face ((,class (:foreground "#a5c261"))))
   `(font-lock-type-face ((,class (:foreground "white"))))
   `(font-lock-variable-name-face ((,class (:foreground "LightSteelBlue"))))
   `(font-lock-warning-face ((,class (:foreground "Pink"))))

   `(enh-ruby-op-face ((,class (:foreground "#cc7833"))))
   `(enh-ruby-string-delimiter-foce ((,class (:foreground "#a5c261"))))

   `(paren-face-match-light ((,class (:foreground "#ffc66d" :background "#555577"))))
   `(modeline ((,class (:background "#a5baf1" :foreground "black"))))
   `(modeline-buffer-id ((,class (:background "#a5baf1" :foreground "black"))))
   `(modeline-mousable ((,class (:background "#a5baf1" :foreground "black"))))
   `(modeline-mousable-minor-mode ((,class (:background "#a5baf1" :foreground "black")))))

  (custom-theme-set-variables
   'railscasts))

(provide-theme 'railscasts)


