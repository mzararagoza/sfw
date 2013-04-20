class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.integer :admin_id
      t.integer :vendor_id
      t.decimal :amount, :precision => 8, :scale => 2
      t.datetime :payment_date
      t.string :payment_type
      t.text :note
      t.string :pdf_upload

      t.timestamps
    end

  end

  def self.down
    drop_table :expenses
  end
end
