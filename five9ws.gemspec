# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'five9ws/version'

Gem::Specification.new do |gem|
  gem.name          = "five9ws"
  gem.version       = Five9ws::VERSION
  gem.authors       = ["David Hahn"]
  gem.email         = ["dhahn@ctatechs.com"]
  gem.description   = %q{Rubygem integration with five9 API}
  gem.summary       = %q{This is a test, please do not use}
  gem.homepage      = "https://github.com/tonysark/five9ws"
  gem.license       = "MIT"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency('savon', '~> 2.3.0')
  gem.add_dependency('accessible_hash')
end
