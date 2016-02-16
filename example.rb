require 'ruby_bill'

RubyBill.bill do
  logo "logo.png"

  company_name "Bitlab d.o.o."
  company_address "Adress 123"
  company_city "City 123"
  company_country "Great country"
  company_phone "+ 123 123 123 1"
  company_email "me@coolguy.com"
  notice "A finance charge of 1.5% will be made on unpaid balances after 30 days."
  footer "Invoice was created on a computer and is valid without the signature and seal."

  client do
    section do
      project_name "Website development"
      name "google"
      date "2015-05-05"
      due_date "2015-06-05"
      address "California"
      email "google@google.com"
    end
  end

  items do
    section do
      service "Website design"
      description "Designing period 2015-5-5 to 2015-6-5"
      unit "1000"
      currency "$"
      quantity "1"
    end
    section do
      service "Backend stuff"
      description "Period 2015-5-5 to 2015-6-5"
      unit "2000"
      currency "$"
      quantity "2"
    end
  end
end