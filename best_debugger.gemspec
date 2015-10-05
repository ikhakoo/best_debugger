# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'best_debugger/version'

Gem::Specification.new do |spec|
  spec.name          = "best_debugger"
  spec.version       = BestDebugger::VERSION
  spec.authors       = ["ikhakoo"]
  spec.email         = ["ikhakoo@gmail.com"]

  spec.summary       = %q{pry-rails, pry-byebug, better_errors, binding_of_caller all wrapped in one!}
  spec.homepage      = "https://github.com/ikhakoo/best_debugger"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "better_errors"
  spec.add_dependency "binding_of_caller"
  spec.add_dependency "pry-rails"
  spec.add_dependency "pry-byebug"
end
