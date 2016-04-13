class Object
	def self.demodulize
		self.to_s.gsub(/^.*::/, '')
	end

	def show(input)
		input ||= '-'
	end
end

Numeric.class_eval do
  def round_money
    '%.2f' % self
  end
end