module RubyBill
	class Section
		attr_reader :data

		def initialize
			@data = {}
		end

		def method_missing(name, *args, &block)
			return @data[name.to_sym] = args[0] unless block_given?
			super "Not supported!"
		end
	end
end