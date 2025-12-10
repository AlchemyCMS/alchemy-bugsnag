require "bundler/setup"
require "bundler/gem_tasks"

require "rspec/core"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec

require "github_changelog_generator/task"
require "alchemy/bugsnag/version"
GitHubChangelogGenerator::RakeTask.new(:changelog) do |config|
  config.user = "AlchemyCMS"
  config.project = "alchemy-bugsnag"
  config.future_release = "v#{Alchemy::Bugsnag::VERSION}"
end
