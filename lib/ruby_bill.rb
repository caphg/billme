require "ruby_bill/version"
require_relative "ruby_bill/entries"
require_relative "ruby_bill/factory"
require_relative "ruby_bill/sub_section"

module RubyBill
  def self.bill(&block)
    gen = Generator.new
    gen.instance_eval &block
    gen.generate
  end
end
