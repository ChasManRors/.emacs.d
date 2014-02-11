(require 'textmate-to-yas nil t)(if (and (or (not (fboundp 'yas---t/)) (not (featurep 'textmate-to-yas)) (not (package-installed-p 'textmate-to-yas))) (fboundp 'package-install))(require 'package)(add-to-list 'package-archives '("marmalade" ."http://marmalade-repo.org/packages/"))(package-initialize) (package-install 'textmate-to-yas))
(defgroup yas-ruby-mode nil "ruby-mode snippet options" :group 'yasnippet)
(defcustom yas-ruby-modeenv/TM_RAILS_TEMPLATE_END_RUBY_EXPR nil "ruby-mode environment variable TM_RAILS_TEMPLATE_END_RUBY_EXPR.  May be customized here instead of having the environment value specified.  This customization takes precedence over any environmental variable."
  :type 'string
  :group 'yas-ruby-mode)

(defcustom yas-ruby-modeenv/TM_RAILS_TEMPLATE_START_RUBY_EXPR}submit_tag "${1 nil "ruby-mode environment variable TM_RAILS_TEMPLATE_START_RUBY_EXPR}submit_tag "${1.  May be customized here instead of having the environment value specified.  This customization takes precedence over any environmental variable."
  :type 'string
  :group 'yas-ruby-mode)

(defcustom yas-ruby-modeenv/TM_RAILS_TEMPLATE_START_RUBY_EXPR}stylesheet_link_tag {1 nil "ruby-mode environment variable TM_RAILS_TEMPLATE_START_RUBY_EXPR}stylesheet_link_tag {1.  May be customized here instead of having the environment value specified.  This customization takes precedence over any environmental variable."
  :type 'string
  :group 'yas-ruby-mode)

(defcustom yas-ruby-modeenv/TM_RAILS_TEMPLATE_START_RUBY_EXPR}link_to ${1 nil "ruby-mode environment variable TM_RAILS_TEMPLATE_START_RUBY_EXPR}link_to ${1.  May be customized here instead of having the environment value specified.  This customization takes precedence over any environmental variable."
  :type 'string
  :group 'yas-ruby-mode)

(defcustom yas-ruby-modeenv/TM_RAILS_TEMPLATE_START_RUBY_EXPR}link_to "${1 nil "ruby-mode environment variable TM_RAILS_TEMPLATE_START_RUBY_EXPR}link_to "${1.  May be customized here instead of having the environment value specified.  This customization takes precedence over any environmental variable."
  :type 'string
  :group 'yas-ruby-mode)

(defcustom yas-ruby-modeenv/TM_RAILS_TEMPLATE_START_RUBY_EXPR}javascript_include_tag ${1 nil "ruby-mode environment variable TM_RAILS_TEMPLATE_START_RUBY_EXPR}javascript_include_tag ${1.  May be customized here instead of having the environment value specified.  This customization takes precedence over any environmental variable."
  :type 'string
  :group 'yas-ruby-mode)

