class Expense < ActiveRecord::Base
  belongs_to :vendor
  attr_accessible :vendor_id, :amount, :payment_date, :payment_type, :pdf_upload, :note, :admin_id

  mount_uploader :pdf_upload, FileUploader
end

