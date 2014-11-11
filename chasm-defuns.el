;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; Add Charles Magid methods below this line. ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun insert-date () "Insert according to locale's date and time format." (interactive)
  (insert (format-time-string "%c" (current-time))))

;; Switch between horizontal split to vertical and reverse ; http://www.emacswiki.org/emacs/ToggleWindowSplit
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                                                         (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))
(define-key ctl-x-4-map "t" 'toggle-window-split)


;; Simple code fold toggling, makes indenting more meaningful
;; See: http://emacs.wordpress.com/2007/01/16/quick-and-dirty-code-folding/
(defun jao-selective-display ()
  "Activate selective display based on the column at point"
  (interactive)
  (set-selective-display
   (if selective-display
       nil
     (+ 1 (current-column)))))
;; WARNING (global-set-key "." (quote jao-selective-display))
;; no good because prefix in some modes
;; [C-c C-space]
;(global-set-key (quote [3 67108896]) (quote jao-selective-display))

(defun insert-date () "Insert according to locale's date and time format." (interactive)
  (insert (format-time-string "%c" (current-time))))

;; Ncurses colors can be used instead of tail -f
(defun cmm-ansi-color-file ()
  "Show the ansi color escape code in log file correctly"
  (interactive)
  (let (var1)
    (setq var1 'some)
    (ansi-color-apply-on-region (point-min) (point-max))))

;; http://www.emacswiki.org/emacs/MacOSTweaks#toc4
(defun mac-open-terminal ()
   (interactive)
   (let ((dir ""))
     (cond
      ((and (local-variable-p 'dired-directory) dired-directory)
       (setq dir dired-directory))
      ((stringp (buffer-file-name))
       (setq dir (file-name-directory (buffer-file-name))))
      )
     (do-applescript
      (format "
 tell application \"Terminal\"
   activate
   try
     do script with command \"cd %s\"
   on error
     beep
   end try
 end tell" dir))
     ))

(defun cmm-search-buffers (bufregexp regexp &optional allbufs)
  (interactive
   (cons
    (let* ((default (car regexp-history))
           (input
            (read-regexp
             (if current-prefix-arg
                 "List lines in buffers whose names match regexp: "
               "List lines in buffers whose filenames match regexp: "))))
      (if (equal input "")
          default
        input))
    (occur-read-primary-args)))
  (multi-occur-in-matching-buffers bufregexp regexp allbufs))
  



