require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Trex
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    # config.assets.paths << Rails.root.join("assets", "images")


    # Here I am allowing the front end to talk to the back end without problems
    # Make sure to have rack-cors gem
     config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        # This origins line means any/all origins are acceptable
        # Which is upsafe in a real environment
        resource '*', headers: :any, methods: [:get, :post, :options]
        # Same as above '*' means all but can only do options and get and post requests 
      end
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
