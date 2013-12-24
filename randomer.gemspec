# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'randomer/version'

Gem::Specification.new do |gem|
  gem.name          = "randomer"
  gem.version       = Randomer::VERSION
  gem.authors       = ["Zhuang Sirui"]
  gem.email         = ["siriusibunny@gmail.com"]
  gem.description   = %q{A gem for random everything}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = "https://github.com/siriuszhuang/Randomer"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.license       = ""
end
