Fabricator(:prospect) do
  first_name { Faker::Name.first_name  }
  last_name{ Faker::Name.first_name  }
  address{ Faker::Address.street_address  }
  address2{ Faker::Address.secondary_address  }
  city{ Faker::Address.city  }
  state{ Faker::Address.state_abbr  }
  zip{ Faker::Address.zip_code }
  phone{ Faker::PhoneNumber.cell_phone  }
  email{ Faker::Internet.free_email  }
  source{ 'Sunny House' }
  notes{ Faker::Lorem.sentence }
  outcome{ 'Good' }

end

