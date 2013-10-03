class Property < ActiveRecord::Base
  has_many :girls

  attr_accessible :name, :address, :address2, :city, :state, :zip, :rooms, :beds, :sqft, :owner, :owner_address, :owner_address2, :owner_city, :owner_state, :owner_zip, :owner_phone, :owner_email, :monthly_cost

  before_validation { |property| property.zip = zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |property| property.owner_zip = owner_zip.to_s.gsub(/[^0-9]/, "").to_s }

end

