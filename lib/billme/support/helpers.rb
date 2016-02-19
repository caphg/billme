class Object
	def self.demodulize
		self.to_s.gsub(/^.*::/, '')
	end
end