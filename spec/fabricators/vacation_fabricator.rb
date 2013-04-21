Fabricator(:vacation) do
  issued_date { DateTime.now - 1.month }
  departure_date { DateTime.now - 3.days }
  return_date { DateTime.now }
  after_build do |v|
    v.girl ||= Girl.last || Fabricate(:girl)
  end
end

