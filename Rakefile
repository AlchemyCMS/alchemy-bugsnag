require "bundler/setup"

load "rails/tasks/statistics.rake"

require "bundler/gem_tasks"

require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
  t.verbose = false
end

task default: :test

require "github_changelog_generator/task"
require "alchemy/bugsnag/version"
GitHubChangelogGenerator::RakeTask.new(:changelog) do |config|
  config.user = "AlchemyCMS"
  config.project = "alchemy-bugsnag"
  config.future_release = "v#{Alchemy::Bugsnag::VERSION}"
end
