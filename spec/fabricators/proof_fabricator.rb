Fabricator(:proof) do
  drug_test_results_on_site { false }
  drug_test_results_lab { false }
  insurance_billed_amount { rand(1000)*10 }
  insurance_billed_date { DateTime.now }
  amount_paid { rand(3000) }
  date_paid { DateTime.now + 30.days }
  insurance_company  { 'Blue Cross' }
  amount_paid2 { rand(3000) }

  after_build do |e|
    e.girl ||= Girl.last || Fabricate(:girl)
  end
end

