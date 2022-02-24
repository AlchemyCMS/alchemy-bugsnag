require_relative "../error_tracking/bugsnag_handler"

module Alchemy
  module Bugsnag
    class Engine < ::Rails::Engine
      initializer "alchemy.bugsnag" do
        Alchemy::ErrorTracking.notification_handler = Alchemy::ErrorTracking::BugsnagHandler
      end
    end
  end
end
