# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'billme/version'

Gem::Specification.new do |spec|
  spec.name          = "billme"
  spec.version       = Billme::VERSION
  spec.authors       = ["Hrvoje G"]
  spec.email         = ["hrvoje.grdic1@gmail.com"]

  spec.summary       = "Generates invoices"
  spec.description   = "This gem generates invoice based on data provided. The output will be an erb generated HTML file and return html string as result. It is in very early stage and will support other features soon."
  spec.homepage      = "https://github.com/caphg/billme"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "i18n", "~> 0.7.0"
end
