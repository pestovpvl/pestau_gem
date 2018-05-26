
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pestau_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "pestau_gem"
  spec.version       = PestauGem::VERSION
  spec.authors       = ["pestovpvl"]
  spec.email         = ["pestovpvl@mail.ru"]

  spec.summary       = %q{Generate copywrite simbol.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "http://codebypasha.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
