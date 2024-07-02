Gem::Specification.new do |spec|
  spec.name = "libguib"
  spec.version = "1.1.0"
  spec.authors = ["Meinrad Recheis aka Henon", "Lars Kanis"]
  spec.email = ["meinrad.recheis@gmail.com", "lars@greiz-reinsdorf.de"]

  spec.summary = "Helper library for foxGUIb"
  spec.description = "Helper library for the Fox GUI builder"
  spec.homepage = "https://github.com/larskanis/foxGUIb"
  spec.license = "LGPL-2.1"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = [">= 2.5", "< 4.0"]

  spec.add_runtime_dependency "fxruby", "~> 1.6.0"

  spec.add_development_dependency "bundler", ">= 1.11", "<= 3.0"
  spec.add_development_dependency "rake", "~> 13.0"
end
