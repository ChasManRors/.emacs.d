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

(load "~/.emacs.d/chasm-key-bindings.el") ; eventually remove this and place in corresponding corresponding chasm files
;; switched back again because I pushed everythin into  chasm-init.el instead of init.el
(desktop-read)
