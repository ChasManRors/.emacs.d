;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "dash-at-point/dash-at-point" "dash-at-point/dash-at-point.el"
;;;;;;  (21377 26494 0 0))
;;; Generated autoloads from dash-at-point/dash-at-point.el

(let ((loads (get 'dash-at-point 'custom-loads))) (if (member '"dash-at-point/dash-at-point" loads) nil (put 'dash-at-point 'custom-loads (cons '"dash-at-point/dash-at-point" loads))))

(defvar dash-at-point-legacy-mode nil "\
Non-nil means use the legacy mode ('dash://') to invoke Dash.
Nil means use the modern mode ('dash-plugin://').
\(This mode may remove in the future.)")

(custom-autoload 'dash-at-point-legacy-mode "dash-at-point/dash-at-point" t)

(defvar dash-at-point-mode-alist '((actionscript-mode . "actionscript") (arduino-mode . "arduino") (c++-mode . "cpp,net,boost,qt,cvcpp,cocos2dx,c,manpages") (c-mode . "c,glib,gl2,gl3,gl4,manpages") (caml-mode . "ocaml") (clojure-mode . "clojure") (coffee-mode . "coffee") (common-lisp-mode . "lisp") (cperl-mode . "perl") (css-mode . "css,bootstrap,foundation,less,awesome,cordova,phonegap") (dart-mode . "dartlang,polymerdart,angulardart") (elixir-mode . "elixir") (emacs-lisp-mode . "elisp") (enh-ruby-mode . "ruby") (erlang-mode . "erlang") (gfm-mode . "markdown") (go-mode . "go,godoc") (groovy-mode . "groovy") (haml-mode . "haml") (haskell-mode . "haskell") (html-mode . "html,svg,css,bootstrap,foundation,awesome,javascript,jquery,jqueryui,jquerym,angularjs,backbone,marionette,meteor,moo,prototype,ember,lodash,underscore,sencha,extjs,knockout,zepto,cordova,phonegap,yui") (jade-mode . "jade") (java-mode . "java,javafx,grails,groovy,playjava,spring,cvj,processing,javadoc") (js2-mode . "javascript,backbone,angularjs") (js3-mode . "nodejs") (latex-mode . "latex") (less-css-mode . "less") (lua-mode . "lua,corona") (markdown-mode . "markdown") (nginx-mode . "nginx") (objc-mode . "cpp,iphoneos,macosx,appledoc,cocoapods,cocos2dx,cocos2d,cocos3d,kobold2d,sparrow,c,manpages") (perl-mode . "perl,manpages") (php-mode . "php,wordpress,drupal,zend,laravel,yii,joomla,ee,codeigniter,cakephp,phpunit,symfony,typo3,twig,smarty,phpp,html,mysql,sqlite,mongodb,psql,redis") (processing-mode . "processing") (puppet-mode . "puppet") (python-mode . "python3,django,twisted,sphinx,flask,tornado,sqlalchemy,numpy,scipy,saltcvp") (ruby-mode . "ruby,rubygems,rails") (sass-mode . "sass,compass,bourbon,neat,css") (scala-mode . "scala,akka,playscala,scaladoc") (stylus-mode . "stylus") (tcl-mode . "tcl") (tuareg-mode . "ocaml") (twig-mode . "twig") (vim-mode . "vim") (yaml-mode . "chef,ansible")) "\
Alist which maps major modes to Dash docset tags.
Each entry is of the form (MAJOR-MODE . DOCSET-TAG) where
MAJOR-MODE is a symbol and DOCSET-TAG is corresponding tags
for one or more docsets in Dash.")

(custom-autoload 'dash-at-point-mode-alist "dash-at-point/dash-at-point" t)

(defvar dash-at-point-mode-alist-legacy '((actionscript-mode . "actionscript") (arduino-mode . "arduino") (c++-mode . "cpp") (c-mode . "c") (caml-mode . "ocaml") (clojure-mode . "clojure") (coffee-mode . "coffee") (common-lisp-mode . "lisp") (cperl-mode . "perl") (css-mode . "css") (elixir-mode . "elixir") (emacs-lisp-mode . "elisp") (enh-ruby-mode . "ruby") (erlang-mode . "erlang") (gfm-mode . "markdown") (go-mode . "go") (groovy-mode . "groovy") (haml-mode . "haml") (haskell-mode . "haskell") (html-mode . "html") (jade-mode . "jade") (java-mode . "java") (js2-mode . "javascript") (js3-mode . "nodejs") (latex-mode . "latex") (less-css-mode . "less") (lua-mode . "lua") (markdown-mode . "markdown") (nginx-mode . "nginx") (objc-mode . "iphoneos") (perl-mode . "perl") (php-mode . "php") (processing-mode . "processing") (puppet-mode . "puppet") (python-mode . "python3") (ruby-mode . "ruby") (sass-mode . "sass") (scala-mode . "scala") (stylus-mode . "stylus") (tcl-mode . "tcl") (tuareg-mode . "ocaml") (twig-mode . "twig") (vim-mode . "vim") (yaml-mode . "chef")) "\
Alist which maps major modes to Dash docset tags.
Each entry is of the form (MAJOR-MODE . DOCSET-TAG) where
MAJOR-MODE is a symbol and DOCSET-TAG is a corresponding tag
for one or more docsets in Dash.")

(custom-autoload 'dash-at-point-mode-alist-legacy "dash-at-point/dash-at-point" t)

(defvar dash-at-point-docsets (mapcar #'cdr dash-at-point-mode-alist) "\
Variable used to store all known Dash docsets. The default value
is a collection of all the values from `dash-at-point-mode-alist'.

Setting or appending this variable can be used to add completion
options to `dash-at-point-with-docset'.")

(defvar dash-at-point-docset nil "\
Variable used to specify the docset for the current buffer.
Users can set this to override the default guess made using
`dash-at-point-mode-alist', allowing the docset to be determined
programatically.

For example, Ruby on Rails programmers might add an \"allruby\"
tag to the Rails, Ruby and Rubygems docsets in Dash, and then add
code to `rinari-minor-mode-hook' or `ruby-on-rails-mode-hook'
which sets this variable to \"allruby\" so that Dash will search
the combined docset.")

(autoload 'dash-at-point "dash-at-point/dash-at-point" "\
Search for the word at point in Dash.
If the optional prefix argument EDIT-SEARCH is specified,
the user will be prompted to edit the search string first.

\(fn &optional EDIT-SEARCH)" t nil)

(autoload 'dash-at-point-with-docset "dash-at-point/dash-at-point" "\
Search for the word at point in Dash with a chosen docset.
The docset options are suggested from the variable
`dash-at-point-docsets'.

If the optional prefix argument EDIT-SEARCH is specified,
the user will be prompted to edit the search string after
choosing the docset.

\(fn &optional EDIT-SEARCH)" t nil)

;;;***

;;;### (autoloads nil "iedit/iedit" "iedit/iedit.el" (21377 27880
;;;;;;  0 0))
;;; Generated autoloads from iedit/iedit.el

(autoload 'iedit-mode "iedit/iedit" "\
Toggle Iedit mode.
This command behaves differently, depending on the mark, point,
prefix argument and variable `iedit-transient-mark-sensitive'.

If Iedit mode is off, turn Iedit mode on.

When Iedit mode is turned on, all the occurrences of the current
region are highlighted.  If one occurrence is modified, the
change are propagated to all other occurrences simultaneously.

If region is not active, the current symbol (returns from
`current-word') is used as the occurrence by default.  The
occurrences of the current symbol, but not include occurrences
that are part of other symbols, are highlighted.  If you still
want to match all the occurrences, even though they are parts of
other symbols, you may have to mark the symbol first.

In the above two situations, with digit prefix argument 0, only
occurrences in current function are matched.  This is good for
renaming refactoring in programming.

You can also switch to Iedit mode from isearch mode directly. The
current search string is used as occurrence.  All occurrences of
the current search string are highlighted.

With an universal prefix argument, the occurrence when Iedit mode
is turned off last time in current buffer is used as occurrence.
This is intended to recover last Iedit mode which is turned off.
If region active, Iedit mode is limited within the current
region.

With repeated universal prefix argument, the occurrence when
Iedit mode is turned off last time (might be in other buffer) is used
as occurrence.  If region active, Iedit mode is limited within
the current region.

If Iedit mode is on and region is active, Iedit mode is
restricted in the region, e.g. the occurrences outside of the region
is excluded.

If Iedit mode is on and region is active, with an universal
prefix argument, Iedit mode is restricted outside of the region,
e.g. the occurrences in the region is excluded.

Turn off Iedit mode in other situations.

Commands:
\\{iedit-current-keymap}

\(fn &optional ARG)" t nil)

(autoload 'iedit-mode-on-function "iedit/iedit" "\
Toggle Iedit mode on current function.

\(fn)" t nil)

(autoload 'iedit-rectangle-mode "iedit/iedit" "\
Toggle iedit-RECT mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "load-relative/load-relative" "load-relative/load-relative.el"
;;;;;;  (21377 27443 0 0))
;;; Generated autoloads from load-relative/load-relative.el

(autoload '__FILE__ "load-relative/load-relative" "\
Return the string name of file/buffer that is currently begin executed.

The first approach for getting this information is perhaps the
most pervasive and reliable. But it the most low-level and not
part of a public API, so it might change in future
implementations. This method uses the name that is recorded by
readevalloop of `lread.c' as the car of variable
`current-load-list'.

Failing that, we use `load-file-name' which should work in some
subset of the same places that the first method works. However
`load-file-name' will be nil for code that is eval'd. To cover
those cases, we try `buffer-file-name' which is initially
correct, for eval'd code, but will change and may be wrong if the
code sets or switches buffers after the initial execution.

As a last resort, you can pass in SYMBOL which should be some
symbol that has been previously defined if none of the above
methods work we will use the file-name value find via
`symbol-file'.

\(fn &optional SYMBOL)" nil nil)

(autoload 'load-relative "load-relative/load-relative" "\
Load an Emacs Lisp file relative to Emacs Lisp code that is in
the process of being loaded or eval'd.

FILE-OR-LIST is either a string or a list of strings containing
files that you want to loaded. If SYMBOL is given, the location of
of the file of where that was defined (as given by `symbol-file' is used
if other methods of finding __FILE__ don't work.

\(fn FILE-OR-LIST &optional SYMBOL)" nil nil)

(autoload 'require-relative "load-relative/load-relative" "\
Run `require' on an Emacs Lisp file relative to the Emacs Lisp code
that is in the process of being loaded or eval'd. The symbol used in require
is the base file name (without directory or file extension) treated as a
symbol.

WARNING: it is best to to run this function before any
buffer-setting or buffer changing operations.

\(fn RELATIVE-FILE &optional OPT-FILE OPT-PREFIX)" nil nil)

(autoload 'require-relative-list "load-relative/load-relative" "\
Run `require-relative' on each name in LIST which should be a list of
strings, each string being the relative name of file you want to run.

\(fn LIST &optional OPT-PREFIX)" nil t)

(autoload 'provide-me "load-relative/load-relative" "\
Call `provide' with the feature's symbol name made from
source-code's file basename sans extension. For example if you
write (provide-me) inside file ~/lisp/foo.el, this is the same as
writing: (provide 'foo).

With a prefix, that prefix is prepended to the `provide' So in
the previous example, if you write (provide-me \"bar-\") this is the
same as writing (provide 'bar-foo)

\(fn &optional PREFIX)" nil t)

;;;***

;;;### (autoloads nil "loc-changes/loc-changes" "loc-changes/loc-changes.el"
;;;;;;  (21377 27449 0 0))
;;; Generated autoloads from loc-changes/loc-changes.el

(autoload 'loc-changes-goto-line "loc-changes/loc-changes" "\
Position `point' at LINE-NUMBER of the current buffer. If
COLUMN-NUMBER is given, position `point' at that column just
before that column number within the line. Note that the beginning of
the line starts at column 0, so the column number display will be one less
than COLUMN-NUMBER. For example COLUMN-NUMBER 1 will set before the first
column on the line and show 0.

The Emacs `goto-line' docstring says it is the wrong to use that
function in a Lisp program. So here is something that I proclaim
is okay to use in a Lisp program.

\(fn LINE-NUMBER &optional COLUMN-NUMBER)" t nil)

(autoload 'loc-changes-add-and-goto "loc-changes/loc-changes" "\
Add a marker at LINE-NUMBER and record LINE-NUMBER and its
marker association in `loc-changes-alist'.

\(fn LINE-NUMBER &optional OPT-BUFFER)" t nil)

(autoload 'loc-changes-clear-buffer "loc-changes/loc-changes" "\
Remove all location-tracking associations in BUFFER.

\(fn &optional OPT-BUFFER)" t nil)

(autoload 'loc-changes-reset-position "loc-changes/loc-changes" "\
Update `loc-changes-alist' so that the line number of point is
used to when aline number is requested.

Updates any existing line numbers referred to in marks at this
position.

This may be useful for example in debugging if you save the
buffer and then cause the debugger to reread/reevaluate the file
so that its positions are will be reflected.

\(fn &optional OPT-BUFFER NO-INSERT)" t nil)

;;;***

;;;### (autoloads nil "rhtml-mode/rhtml-mode" "rhtml-mode/rhtml-mode.el"
;;;;;;  (21377 26129 0 0))
;;; Generated autoloads from rhtml-mode/rhtml-mode.el

(autoload 'rhtml-mode "rhtml-mode/rhtml-mode" "\
Embedded Ruby Mode (RHTML)

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.html\\.erb$" . rhtml-mode))

;;;***

;;;### (autoloads nil "test-simple/test-simple" "test-simple/test-simple.el"
;;;;;;  (21377 27436 0 0))
;;; Generated autoloads from test-simple/test-simple.el

(autoload 'test-simple-start "test-simple/test-simple" "\


\(fn &optional TEST-START-MSG)" nil t)

(autoload 'test-simple-clear "test-simple/test-simple" "\
Initializes and resets everything to run tests. You should run
this before running any assertions. Running more than once clears
out information from the previous run.

\(fn &optional TEST-INFO TEST-START-MSG)" t nil)

;;;***

;;;### (autoloads nil "textmate/textmate" "textmate/textmate.el"
;;;;;;  (21377 24120 0 0))
;;; Generated autoloads from textmate/textmate.el

(defvar textmate-mode nil "\
Non-nil if Textmate mode is enabled.
See the command `textmate-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `textmate-mode'.")

(custom-autoload 'textmate-mode "textmate/textmate" nil)

(autoload 'textmate-mode "textmate/textmate" "\
TextMate Emulation Minor Mode

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "wrap-region/wrap-region" "wrap-region/wrap-region.el"
;;;;;;  (21454 39551 0 0))
;;; Generated autoloads from wrap-region/wrap-region.el

(autoload 'wrap-region-mode "wrap-region/wrap-region" "\
Wrap region with stuff.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-wrap-region-mode "wrap-region/wrap-region" "\
Turn on `wrap-region-mode'.

\(fn)" t nil)

(autoload 'turn-off-wrap-region-mode "wrap-region/wrap-region" "\
Turn off `wrap-region-mode'.

\(fn)" t nil)

(defvar wrap-region-global-mode nil "\
Non-nil if Wrap-Region-Global mode is enabled.
See the command `wrap-region-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `wrap-region-global-mode'.")

(custom-autoload 'wrap-region-global-mode "wrap-region/wrap-region" nil)

(autoload 'wrap-region-global-mode "wrap-region/wrap-region" "\
Toggle Wrap-Region mode in all buffers.
With prefix ARG, enable Wrap-Region-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Wrap-Region mode is enabled in all buffers where
`turn-on-wrap-region-mode' would do it.
See `wrap-region-mode' for more information on Wrap-Region mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("rhtml-mode/rhtml-erb.el" "rhtml-mode/rhtml-fonts.el"
;;;;;;  "rhtml-mode/rhtml-navigation.el" "rhtml-mode/rhtml-ruby-hook.el"
;;;;;;  "rhtml-mode/rhtml-sgml-hacks.el" "todotxt/todotxt.el" "wrap-region/wrap-region-autoloads.el"
;;;;;;  "wrap-region/wrap-region-pkg.el") (21454 39552 363377 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
