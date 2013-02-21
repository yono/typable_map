# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'typable_map/version'

Gem::Specification.new do |gem|
  gem.name          = "typable_map"
  gem.version       = TypableMap::VERSION
  gem.authors       = ["Yusaku ONO"]
  gem.email         = ["yono.05@gmail.com"]
  gem.description   = %q{TypableMap library inspired by TweetIrcGateway and FacebookIrcGateway}
  gem.summary       = %q{TypableMap library inspired by TweetIrcGateway and FacebookIrcGateway}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
