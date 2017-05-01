;;; bln-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "bln-mode" "bln-mode.el" (22778 32299 0 0))
;;; Generated autoloads from bln-mode.el

(autoload 'bln-backward-half "bln-mode" "\
This function is used in combination with `bln-forward-half' to provide binary line navigation (see `bln-mode').

\(fn)" t nil)

(autoload 'bln-forward-half "bln-mode" "\
This function is used in combination with `bln-backward-half' to provide binary line navigation (see `bln-mode').

\(fn)" t nil)

(defvar bln-mode nil "\
Non-nil if Bln mode is enabled.
See the `bln-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `bln-mode'.")

(custom-autoload 'bln-mode "bln-mode" nil)

(autoload 'bln-mode "bln-mode" "\
Toggle binary line navigation mode.

Interactively with no argument, this command toggles the mode. A
positive prefix argument enables the mode, any other prefix
argument disables it. From Lisp, argument omitted or nil enables
the mode, `toggle' toggles the state.

Navigating the cursor across long lines of text by keyboard in
Emacs can be cumbersome, since commands like `forward-char',
`backward-char', `forward-word', and `backward-word' move the
cursor linearly, and potentially require a lot of repeated
executions to arrive at the desired position. `bln-mode'
addresses this issue. It defines the commands `bln-forward-half' and
`bln-backward-half' that allow for navigating from any position in a
line to any other position in that line by recursive binary
subdivision.

For instance, if the cursor is at position K, invoking
`bln-backward-half' will move the cursor to position
K/2. Successively invoking `bln-forward-half' will move the cursor to
K/2 + K/4, whereas a second invocation of `bln-backward-half' would
move the cursor to K/2 - K/4.

Below is an illustration of how you can use binary line navigation
to reach character `e' at column 10 from character `b' at column
34 in four steps:

                  ________________|     `bln-backward-half'
         ________|                      `bln-backward-half'
        |___                            `bln-forward-half'
           _|                           `bln-backward-half'
..........e.......................b.....

This approach requires at most log(N) invocations to move from
any position to any other position in a line of N
characters. Note that when you move in the wrong direction---by
mistakenly invoking `bln-backward-half' instead of `bln-forward-half' or
vice versa---you can interrupt the current binary navigation
sequence by moving the cursor away from its current position (for
example, by `forward-char'). You can then start the binary
navigation again from that cursor position.

By default the commands `bln-backward-half' and `bln-forward-half' are
bound to M-[ and M-], respectively.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; bln-mode-autoloads.el ends here
