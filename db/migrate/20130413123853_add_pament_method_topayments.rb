class AddPamentMethodTopayments < ActiveRecord::Migration
  def self.up
    add_column :payments, :payment_method, :string, :default => ''
    add_column :payments, :payment_number, :string, :default => ''
  end

  def down
    remove_column :payments, :payment_method
    remove_column :payments, :payment_number
  end
end
