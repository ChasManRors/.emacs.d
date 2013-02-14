(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)


;; Other package manager ;)
(add-to-list 'load-path "~/.emacs.d/auto-install/")
(add-to-list 'load-path "~/.emacs.d/auto-install/auto-install")
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/auto-install")
(auto-install-update-emacswiki-package-name t)

(require 'col-highlight)
(require 'column-marker)
(require 'crosshairs)
(require 'hl-line+)
(require 'vline)
;; (require 'auto-pair+)

;; ==== requires ====
(require 'yaml-mode)

(add-to-list 'load-path "~/.emacs.d/rhtml") ; from https://github.com/eschulte/rhtml
(require 'rhtml-mode)

(require 'auto-complete-config)
(global-auto-complete-mode)

(yas-global-mode)

(require 'ido)
(ido-mode t)

;; (require 'autopair)
;; (autopair-global-mode)

(require 'wrap-region)
(wrap-region-mode t) ;or M-x wrap-region-mode To start wrap-region:
(wrap-region-global-mode t)
(wrap-region-add-wrapper "'" "'")
(wrap-region-add-wrapper "`" "`")

;; ==== set up options ====
(push "/Users/cmagid/brew/bin" exec-path)
(push "/usr/local/bin" exec-path)
(push "/Users/cmagid/.rvm/gems/ruby-1.9.3-p327@emacs24/bin" exec-path)
(push "/Users/cmagid/.rvm/gems/ruby-1.9.3-p327@global/bin" exec-path)
(push "/Users/cmagid/.rvm/rubies/ruby-1.9.3-p327/bin" exec-path)
(push "/Users/cmagid/.rvm/bin" exec-path)
(push "/Users/cmagid/brew/sbin" exec-path)
(push "/usr/local/Cellar/emacs/HEAD/bin" exec-path)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)

(fset 'yes-or-no-p 'y-or-n-p)
(delete-selection-mode t)
(scroll-bar-mode 'right)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(set-fringe-style 5)
(tooltip-mode -1)
(set-frame-font "Menlo-16")
(set-variable (quote visible-bell) t nil) ;; Flash screen for c-g do not ring bell
(setq-default show-trailing-whitespace nil) ;; Note trailing white space
;(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; Remove trailing white space
(load-theme (quote wombat) nil nil) ;; try a color theme
(desktop-save-mode 1) ;; very time consuming
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(scroll-bar-mode (quote right))
 '(speedbar-show-unknown-files t))
 ;; make speedbar show the files http://stackoverflow.com/questions/2220005/how-do-i-enable-speedbar-to-display-all-types-of-files


;; ==== aliases ====
(defalias 'cmm-global-replace-t-toggle-mark-Q-Query-Replace 'find-name-dired)


;; ==== keys ====
(global-set-key (kbd "C-s-;") (quote forward-word))
(global-set-key (kbd "C-s-:") (quote backward-word))

;(global-set-key (kbd "C-s-k") (quote forward-word))
(global-set-key [C-s-268632075] (quote forward-word))
;(global-set-key (kbd "C-s-j") (quote backward-word))
(global-set-key [C-s-268632074] (quote backward-word))

(global-set-key [M-s-left] (quote backward-word))
(global-set-key [M-s-right] (quote forward-word))


(define-key global-map (kbd "C-+") 'crosshairs-mode)
(global-set-key [s-left] (quote backward-sexp)) ;; enable command arrow for movements
(global-set-key [s-right] (quote forward-sexp))

;; ==== defs ====
;; Insert date
(defun insert-date () "Insert according to locale's date and time format." (interactive)
  (insert (format-time-string "%c" (current-time))))

;; Simple code fold toggling, makes indenting more meaningful
;; See: http://emacs.wordpress.com/2007/01/16/quick-and-dirty-code-folding/
(defun jao-selective-display ()
  "Activate selective display based on the column at point"
  (interactive)
  (set-selective-display
   (if selective-display
       nil
     (+ 1 (current-column)))))
;; WARNING (global-set-key "." (quote jao-selective-display))
;; no good because prefix in some modes
;; [C-c C-space]
(global-set-key (quote [3 67108896]) (quote jao-selective-display))

;; switch between horizontal split to vertical and reverse ; http://www.emacswiki.org/emacs/ToggleWindowSplit
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
																		 (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))
(define-key ctl-x-4-map "t" 'toggle-window-split)

;; instead of tail -f
(defun ansi-color-file ()
  "Show the ansi color escape code in log file correctly"
  (interactive)
  (let (var1)
    (setq var1 'some)
    (ansi-color-apply-on-region (point-min) (point-max))))

;; http://www.emacswiki.org/emacs/MacOSTweaks#toc4
(defun mac-open-terminal ()
   (interactive)
   (let ((dir ""))
     (cond
      ((and (local-variable-p 'dired-directory) dired-directory)
       (setq dir dired-directory))
      ((stringp (buffer-file-name))
       (setq dir (file-name-directory (buffer-file-name))))
      )
     (do-applescript
      (format "
 tell application \"Terminal\"
   activate
   try
     do script with command \"cd %s\"
   on error
     beep
   end try
 end tell" dir))
     ))


;; ==== macros ====
;; Org-mode todo list macro
(fset 'cmm-add-todo-in-org-mode
   [?\C-a ?* ?  ?t ?o ?d ?o ?\C-\[ ?b ?\C-\[ ?u ?: ?  ?\C-\[ ?x ?i ?n ?s ?e ?r ?  ?d ?a ?\C-m ?\C-\M-m M-right ?S ?u ?m ?m ?a ?r ?y ?: ?\C-\M-m ?T ?o ?d ?a ?y ?: ?\C-\M-m ?L ?o ?n ?g ?  ?T ?e ?r ?m ?: ?\C-\M-m ?S ?c ?r ?a ?t ?c ?h ?\C-c ?\C-u])

;; ==== file associations ====
;(add-to-list 'auto-mode-alist '("\\.rhtml\\'" . rhtml-mode))
 (add-to-list 'auto-mode-alist '("\\.rhtml$" . rhtml-mode))


;; ==== headless stuff ====
(server-start) ;;; Use C-x # to close an emacsclient buffer. ;; very time consuming
(shell nil) ;;; Start up a shell ;; very time consuming
