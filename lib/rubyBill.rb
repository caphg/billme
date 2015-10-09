require "rubyBill/version"
require_relative "rubyBill/entries"
require_relative "rubyBill/generator"
require_relative "rubyBill/group"
require_relative "rubyBill/section"

module RubyBill
  def self.bill(&block)
    gen = Generator.new
    gen.instance_eval &block
    gen.generate
  end
end
