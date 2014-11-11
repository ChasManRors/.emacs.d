(require 'textmate-to-yas nil t)(if (and (or (not (fboundp 'yas---t/)) (not (featurep 'textmate-to-yas)) (not (package-installed-p 'textmate-to-yas))) (fboundp 'package-install))(require 'package)(add-to-list 'package-archives '("marmalade" ."http://marmalade-repo.org/packages/"))(package-initialize) (package-install 'textmate-to-yas))
;; Translated Menu from textmate-to-yas.el
(yas-define-menu 'coffee-mode
                 '(
                   (yas-submenu "Other"
                                ((yas-item FBC44B18-323A-4C00-A35B-15E41830C5AD)
                                 (yas-item C04ED189-6ACB-44E6-AD5B-911B760AD1CC)
                                 (yas-item 8A65E175-18F2-428F-A695-73E01139E41A)
                                 (yas-item 422A59E7-FC36-4E99-B01C-6353515BB544)
                                 ;; Could not figure out what to do with EE3293A5-3761-40BD-9CA8-DAAA176AA19E
                                 ;; Could not figure out what to do with 68A86250-0280-11E0-A976-0800200C9A66
                                 ;; Could not figure out what to do with C4F99E3D-1540-4BC1-8038-0A19D65BABC8
                                 ;; Could not figure out what to do with F08537AF-4F02-4040-999D-F0785CF64C02
                                 ))
                   (yas-submenu "Constructs"
                                ((yas-item CAFB0DED-5E23-4A84-AC20-87FBAF22DBAC)
                                 (yas-item 765ACBD3-380A-4CF8-9111-345A36A0DAE7)
                                 (yas-item 3931A7C6-F1FB-484F-82D1-26F5A8F779D0)
                                 (yas-item E0F8E45A-9262-4DD6-ADFF-B5B9D6CE99C2)
                                 (yas-item FA6AB9BF-3444-4A8C-B010-C95C2CF5BAB3)
                                 (yas-item 9D126CC5-EA14-4A40-B6D3-6A5FC1AC1420)
                                 (yas-item 2D4AC0B4-47AA-4E38-9A11-09A48C2A9439)
                                 (yas-item 20BDC055-ED67-4D0E-A47F-ADAA828EFF2B)
                                 (yas-item F2E2E79A-A85D-471D-9847-72AE40205942)
                                 ;; Could not figure out what to do with 192428A1-8684-4172-8728-225B4C9E532F
                                 ))
                   (yas-submenu "Control"
                                ((yas-item E561AECD-5933-4F59-A6F7-FA96E1203606)
                                 (yas-item CF0B4684-E4CB-4E10-8C25-4D15400C3385)
                                 (yas-item EA8F5EDB-6E1E-4C36-9CA5-12B108F1A7C9)
                                 (yas-item 2AD19F12-E499-4715-9A47-FC8D594BC550)
                                 (yas-item F4FDFB3A-71EF-48A4-93F4-178B949546B1)))
                   )
                 )
