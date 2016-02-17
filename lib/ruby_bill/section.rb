module RubyBill
	class Section
		def self.inherited(klass)
			klass.class_eval do
				def self.attributes
					Entries.send("#{self.demodulize.downcase.split('section')[0]}_entries")
				end
			end
		end
	end
end