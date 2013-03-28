# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'accounting/version'

Gem::Specification.new do |gem|
  gem.name          = "accounting"
  gem.version       = Accounting::VERSION
  gem.authors       = ["Jim Gaylard"]
  gem.email         = ["jgaylard75@gmail.com"]
  gem.description   = %q{A simple double entry accounting system, either standalone or within a rails app}
  gem.summary       = %q{A simple double entry accounting system}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
