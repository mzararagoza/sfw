class Exam < ActiveRecord::Base
  belongs_to :girl

  attr_accessible :girl_id, :date_perform, :drug_test_results_on_site, :drug_test_results_lab, :insurance_billed_amount, :insurance_billed_date, :amount_paid, :date_paid, :insurance_company, :benzodiazeipines, :barbituates, :cocaine, :tetrahydrocannabinol, :methamphetamines, :opiates, :maximum_tolerated_dose, :tricyclic_antidepressants, :oxycodone, :phencyclidine, :amphetamines, :exam_pdf
  
  mount_uploader :exam_pdf, FileUploader
end

