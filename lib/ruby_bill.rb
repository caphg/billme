require "ruby_bill/version"
require_relative "ruby_bill/entries"
require_relative "ruby_bill/factory"
require_relative "ruby_bill/section"
require_relative "ruby_bill/company_section"

module RubyBill
  def self.bill(&block)
    factory = Factory.new
    factory.instance_eval &block
    #factory.generate
  end
end
