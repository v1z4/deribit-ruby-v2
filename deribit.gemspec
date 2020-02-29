lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "deribit/version"

Gem::Specification.new do |spec|
  spec.name          = "deribit-v2"
  spec.version       = Deribit::VERSION
  spec.authors       = ["Alexander Dmitriev", "Ivan Tumanov"]
  spec.email         = ["alexanderdmv@gmail.com"]

  spec.summary       = %q{Deribit.com API v2 ruby adapter}
  spec.description   = %q{Deribit.com API v2 ruby adapter}
  spec.homepage      = "https://github.com/v1z4/deribit-ruby-v2"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'websocket-client-simple', '~> 0.3.0'
end
