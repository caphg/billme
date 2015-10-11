module RubyBill
  class Entries
    def self.companyEntries
      [:company_address, :company_city, :company_country, :company_phone, :company_name, :company_email, :logo, :notice, :footer]
    end

    def self.itemEntries
      [:service, :description, :unit, :quantity, :currency]
    end

    def self.clientEntries
      [:project_name, :date, :due_date, :address, :email, :name]
    end
  end
end