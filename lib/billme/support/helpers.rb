class Object
	def self.demodulize
		self.to_s.gsub(/^.*::/, '')
	end

	def show(input)
		input ||= '-'
	end
end