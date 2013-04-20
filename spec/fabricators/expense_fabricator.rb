Fabricator(:expense) do
  amount { rand(100) * 10 }
  payment_date { DateTime.now }
  payment_type { 'paid' }
  
  after_build do |e|
    e.vendor ||= Vendor.last || Fabricate(:vendor)
  end
end

Fabricator(:return, from: :expense) do
  payment_type { 'return' }
end
