module RubyBill
	class ServicesSection < Section
		attr_reader :data

		def initialize
			@data = {}
		end

		def method_missing(name, *args, &block)
			return @data[name] = args[0] unless block_given?
			service_details = ServiceDetails.new
			service_details.instance_eval &block
			@data[:service] = [service_details.data]
		end
	end
end