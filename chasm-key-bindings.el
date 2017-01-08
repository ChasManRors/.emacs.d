 ;; Interface to document definitions. Dash ( http://kapeli.com/ ) is an API Documentation Browser & snippet
(global-set-key "\C-cd" 'dash-at-point)

;;; Additional Key bindings I really like:
;; C-⌘ k
(global-set-key [C-s-268632075] (quote forward-word))
;; C-⌘ j
(global-set-key [C-s-268632074] (quote backward-word))
;; C-shift-L
(global-set-key [33554444] (quote linum-mode) )
;; C-shift-T
(global-set-key [33554452] (quote toggle-truncate-lines))
;; C-shift-D
(global-set-key [33554436] (quote compare-windows))
;; C-shift-R
(global-set-key [33554450] (quote toggle-read-only))
;; C-c C-space
(global-set-key (quote [3 67108896]) (quote jao-selective-display))
;; C-c C-I (mac has no insert key)
(global-set-key [33554441] (quote overwrite-mode))

;; Interface to document definitions. Dash ( http://kapeli.com/ ) is an API Documentation Browser & snippet
(global-set-key "\C-cd" 'dash-at-point)

;; ⌘ <- Go to Left over sexp
(global-set-key [s-left] (quote backward-sexp))
;; ⌘ -> Go to Right over sexp
(global-set-key [s-right] (quote forward-sexp))
;; C-shift-+
(global-set-key [67108907] (quote crosshairs-mode))
;; C-x 4 t
(setq chas-magid-doc-note 'toggle-window-split)
;; C-x -
(setq chas-magid-doc-note '(runs the command shrink-window-if-larger-than-buffer))
;; C-x C-+
(setq chas-magid-doc-note '(runs the command text-scale-adjust))
;; C-; runs the command iedit-mode,
(setq chas-magid-doc-note '(runs the command iedit-mode))
;; s-b
(global-set-key [8388706] (quote magit-blame-mode))
;; C-S-Q
(global-set-key [33554449] (quote realgud-cmd-quit))
;; alt-⌘-t
(global-set-key [142614560] (quote textmate-clear-cache))
;; Quick search in visible region
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; canonical tab binding fails too much so rebind
(global-set-key [C-tab] (quote yas-expand))

;; may not work
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)



(global-set-key [24 103] (quote chasm-get-symbol-at-point)) ;; c-x g

;; >>>> Not emacs related but I provided a set of Divvy key bindings
;; C-⌥⌘ g
(setq chas-magid-doc-note '(global window))
;; C-⌥⌘ j
(setq chas-magid-doc-note '(left window))
;; C-⌥⌘ k
(setq chas-magid-doc-note '(right window))
;; C-⌥⌘ e
(setq chas-magid-doc-note '(emacs window))
;; C-⌥⌘ s
(setq chas-magid-doc-note '(speedbar window))
;; remote editing c-x c-f
(setq chas-magid-doc-note '(/app@pcs-stg-app-00.dc-00.rbm.local:~/rails/current/config/routes.rb))

;; C-S-b runs the command magit-blame (found in global-map)
(global-set-key [33554434] (quote magit-blame))

;; M-x omniref - https://github.com/dotemacs/omniref.el
(define-key ruby-mode-map (kbd "C-c o") 'omniref)

;; codesearch-build-index        M-x ... RET
;;    Add the contents of DIR to the index.
;; codesearch-list-directories   M-x ... RET
;;    List the directories currently being indexed.
;; codesearch-reset              M-x ... RET
;;    Reset (delete) the codesearch index.
;; codesearch-update-index       M-x ... RET
;;    Rescan all of the directories currently in the index, updating
;; C-shift-. find using codesearch
(global-set-key [67108926] (quote codesearch-search))
