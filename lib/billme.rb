require_relative "billme/support/helpers"
require "billme/version"
require_relative "billme/factory"
require_relative "billme/section"
require_relative "billme/services_section"
require_relative "billme/service_details"

module Billme
  def self.bill(&block)
    factory = Factory.new
    factory.instance_eval &block
    factory.render
  end
end
