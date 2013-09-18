class InsurancePayment < ActiveRecord::Base
  attr_accessible :insurance_carrier, :payment_period_start, :payment_period_end, :payment_period_end, :total_amount_received, :pdf_upload, :description

  mount_uploader :pdf_upload, FileUploader
end

