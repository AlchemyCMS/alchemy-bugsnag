require_relative "lib/alchemy/bugsnag/version"

Gem::Specification.new do |spec|
  spec.name = "alchemy-bugsnag"
  spec.version = Alchemy::Bugsnag::VERSION
  spec.authors = ["Thomas von Deyen"]
  spec.email = ["thomas@vondeyen.com"]
  spec.homepage = "https://alchemy-cms.com"
  spec.summary = "Alchemy Bugsnag error notifier."
  spec.description = "Adds a Bugsnag error notifier to AlchemyCMS."
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/AlchemyCMS/alchemy-bugsnag"
  spec.metadata["changelog_uri"] = "https://github.com/AlchemyCMS/alchemy-bugsnag/tree/main/CHANGELOG.md"

  spec.files = Dir["{lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "alchemy_cms", ">= 4.6.7", "< 8"
  spec.add_dependency "bugsnag", "~> 6.0"

  spec.add_development_dependency "github_changelog_generator"
end
