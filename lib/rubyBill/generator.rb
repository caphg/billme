require "erb"

module RubyBill
  class Generator
    def initialize
      @template_file_path = File.expand_path('../views/bill.html.erb', __FILE__)
      @bill_year = "2015"
      @bill_place = "1"
      @bill_number = "1"
      @data= {}
      @groups = {}
    end

    attr_accessor :company_name, :bill_year, :bill_place, :bill_number

    Entries.companyEntries.each do |entry|
      define_method(entry) do |att|
        @data[entry.to_sym] = att
      end
    end

    def combine(name, &block)
      group = Group.new(name)
      group.instance_eval &block
      @groups[name] = group
    end

    def items(&block)
      combine(:items, &block)
    end

    def client(&block)
      combine(:client, &block)
    end


    def get_bill_id
      "#{@bill_year}-#{@bill_place}-#{@bill_number}"
    end

    def generate
      erb = ERB.new(File.read(@template_file_path))
      erb.filename = "bill#{get_bill_id}"
      print erb.result(binding)
    end
  end
end