require "erb"

module RubyBill
  class Factory
    def initialize
      @template_file_path = File.expand_path('../views/bill.html.erb', __FILE__)
      @css_path = File.expand_path('../views/style.css', __FILE__)
      @data = {}
      @css = nil

      read_css
    end

    def method_missing(name, *args, &block)
      return @data[name.to_sym] = args[0] unless block_given?
      #super "Not supported!"
      section = Section.new
      section.instance_eval &block
      @data[name] = section.data
    end

    def services(&block)
      section = ServicesSection.new
      section.instance_eval &block
      @data[:services] = section.data
      @data[:services][:total] = section.total
      @data[:services][:subtotal] = section.subtotal
    end

    # def company(&block)
    #   section = CompanySection.new
    #   section.instance_eval &block
    #   @data[:company] = section.data;
    # end

    # def client(&block)
    #   section = ClientSection.new
    #   section.instance_eval &block
    #   @data[:client] = section.data
    # end

    # def other(&block)
    #   section = OtherSection.new
    #   section.instance_eval &block
    #   @data[:other] = section.data
    # end

    def generate
      erb = ERB.new(File.read(@template_file_path))
      erb.filename = filename
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