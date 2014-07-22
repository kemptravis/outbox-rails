# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'outbox/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'outbox-rails'
  spec.version       = Outbox::Rails::VERSION
  spec.authors       = ['Pete Browne']
  spec.email         = ['pete.browne@localmed.com']
  spec.description   = %q{Rails Railtie for sending email, SMS, and push notifications using the Outbox gem.}
  spec.summary       = %q{Rails Railtie for sending email, SMS, and push notifications using the Outbox gem.}
  spec.homepage      = 'https://github.com/localmed/outbox-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'outbox', '~> 0.2.0'
  spec.add_runtime_dependency 'rails', ['>= 4.0', '<= 4.2']
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'combustion'
end
