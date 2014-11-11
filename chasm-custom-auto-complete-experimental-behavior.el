(require 'auto-complete)

;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                           (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)
;;shell autocomplete

;; Shell completion arguments
(setq explicit-shell-file-name "bash")
(setq explicit-bash-args '("-ct" "export EMACS=; stty echo; bash"))
(setq comint-process-echoes t)

(require 'readline-complete)

;; make auto-complete work with readline-complete in shell
 (add-to-list 'ac-modes 'shell-mode)
 (add-hook 'shell-mode-hook 'ac-rlc-setup-sources)
;;; ASIDE: if you call ssh from shell directly, add "-t" to explicit-ssh-args to enable terminal.
