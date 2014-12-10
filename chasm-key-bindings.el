 ;; Interface to document definitions. Dash ( http://kapeli.com/ ) is an API Documentation Browser & snippet
(global-set-key "\C-cd" 'dash-at-point)

;;; Additional Key bindings I really like:
;; C-⌘ k
(global-set-key [C-s-268632075] (quote forward-word))
;; C-⌘ j
(global-set-key [C-s-268632074] (quote backward-word))
;; C-shft-L
(global-set-key [33554444] (quote linum-mode) )
;; C-shft-T
(global-set-key [33554452] (quote toggle-truncate-lines))
;; C-shft-D
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
;; C-shft-+
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

