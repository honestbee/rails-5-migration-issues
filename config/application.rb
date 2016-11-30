require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rails5Sample
  class Application < Rails::Application
    Dir[File.join(Rails.root, 'lib', '*.rb')].each { |lib| require lib }
    config.middleware.use LocaleMiddleware
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
