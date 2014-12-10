;; alternate approach (let ((default-directory "~/.emacs.d/")) (shell-command "ls"))
(defun myshell ()
  (interactive)

  (switch-to-buffer "*foooooo*")
  (cd "/Users/cmagid/projects/r12")
  (setq command-line-default-directory "/Users/cmagid/projects/r12")
  (shell "*r12*")
  
  (switch-to-buffer "*foooooo*")
  (cd "/Users/cmagid/projects/att")
  (setq command-line-default-directory "/Users/cmagid/projects/att")
  (shell "*att*")

  (switch-to-buffer "*foooooo*")
  (cd "/Users/cmagid/projects/att")
  (setq command-line-default-directory "/Users/cmagid/projects/att")
  (shell "*debug-helper*")

  (switch-to-buffer "*foooooo*")
  (cd "/Users/cmagid/projects/rbm_geek_guides")
  (setq command-line-default-directory "/Users/cmagid/projects/rbm_geek_guides")
  (shell "*gitbook*")

  (switch-to-buffer "*foooooo*")
  (kill-buffer "*foooooo*"))
;(myshell)
