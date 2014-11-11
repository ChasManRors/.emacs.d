((cl-lib status "installed" recipe
         (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (iedit status "installed" recipe
        (:name iedit :description "Edit multiple regions with the same content simultaneously." :type emacswiki :features iedit))
 (load-relative status "installed" recipe
                (:name load-relative :description "Relative file load (within a multi-file Emacs package)" :type github :pkgname "rocky/emacs-load-relative" :build
                       ("./autogen.sh" "./configure" "make")))
 (loc-changes status "installed" recipe
              (:name loc-changes :description "Emacs package to save marks on locations which may change. Intended use: editing a file which you are debugging" :type github :pkgname "rocky/emacs-loc-changes" :build
                     ("./autogen.sh" "./configure" "make")))
 (package status "installed" recipe
          (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
                 (progn
                   (let
                       ((old-package-user-dir
                         (expand-file-name
                          (convert-standard-filename
                           (concat
                            (file-name-as-directory default-directory)
                            "elpa")))))
                     (when
                         (file-directory-p old-package-user-dir)
                       (add-to-list 'package-directory-list old-package-user-dir)))
                   (setq package-archives
                         (bound-and-true-p package-archives))
                   (mapc
                    (lambda
                      (pa)
                      (add-to-list 'package-archives pa 'append))
                    '(("ELPA" . "http://tromey.com/elpa/")
                      ("gnu" . "http://elpa.gnu.org/packages/")
                      ("marmalade" . "http://marmalade-repo.org/packages/")
                      ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (rhtml-mode status "installed" recipe
             (:name rhtml-mode :description "Major mode for editing RHTML files" :type github :pkgname "eschulte/rhtml" :prepare
                    (progn
                      (autoload 'rhtml-mode "rhtml-mode" nil t)
                      (add-to-list 'auto-mode-alist
                                   '("\\.html.erb$" . rhtml-mode)))))
 (test-simple status "installed" recipe
              (:name test-simple :description "Unit Tests for Emacs that are simple" :type github :pkgname "rocky/emacs-test-simple" :build
                     ("./autogen.sh" "./configure" "make")))
 (textmate status "installed" recipe
           (:name textmate :type git :url "git://github.com/defunkt/textmate.el" :load "textmate.el"))
 (todotxt status "installed" recipe
          (:name todotxt :description "Todo.txt client for Emacs" :type github :pkgname "rpdillon/todotxt.el")))
