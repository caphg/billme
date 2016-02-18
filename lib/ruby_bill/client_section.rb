module RubyBill
	class ClientSection < Section
		attr_reader :data

		def initialize
			@data = {}
		end

		# Show case of dynamic methods(obsolete)
		# attributes.each do |attribute|
		# 	define_method(attribute.to_sym) do |value|
		# 		@data[attribute] = value
		# 	end
		# end

		def method_missing(name, *args, &block)
		  return @data[name.to_sym] = args[0] unless block_given?
		  super "Not supported!"
		end
	end
end