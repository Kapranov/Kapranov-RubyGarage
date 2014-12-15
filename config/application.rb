require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module KapranovRubygarage
  class Application < Rails::Application
    config.time_zone = 'Kyiv'
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = [:en, :uk]
    config.i18n.default_locale = :uk
    config.i18n.fallbacks = true
    config.colorize_logging = true
  end
end
