module RubyBill
	class ServicesSection < Section
		attr_reader :data

		def initialize
			@data = {services: []}
		end

		def method_missing(name, *args, &block)
			return @data[name] = args[0] unless block_given?
			service_details = ServiceDetails.new
			service_details.instance_eval &block
			@data[:services] << service_details.data
		end

		def total
			@data[:services].reduce(0) {|sum, obj| sum += obj[:unit].to_i * obj[:quantity].to_i }
		end

		def subtotal
			total * (1 - @data[:tax].to_f)
		end
	end
end