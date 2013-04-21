Fabricator(:payment) do
  payment_date { DateTime.now }
  payment_type { 'receive_funds' }
  amount { rand(1000)*10 }
  note { Faker::Lorem.sentence }

  after_build do |p|
    p.girl ||= Girl.last || Fabricate(:girl)
  end
end

Fabricator(:debit, from: :payment) do
  payment_type { 'return_funds' }
end

