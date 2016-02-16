module RubyBill
	class Section

		def self.inherited(subclass)
			p subclass + 'inherited!'
			<<-eos
				class #{subclass}
					def self.attributes = Entries.#{subclass.lower}_entries
				end
			eos
		end
	end
end