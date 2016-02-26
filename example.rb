require 'billme'

Billme.bill do
  number "2016-1-1"
  filename "Bill printout"

  company do
    logo "logo.png"

    company_name "Enterprise LLC"
    company_address "The Neutral Zone 123"
    company_city "Beta Quadrant"
    company_country "Universe"
    company_phone "+ 123 123 123 1"
    company_email "uss@ncc1701.com"
    vat "123456789"
    iban "XX123456789"
    swift "XXX123"
  end

  client do
    project_name "Battle engagement"
    name "Federation"
    date "2015-05-05"
    due_date "2015-06-05"
    bill_date "2015-06-01"
    address "Earth"
    email "starfleet@earth.com"
    vat "1234567891011"
  end

  services do
    tax "0.25"
    currency "$"
    service do
      name "Engage Romulans"
      description "Warmup for battle"
      unit "1000"
      quantity "1"
    end
    service do
      name "Rescue mission"
      description "Rescue captive away teams"
      unit "2000"
      quantity "2"
    end
  end

  other do
    notice "A finance charge of 1.5% will be made on unpaid balances after 30 days."
    footer "Invoice was created on a computer and is valid without the signature and seal."
    payment_method "Credit card"
    operator "Cpt Picard"
    pay_number "2015-1-1"
  end
end