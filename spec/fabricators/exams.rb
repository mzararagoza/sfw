Fabricator(:exam) do

  date_perform { DateTime.now  }
  drug_test_results_on_site { false }
  drug_test_results_lab { false }
  insurance_billed_amount { rand(1000)*10 }
  insurance_billed_date { DateTime.now } 
  amount_paid { 2000 }
  date_paid { DateTime.now + 30.days }
  insurance_company  { 'Blue Cross' }
  benzodiazeipines { rand(1000)*10 }
  barbituates { rand(1000)*10 }
  cocaine { rand(1000)*10 }
  tetrahydrocannabinol { rand(1000)*10 }
  methamphetamines { rand(1000)*10 }
  opiates { rand(1000)*10 }
  maximum_tolerated_dose { rand(1000)*10 }
  tricyclic_antidepressants { rand(1000)*10 }
  oxycodone { rand(1000)*10 }
  phencyclidine { rand(1000)*10 }
  amphetamines { rand(1000)*10 }
  
  after_build do |e|
    e.girl ||= Girl.last || Fabricate(:girl)
  end
end
