class Girl < ActiveRecord::Base

  attr_accessible :first_name, :middle_name, :last_name, :social_security, :dob, :address, :address2, :city, :state, :zip, :phone, :is_taking_medication, :list_dosage, :clean_date, :drugs_of_choice, :emergency_contact1_first_name, :emergency_contact1_last_name, :emergency_contact1_phone, :emergency_contact1_relation, :emergency_contact2_first_name, :emergency_contact2_last_name, :emergency_contact2_phone, :emergency_contact2_relation, :insurance_provider, :group_code, :policy_number

  before_validation { |girl| girl.phone = phone.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |girl| girl.zip = zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |girl| girl.emergency_contact1_phone = emergency_contact1_phone.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |girl| girl.emergency_contact2_phone = emergency_contact2_phone.to_s.gsub(/[^0-9]/, "").to_s }

end

