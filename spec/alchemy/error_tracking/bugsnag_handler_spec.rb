require "rails_helper"
require "alchemy/error_tracking/bugsnag_handler"

module Alchemy
  module ErrorTracking
    RSpec.describe BugsnagHandler do
      let(:exception) { StandardError.new("Test exception") }

      describe ".call" do
        context "when environment is test" do
          it "does not report the exception to Bugsnag" do
            allow(::Rails).to receive(:env).and_return("test")

            expect(::Bugsnag).not_to receive(:notify)
            BugsnagHandler.call(exception)
          end
        end

        context "when environment is development" do
          it "does not report the exception to Bugsnag" do
            allow(::Rails).to receive(:env).and_return("development")

            expect(::Bugsnag).not_to receive(:notify)
            BugsnagHandler.call(exception)
          end
        end

        context "when environment is production" do
          it "reports the exception to Bugsnag" do
            allow(::Rails).to receive(:env).and_return("production")

            expect(::Bugsnag).to receive(:notify).with(exception)
            BugsnagHandler.call(exception)
          end
        end
      end
    end
  end
end
