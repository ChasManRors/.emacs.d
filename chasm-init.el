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

(autoload 'dirtree "dirtree" "Add directory to tree view" t)

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



;; (load "~/.emacs.d/chasm-key-bindings.el") ; eventually remove this and place in corresponding corresponding chasm files
;; ;; switched back again because I pushed everythin into  chasm-init.el instead of init.el
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


;;; possibly move next into own package if does not work by default after a reboot of emacs
(defun seeing-is-believing ()
  "Replace the current region (or the whole buffer, if none) with the output
of seeing_is_believing."
  (interactive)
  (let ((beg (if (region-active-p) (region-beginning) (point-min)))
        (end (if (region-active-p) (region-end) (point-max)))
        (origin (point)))
    (shell-command-on-region beg end "seeing_is_believing" nil 'replace)
    (goto-char origin)))

; ~/.emacs.d/elpa/robe-20160303.827/


(defun chasm-clean-for-tts (args)
  (interactive "P")
(goto-char (point-min))
(replace-regexp "^\\[.*:.*M\\]" " " nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Abraham Al-Saleh" "Abraham --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Alex Chan" "Alex --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Benjamin May" "Benjamin --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Cai Gao" "Cai --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Caro Rombys" "Caro --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Chaos Monkey" "Chaos --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Charles Magid" "Charles --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Chris Cerami" "Chris --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Chris Houhoulis" "Chris --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Dennis Krupenik" "Dennis --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Eric Zell" "Eric --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Fabian Alvariza" "Fabian --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Gabriel Barbatto" "Gabriel --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Gaspar Obimba" "Gaspar --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Greg Towne" "Greg --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Jason Dunkerley" "Jason --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "John Balyozian" "John --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Johnny Boursiquot" "Johnny --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Joseph Winfield" "Joseph --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Judy Nguyen" "Judy --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Kay Rhodes" "Kay --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Ken Sonberg" "Ken --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Kevin Fallon" "Kevin --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Laura Simmons" "Laura --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Lauren Glicksteen" "Lauren --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Lorry Rocha" "Lorry --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Marc Smith" "Marc --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Marnen Laibow-Koser" "Marnen --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Martin Goodenberger" "Martin --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Matt Madonna" "Matt --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Meghan Hyde" "Meghan --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Mike MacDonald" "Mike --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Neil Cook" "Neil --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Nima Bahrehdar" "Nima --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Rob Allen" "Rob --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Roman Levitas" "Roman --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Santiago ye" "Santiago --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Sean Hussey" "Sean --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Shelah Horvitz" "Shelah --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Simon Skates" "Simon --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Tracey Zellman" "Tracey --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Vinit Desai" "Vinit --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "tom carlson" "tom --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Rachel Donovan" "Rachel --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "@jared_rabin" "attention jared --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Jared Rabin" "Jared --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "@rdonovan" "attention Rachel --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "@rob_a" "attention Rob --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Michele Pearl" "Michele --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "@channel" "attention Every Body --" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Pivotal Tracker - Sign in" "" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "https://redmine.rbmtechnologies.com/issues" "Red Mine" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "https://www.pivotaltracker.com/epic/show" "Pivotal Tracker" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "https://www.pivotaltracker.com/story/show" "Pivotal Tracker" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "Pivotal Tracker is a simple, effective agile project management tool that allows your team to collaborate around a shared backlog of stories in real time." "" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "(edited)" "" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
(goto-char (point-min))
(replace-string "1

" "" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end)) nil)
)

(load "~/.emacs.d/chasm-key-bindings.el") ; eventually remove this and place in corresponding corresponding chasm files

;; (robe-start nil)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)

(global-unset-key "")

;; use gg at a breakpoint in binding.pry to just to that file
(fset 'chasm-pry-gg
   [escape ?\C-r ?^ ?F ?r ?o ?m ?: ?  ?\C-a ?\C-  ?\C-e escape ?w escape ?> ?` ?g ?g ?  ?\C-y ?` return])

(global-set-key [33554448] (quote chasm-pry-gg));; C-shft-P


(global-set-key [8388724] (quote textmate-goto-file)) ; cmd-t


;; THIS IS A KEEPER Thu May 12 12:38:11 2016
;; put a copy of the original csv in the top window
;; put the print_chain output in the bottom window
;; put the cursor at the start of the first line of the print chain and execute
;; then keep or reject the '**************** ' marked ones
(fset 'chasm-mark-csv-from-print_chain
   [C-s-268632075 C-s-268632074 ?\C-  C-s-268632075 escape ?w ?\C-a ?\C-n ?\C-x ?o escape ?g ?g ?\C-y return ?\C-a ?\C-u ?\C-u ?* ?  ?\C-x ?o])

;;; try out the following

    (add-to-list 'load-path "~/.emacs.d/ruby-complexity/")
    (require 'linum)
    (require 'ruby-complexity)
    (add-hook 'ruby-mode-hook
        (function (lambda ()
          (flymake-mode)
          (linum-mode)
          (ruby-complexity-mode))))
