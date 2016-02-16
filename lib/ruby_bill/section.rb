module RubyBill
	class Section

		def self.inherited(subclass)
			p "#{subclass.demodulize} inherited!"
			<<-eos
				class #{subclass.demodulize}
					def self.attributes = Entries.#{subclass.demodulize}_entries
				end
			eos
		end
	end
end