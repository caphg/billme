module RubyBill
  class Section

    attr_reader :data

    def initialize
      @data = {}
    end

    Entries.getAll.each do |entry|
      define_method(entry) do |attr=nil|
        @data[entry] = attr
      end
    end
  end
end