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
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; very time consuming but very helpful
(desktop-save-mode t)

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
;(set-variable (quote visible-bell) nil nil) ;; El Capitain 10.11.3 causes GNU Emacs 24.5.1 screen error (persists bell box)

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


;; list-buffers should not split vertically
;;(setq split-width-threshold 175)
(setq split-width-threshold 175)
(setq split-height-threshold 39)

;; see split-window-sensibly from http://stackoverflow.com/questions/21542914/make-buffer-list-always-appear-in-horizontal-split
;; Up until Sat Mar 28 18:09:54 2015 I was using the next two sexprs
;; (defun my-display-buffer-pop-up-same-width-window (buffer alist)
;;   "A `display-buffer' ACTION forcing a vertical window split.
;;     See `split-window-sensibly' and `display-buffer-pop-up-window'."
;;   (let ((split-width-threshold nil)
;;         (split-height-threshold 0))
;;     (display-buffer-pop-up-window buffer alist)))
;; (add-to-list 'display-buffer-alist
;;              '("\\*Buffer List\\*" my-display-buffer-pop-up-same-width-window))


;; Change line color when line is over 110 characters
(require 'whitespace)
(setq whitespace-line-column 110) ;; limit line length
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

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


(defun display-ansi-colors ()
  (interactive)
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))

(setq paradox-github-token "231cee86dd374ae0b4c97c3c8ccf92ed6f24e65d")



;; https://www.emacswiki.org/emacs/CopyWithoutSelection#toc4  Fri May 19 13:22:03 2017
(defun get-point (symbol &optional arg)
  "get the point"
  (funcall symbol arg)
  (point)
  )
(defun copy-thing (begin-of-thing end-of-thing &optional arg)
  "copy thing between beg & end into kill ring"
  (save-excursion
    (let ((beg (get-point begin-of-thing 1))
          (end (get-point end-of-thing arg)))
      (copy-region-as-kill beg end)))
  )
(defun paste-to-mark(&optional arg)
  "Paste things to mark, or to the prompt in shell-mode"
  (let ((pasteMe
         (lambda()
           (if (string= "shell-mode" major-mode)
               (progn (comint-next-prompt 25535) (yank))
             (progn (goto-char (mark)) (yank) )))))
    (if arg
        (if (= arg 1)
            nil
          (funcall pasteMe))
      (funcall pasteMe))
    ))
(defun copy-word (&optional arg)
  "Copy words at point into kill-ring"
  (interactive "P")
  (copy-thing 'backward-sexp 'forward-sexp arg)
  ;;(paste-to-mark arg)
  )
;; Key binding
(global-set-key (kbd "C-c g")         (quote copy-word))



;; I keep hitting C-Z by misstake, so I bind it to something ARBITRARY Fri May 19 15:21:54 2017
(global-set-key (kbd "C-z")         (quote copy-word))



;; faster than emacs tags
(global-set-key [33554455] (quote codesearch-update-index)) ; C-S-w
