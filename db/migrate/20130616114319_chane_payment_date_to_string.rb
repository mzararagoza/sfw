class ChanePaymentDateToString < ActiveRecord::Migration
  def up
    change_column(:expenses, :payment_date, :string)
  end

  def down
    change_column(:expenses, :payment_date, :datetime)
  end
end
