require "rubyBill/version"
require "rubyBill/generator"

module RubyBill
  def self.bill(&block)
    gen = Generator.new
    gen.instance_eval &block
    gen.generate
  end
end
