class Proof < ActiveRecord::Base
  belongs_to :girl
  has_many :drugs

  attr_accessible :girl_id, :date_perform, :drug_test_results_on_site, :drug_test_results_lab, :insurance_billed_amount, :insurance_billed_date, :amount_paid, :date_paid, :exam_pdf, :insurance_company, :amount_paid2

  mount_uploader :exam_pdf, FileUploader
end
