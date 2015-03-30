
;; TODO: add  ability to toggle between augmented and just mine sites

;; To revert to defaults (setq webjump-sites webjump-sample-sites)

(require 'webjump)
(setq webjump-sites 
      (append '(
                ("mine PERSONAL HOME PAGE" "http://rubycharles.com")
                ("mine LOCALHOST" . "http://localhost:3000")
                ("mine GITBOOK LOCAL" . "http://localhost:4000")
                ("mine RUBY-DOC" . "http://ruby-doc.org/core-2.1.5/")
                ("mine RABBITMQ" . "http://localhost:15672/#/exchanges")
                ("mine DICTIONARY" . "https://docs.google.com/a/rbmtechnologies.com/document/d/1RA68lSwUISE1iiBNa2rWkPD5hoZxDSs5qtOTqPQAhgY/edit")
                ("mine RBM DEV CHEATSHEET" . "https://www.evernote.com/l/AAKzbht_uO9A5KZYW9GQ7iSGkjNC_CxbKzM")
                ("mine BBY INTEGRATION NOTES" . "https://docs.google.com/a/rbmtechnologies.com/document/d/1UEketodleNt1ohnAIrMPB6FbYyvgleQKKoTamCmLppw/edit?usp=sharing")
                )
              webjump-sample-sites))

;; Example of: add one more url
(setq webjump-sites
      (append '(     
                ("mine RBM-Technologies Github" . "http://github.com/RBM-Technologies/ ")
                )
              webjump-sites))

(setq webjump-sites
      (append '(     
                ("mine RBM GDrive" . "http://drive.google.com/drive/#my-drive")
                )
              webjump-sites))

(setq webjump-sites
      (append '(     
                ("mine RBM GEEK GUIDES" . "http://rbm-docs.github.io/rbm_geek_guides")
                )
              webjump-sites))


