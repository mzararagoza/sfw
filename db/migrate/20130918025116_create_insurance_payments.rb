class CreateInsurancePayments < ActiveRecord::Migration
  def self.up
    create_table :insurance_payments do |t|
      t.string :insurance_carrier, :default => ''
      t.date :payment_period_start
      t.date :payment_period_end
      t.decimal :total_amount_received, :default => 0
      t.string :pdf_upload, :default => ''
      t.text :description, :default => ''

      t.timestamps
    end

  end

  def self.down
    drop_table :insurance_payments
  end
end
