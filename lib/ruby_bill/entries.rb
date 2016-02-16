module RubyBill
  class Entries
    def self.company_entries
      [:company_address, :company_city, :company_country, :company_phone, :company_name, :company_email, :logo, :notice, :footer]
    end

    def self.item_entries
      [:service, :description, :unit, :quantity, :currency]
    end

    def self.client_entries
      [:project_name, :date, :due_date, :address, :email, :name]
    end
  end
end