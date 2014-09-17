# Code coverage
# Travis: use code climate
# Everything else: simplecov
if ENV['RAILS_ENV'] == 'travis'
  require "codeclimate-test-reporter"
  CodeClimate::TestReporter.start
else
  require 'simplecov'
  SimpleCov.start
end

require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require "mail"

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
end
