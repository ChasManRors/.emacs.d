(defun chasm-mark (args)
  (interactive "P")
  (markerpen8)
  (markerpen-mark-region nil) ;(markerpen-clear-region)
  )

(defun chasm-mark1 (args)
  (interactive "P")
  (markerpen1)
  (markerpen-mark-region nil) ;(markerpen-clear-region)
  )

(defun chasm-mark2 (args)
  (interactive "P")
  (markerpen1)
  (markerpen-mark-region nil) ;(markerpen-clear-region)
  (markerpen8)
  (markerpen-mark-region nil) ;(markerpen-clear-region)  
  )

(global-set-key (kbd "<C-S-u>")  'chasm-mark)
;; this should be the same as the line above. I don't know why that one didn't work
(global-set-key [33554453] (quote chasm-mark))
