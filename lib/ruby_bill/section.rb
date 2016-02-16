module RubyBill
	class Section
		def initialize
			@data = {}
		end

		def append(*args, &block)
			p args
			p block
		end
	end
end