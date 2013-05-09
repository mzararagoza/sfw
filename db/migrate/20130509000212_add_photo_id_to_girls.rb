class AddPhotoIdToGirls < ActiveRecord::Migration
  def self.up
    add_column :girls, :license_front, :string, :default => ''
    add_column :girls, :license_back, :string, :default => ''
    add_column :girls, :insurance_card_front, :string, :default => ''
    add_column :girls, :insurance_caed_back, :string, :default => ''
  end

  def self.down
    remove_column :girls, :license_front, :string
    remove_column :girls, :license_back, :string
    remove_column :girls, :insurance_card_front
    remove_column :girls, :insurance_caed_back
  end
end
