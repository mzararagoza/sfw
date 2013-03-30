class CreateGirlsTable < ActiveRecord::Migration
  def up
    create_table(:girls) do |t|
      t.string :first_name, :default => ''
      t.string :middle_name, :default => ''
      t.string :last_name, :default => ''
      t.string :social_security, :default => ''
      t.datetime :dob
      t.string :address, :default => ''
      t.string :address2, :default => ''
      t.string :city, :default => ''
      t.string :state, :default => ''
      t.string :zip, :default => ''
      t.string :phone, :default => ''
      t.boolean :is_taking_medication, :default => false
      t.string :list_dosage, :default => ''
      t.datetime :clean_date
      t.string :drugs_of_choice, :default => ''
      t.string :emergency_contact1_first_name, :default => ''
      t.string :emergency_contact1_last_name, :default => ''
      t.string :emergency_contact1_phone, :default => ''
      t.string :emergency_contact1_relation, :default => ''
      t.string :emergency_contact2_first_name, :default => ''
      t.string :emergency_contact2_last_name, :default => ''
      t.string :emergency_contact2_phone, :default => ''
      t.string :emergency_contact2_relation, :default => ''
      t.string :insurance_provider, :default => ''
      t.string :group_code, :default => ''
      t.string :policy_number, :default => ''
      t.timestamps
    end
  end

  def down
    drop_table :girls
  end
end
