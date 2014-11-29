lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'less/rails/semantic_ui/version'

Gem::Specification.new do |spec|
  spec.name          = 'less-rails-semantic_ui'
  spec.version       = Less::Rails::SemanticUi::VERSION
  spec.authors       = ['Maxim Dobryakov']
  spec.email         = ['maxim.dobryakov@gmail.com']
  spec.summary       = %q{Semantic UI assets for Rails}
  spec.description   = %q{Semantic UI assets for Rails}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency     'less-rails', '~> 2.6.0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minispec'
  spec.add_development_dependency 'activesupport'

  spec.add_development_dependency 'rails', ['>= 4.0', '< 4.2']
  spec.add_development_dependency 'therubyracer', '>= 0.12.0'
end