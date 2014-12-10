(add-to-list 'auto-mode-alist '("\\.rabl\\'" . ruby-mode))
(add-hook 'ruby-mode-hook 'auto-complete-mode) ;; chasm
(add-hook 'ruby-mode-hook 'yafolding-mode) ;; chasm
;; toggle ruby block do end vs {  }
(global-set-key (kbd "C-c C-{") (quote ruby-toggle-block))
;; toggle ruby block do end vs {  }
(global-set-key (kbd "C-c C-{") (quote ruby-toggle-block))

;; => include when we get on a more recent version of ruby
 ;; (add-hook 'ruby-mode-hook 'robe-mode)
 ;; (defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
 ;;   (rvm-activate-corresponding-ruby))


