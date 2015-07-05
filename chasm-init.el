(load "~/.emacs.d/viget.el") ; load first
(load "~/.emacs.d/chasm-viget.el")
(load "~/.emacs.d/chasm-defuns.el")
(load "~/.emacs.d/chasm-custom-behavior.el") ; fold into chasm-viget.el
(load "~/.emacs.d/markerpen.el")
(load "~/.emacs.d/chasm-custom-markerpen.el")
(load "~/.emacs.d/chasm-open-file-in-external-app.el")
(load "~/.emacs.d/chasm-shells.el")
(load "~/.emacs.d/rainbow-mode.el")
(load "~/.emacs.d/chasm-rainbow-mode.el")
(load "~/.emacs.d/chasm-wrap-region.el")
(load "~/.emacs.d/chasm-ruby-mode.el")
(load "~/.emacs.d/chasm-debugging.el")
(load "~/.emacs.d/chasm-webjump") ; I compiled this because it did not seem to load correctly
(load "~/.emacs.d/chasm-yasnippet.el") ;use c-c & c-s

(setq magit-last-seen-setup-instructions "1.4.0")

(fset 'chasm-pry-break-goto
   [escape ?\C-r ?^ ?F ?r ?o ?m ?: ?  ?\C-a ?\C-  ?\C-e escape ?w escape ?> ?. ?g ?g ?  ?\C-y return])

;; If you see
;;
;;         # coding: UTF-8
;;
;; As the first line of a ruby file.
;;
;; Emacs inserts that in ruby file if there are non ascii characters in the file.
;; To get ride of the line remove bad characters. Usually ones copied from a web page.
;;
;; If using emacs it will Not let you save without putting that line in,
;; if you are writing a ruby file with non ascii characters.
;;
;; If you don't remove the offending characters and want to save the file
;; without the UTF-8 directive evaluate the following sexpr:
(setq ruby-insert-encoding-magic-comment nil)

    ;; Stuff To Be Sorted Out And May No Longer Be Needed - Wed Dec 10 11:14:21 2014 - Probably fold into chasm-viget.el
    (setq ls-lisp-use-insert-directory-program nil)
    (require 'ls-lisp)
    (add-to-list 'auto-mode-alist '("\\.log\\'" . auto-revert-mode))
    ;;  C-c C-b The following does not work it is overwritten by rinari
    (global-set-key [3 2] (quote sgml-skip-tag-backward))
    ;; It works but is very ugly
    (defun chasm-imenu-add-to-menubar ()
      (interactive "P")
      (imenu-add-to-menubar "Defs"))
    (add-hook 'ruby-mode-hook 'chasm-imenu-add-to-menubar) ;; ????
    ;;(add-hook 'ruby-mode-hook (imenu-add-to-menubar "Defs")) ;; without quoting list
    (fset 'chasm-get-symbol-at-point
       [escape ?\C-b ?\C-  escape ?\C-f escape ?w])
    ;; C-S-j
    (global-set-key [33554442] (quote chasm-jump-to-line-in-file))
    ;; (fset 'chasm-jump-to-line-in-file
    ;;    [?\C-  escape ?x ?m ?o ?v ?e ?- ?b ?e ?g ?i ?n ?n ?i ?n ?g ?- ?o ?f ?- ?l ?i ?n ?e return escape ?w escape ?> ?g ?  ?\C-y return])
    (fset 'chasm-jump-to-line-in-file
       [escape ?\C-r ?^ ?\\ ?\[ ?\C-a ?\C-  ?\C-e escape ?w ?\C-x ?o ?\C-x ?b ?* ?d ?e ?b ?u ?g ?- ?h ?e ?l ?p ?e ?r ?* return ?g ?  ?\C-y return])
    (define-key global-map "\C-cc" 'org-capture)
    ;;  # => I tried this((yas-global-mode t)) but it wasn't being picked up so I did the next line
    ;(eval-after-load 'ruby-mode `(yas-global-mode))



(fset 'chasm-goto
   [escape ?f ?\C-a backspace C-s-268632075 ?\C-  ?\C-a escape ?w ?\C-x ?u escape ?> ?g ?g ?g backspace ?  ?\C-y return])



(load "~/.emacs.d/chasm-key-bindings.el") ; eventually remove this and place in corresponding corresponding chasm files
;; switched back again because I pushed everythin into  chasm-init.el instead of init.el
(desktop-read)


;; $ brew uninstall --force emacs
;; Uninstalling emacs...
;; $ brew install emacs --cocoa --use-git-head --HEAD
;; ==> Cloning http://git.sv.gnu.org/r/emacs.git
;; Updating /Users/cmagid/Library/Caches/Homebrew/emacs--git
;; ==> Checking out branch master
;; ==> ./autogen.sh
;; ==> ./configure --prefix=/Users/cmagid/brew/Cellar/emacs/HEAD --enable-locallisppath=/Users/cmagid/brew/share/emacs/site-lisp --infodir=/Users/cmagid/brew/Cellar/emacs/HEAD/share/in
;; ==> make
;; ==> make install
;; ==> Caveats
;; A command line wrapper for the cocoa app was installed to:
;;   /Users/cmagid/brew/Cellar/emacs/HEAD/bin/emacs
;;
;; To have launchd start emacs at login:
;;     ln -sfv /Users/cmagid/brew/opt/emacs/*.plist ~/Library/LaunchAgents  chasm [DONE]
;; Then to load emacs now:
;;     launchctl load ~/Library/LaunchAgents/homebrew.mxcl.emacs.plist
;; .app bundles were installed.
;; Run `brew linkapps` to symlink these to /Applications.
;; ==> Summary
;; 🍺  /Users/cmagid/brew/Cellar/emacs/HEAD: 3900 files, 116M, built in 7.1 minutes
;; $ ln -sfv /Users/cmagid/brew/opt/emacs/*.plist ~/Library/LaunchAgents
;; /Users/cmagid/Library/LaunchAgents/homebrew.mxcl.emacs.plist -> /Users/cmagid/brew/opt/emacs/homebrew.mxcl.emacs.plist
;; $ brew linkapps
;; Linking /Users/cmagid/brew/Cellar/emacs/HEAD/Emacs.app
;; Linking /Users/cmagid/brew/Cellar/kdiff3/0.9.98/kdiff3.app
;; Error: /Applications/kdiff3.app already exists, skipping.
;; Linking /Users/cmagid/brew/Cellar/qt/4.8.6/Assistant.app
;; Linking /Users/cmagid/brew/Cellar/qt/4.8.6/Designer.app
;; Linking /Users/cmagid/brew/Cellar/qt/4.8.6/Linguist.app
;; Linking /Users/cmagid/brew/Cellar/qt/4.8.6/QMLViewer.app
;; Linking /Users/cmagid/brew/Cellar/qt/4.8.6/qttracereplay.app
;; Finished linking. Find the links under /Applications.
