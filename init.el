(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ;("marmalade" . "http://marmalade-repo.org/packages")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)


;; Other package manager ;)
(add-to-list 'load-path "~/.emacs.d/auto-install/")
(add-to-list 'load-path "~/.emacs.d/auto-install/auto-install")
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/auto-install")
(auto-install-update-emacswiki-package-name t)

(require 'col-highlight)
(require 'column-marker)
(require 'crosshairs)
(require 'hl-line+)
(require 'vline)
;; (require 'auto-pair+)

;; ==== requires ====
(require 'yaml-mode)

(add-to-list 'load-path "~/.emacs.d/rhtml") ; from https://github.com/eschulte/rhtml
(require 'rhtml-mode)

(require 'auto-complete-config)
(global-auto-complete-mode)

(yas-global-mode)  ;;; => ☄("~/.emacs.d/snippets" "/Users/cmagid/.emacs.d/elpa/yasnippet-20130820.1719/snippets")

(require 'ido)
(ido-mode t)

;; (require 'autopair)
;; (autopair-global-mode)

(require 'wrap-region)
(wrap-region-mode t) ;or M-x wrap-region-mode To start wrap-region:
(wrap-region-global-mode t)
(wrap-region-add-wrapper "'" "'")
(wrap-region-add-wrapper "`" "`")

;; ==== set up options ====
(push "/Users/cmagid/brew/bin" exec-path)
(push "/usr/local/bin" exec-path)
(push "/Users/cmagid/.rvm/gems/ruby-1.9.3-p327@emacs24/bin" exec-path)
(push "/Users/cmagid/.rvm/gems/ruby-1.9.3-p327@global/bin" exec-path)
(push "/Users/cmagid/.rvm/rubies/ruby-1.9.3-p327/bin" exec-path)
(push "/Users/cmagid/.rvm/bin" exec-path)
(push "/Users/cmagid/brew/sbin" exec-path)
(push "/usr/local/Cellar/emacs/HEAD/bin" exec-path)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)

(fset 'yes-or-no-p 'y-or-n-p)
(delete-selection-mode t)
(scroll-bar-mode 'right)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(set-fringe-style 5) 
(tooltip-mode -1)
(set-frame-font "Menlo-16") 
(set-variable (quote visible-bell) t nil) ;; Flash screen for c-g do not ring bell
(setq-default show-trailing-whitespace nil) ;; Note trailing white space
;(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; Remove trailing white space

;;(load-theme (quote wombat) nil nil) ;; try a color theme
(load-theme (quote tango-dark) nil nil) ;; try something different
;;; pretty good ones
;; manoj-dark misterioso tango-dark
;(load-theme (quote twilight-bright) nil nil)

;; adwaita 	deeper-blue 	dichromacy 	light-blue
;; manoj-dark 	misterioso 	tango 	tango-dark
;; tsdh-dark 	tsdh-light 	twilight-bright 	wheatgrass
;; whiteboard 	wombat

(desktop-save-mode nil) ;; very time consuming
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1cf3f29294c5a3509b7eb3ff9e96f8e8db9d2d08322620a04d862e40dc201fe2" default)))
 '(exec-path (quote ("/usr/local/Cellar/emacs/HEAD/bin" "/Users/cmagid/brew/sbin" "/Users/cmagid/.rvm/bin" "/Users/cmagid/.rvm/rubies/ruby-1.9.3-p327/bin" "/Users/cmagid/.rvm/gems/ruby-1.9.3-p327@global/bin" "/Users/cmagid/.rvm/gems/ruby-1.9.3-p327@emacs24/bin" "/usr/local/bin" "/Users/cmagid/brew/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Users/cmagid/brew/Cellar/emacs/24.3/libexec/emacs/24.3/x86_64-apple-darwin11.4.2" "/Users/cmagid/.rvm/gems/ruby-2.0.0-p353@blog/bin/rubocop")))
 '(safe-local-variable-values (quote ((checkdoc-minor-mode . t) (require-final-newline . t) (mangle-whitespace . t) (encoding . utf-8))))
 '(scroll-bar-mode (quote right))
 '(speedbar-show-unknown-files t))
 ;; make speedbar show the files http://stackoverflow.com/questions/2220005/how-do-i-enable-speedbar-to-display-all-types-of-files

;(add-hook 'ruby-mode-hook 'robe-mode)
;; (add-hook 'ruby-mode-hook 'iedit-mode) ;;; not needed c-; is already active

(add-hook 'term-mode-hook (lambda()
                (yas-minor-mode -1)))


;; ==== aliases ====
(defalias 'cmm-global-replace-t-toggle-mark-Q-Query-Replace 'find-name-dired)


;; ==== keys ====
(global-set-key (kbd "C-s-;") (quote forward-word))
(global-set-key (kbd "C-s-:") (quote backward-word))

;(global-set-key (kbd "C-s-k") (quote forward-word))
(global-set-key [C-s-268632075] (quote forward-word))
;(global-set-key (kbd "C-s-j") (quote backward-word))
(global-set-key [C-s-268632074] (quote backward-word))

(global-set-key [M-s-left] (quote backward-word))
(global-set-key [M-s-right] (quote forward-word))


(define-key global-map (kbd "C-+") 'crosshairs-mode)
(global-set-key [s-left] (quote backward-sexp)) ;; enable command arrow for movements
(global-set-key [s-right] (quote forward-sexp))

;(global-set-key [C-S-l] (quote linum-mode)) ;; BAD it doesnt like this
(global-set-key [33554444] (quote linum-mode)) ;; C-shft-L
(global-set-key [33554452] (quote toggle-truncate-lines)) ;; C-shft-T
(global-set-key [33554436] (quote compare-windows)) ;; C-shft-D
;;(global-set-key [C-S-SPC] (quote compare-windows)) ;; C-shft-Space
;;(global-set-key [\\C-\\S- ] (quote whitespace-mode)) ;; C-shft-Space
;;(global-set-key [100663328] (quote whitespace-mode)) ;; C-shft-Space
(global-set-key [33554451] (quote whitespace-mode)) ;; C-shft-S

;(global-set-key [s-b] (quote magit-blame-mode)) ;; command-b FAILS
(global-set-key [8388706] (quote magit-blame-mode)) ;; command-b

;; ==== defs ====
;; Insert date
(defun insert-date () "Insert according to locale's date and time format." (interactive)
  (insert (format-time-string "%c" (current-time))))

;; Simple code fold toggling, makes indenting more meaningful
;; See: http://emacs.wordpress.com/2007/01/16/quick-and-dirty-code-folding/
(defun jao-selective-display ()
  "Activate selective display based on the column at point"
  (interactive)
  (set-selective-display
   (if selective-display
       nil
     (+ 1 (current-column)))))
;; WARNING (global-set-key "." (quote jao-selective-display))
;; no good because prefix in some modes
;; [C-c C-space]
(global-set-key (quote [3 67108896]) (quote jao-selective-display))

;; switch between horizontal split to vertical and reverse ; http://www.emacswiki.org/emacs/ToggleWindowSplit
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

;; instead of tail -f
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

;; (defun cmm-multi-occur-in-matching-buffers ()
;;   "DOCSTRING"
;;   (interactive)
;;   (multi-occur-in-matching-buffers)
;; )


;; ==== macros ====
;; Org-mode todo list macro
(fset 'cmm-add-todo-in-org-mode
   [?\C-a ?* ?  ?t ?o ?d ?o ?\C-\[ ?b ?\C-\[ ?u ?: ?  ?\C-\[ ?x ?i ?n ?s ?e ?r ?  ?d ?a ?\C-m ?\C-\M-m M-right ?S ?u ?m ?m ?a ?r ?y ?: ?\C-\M-m ?T ?o ?d ?a ?y ?: ?\C-\M-m ?L ?o ?n ?g ?  ?T ?e ?r ?m ?: ?\C-\M-m ?S ?c ?r ?a ?t ?c ?h ?\C-c ?\C-u])

;; ==== macros for debugging in ruby-mode ====
(fset 'cmm-awesome-print-helper
   [?\C-a ?p ?  ?a ?p ?  ?\C-e return])
(global-set-key [8388720] (quote cmm-awesome-print-helper)) ;; move to local when I have time [COMMAND-p]

(fset 'cmm-ruby-debugger-list-current-point
   [escape ?> ?\C-c ?\C-u ?l ?  ?= return escape ?>]) ;; do a list =
(global-set-key [8388669] (quote cmm-ruby-debugger-list-current-point)) ;; [COMMAND-=]

(fset 'cmm-sync-debug-code-position
   [escape ?\C-r ?^ ?\\ ?\[ ?\C-a ?\C-  ?\C-e escape ?w ?\C-x ?o ?\C-x ?b ?d ?e ?b ?u ?g return ?g ?  ?\C-y return])

(fset 'cmm-sync-debug-code-position
   [?\C-\[ ?\C-r ?^ ?\\ ?\[ ?\C-a ?\C-  ?\C-e ?\C-\[ ?w ?\C-\[ ?> ?\C-x ?o ?\C-x ?b ?d ?e ?b ?u ?g ?\C-m ?g ?  ?\C-y ?\C-m])


;; expects to have ticket number in kill ring and to be placed in the more info cell at the top without ()
(fset 'cmm-more-info-from-tick-number-to
   [?\C-y ?\C-  C-s-268632074 escape ?w C-s-268632075 ?_ ?m ?o ?r ?e ?_ ?i ?n ?f ?o ?\C-  s-left ?\[ ?\C-  s-right escape ?w ?\C-y ?\C-  s-left s-left ?\[ ?\C-i ?\C-p ?\C-e C-s-268632074])


; define some keys only when the major mode shell-mode is active
(add-hook 'shell-mode-hook
          (lambda ()
            (local-set-key (kbd "s-o") 'cmm-sync-debug-code-position)
            ;; (local-set-key (kbd "C-c b") 'blue-word)
            ;; (local-set-key (kbd "C-c p") 'insert-p)
            ;; (local-set-key (kbd "M-4") 'tag-image)
            ;; (local-set-key (kbd "M-5") 'wrap-url)
            )
          )



;; cmm-sync-debug-code-possition

;; (defun cmm-sync-debug-code-possition-new ()
;;   "DOCSTRING"
;;   (interactive)
;;   (let (var1)
;;     (setq var1 some)
    
;;     ))


;; ==== file associations ====
;(add-to-list 'auto-mode-alist '("\\.rhtml\\'" . rhtml-mode))
 (add-to-list 'auto-mode-alist '("\\.rhtml$" . rhtml-mode))


(global-set-key [142614560] (quote textmate-clear-cache))
(set-cursor-color "white")

(global-set-key (kbd "<C-s-up>")     'buf-move-up) ; => control-command-up
(global-set-key (kbd "<C-s-down>")   'buf-move-down)
(global-set-key (kbd "<C-s-left>")   'buf-move-left)
(global-set-key (kbd "<C-s-right>")  'buf-move-right)

;; thanks to JohnB's friend
(require 'thingatpt)
(defun my-git-grep (pattern)
  (interactive (list (read-string "Search pattern: " (substring-no-properties (or (thing-at-point 'symbol) "")))))
  (vc-git-grep pattern "" (substring (shell-command-to-string "git rev-parse --show-toplevel") 0 -1)))
(if (eq system-type 'darwin)
    (global-set-key (kbd "C-c C-f") 'my-git-grep))




  (add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))


  (add-to-list 'auto-mode-alist '("\\.es6\\'" . js2-mode))  ;; for ember
  (add-to-list 'auto-mode-alist '("\\.hbs\\'" . handlebars-mode))  ;; for ember



;(add-hook 'ruby-mode-hook 'textmate-mode)

; http://viget.com/extend/emacs-24-rails-development-environment-from-scratch-to-productive-in-5-minu

;; (defun ruby-mode-hook ()
;;   (autoload 'ruby-mode "ruby-mode" nil t)
;;   (add-hook 'ruby-mode-hook '(lambda ()
;;                                (setq ruby-deep-arglist t)
;;                                (setq ruby-deep-indent-paren nil)
;;                                (setq c-tab-always-indent nil)
;;                                (require 'inf-ruby)
;;                                (require 'ruby-compilation))))
;; (defun rhtml-mode-hook ()

(require 'todotxt)
;; ==== headless stuff ====
(server-start) ;;; Use C-x # to close an emacsclient buffer. ;; very time consuming
(shell nil) ;;; Start up a shell ;; very time consuming

(global-set-key "\C-cd" 'dash-at-point)


;; (cd "/Users/cmagid/projects/Whats_Next")
;; ; rvm mode for whats-next
;; (rvm-use "ruby-2.0.0-p0" "whats_next")

;; ; after rvm is set you can start up a process for use by system
;; ; but cd to project area first
;; ;BAD? (rinari-console nil)
;; ;GOOD
;; (run-ruby)

;; ; load robe then reload files
;; (add-hook 'ruby-mode-hook 'robe-mode)


;; dash-at-point is an installed package.

;;      Status: Installed in `/Users/cmagid/.emacs.d/elpa/dash-at-point-20130417.1034/'.
;;     Version: 20130417.1034
;;     Summary: Search the word at point with Dash [github]

;; Dash ( http://kapeli.com/ ) is an API Documentation Browser and
;; Code Snippet Manager.  dash-at-point make it easy to search the word
;; at point with Dash.

;; Add the following to your .emacs:

;;   (add-to-list 'load-path "/path/to/dash-at-point")
;;   (autoload 'dash-at-point "dash-at-point"
;;             "Search the word at point with Dash." t nil)
;;   (global-set-key "\C-cd" 'dash-at-point)

;; Run `dash-at-point' to search the word at point, then Dash is
;; launched and search the word. To edit the search term first,
;; use C-u to set the prefix argument for `dash-at-point'.

;; Dash queries can be narrowed down with a docset prefix.  You can
;; customize the relations between docsets and major modes.

;;   (add-to-list 'dash-at-point-mode-alist '(perl-mode . "perl"))

;; Additionally, the buffer-local variable `dash-at-point-docset' can
;; be set in a specific mode hook (or file/directory local variables)
;; to programmatically override the guessed docset.  For example:

;;   (add-hook 'rinari-minor-mode-hook
;;             (lambda () (setq dash-at-point-docset "rails")))

;; [back]


;Thu Oct 31 15:03:04 2013
;;; markerpen.el --- Colour and highlight arbitrary sections of buffers

;; Author: Ben Moseley <ben@moseley.name>
;; Created: 2005

;;; Commentary:
;;
;; Allows you to colour and highlight arbitrary sections of buffers.
;;
;; This can be useful when looking through complex code etc. Also the invisible pen
;; is useful for clearing away bits of information which are uninteresting.
;;
;; Run 'M-x markerpen-show-all-pens' to get an idea of what effects you can get
;;
;; The main interface is via the 'M-x markerpen-mark-region' - see documentation on that.
;; The markerpens are all implemented using overlays.
;;
;; Let me know of any comments, suggestions, problems - but there are no
;; guarantees and use of this code is at your own risk.

;;; Code:

(defvar markerpen-current-pen 1)

(global-set-key (kbd "M-C-,") 'markerpen-mark-region) ; Use this to apply a markerpen
(global-set-key (kbd "M-C-'") 'markerpen-clear-all-marks)

;;; should just be ruby mode and shell mode
;;;(global-set-key [3 67108987] (quote ruby-toggle-block)) same as below
(global-set-key (kbd "C-c C-{") (quote ruby-toggle-block))

(defconst markerpens '())

;; Background colour marker pens - these can be used nicely together with font-lock
(defconst markerpen-initial-pen-colours '("dark red" ; markerpen1
					  "gray24"   ; markerpen2
					  "gold4"    ; markerpen3
					  "navy"     ; markerpen4
					  ))
;; More general face-adjusting pens
(defconst markerpen-initial-pen-attrs '((face . markerpen-face-a) ; markerpen5
					(face . markerpen-face-b) ; markerpen6
					(face . markerpen-face-c) ; markerpen7
					(face . markerpen-face-d) ; markerpen8
					(face . markerpen-face-e) ; markerpen9
					(face . markerpen-face-f) ; markerpen10
					))

(defface markerpen-face-a '((t :underline "red")) "MarkerPen")
(defface markerpen-face-b '((t :weight bold :slant italic)) "MarkerPen")
(defface markerpen-face-c '((t :weight bold :height 1.8 :inherit variable-pitch)) "MarkerPen")
(defface markerpen-face-d '((t :foreground "yellow")) "MarkerPen")
(defface markerpen-face-e '((t :foreground "red")) "MarkerPen")
(defface markerpen-face-f '((t :foreground "gray24")) "MarkerPen")

(defun markerpen-with-number (num)
  (intern (format "markerpen%d" num)))

(defun markerpen-new-pen (colour)
  (markerpen-new-pen-attr `(face . (:background ,colour))))

(defun markerpen-new-pen-attr (attr-value-pair)
  (let* ((new-pen-number (length markerpens))
	 (new-pen-sym (markerpen-with-number new-pen-number)))
       (setplist new-pen-sym (list (car attr-value-pair) (cdr attr-value-pair)))
       (set new-pen-sym new-pen-number)
       (add-to-list 'markerpens new-pen-sym t)
       ;; Now attach a convenience function to the symbol to switch straight to that pen
       ;; So you can do eg: M-x markerpen3 to switch the current pen to be markerpen3
       (fset new-pen-sym `(lambda () (interactive) (setq markerpen-current-pen ,new-pen-sym)))))

;; Create the default initial pens
(markerpen-new-pen-attr '(invisible . t)) ; The invisible pen should be first so that it's pen 0.
(mapcar 'markerpen-new-pen markerpen-initial-pen-colours)
(mapcar 'markerpen-new-pen-attr markerpen-initial-pen-attrs)

(make-variable-buffer-local 'markerpen-overlays)
(defun markerpen-mark-region (pen-number-raw)
  "Without an arg, applies the currently selected pen (markerpen-current-pen) to the region.
If -1 is supplied as a numeric arg then all marks are cleared from the region.
If any other numeric arg is supplied then the markerpen with that number is used.
Use 'M-x markerpen-show-all-pens' to see a list of available pens.
The pens are implelented using overlays, so they do not in anyway affect the contents
of the buffer - even if it uses text properties. Because of this you can quite happily
use markerpens together with a mode which uses fontlock.
markerpen0 is an invisible pen which can be used to temporarily remove text from display (it
still exists in the buffer and will be saved etc - it is just the display which is adjusted).
Use 'M-x markerpen-clear-all-marks' to remove all marks from a buffer."
  (interactive "P")			; raw prefix arg - so we can distinguish no-prefix-arg by 'nil'
  (let ((pen-number (prefix-numeric-value pen-number-raw)))
    (if (= -1 pen-number)
	(markerpen-clear-region)
	(let ((pen-to-use (if pen-number-raw pen-number markerpen-current-pen)))
	  (setq new-markerpen-overlay (make-overlay (region-beginning) (region-end)))
	  (deactivate-mark)		; for transient-mark-mode
	  (add-to-list 'markerpen-overlays new-markerpen-overlay)
	  (overlay-put new-markerpen-overlay 'category (markerpen-with-number pen-to-use))))))

(defun markerpen-show-all-pens ()
  "Display a buffer with samples of the markerpens in use"
  (interactive)
    (with-output-to-temp-buffer "*MarkerPens*"
      (save-excursion
	(set-buffer standard-output)
	(insert "MarkerPens - use M-x markerpen-mark-region to apply the pens\n\n")
	(insert "NB - markerpen0 in the invisible pen - it can be used to hide things temporarily\n\n")
	(push-mark (point) t t)		; Ensure mark is set in transient-mark-mode
	(mapcar 'markerpen-show-sample markerpens)
	(insert "\nNote that various markerpens can be combined (applied to the same ")
	(push-mark)
	(insert "region")
	(mapcar 'markerpen-mark-region '(2 7 5 6 8))
	(insert ")")
	)))

(defun markerpen-show-sample (pen)
  (insert (concat (symbol-name pen) "\t"))
  (push-mark)
  (insert (format "This is some Sample Text in Marker Pen %d." (symbol-value pen)))
  (markerpen-mark-region (symbol-value pen))
  (insert "\n")
  (push-mark))

(defun markerpen-clear-all-marks ()
  "Clears all markerpen 'marks' that have been made in the current buffer"
  (interactive)
  (mapcar 'markerpen-delete-overlay markerpen-overlays))

(defun markerpen-clear-region ()
  "Clears all markerpen 'marks' that have been made in the current region only"
  (interactive)
  (mapcar 'markerpen-delete-overlay (overlays-in (region-beginning) (region-end)))
  (deactivate-mark)		; for transient-mark-mode
  )

(defun markerpen-delete-overlay (overlay)
  "Deletes the supplied overlay if it's a markerpen overlay"
  (if (memq (overlay-get overlay 'category) markerpens)
      (progn
	(setq markerpen-overlays (delq overlay markerpen-overlays))
	(delete-overlay overlay))))

(provide 'markerpen)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; I added this call to allow emacs to call rubocop-...
;; you need to have rubocop in your path to be able to call it within emacs
;; The following will do this via rvm
;; Usage: cd ~/projects/ && /Users/cmagid/brew/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs
(exec-path-from-shell-initialize)

(require 'itail)
(itail "~/projects/pcs/log/development.log")

(shell "debug")


;;(tabbar-mode -1) 

;;http://www.emacswiki.org/emacs/SpeedBar
(defconst my-speedbar-buffer-name "SPEEDBAR")
  ; (defconst my-speedbar-buffer-name " SPEEDBAR") ; try this if you get "Wrong type argument: stringp, nil"
  (defun my-speedbar-no-separate-frame ()
    (interactive)
    (when (not (buffer-live-p speedbar-buffer))
      (setq speedbar-buffer (get-buffer-create my-speedbar-buffer-name)
            speedbar-frame (selected-frame)
            dframe-attached-frame (selected-frame)
            speedbar-select-frame-method 'attached
            speedbar-verbosity-level 0
            speedbar-last-selected-file nil)
      (set-buffer speedbar-buffer)
      (speedbar-mode)
      (speedbar-reconfigure-keymaps)
      (speedbar-update-contents)
      (speedbar-set-timer 1)
      (make-local-hook 'kill-buffer-hook)
      (add-hook 'kill-buffer-hook
                (lambda () (when (eq (current-buffer) speedbar-buffer)
                             (setq speedbar-frame nil
                                   dframe-attached-frame nil
                                   speedbar-buffer nil)
                             (speedbar-set-timer nil)))))
    (set-window-buffer (selected-window) 
                       (get-buffer my-speedbar-buffer-name)))

