module RubyBill
  class Section

    attr_reader :data

    def initialize
      @data = {}
    end

    Entries.itemEntries.each do |entry|
      define_method(entry) do |attr=nil|
        @data[entry] = attr
      end
    end

    Entries.clientEntries.each do |entry|
      define_method(entry.to_s) do |attr=nil|
        @data[entry] = attr
      end
    end
  end
end