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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe-mode 12 nil (fringe))
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
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/chasm-init.el")))


(put 'set-goal-column 'disabled nil)
