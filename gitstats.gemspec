# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitstats/version'

Gem::Specification.new do |spec|
  spec.name          = "gitstats"
  spec.version       = Gitstats::VERSION
  spec.authors       = ["DilumN"]
  spec.email         = ["dilumnavanjana@gmail.com"]

  spec.summary       = %q{Git Log implementation for Ruby}
  spec.description   = %q{Git log for a git repository to get stats}
  spec.homepage      = "http://dilumn.github.io"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = %w(LICENSE.txt README.md gitstats.gemspec) + Dir['bin/*'] + Dir['lib/**/*.rb']
  spec.executables   = Dir['bin/*'].map { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
