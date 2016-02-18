module RubyBill
	class CompanySection < Section
		attr_reader :data

		def initialize
			@data = {}
		end

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