# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'normalizacion/version'

Gem::Specification.new do |spec|
  spec.name          = "normalizacion"
  spec.version       = Normalizacion::VERSION
  spec.authors       = ["Carsten Zimmermann"]
  spec.email         = ["cz@aegisnet.de"]

  spec.summary       = %q{Provides normalization/transliteration functionality for Strings using Ruby Refinements}
  spec.homepage      = "http://github.com/carpodaster/string_normalizr"
  spec.license       = "BSD"

  spec.required_ruby_version = '>= 2.1'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
