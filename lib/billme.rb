require_relative "billme/support/helpers"
require "billme/version"
require_relative "billme/factory"
require_relative "billme/section"
require_relative "billme/services_section"
require_relative "billme/service_details"
require 'i18n'

lang_path = File.expand_path('../../config', __FILE__)
I18n.load_path = Dir["#{lang_path}/locales/*.yml"]
I18n.backend.load_translations
I18n.default_locale = :en

module Billme
  def self.bill(&block)
    factory = Factory.new
    factory.instance_eval &block
    factory.render
  end
end
