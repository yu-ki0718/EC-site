# -*- encoding: utf-8 -*-
# stub: state_machines-activemodel 0.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "state_machines-activemodel".freeze
  s.version = "0.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Abdelkader Boudih".freeze, "Aaron Pfeifer".freeze]
  s.date = "2019-09-03"
  s.description = "Adds support for creating state machines for attributes on ActiveModel".freeze
  s.email = ["terminale@gmail.com".freeze, "aaron@pluginaweek.org".freeze]
  s.homepage = "https://github.com/state-machines/state_machines-activemodel".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.1.3".freeze
  s.summary = "ActiveModel integration for State Machines".freeze

  s.installed_by_version = "3.1.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<state_machines>.freeze, [">= 0.5.0"])
    s.add_runtime_dependency(%q<activemodel>.freeze, [">= 4.1"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.6"])
    s.add_development_dependency(%q<rake>.freeze, [">= 10"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 1"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.4"])
    s.add_development_dependency(%q<minitest-reporters>.freeze, [">= 0"])
  else
    s.add_dependency(%q<state_machines>.freeze, [">= 0.5.0"])
    s.add_dependency(%q<activemodel>.freeze, [">= 4.1"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.6"])
    s.add_dependency(%q<rake>.freeze, [">= 10"])
    s.add_dependency(%q<appraisal>.freeze, [">= 1"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.4"])
    s.add_dependency(%q<minitest-reporters>.freeze, [">= 0"])
  end
end
