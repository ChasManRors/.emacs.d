(require 'webjump)
(setq webjump-sites
      (append '(
                ("My Home Page" "http://rubycharles.com")
                ("localhost" . "http://localhost:3000")
                ("gitbook" . "http://localhost:4000")
                ("ruby-doc" . "http://ruby-doc.org/core-2.1.5/")
                ("rabbitmq" . "http://localhost:15672/#/exchanges")
                ("Dictionary" . "https://docs.google.com/a/rbmtechnologies.com/document/d/1RA68lSwUISE1iiBNa2rWkPD5hoZxDSs5qtOTqPQAhgY/edit")
                ("cheat" . "https://www.evernote.com/l/AAKzbht_uO9A5KZYW9GQ7iSGkjNC_CxbKzM")
                ("Ant walk" . "https://docs.google.com/a/rbmtechnologies.com/document/d/1UEketodleNt1ohnAIrMPB6FbYyvgleQKKoTamCmLppw/edit?usp=sharing")
                )
              webjump-sample-sites))

;; Example of: add one more url
;; (setq webjump-sites
;;       (append '(     
;;                 ("Ant walk" . "https://docs.google.com/a/rbmtechnologies.com/document/d/1UEketodleNt1ohnAIrMPB6FbYyvgleQKKoTamCmLppw/edit?usp=sharing")
;;                 )
;;               webjump-sample-sites))
