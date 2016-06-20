# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitstats/version'

Gem::Specification.new do |spec|
  spec.name          = "gitstats"
  spec.version       = Gitstats::VERSION
  spec.authors       = ["DilumN"]
  spec.email         = ["dilumnavanjana@gmail.com"]

  spec.summary       = %q{Git Log for each author in the repository with added / deleted total number of lines & total commits}
  spec.description   = %q{Gitstats is a ruby gem for `git log` your repository to get valuable informations for each Author in your repository}
  spec.homepage      = "http://dilumn.github.io"
  spec.license       = "MIT"


  spec.files = %w(LICENSE.txt README.md gitstats.gemspec) + Dir['bin/*'] + Dir['lib/**/*.rb']
  spec.executables   = Dir['bin/*'].map { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
