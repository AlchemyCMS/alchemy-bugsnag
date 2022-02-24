# frozen_string_literal: true

require "alchemy/error_tracking"

module Alchemy
  module ErrorTracking
    class BugsnagHandler < BaseHandler
      def self.call(exception)
        return if ["development", "test"].include?(Rails.env)

        ::Bugsnag.notify(exception)
      end
    end
  end
end
