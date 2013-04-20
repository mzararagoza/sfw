class Vendor < ActiveRecord::Base

  attr_accessible :first_name,:last_name,:address,:address2, :city, :state, :zip, :phone_number, :email, :description

  before_validation { |vendor| vendor.zip = zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |vendor| vendor.phone_number = phone_number.to_s.gsub(/[^0-9]/, "").to_s }

  def full_name
    first_name.to_s + ' ' + last_name.to_s
  end
end
