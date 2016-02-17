module RubyBill
	class ClientSection < Section
		attr_reader :data

		def initialize
			@data = {}
		end

		attributes.each do |attribute|
			define_method(attribute.to_sym) do |value|
				@data[attribute] = value
			end
		end
	end
end