require "ruby_bill/version"
require_relative "ruby_bill/entries"
require_relative "ruby_bill/generator"
require_relative "ruby_bill/group"
require_relative "ruby_bill/section"
require_relative "ruby_bill/sub_section"

module RubyBill
  def self.bill(&block)
    gen = Generator.new
    gen.instance_eval &block
    gen.generate
  end
end
