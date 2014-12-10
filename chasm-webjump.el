(require 'webjump)
(setq webjump-sites
      (append '(
                ("My Home Page" "http://rubycharles.com")
                ("localhost" . "http://localhost:3000")
                ("gitbook" . "http://localhost:4000")
                ("ruby-doc" . "http://ruby-doc.org/core-2.1.5/")
                ("rabbitmq" . "http://localhost:15672/#/exchanges")
                )
              webjump-sample-sites))
