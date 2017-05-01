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


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "/Users/cmagid/.emacs.d/bookmarks")
 '(column-number-mode t)
 '(csv-invisibility-default nil)
 '(custom-safe-themes
   (quote
    ("cd0d4fdf764f757fd659ee2697239a62f38d15203000ced1ad8e43c978942c68" "3b0a350918ee819dca209cec62d867678d7dac74f6195f5e3799aa206358a983" default)))
 '(display-time-day-and-date t)
 '(ede-project-directories (quote ("/Users/cmagid/projects/vmm")))
 '(fringe-mode 0 nil (fringe))
 '(linum-format "%5d  ")
 '(nlinum-format "%5d ")
 '(package-selected-packages
   (quote
    (ace-window e2wm diminish howm calfw bookmark+ bln-mode railscasts-reloaded-theme realgud-pry rust-playground codesearch annotate bm yasnippet yaml-mode yafolding wrap-region web-beautify web visual-regexp tomatinho textmate-to-yas tabbar sr-speedbar seeing-is-believing sass-mode rvm rustfmt ruby-test-mode ruby-refactor ruby-interpolation ruby-hash-syntax rubocop rspec-mode rotate robe rinari realgud readline-complete railscasts-theme racer pomodoro pkg-info nlinum markdown-mode magit mactag lorem-ipsum json-mode indent-guide handlebars-mode git-timemachine git-gutter gh-md evernote-mode erlang display-theme dirtree dash-at-point csv-mode crosshairs crontab-mode coffee-mode cm-mode buffer-move bubbles auto-complete ace-jump-mode ac-js2)))
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
     (whitespace-style face tabs trailing lines-tail))))
 '(scroll-bar-mode (quote right))
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(sql-connection-alist
   (quote
    (("bby-vmm-local"
      (sql-product
       (quote postgres))
      (sql-user "cmagid")
      (sql-database "bby-vmm-local")
      (sql-server "localhost")))))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight ((t (:background "Yellow" :foreground "#2e3436")))))


(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/chasm-init.el")))


(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; ace-window
(global-set-key (kbd "M-p") 'ace-window)
