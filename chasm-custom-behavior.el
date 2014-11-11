;; yasnippets everywhere
;; (yas-global-mode 1) 
;; Important! Use C-x # to close an emacsclient buffer. ;; very time consuming
(server-start)
;; chasm Mon May 26 22:28:42 2014
;; ;; Shell completion arguments
;; (setq explicit-shell-file-name "bash")
;; (setq explicit-bash-args '("-c" "export EMACS=; stty echo; bash"))
;; (setq comint-process-echoes t)
;; ;;; ASIDE: if you call ssh from shell directly, add "-t" to explicit-ssh-args to enable terminal.
;; ;; make auto-complete work with readline-complete in shell
;; (add-to-list 'ac-modes 'shell-mode)
;; (add-hook 'shell-mode-hook 'ac-rlc-setup-sources)

;; ;; Start up a shell ; very time consuming
;; (shell nil)
;; Note trailing white space
(setq-default show-trailing-whitespace nil)
;; Remove trailing white space
;(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; very time consuming but very helpful
(desktop-save-mode nil)
;; prevent accidental data loss
(put 'erase-buffer 'disabled nil)
;;
(require 'ido)
(ido-mode t)
;;
(require 'textmate)
(textmate-mode)
;;
(require 'todotxt)
;;
(set-variable (quote visible-bell) t nil) ;; Flash screen for c-g do not ring bell
;;
 ;; (wrap-region-global-mode t)
 ;; (wrap-region-add-wrapper "$" "$")
 ;; (wrap-region-add-wrapper "{-" "-}" "#")
 ;; (wrap-region-add-wrapper "/" "/" nil 'ruby-mode)
 ;; (wrap-region-add-wrapper "/* " " */" "#" '(java-mode javascript-mode css-mode))
 ;; (wrap-region-add-wrapper "`" "`" nil '(markdown-mode ruby-mode))

;; (require 'auto-complete)
;; (global-auto-complete-mode t)

;
;;; Assuming yasnippets are installed via elpa here is how to add rhtml snippets
;;
;;    note more may be gotten from orva-yasnippet-rhtml-mode
;;
;; cd ~/.emacs.d/elpa/
;; git clone git@github.com:eschulte/yasnippets-rails.git
;; ln -s ~/.emacs.d/elpa/yasnippets-rails/rails-snippets/rhtml-mode ~/.emacs.d/elpa/yasnippet-0.8.0/snippets/rhtml-mode
;; cd ~/.emacs.d/elpa/yasnippet-0.8.0/snippets/rhtml-mode
;; touch .yas-make-groups
;; echo "html-mode" > .yas-parents

;; also how to add rspec snippets
(eval-after-load 'rspec-mode '(rspec-install-snippets))

;(todotxt-file "/Users/cmagid/Dropbox/todo/todo.txt" nil)
(setq sr-speedbar-right-side nil)

;; Stop the utf-8 comment from showing up on top of files with encodings
;; (setq ruby-insert-encoding-magic-comment nil) 

(shell nil) ;; Start up a shell ; Note: time consuming


          ;;Experiment with yas
          ;; use popup menu for yas-choose-value
          ;; (require 'popup)

          ;; ;; add some shotcuts in popup menu mode
          ;; (define-key popup-menu-keymap (kbd "M-n") 'popup-next)
          ;; (define-key popup-menu-keymap (kbd "TAB") 'popup-next)
          ;; (define-key popup-menu-keymap (kbd "<tab>") 'popup-next)
          ;; (define-key popup-menu-keymap (kbd "<backtab>") 'popup-previous)
          ;; (define-key popup-menu-keymap (kbd "M-p") 'popup-previous)

          ;; (defun yas-popup-isearch-prompt (prompt choices &optional display-fn)
          ;;   (when (featurep 'popup)
          ;;     (popup-menu*
          ;;      (mapcar
          ;;       (lambda (choice)
          ;;         (popup-make-item
          ;;          (or (and display-fn (funcall display-fn choice))
          ;;              choice)
          ;;          :value choice))
          ;;       choices)
          ;;      :prompt prompt
          ;;      ;; start isearch mode immediately
          ;;      :isearch t
          ;;      )))

          ;; (setq yas-prompt-functions '(yas-popup-isearch-prompt yas-ido-prompt yas-no-prompt))
