;; key binding to show snippets tables
;;(global-set-key [33554457] (quote yas-describe-tables)) ; c-S-y
;;(yas-global-mode t)


;;;;; http://stackoverflow.com/questions/14066526/unset-tab-binding-for-yasnippet ;;;;;
;;;;; use shift-tab to expand to not conflict with pull down of completions (what ever that is called, dange )
  ;; It is crucial you first activate yasnippet's global mode.
 (yas-global-mode t)
  ;(yas/global-mode 1)

  ;; The following is optional.
  (define-key yas-minor-mode-map [backtab]     'yas-expand)

  ;; Strangely, just redefining one of the variations below won't work.
  ;; All rebinds seem to be needed.
  (define-key yas-minor-mode-map [(tab)]        nil)
  (define-key yas-minor-mode-map (kbd "TAB")    nil)
  (define-key yas-minor-mode-map (kbd "<tab>")  nil)
