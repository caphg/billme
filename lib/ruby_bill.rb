require_relative "ruby_bill/support/helpers"
require "ruby_bill/version"
require_relative "ruby_bill/factory"
require_relative "ruby_bill/section"
require_relative "ruby_bill/services_section"
require_relative "ruby_bill/service_details"

module RubyBill
  def self.bill(&block)
    factory = Factory.new
    factory.instance_eval &block
    factory.render
  end
end
