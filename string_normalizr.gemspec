# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{string_normalizr}
  s.version = "0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Carsten Zimmermann"]
  s.date = %q{2010-10-12}
  s.description = %q{Let String instances be conviently normalized}
  s.email = %q{carp@hacksocke.de}
  s.extra_rdoc_files = ["LICENSE", "README.rdoc", "lib/string_normalizr.rb"]
  s.files = ["LICENSE", "README.rdoc", "Rakefile", "VERSION", "init.rb", "lib/string_normalizr.rb", "string_normalizr.gemspec", "test/string_normalizr_test.rb", "Manifest"]
  s.homepage = %q{http://github.com/carpodaster/string_normalizr}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "String_normalizr", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{string_normalizr}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Let String instances be conviently normalized}
  s.test_files = ["test/string_normalizr_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
