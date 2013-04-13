Fabricator(:girl) do
  first_name { Faker::Name.first_name }
  middle_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  social_security { Random.rand(1000000000) + 99999999 }
  dob { DateTime.now - 29.years }
  address { Faker::Address.street_address }
  address2 { Faker::Address.secondary_address }
  city { Faker::Address.city }
  state { Faker::Address.state_abbr }
  zip { Faker::Address.zip_code }
  phone { Faker::PhoneNumber.cell_phone }
  is_taking_medication { false }
  list_dosage { '' }
  clean_date { DateTime.now - 7.days }
  drugs_of_choice { 'pot' }

  emergency_contact1_first_name { Faker::Name.first_name }
  emergency_contact1_last_name  { Faker::Name.last_name }
  emergency_contact1_phone  { Faker::PhoneNumber.cell_phone }
  emergency_contact1_relation { 'parent' }
  emergency_contact2_first_name { Faker::Name.first_name }
  emergency_contact2_last_name  { Faker::Name.last_name }
  emergency_contact2_phone  { Faker::PhoneNumber.cell_phone }
  emergency_contact2_relation { 'parent' }
  insurance_provider { Faker::Company.name }
  group_code { '123456' }
  policy_number { 'ABC123' }
  email { Faker::Internet.email }
  active { true }

  arrival_date { DateTime.now - 10.days }
  departure_date {}
  referral_source { 'St Mary Hospital' }
  referral_phone_number { Faker::PhoneNumber.cell_phone }
  insurance_provider_phone_number { Faker::PhoneNumber.cell_phone }
  clean_urine_upon_arriva { false }
  photo { '' }
  drivers_license { Random.rand(1000000000) + 99999999 }
end

