# -*- encoding: utf-8 -*-
# stub: awesome_nested_set 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "awesome_nested_set".freeze
  s.version = "3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brandon Keepers".freeze, "Daniel Morrison".freeze, "Philip Arndt".freeze]
  s.date = "2019-08-21"
  s.description = "An awesome nested set implementation for Active Record".freeze
  s.email = "info@collectiveidea.com".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "http://github.com/collectiveidea/awesome_nested_set".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze, "--inline-source".freeze, "--line-numbers".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.1.3".freeze
  s.summary = "An awesome nested set implementation for Active Record".freeze

  s.installed_by_version = "3.1.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.0.0", "< 7.0"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_development_dependency(%q<combustion>.freeze, [">= 0.5.2", "< 0.5.5"])
    s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry-nav>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10"])
    s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.8.0"])
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 4.0.0", "< 7.0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<combustion>.freeze, [">= 0.5.2", "< 0.5.5"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-nav>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.8.0"])
  end
end
