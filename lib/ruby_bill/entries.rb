module RubyBill

  # Just a showcase for dynamic methods(not used)...
  
  class Entries
    def self.company_entries
      [:company_address, :company_city, :company_country, :company_phone, :company_name, :company_email, :logo]
    end

    def self.services_entries
      [:service]
    end

    def self.client_entries
      [:project_name, :date, :due_date, :address, :email, :name]
    end

    def self.other_entries
      [:notice, :footer]
    end
  end
end