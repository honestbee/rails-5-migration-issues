ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.include Devise::Test::ControllerHelpers, type: :controller
end


