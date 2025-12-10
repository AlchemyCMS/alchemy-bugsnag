ENV["RAILS_ENV"] ||= "test"
require_relative "./dummy/application" # Load the dummy app
require "rspec/rails"
require "bugsnag"
