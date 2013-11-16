;;
;; Copyright (C) 2013 by Lee Dohm. All Rights Reserved.
;;

(defun get-dock-height ()
  "Return the height of the Dock on OS X.

   Currently, this is just a guess until I create a better way of
   determining the actual height of the Dock."
  150)

(defun screen-usable-height (&optional display)
  "Return the usable height of the display.
 
   Some window-systems have portions of the screen which Emacs
   cannot address. This function should return the height of the
   screen, minus anything which is not usable."
  (- (display-pixel-height display)
     (cond ((eq window-system 'ns) (get-dock-height))
           (t 0))))

(defun screen-usable-width (&optional display)
  "Return the usable width of the display.
 
   This works like `screen-usable-height', but for the width of the display."
  (display-pixel-width display))

(defun frame-box-get-center (w h cw ch)
  "Center a box inside another box.
 
   Returns a list of `(TOP LEFT)' representing the centered position
   of the box `(w h)' inside the box `(cw ch)'."
  (list (/ (- cw w) 2) (/ (- ch h) 2)))

(defun frame-get-center (frame)
  "Return the center position of FRAME on it's display."
  (let ((disp (frame-parameter frame 'display)))
    (frame-box-get-center (frame-pixel-width frame) (frame-pixel-height frame)
                          (screen-usable-width disp)
                          (screen-usable-height disp))))

(defun frame-center (&optional frame)
  "Center a frame on the screen."
  (interactive)
  (apply 'set-frame-position
         (let* ((frame (or (and (boundp 'frame) frame) (selected-frame)))
                (center (frame-get-center frame)))
           `(,frame ,@center))))

(provide 'lcd-frame)
