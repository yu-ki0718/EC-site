# -*- encoding: utf-8 -*-
# stub: solidus_core 2.10.1 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_core".freeze
  s.version = "2.10.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.23".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.date = "2020-05-14"
  s.description = "Essential models, mailers, and classes for the Solidus e-commerce project.".freeze
  s.email = "contact@solidus.io".freeze
  s.homepage = "http://solidus.io".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.1.3".freeze
  s.summary = "Essential models, mailers, and classes for the Solidus e-commerce project.".freeze

  s.installed_by_version = "3.1.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<actionmailer>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_runtime_dependency(%q<actionpack>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_runtime_dependency(%q<actionview>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_runtime_dependency(%q<activejob>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_runtime_dependency(%q<activemodel>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_runtime_dependency(%q<railties>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_runtime_dependency(%q<activemerchant>.freeze, ["~> 1.66"])
    s.add_runtime_dependency(%q<acts_as_list>.freeze, ["~> 0.3"])
    s.add_runtime_dependency(%q<awesome_nested_set>.freeze, ["~> 3.2"])
    s.add_runtime_dependency(%q<cancancan>.freeze, [">= 2.2", "< 4.0"])
    s.add_runtime_dependency(%q<carmen>.freeze, ["~> 1.1.0"])
    s.add_runtime_dependency(%q<discard>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<friendly_id>.freeze, ["~> 5.0"])
    s.add_runtime_dependency(%q<kaminari-activerecord>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<monetize>.freeze, ["~> 1.8"])
    s.add_runtime_dependency(%q<paperclip>.freeze, [">= 4.2"])
    s.add_runtime_dependency(%q<paranoia>.freeze, ["~> 2.4"])
    s.add_runtime_dependency(%q<ransack>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<state_machines-activerecord>.freeze, ["~> 0.6"])
  else
    s.add_dependency(%q<actionmailer>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_dependency(%q<actionpack>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_dependency(%q<actionview>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_dependency(%q<activejob>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_dependency(%q<activemodel>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_dependency(%q<activerecord>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_dependency(%q<activesupport>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_dependency(%q<railties>.freeze, [">= 5.1", "< 7.0.x"])
    s.add_dependency(%q<activemerchant>.freeze, ["~> 1.66"])
    s.add_dependency(%q<acts_as_list>.freeze, ["~> 0.3"])
    s.add_dependency(%q<awesome_nested_set>.freeze, ["~> 3.2"])
    s.add_dependency(%q<cancancan>.freeze, [">= 2.2", "< 4.0"])
    s.add_dependency(%q<carmen>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<discard>.freeze, ["~> 1.0"])
    s.add_dependency(%q<friendly_id>.freeze, ["~> 5.0"])
    s.add_dependency(%q<kaminari-activerecord>.freeze, ["~> 1.1"])
    s.add_dependency(%q<monetize>.freeze, ["~> 1.8"])
    s.add_dependency(%q<paperclip>.freeze, [">= 4.2"])
    s.add_dependency(%q<paranoia>.freeze, ["~> 2.4"])
    s.add_dependency(%q<ransack>.freeze, ["~> 2.0"])
    s.add_dependency(%q<state_machines-activerecord>.freeze, ["~> 0.6"])
  end
end
