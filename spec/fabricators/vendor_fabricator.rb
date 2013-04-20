Fabricator(:vendor) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  address { Faker::Address.street_name }
  address2 { Faker::Address.secondary_address }
  city { Faker::Address.city }
  state { Faker::Address.state_abbr }
  zip { Faker::Address.zip_code }
  phone_number { Faker::PhoneNumber.cell_phone.gsub(/[^0-9]/, "").to_s[0...10] }
  email { Faker::Internet.email }
  description { Faker::Lorem.sentences }
end
