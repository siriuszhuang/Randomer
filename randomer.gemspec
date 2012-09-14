# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'randomer/version'

Gem::Specification.new do |gem|
  gem.name          = "randomer"
  gem.version       = Randomer::VERSION
  gem.authors       = ["Zhuang Sirui"]
  gem.email         = ["zhuangsirui@nibirutech.com"]
  gem.description   = %q{Write a gem description}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = "http://www.skzsr.com/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
