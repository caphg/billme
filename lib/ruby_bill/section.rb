module RubyBill
	class Section

		# Just a showcase...(obsolete)
		def self.inherited(klass)
			klass.class_eval do
				def self.attributes
					Entries.send("#{self.demodulize.downcase.split('section')[0]}_entries")
				end
			end
		end

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