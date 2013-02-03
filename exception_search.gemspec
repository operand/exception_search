# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exception_search/version'

Gem::Specification.new do |gem|
  gem.name          = "exception_search"
  gem.version       = ExceptionSearch::VERSION
  gem.authors       = ["Dan Rodriguez"]
  gem.email         = ["dan@danrodriguez.me"]
  gem.description   = %q{Stuck on a weird exception? Save a few seconds by linking right to the search results}
  gem.summary       = %q{Stuck on a weird exception? Save a few seconds by linking right to the search results}
  gem.homepage      = "https://github.com/operand/exception_search"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
