;;; mactag-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "mactag" "mactag.el" (21602 39547 0 0))
;;; Generated autoloads from mactag.el

(defadvice find-tag (around find-tag-around) "\
Before calling `find-tag', set correct TAGS-files." (tags-reset-tags-tables) (let ((tags-table-list (mactag-tag-files)) (tags-file-name)) ad-do-it))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; mactag-autoloads.el ends here
