# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'bundler-test-gem1'
  spec.version       = BundlerTestGem1::VERSION
  spec.author        = 'krutisfood'

  spec.summary       = 'Mock gem to demonstrate issue https://github.com/bundler/bundler/issues/5845'
  spec.description   = 'Mock gem to demonstrate issue https://github.com/bundler/bundler/issues/5845'
  spec.homepage      = 'https://github.com/krutisfood/bundler-test-gem1'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = Dir.glob("{bin,exe,lib,spec}/**/*") + %w(README.md)
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'git', '~> 1.2'

  spec.add_development_dependency 'bundler', '~> 1.15'
end
