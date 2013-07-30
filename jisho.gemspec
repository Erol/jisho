# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yomu/version'

Gem::Specification.new do |spec|
  spec.name          = "jisho"
  spec.version       = Jisho::VERSION
  spec.authors       = ["Erol Fornoles"]
  spec.email         = ["erol.fornoles@gmail.com"]
  spec.description   = %q{Ruby wrapper for Hunspell}
  spec.summary       = %q{Ruby wrapper for Hunspell}
  spec.homepage      = "http://erol.github.com/jisho"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 2.14"
end

