# coding: UTF-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'mpcat/version'

Gem::Specification.new do |spec|
	spec.name          = 'mpcat'
	spec.version       = MPCat::VERSION
	spec.date          = MPCat::DATE
	spec.author        = 'Christian Mayer'
	spec.email         = 'christian@fox21.at'
	
	spec.summary       = %q{MessagePack Cat}
	spec.description   = %q{Pretty print for MessagePack files.}
	spec.homepage      = MPCat::HOMEPAGE
	spec.license       = 'GPL-3.0'
	
	spec.files         = `git ls-files -z`.split("\x0").reject{ |f| f.match(%r{^(test|spec|features)/}) }
	spec.bindir        = 'bin'
	spec.executables   = ['mpcat']
	spec.require_paths = ['lib']
	spec.required_ruby_version = '>=1.9.0'
	
	spec.add_runtime_dependency 'msgpack', '~>1.0'
end
