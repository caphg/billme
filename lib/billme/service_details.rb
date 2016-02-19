module Billme
	class ServiceDetails < ServicesSection
		attr_reader :data

		def initialize
			@data = {}
		end

		def method_missing(name, *args, &block)
			return @data[name] = args[0] unless block_given?
			raise "Not supported!"
		end
	end
end