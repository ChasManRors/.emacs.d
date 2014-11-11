;; TO BE RESOLVED:
;; ls does not support --dired; see `dired-use-ls-dired' for more details.

;; Charles M Magid (chasm) Sat May 24 23:29:19 2014

;; Configuration based almostly http://viget.com/ \
;; extend/emacs-24-rails-development-environment-from-scratch-to-productive-in-5-minu

;; Prereq initialization for emacs init.el, you need to first do the following:
;;   $ cd ~/.emacs.d
;;   $ git clone git://github.com/dimitri/el-get.git

;;;  Source code Navigation commands
;;    ⌘T - Go to File
;;   ⇧⌘T - Go to Symbol
;;    ⌘L - Go to Line
;;   ⇧⌘L - Select Line (or expand Selection to select lines)
;;    ⌘/ - Comment Line (or Selection/Region)
;;    ⌘] - Shift Right (currently indents region)
;;    ⌘[ - Shift Left  (not yet implemented)
;;   ⌥⌘] - Align Assignments
;;   ⌥⌘[ - Indent Line
;;    ⌥↑ - Column Up
;;    ⌥↓ - Column Down
;;  ⌘RET - Insert Newline at Line's End
;;   ⌥⌘T - Reset File Cache (for Go to File)

(load "~/.emacs.d/viget.el")
(load "~/.emacs.d/chasm-defuns.el")
(load "~/.emacs.d/chasm-key-bindings.el")
(load "~/.emacs.d/chasm-custom-behavior.el")
(load "~/.emacs.d/markerpen.el")

(add-to-list 'auto-mode-alist '("\\.rabl\\'" . ruby-mode))

;; SHOW FILE PATH IN FRAME TITLE
(setq-default frame-title-format "%b (%f)")

;; (add-to-list 'load-path "~/.emacs.d/elpa/csv-mode-1.50")
;; (require 'csv-mode)
;; (add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
;; (autoload 'csv-mode "csv-mode""Major mode for editing comma-separated value files." t)

(setq ls-lisp-use-insert-directory-program nil)
(require 'ls-lisp)


;(load "~/.emacs.d/chasm-custom-auto-complete-experimental-behavior.el")

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


;; something is changing my font so I am changing it back here
;; (set-frame-font "Menlo-16")




;; (load-file "~/.emacs.d/elpa/yasnippet-20140810.1626/yasnippet.el")

;;(yas-global-mode t)



;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together

;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20140618.2217/dict")
;(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
;(ac-set-trigger-key "TAB")
;(ac-set-trigger-key "<tab>")



;(load-file "~/.emacs.d/elpa/dash-20140811.523/dash.el")  ; => dependency of wrap





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

  ;; (switch-to-buffer "*foooooo*")
  ;; (cd "/Users/cmagid/projects/compliance-visualization-dashboard-frontend")
  ;; (setq command-line-default-directory "/Users/cmagid/projects/compliance-visualization-dashboard-frontend")
  ;; (shell "*frontend*")

  ;; (switch-to-buffer "*foooooo*")
  ;; (cd "/Users/cmagid/projects/compliance-visualization-dashboard-backend")
  ;; (setq command-line-default-directory "/Users/cmagid/projects/compliance-visualization-dashboard-backend")
  ;; (shell "*backend*")

  (switch-to-buffer "*foooooo*")
  (cd "/Users/cmagid/projects/rbm_geek_guides")
  (setq command-line-default-directory "/Users/cmagid/projects/rbm_geek_guides")
  (shell "*gitbook*")

  (switch-to-buffer "*foooooo*")
  (kill-buffer "*foooooo*"))
(myshell)


;; (fset 'chasm-debugger
;;    [escape ?\C-r ?^ ?\\ ?\[ ?\[ ?0 ?- ?9 ?\] ?+ ?, ?\C-a ?\C-  ?\C-e escape ?w ?\C-x ?b ?* ?d ?e ?b ?u ?g ?g ?e ?r ?* return ?g ?  ?\C-y return])


;; (fset 'chasm-debugger
;;    [escape ?\C-r ?^ ?\\ ?\[ ?\C-a ?\C-  ?\C-e escape ?w escape ?> ?\C-x ?b ?* ?d ?e ?b ?u ?g ?g ?e ?r ?* return escape ?> ?g ?  ?\C-y return ?\C-x ?b return escape ?x ?b ?u ?r ?  ?b ?u ?f ?f return])


(fset 'chasm-debugger
   [?\C-x ?1 escape ?\C-r ?^ ?\\ ?\[ ?\C-a ?\C-  ?\C-e escape ?w ?\C-x ?2 ?\C-x ?b ?* ?d ?e ?b ?u ?g ?g ?e ?r ?* return ?g ?  ?\C-y return ?\C-x ?o escape ?>])

;; relies on shell buffer *debug-helper*
(fset 'chasm-debug-helper
   [escape ?\C-r ?^ ?\\ ?\[ ?\[ ?0 ?- ?9 ?\] ?+ ?, ?  ?\C-a ?\C-  ?\C-e escape ?w escape ?> ?\C-x ?4 ?b ?* ?d ?e ?b ?u ?g ?- ?h ?e ?l ?p ?e ?r ?* return escape ?> ?g ?  ?\C-y return])

;;              C-S-g
;;(global-set-key [33554439] (quote chasm-debugger))

;;              C-S-g
(global-set-key [33554439] (quote chasm-debug-helper))

;; => include when we get on a more recent version of ruby
 ;; (add-hook 'ruby-mode-hook 'robe-mode)
 ;; (defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
 ;;   (rvm-activate-corresponding-ruby))

;;  C-c C-b The following does not work it is overwritten by rinari
(global-set-key [3 2] (quote sgml-skip-tag-backward))

(defun chasm-imenu-add-to-menubar ()
  (interactive "P")
  (imenu-add-to-menubar "Defs"))

(add-hook 'ruby-mode-hook 'chasm-imenu-add-to-menubar) ;; ????

(add-hook 'ruby-mode-hook 'auto-complete-mode) ;; chasm
(add-hook 'ruby-mode-hook 'yafolding-mode) ;; chasm












(fset 'chasm-get-symbol-at-point
   [escape ?\C-b ?\C-  escape ?\C-f escape ?w])


;; show scroll bar
(menu-bar-right-scroll-bar)


;; C-S-j
(global-set-key [33554442] (quote chasm-jump-to-line-in-file))
(fset 'chasm-jump-to-line-in-file
   [?\C-  escape ?x ?m ?o ?v ?e ?- ?b ?e ?g ?i ?n ?n ?i ?n ?g ?- ?o ?f ?- ?l ?i ?n ?e return escape ?w escape ?> ?g ?  ?\C-y return])


(defun chasm-highlight (args)
  (interactive "P")
  (markerpen8)
  (markerpen-mark-region nil) ;(markerpen-clear-region)
  )
(global-set-key (kbd "<C-S-u>")  'chasm-highlight)

;; c-x g
(global-set-key [24 103] (quote chasm-get-symbol-at-point))


(load "~/.emacs.d/rainbow-mode.el")
(add-hook 'css-mode-hook 'rainbow-mode) ;; chasm

(defun wrap-region-global-mode-on nil
  (wrap-region-global-mode t)
  (wrap-region-add-wrapper "$" "$")
  (wrap-region-add-wrapper "{-" "-}" "#")
  (wrap-region-add-wrapper "/" "/" nil 'ruby-mode)
  (wrap-region-add-wrapper "/* " " */" "#" '(java-mode javascript-mode css-mode))
  (wrap-region-add-wrapper "`" "`" nil '(markdown-mode ruby-mode)))
(add-hook 'ruby-mode-hook 'wrap-region-global-mode-on) 


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
           (add-hook
            (quote write-contents-functions)
            (lambda nil
              (delete-trailing-whitespace)
              nil))
           (require
            (quote whitespace))
           "Sometimes the mode needs to be toggled off and on."
           (whitespace-mode 0)
           (whitespace-mode 1))
     (whitespace-line-column . 80)
     (whitespace-style face tabs trailing lines-tail)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

