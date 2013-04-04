class CreatePayment < ActiveRecord::Migration
  def up
    create_table :payments do |t|
      t.integer :girl_id
      t.decimal :amount, :precision => 8, :scale => 2
      t.datetime :payment_date
      t.string :payment_type
      t.text :note

      t.timestamps
    end
  end

  def down
    drop_table :payments
  end
end
