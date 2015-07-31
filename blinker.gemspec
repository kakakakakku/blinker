# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blinker/version'

Gem::Specification.new do |spec|
  spec.name          = 'blinker'
  spec.version       = Blinker::VERSION
  spec.authors       = ['kakakakakku']
  spec.email         = ['y.yoshida22@gmail.com']
  spec.summary       = 'blinker: simple timer with blink(1)'
  spec.description   = 'blinker: simple timer with blink(1)'
  spec.homepage      = 'https://github.com/Kakakakakku/blinker'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'

  spec.add_dependency 'thor'
  spec.add_dependency 'rb-blink1', '~> 0.0.7'
end
