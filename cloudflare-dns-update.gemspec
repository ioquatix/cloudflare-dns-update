# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cloudflare/dns/update/version'

Gem::Specification.new do |spec|
	spec.name          = "cloudflare-dns-update"
	spec.version       = Cloudflare::DNS::Update::VERSION
	spec.authors       = ["Samuel Williams"]
	spec.email         = ["samuel.williams@oriontransfer.co.nz"]
	spec.description   = <<-EOF
	Provides a client tool for updating Cloudflare records, with a specific
	emphasis on updating IP addresses for domain records. This provides
	dyndns-like functionality.
	EOF
	spec.summary       = "A dyndns client for Cloudflare."
	spec.homepage      = ""
	spec.license       = "MIT"

	spec.files         = `git ls-files`.split($/)
	spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
	spec.require_paths = ["lib"]

	spec.add_dependency "samovar", "~> 1.3"
	spec.add_dependency "tty-prompt", "~> 0.12"
	spec.add_dependency "cloudflare", "~> 4.0"
	
	spec.add_development_dependency 'async-rspec'
	
	spec.add_development_dependency "rspec", "~> 3.6"
	spec.add_development_dependency "bundler"
	spec.add_development_dependency "rake"
end
