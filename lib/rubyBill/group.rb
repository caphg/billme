module RubyBill
  class Group

    attr_accessor(:sections)

    def initialize(name)
      @name = name
      @sections = []
    end

    def section(&block)
      section = Section.new
      section.instance_eval &block
      sections.push section
    end
  end
end