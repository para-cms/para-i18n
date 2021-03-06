# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'para/i18n/version'

Gem::Specification.new do |spec|
  spec.name          = "para-i18n"
  spec.version       = Para::I18n::VERSION
  spec.authors       = ["Valentin Ballestrino"]
  spec.email         = ["vala@glyph.fr"]

  spec.summary       = %q{Para CMS I18n admin module for models}
  spec.description   = %q{Para CMS I18n admin module for models}
  spec.homepage      = "https://github.com/para-cms/para-i18n"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "para", "~> 0.8"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
