# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "middleman-gh-pages"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam McCrea"]
  s.date = "2014-01-08"
  s.description = "Easy deployment of Middleman sites to Github Pages"
  s.email = ["adam@adamlogic.com"]
  s.homepage = "http://github.com/newcontext/middleman-gh-pages"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Easy deployment of Middleman sites to Github Pages"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, ["> 0.9.3"])
    else
      s.add_dependency(%q<rake>, ["> 0.9.3"])
    end
  else
    s.add_dependency(%q<rake>, ["> 0.9.3"])
  end
end
