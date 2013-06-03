class Girl < ActiveRecord::Base
  has_many :payments
  has_many :notes
  has_many :exams
  has_many :vacations

  attr_accessible :first_name, :middle_name, :last_name, :social_security, :dob, :address, :address2, :city, :state, :zip, :phone, :is_taking_medication, :list_dosage, :clean_date, :drugs_of_choice, :emergency_contact1_first_name, :emergency_contact1_last_name, :emergency_contact1_phone, :emergency_contact1_relation, :emergency_contact2_first_name, :emergency_contact2_last_name, :emergency_contact2_phone, :emergency_contact2_relation, :insurance_provider, :group_code, :policy_number, :email, :active, :arrival_date, :departure_date, :referral_source, :referral_phone_number, :insurance_provider_phone_number, :clean_urine_upon_arriva, :photo, :drivers_license, :sponsor_first_name, :sponsor_last_name, :sponsor_phone, :opportunities_rules, :aa_meeting_sheet, :release_of_liability, :opportunities_intake_form, :opportunities_relapse_plan, :sober_inc, :reason_for_leaving, :license_front, :license_back, :insurance_card_front, :insurance_card_backi, :lease
  

  before_validation { |girl| girl.phone = phone.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |girl| girl.zip = zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |girl| girl.emergency_contact1_phone = emergency_contact1_phone.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |girl| girl.emergency_contact2_phone = emergency_contact2_phone.to_s.gsub(/[^0-9]/, "").to_s }

  mount_uploader :photo, PhotoUploader
  mount_uploader :license_front, PhotoUploader
  mount_uploader :license_back, PhotoUploader
  mount_uploader :insurance_card_front, PhotoUploader
  mount_uploader :insurance_card_back, PhotoUploader

  mount_uploader :opportunities_rules, FileUploader
  mount_uploader :aa_meeting_sheet, FileUploader
  mount_uploader :release_of_liability, FileUploader
  mount_uploader :opportunities_intake_form, FileUploader
  mount_uploader :opportunities_relapse_plan, FileUploader
  mount_uploader :sober_inc, FileUploader
  mount_uploader :lease, FileUploader

  def full_name
    if middle_name.to_s.length > 0
      first_name.to_s + ' ' + middle_name.to_s[0...1]  + '. ' + last_name.to_s
    else
      first_name.to_s + ' ' + last_name.to_s
    end
  end
end

