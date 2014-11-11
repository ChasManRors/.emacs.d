(defun ca-all-asscs (asslist query)
  "returns a list of all corresponding values (like rassoc)"
  (cond
   ((null asslist) nil)
   (t
    (if (equal (cdr (car asslist)) query)
        (cons (car (car asslist)) (ca-all-asscs (cdr asslist) query))
      (ca-all-asscs (cdr asslist) query)))))
(require 'textmate-to-yas nil t)(if (and (or (not (fboundp 'yas---t/)) (not (featurep 'textmate-to-yas)) (not (package-installed-p 'textmate-to-yas))) (fboundp 'package-install))(require 'package)(add-to-list 'package-archives '("marmalade" ."http://marmalade-repo.org/packages/"))(package-initialize) (package-install 'textmate-to-yas))
;; Translated Menu from textmate-to-yas.el
(yas-define-menu 'fundamental-mode
                 '(
                   ;; Other only has one submenu
                   ;; Could not figure out what to do with FBC44B18-323A-4C00-A35B-15E41830C5AD
                   (yas-item C04ED189-6ACB-44E6-AD5B-911B760AD1CC)
                   ;; Could not figure out what to do with 8A65E175-18F2-428F-A695-73E01139E41A
                   ;; Could not figure out what to do with 422A59E7-FC36-4E99-B01C-6353515BB544
                   ;; Could not figure out what to do with EE3293A5-3761-40BD-9CA8-DAAA176AA19E
                   ;; Could not figure out what to do with 68A86250-0280-11E0-A976-0800200C9A66
                   ;; Could not figure out what to do with C4F99E3D-1540-4BC1-8038-0A19D65BABC8
                   ;; Could not figure out what to do with F08537AF-4F02-4040-999D-F0785CF64C02
                   
                   )
                 )
