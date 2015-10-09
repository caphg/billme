require "erb"

class Generator
  def initialize
    @template_file_path = File.expand_path('../views/bill.html.erb', __FILE__)
    @company_name = "N/A"
    @bill_year = "2015"
    @bill_place = "1"
    @bill_number = "1"
  end

  attr_accessor :company_name, :bill_year, :bill_place, :bill_number

  define_method("company") do |name=nil|
    @company_name = name
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