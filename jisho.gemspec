# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jisho/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Erol Fornoles"]
  gem.email         = ["erol.fornoles@gmail.com"]
  gem.description   = %q{Ruby wrapper for Hunspell}
  gem.summary       = %q{Ruby wrapper for Hunspell}
  gem.homepage      = "http://erol.github.com/jisho"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "jisho"
  gem.require_paths = ["lib"]
  gem.version       = Jisho::VERSION
end
