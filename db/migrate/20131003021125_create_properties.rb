class CreateProperties < ActiveRecord::Migration

  def up
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :rooms
      t.integer :beds
      t.integer :sqft
      t.string :owner
      t.string :owner_address
      t.string :owner_address2
      t.string :owner_city
      t.string :owner_state
      t.string :owner_zip
      t.string :owner_phone
      t.string :owner_email
      t.decimal :monthly_cost
      t.boolean :active, :default => true

      t.timestamps
    end
    add_column :girls, :property_id, :integer
  end

  def down
    drop_table :properties
    remove_column :girls, :property_id
  end
end
