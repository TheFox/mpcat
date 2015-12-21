# coding: UTF-8

Gem::Specification.new do |spec|
	spec.name          = 'mpcat'
	spec.version       = '1.0.1-dev'
	spec.date          = '2015-12-21'
	spec.author        = 'Christian Mayer'
	spec.email         = 'christian@fox21.at'
	
	spec.summary       = %q{MessagePack Cat}
	spec.description   = %q{Pretty print for MessagePack files.}
	spec.homepage      = 'https://github.com/TheFox/mpcat'
	spec.license       = 'GPL-3.0'
	
	spec.files         = `git ls-files -z`.split("\x0").reject{ |f| f.match(%r{^(test|spec|features)/}) }
	spec.bindir        = 'bin'
	spec.executables   = ['mpcat']
	spec.required_ruby_version = '>=1.9.0'
	
	spec.add_dependency 'msgpack', '~>0.7'
end
