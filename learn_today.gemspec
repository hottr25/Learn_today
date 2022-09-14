# frozen_string_literal: true

require_relative "lib/learn_today/version"

Gem::Specification.new do |spec|
  spec.name = "learn_today"
  spec.version = LearnToday::VERSION
  spec.authors = ["Rob Hott"]
  spec.email = ["Robhott48@gmail.com"]

  spec.summary = "Learned today"
  spec.description = "Learned today"
  spec.homepage = "https://github.com/hottr25/Learn_today"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/hottr25/Learn_today"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hottr25/Learn_today"
  spec.metadata["changelog_uri"] = "https://github.com/hottr25/Learn_today"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'httparty', '~> 0.20.0'
  spec.add_dependency 'json', '~> 2.6', '>= 2.6.2'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
