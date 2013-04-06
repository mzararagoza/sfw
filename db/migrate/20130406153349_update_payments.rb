class UpdatePayments < ActiveRecord::Migration
  def up
    change_column :payments, :payment_date, :string, :default => ''
  end

  def down
    change_column :payments, :payment_date, :datetime
  end
end
