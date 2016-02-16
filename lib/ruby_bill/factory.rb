require "erb"

module RubyBill
  class Factory
    def initialize
      @template_file_path = File.expand_path('../views/bill.html.erb', __FILE__)
      @css_path = File.expand_path('../views/style.css', __FILE__)
      @data = []
      @css = nil

      read_css
    end

    attr_accessor :company_name, :bill_year, :bill_place, :bill_number

    def company(&block)
      p "in company..."
      section = CompanySection.new
      section.append &block
    end

    def generate
      erb = ERB.new(File.read(@template_file_path))
      erb.filename = "bill1"
      result = erb.result(binding)
      File.open('output.html', 'w') do |file|
        file.write(result)
      end
    end

    private
      def read_css
        File.open(@css_path, 'r') do |file|
          @css = file.read
        end
      end
  end
end