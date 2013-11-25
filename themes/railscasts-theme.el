;;
;; Copyright (c) 2013 by Lee Dohm. All Rights Reserved.
;;

(deftheme railscasts
  "Based on the Railscasts textmate theme by Ryan Bates.")

(let ((foreground "#e6e1dc")
      (background "#282828")
      (blue "#a5baf1")
      (blue-light "#d0d0ff")
      (blue-dark "#6d9cbe")
      (cyan "#b0c4de")
      (green "#a5c261")
      (green-dark "#556b2f")
      (brown "#cc7833")
      (brown-light "#bc9458")
      (brown-lighter "#ffc66d")
      (gray30 "#4d4d4d")
      (gray40 "#666666")
      (warning "#ff6600")
      (error "#ff0000")
      (highlight "#555577"))

  (custom-theme-set-faces
   'railscasts

   ;; --- Built-In ---
   ;; General
   `(default ((t (:foreground ,foreground :background ,background))))

   `(button ((t (:underline t :foreground ,blue-dark))))
   `(cursor ((t (:foreground ,gray30 :background "white"))))
   `(highlight ((t (:background ,green-dark))))
   `(isearch ((t (:background ,error))))
   `(lazy-highlight ((t (:background ,warning))))
   `(link ((t (:underline t :foreground ,blue-dark))))
   `(link-visited ((t (:underline t :foreground ,blue-dark))))
   `(minibuffer-prompt ((t (:bold t :foreground ,brown))))
   `(primary-selection ((t (:background ,highlight))))
   `(region ((t (:background ,highlight))))
   `(secondary-selection ((t (:background "translatable"))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,blue-light))))
   `(font-lock-comment-face ((t (:foreground ,brown-light))))
   `(font-lock-constant-face ((t (:foreground ,blue-dark))))
   `(font-lock-doc-string-face ((t (:foreground ,green))))
   `(font-lock-function-name-face ((t (:foreground ,brown-lighter))))
   `(font-lock-keyword-face ((t (:foreground ,brown))))
   `(font-lock-preprocessor-face ((t (:foreground ,brown))))
   `(font-lock-reference-face ((t (:foreground ,cyan))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground "white"))))
   `(font-lock-variable-name-face ((t (:foreground ,cyan))))
   `(font-lock-warning-face ((t (:foreground ,warning))))

   ;; Mode-line
   `(mode-line ((t (:background ,blue :foreground "black"))))
   `(mode-line-buffer-id ((t (:background ,blue-dark :foreground "black"))))
   `(mode-line-mousable ((t (:background ,blue :foreground "black"))))
   `(mode-line-mousable-minor-mode ((t (:background ,blue :foreground "black"))))

   ;; --- Mode Support ---
   ;; Flyspell mode
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,warning) :inherit unspecified))
      (t (:foreground ,warning :weight bold :underline t))))
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,error) :inherit unspecified))
      (t (:foreground ,error :weight bold :underline t))))

   ;; Linum mode
   `(linum ((t (:foreground ,gray40))))

   ;; Markdown mode
   `(markdown-reference-face ((t (:foreground ,green))))

   ;; Show/Smart Paren mode
   `(show-paren-match-face ((t (:foreground "white" :background ,warning))))
   `(show-paren-mismatch-face ((t (:foreground "black" :background ,error))))
   `(sp-show-pair-match-face ((t (:foreground "white" :background ,warning))))
   `(sp-show-pair-mismatch-face ((t (:foreground "black" :background ,error))))

   ;; Whitespace mode
   `(whitespace-space ((t (:background ,background :foreground ,gray30))))
   `(whitespace-tab ((t (:background ,error :foreground "black"))))
   ))

(provide-theme 'railscasts)
