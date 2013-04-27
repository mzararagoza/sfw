class DropLeadsCreateProspects < ActiveRecord::Migration
  def up
    drop_table :leads
    create_table(:prospects) do |t|
      t.string :first_name, :default => ''
      t.string :last_name, :default => ''
      t.string :address, :default => ''
      t.string :address2, :default => ''
      t.string :city, :default => ''
      t.string :state, :default => ''
      t.string :zip, :default => ''
      t.string :phone, :default => ''
      t.string :email, :default => ''
      t.string :source, :default => ''
      t.text :notes, :default => ''
      t.string :outcome, :default => ''

      t.timestamps
    end
  end

  def down
    create_table(:leads) do |t|
      t.string :first_name, :default => ''
      t.string :last_name, :default => ''
      t.string :address, :default => ''
      t.string :address2, :default => ''
      t.string :city, :default => ''
      t.string :state, :default => ''
      t.string :zip, :default => ''
      t.string :phone, :default => ''
      t.string :email, :default => ''
      t.string :source, :default => ''
      t.text :notes, :default => ''
      t.string :outcome, :default => ''

      t.timestamps
    end
    drop_table :prospects
  end
end
