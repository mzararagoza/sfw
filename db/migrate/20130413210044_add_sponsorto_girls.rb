class AddSponsortoGirls < ActiveRecord::Migration
  def self.up
    add_column :girls, :sponsor_first_name, :string, :default => ''
    add_column :girls, :sponsor_last_name, :string, :default => ''
    add_column :girls, :sponsor_phone, :string, :default => ''
  end

  def self.down
    remove_column :girls, :sponsor_first_name
    remove_column :girls, :sponsor_last_name
    remove_column :girls, :sponsor_phone
  end
end
