# frozen_string_literal: true

require_relative "lib/ruby/measure/version"

Gem::Specification.new do |spec|
  spec.name = "ruby-measure"
  spec.version = Ruby::Measure::VERSION
  spec.authors = ["Eric Hafvenstein"]
  spec.email = ["81645330+theFlexOne@users.noreply.github.com"]

  spec.summary = "Functionality for units-of-measurement to do math and unit conversions"
  spec.homepage = "https://github.com/theFlexOne/ruby-measure"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
