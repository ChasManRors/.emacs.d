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


