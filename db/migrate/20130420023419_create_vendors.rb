class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.string :first_name, :default => ''
      t.string :last_name, :default => ''
      t.string :address, :default => ''
      t.string :address2, :default => ''
      t.string :city, :default => ''
      t.string :state, :default => ''
      t.string :zip, :default => ''
      t.string :phone_number, :default => ''
      t.string :email, :default => ''
      t.text :description, :default => ''

      t.timestamps

    end
  end

  def self.down
    drop_table :vendors

  end
end
