class Payment < ActiveRecord::Base
  belongs_to :girl
  attr_accessible :girl_id, :payment_date, :payment_type, :note, :amount, :payment_method, :payment_number
end

