# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "middleman-autoprefixer"
  s.version = "2.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dominik Porada", "Thomas Reynolds"]
  s.date = "2015-05-28"
  s.email = ["dominik@porada.co", "me@tdreyno.com"]
  s.homepage = "https://github.com/middleman/middleman-autoprefixer"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Autoprefixer integration with Middleman"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, [">= 3.3.3"])
      s.add_runtime_dependency(%q<autoprefixer-rails>, ["~> 5.2.0"])
      s.add_development_dependency(%q<middleman>, [">= 3.3.3"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.3"])
      s.add_development_dependency(%q<aruba>, ["~> 0.6"])
      s.add_development_dependency(%q<coveralls>, ["~> 0.7"])
      s.add_development_dependency(%q<bundler>, [">= 1.6"])
      s.add_development_dependency(%q<rake>, [">= 10.3"])
    else
      s.add_dependency(%q<middleman-core>, [">= 3.3.3"])
      s.add_dependency(%q<autoprefixer-rails>, ["~> 5.2.0"])
      s.add_dependency(%q<middleman>, [">= 3.3.3"])
      s.add_dependency(%q<cucumber>, ["~> 1.3"])
      s.add_dependency(%q<aruba>, ["~> 0.6"])
      s.add_dependency(%q<coveralls>, ["~> 0.7"])
      s.add_dependency(%q<bundler>, [">= 1.6"])
      s.add_dependency(%q<rake>, [">= 10.3"])
    end
  else
    s.add_dependency(%q<middleman-core>, [">= 3.3.3"])
    s.add_dependency(%q<autoprefixer-rails>, ["~> 5.2.0"])
    s.add_dependency(%q<middleman>, [">= 3.3.3"])
    s.add_dependency(%q<cucumber>, ["~> 1.3"])
    s.add_dependency(%q<aruba>, ["~> 0.6"])
    s.add_dependency(%q<coveralls>, ["~> 0.7"])
    s.add_dependency(%q<bundler>, [">= 1.6"])
    s.add_dependency(%q<rake>, [">= 10.3"])
  end
end
