(load "~/.emacs.d/viget.el")
(load "~/.emacs.d/chasm-defuns.el")
(load "~/.emacs.d/chasm-key-bindings.el")
(load "~/.emacs.d/chasm-custom-behavior.el")
(load "~/.emacs.d/markerpen.el")

(add-to-list 'auto-mode-alist '("\\.rabl\\'" . ruby-mode))

;; SHOW FILE PATH IN FRAME TITLE
(setq-default frame-title-format "%b (%f)")

(setq ls-lisp-use-insert-directory-program nil)
(require 'ls-lisp)

;; http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html
(defun xah-open-in-external-app (&optional file)
  "Open the current file or dired marked files in external app.

The app is chosen from your OS's preference."
  (interactive)
  (let ( doIt
         (myFileList
          (cond
           ((string-equal major-mode "dired-mode") (dired-get-marked-files))
           ((not file) (list (buffer-file-name)))
           (file (list file)))))
    
    (setq doIt (if (<= (length myFileList) 5)
                   t
                 (y-or-n-p "Open more than 5 files? ") ) )
    
    (when doIt
      (cond
       ((string-equal system-type "windows-nt")
        (mapc (lambda (fPath) (w32-shell-execute "open" (replace-regexp-in-string "/" "\\" fPath t t)) ) myFileList))
       ((string-equal system-type "darwin")
        (mapc (lambda (fPath) (shell-command (format "open \"%s\"" fPath)) )  myFileList) )
       ((string-equal system-type "gnu/linux")
        (mapc (lambda (fPath) (let ((process-connection-type nil)) (start-process "" nil "xdg-open" fPath)) ) myFileList) ) ) ) ) )


(defun xah-open-in-desktop ()
  "Show current file in desktop (OS's file manager)."
  (interactive)
  (cond
   ((string-equal system-type "windows-nt")
    (w32-shell-execute "explore" (replace-regexp-in-string "/" "\\" default-directory t t)))
   ((string-equal system-type "darwin") (shell-command "open ."))
   ((string-equal system-type "gnu/linux")
    (let ((process-connection-type nil)) (start-process "" nil "xdg-open" "."))
    ;; (shell-command "xdg-open .") ;; 2013-02-10 this sometimes froze emacs till the folder is closed. ⁖ with nautilus
    ) ))


(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)


(add-to-list 'auto-mode-alist '("\\.log\\'" . auto-revert-mode))

;; alternate approach (let ((default-directory "~/.emacs.d/")) (shell-command "ls"))
(defun myshell ()
  (interactive)

  (switch-to-buffer "*foooooo*")
  (cd "/Users/cmagid/projects/r12")
  (setq command-line-default-directory "/Users/cmagid/projects/r12")
  (shell "*r12*")
  
  (switch-to-buffer "*foooooo*")
  (cd "/Users/cmagid/projects/att")
  (setq command-line-default-directory "/Users/cmagid/projects/att")
  (shell "*att*")

  (switch-to-buffer "*foooooo*")
  (cd "/Users/cmagid/projects/att")
  (setq command-line-default-directory "/Users/cmagid/projects/att")
  (shell "*debug-helper*")

  (switch-to-buffer "*foooooo*")
  (cd "/Users/cmagid/projects/rbm_geek_guides")
  (setq command-line-default-directory "/Users/cmagid/projects/rbm_geek_guides")
  (shell "*gitbook*")

  (switch-to-buffer "*foooooo*")
  (kill-buffer "*foooooo*"))
;(myshell)


(fset 'chasm-debugger
   [?\C-x ?1 escape ?\C-r ?^ ?\\ ?\[ ?\C-a ?\C-  ?\C-e escape ?w ?\C-x ?2 ?\C-x ?b ?* ?d ?e ?b ?u ?g ?g ?e ?r ?* return ?g ?  ?\C-y return ?\C-x ?o escape ?>])

;; relies on shell buffer *debug-helper*
(fset 'chasm-debug-helper
   [escape ?\C-r ?^ ?\\ ?\[ ?\[ ?0 ?- ?9 ?\] ?+ ?, ?  ?\C-a ?\C-  ?\C-e escape ?w escape ?> ?\C-x ?4 ?b ?* ?d ?e ?b ?u ?g ?- ?h ?e ?l ?p ?e ?r ?* return escape ?> ?g ?  ?\C-y return])

;;              C-S-g
(global-set-key [33554439] (quote chasm-debug-helper))

;; => include when we get on a more recent version of ruby
 ;; (add-hook 'ruby-mode-hook 'robe-mode)
 ;; (defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
 ;;   (rvm-activate-corresponding-ruby))

;;  C-c C-b The following does not work it is overwritten by rinari
(global-set-key [3 2] (quote sgml-skip-tag-backward))

;; It works but is very ugly
(defun chasm-imenu-add-to-menubar ()
  (interactive "P")
  (imenu-add-to-menubar "Defs"))
(add-hook 'ruby-mode-hook 'chasm-imenu-add-to-menubar) ;; ????
;;(add-hook 'ruby-mode-hook (imenu-add-to-menubar "Defs")) ;; without quoting list

(add-hook 'ruby-mode-hook 'auto-complete-mode) ;; chasm
(add-hook 'ruby-mode-hook 'yafolding-mode) ;; chasm












(fset 'chasm-get-symbol-at-point
   [escape ?\C-b ?\C-  escape ?\C-f escape ?w])


;; show scroll bar
(menu-bar-right-scroll-bar)


;; C-S-j
(global-set-key [33554442] (quote chasm-jump-to-line-in-file))
;; (fset 'chasm-jump-to-line-in-file
;;    [?\C-  escape ?x ?m ?o ?v ?e ?- ?b ?e ?g ?i ?n ?n ?i ?n ?g ?- ?o ?f ?- ?l ?i ?n ?e return escape ?w escape ?> ?g ?  ?\C-y return])
(fset 'chasm-jump-to-line-in-file
   [escape ?\C-r ?^ ?\\ ?\[ ?\C-a ?\C-  ?\C-e escape ?w ?\C-x ?o ?\C-x ?b ?* ?d ?e ?b ?u ?g ?- ?h ?e ?l ?p ?e ?r ?* return ?g ?  ?\C-y return])




(defun chasm-mark (args)
  (interactive "P")
  (markerpen8)
  (markerpen-mark-region nil) ;(markerpen-clear-region)
  )
(global-set-key (kbd "<C-S-u>")  'chasm-mark)


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



;; c-x g
(global-set-key [24 103] (quote chasm-get-symbol-at-point))


(load "~/.emacs.d/rainbow-mode.el")
(add-hook 'css-mode-hook 'rainbow-mode) ;; chasm


;; Try 1
;; The following was a kludge to get wrapping working with the new
;; 24.x version of emacs.  But now that this file is broken out into
;; chasm-init.el it should no longer be necessary.  Because
;; wrap-region-global-mode-on relies on a ruby file being loaded it is
;; very suboptimal
; (defun wrap-region-global-mode-on nil
;   (interactive)
;   (wrap-region-global-mode t)
;   (wrap-region-add-wrapper "$" "$")
;   (wrap-region-add-wrapper "{-" "-}" "#")
;   (wrap-region-add-wrapper "/" "/" nil 'ruby-mode)
;   (wrap-region-add-wrapper "/* " " */" "#" '(java-mode javascript-mode css-mode))
;   (wrap-region-add-wrapper "`" "`" nil '(markdown-mode ruby-mode)))
; (add-hook 'ruby-mode-hook 'wrap-region-global-mode-on) 

;; Try 2
(wrap-region-global-mode t)
(wrap-region-add-wrapper "$" "$")
(wrap-region-add-wrapper "{-" "-}" "#")
(wrap-region-add-wrapper "/" "/" nil 'ruby-mode)
(wrap-region-add-wrapper "/* " " */" "#" '(java-mode javascript-mode css-mode))
(wrap-region-add-wrapper "`" "`" nil '(markdown-mode ruby-mode))

(define-key global-map "\C-cc" 'org-capture)
;;  # => I tried this((yas-global-mode t)) but it wasn't being picked up so I did the next line
;(eval-after-load 'ruby-mode `(yas-global-mode))

;; switched back again because I pushed everythin into  chasm-init.el instead of init.el
(yas-global-mode t)
(desktop-read)
