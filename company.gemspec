# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'company/version'

Gem::Specification.new do |spec|
  spec.name          = "company"
  spec.version       = Company::VERSION
  spec.authors       = ["Wagner S."]
  spec.email         = ["w777s32@gmail.com"]
  spec.summary       = %q{Company is a app inspired by Uncle Bob Clean Architecture}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/wagners32/company"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.25"
  spec.add_development_dependency "rake", "~> 13.0.6"
  spec.add_development_dependency "rspec", "~> 3.10.0"
end