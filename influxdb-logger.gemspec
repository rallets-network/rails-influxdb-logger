# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'influxdb-logger/version'

Gem::Specification.new do |gem|
  gem.name          = "influxdb-logger"
  gem.version       = InfluxdbLogger::VERSION
  gem.authors       = ["Paiyou"]
  gem.email         = ["info@paiyou.co"]
  gem.description   = %q{Influxdb logger}
  gem.summary       = %q{Influxdb logger}
  gem.homepage      = "https://github.com/paiyous-network/influxdb-logger"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec", '~> 3.5.0'
  gem.add_runtime_dependency "railties", ">= 4.2.0", "< 6.0"
  gem.add_runtime_dependency "activesupport", ">= 5.0"
  gem.add_runtime_dependency "influxdb", "~> 0.5.3"
end
