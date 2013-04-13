class AddToGirls < ActiveRecord::Migration
  def self.up
    add_column :girls, :arrival_date, :string, :default => ''
    add_column :girls, :departure_date, :string, :default => ''
    add_column :girls, :referral_source, :string, :default => ''
    add_column :girls, :referral_phone_number, :string, :default => ''
    add_column :girls, :insurance_provider_phone_number, :string, :default => ''
    add_column :girls, :clean_urine_upon_arriva, :boolean, :default => true
    add_column :girls, :photo, :string, :default => ''
  end
  def self.down
    remove_column :girls, :arrival_date
    remove_column :girls, :departure_date
    remove_column :girls, :referral_source
    remove_column :girls, :referral_phone_number
    remove_column :girls, :insurance_provider_phone_number
    remove_column :girls, :clean_urine_upon_arriva
    remove_column :girls, :photo
  end
end
