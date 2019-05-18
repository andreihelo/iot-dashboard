require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module IotDashboard
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    ####################################################################
    #####                   GPIO Initialization                    #####
    ####################################################################

    RPi::GPIO.set_numbering :bcm
    RPi::GPIO.setup 21, as: :output, initialize: :low

    # Resetting GPIO settings
    at_exit do
      puts '[IotDashboard] Cleaning up all pins and resetting the selected numbering mode.'
      RPi::GPIO.reset
    end
  end
end
