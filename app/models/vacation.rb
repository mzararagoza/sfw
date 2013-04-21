class Vacation < ActiveRecord::Base
  belongs_to :girl
  attr_accessible :girl_id, :issued_date,  :departure_date, :return_date
end

