require "rails/all"
require "sqlite3"

module Dummy
  class Application < Rails::Application
    config.root = File.expand_path(".", __dir__)
    config.eager_load = ENV["CI"].present?
    config.cache_classes = true
    config.active_support.deprecation = :stderr
    config.secret_key_base = "DUMMY_SECRET"
    config.logger = Logger.new(STDOUT)
    config.active_support.to_time_preserves_timezone = :zone
    config.paths["config/database"] = File.join(config.root, "config", "database.yml")
  end
end

Dummy::Application.initialize!
