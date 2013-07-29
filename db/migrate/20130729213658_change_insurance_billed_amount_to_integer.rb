class ChangeInsuranceBilledAmountToInteger < ActiveRecord::Migration
  def self.up
    add_column :proofs, :amount_paid2, :decimal
  end

  def self.down
    remove_column :proofs, :amount_paid2
  end
end
