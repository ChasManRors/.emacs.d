;; works lexically need one that does it numerically and one that does it on a region.
(fset 'chasm-sort-uniq-buffer
   [?\C-x ?h ?\C-u escape ?| ?s ?o ?r ?t ?  ?- ?u return])

;; From: /Users/cmagid/projects/vmm/lib/tasks/sites/bby.rake @ line 124 :
;; when at a pry breakpoint and a line somewhere above is like the one above goto that point in that file
(fset 'chasm-pry-break-goto
   [escape ?\C-r ?^ ?F ?r ?o ?m ?: ?  ?\C-a ?\C-  ?\C-e escape ?w escape ?> ?. ?g ?g ?  ?\C-y return])

(fset 'chasm-make-var
   [?\C-x ?n ?n ?\C-a escape ?x ?r ?e ?p ?l ?a return ?s return ?  return ?_ return ?\C-x escape escape return ?\C-x ?n ?w ?\C-l])

;; poor mans csv operation
(fset 'chasm-align-commas
   [?\C-u escape ?x ?a ?l ?i ?g tab ?- ?r ?e ?g tab return ?\C-a ?\\ ?\( ?\\ ?, ?* ?\\ ?\) ?, ?\C-k return return return ?y])
;;; c-c a
(global-set-key [3 97] (quote chasm-align-commas))
