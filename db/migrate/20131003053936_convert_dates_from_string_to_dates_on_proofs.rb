class ConvertDatesFromStringToDatesOnProofs < ActiveRecord::Migration
  def up
    add_column :proofs, :insurance_billed_date2, :date
    add_column :proofs, :date_paid2, :date
    add_column :proofs, :created_at, :datetime
    add_column :proofs, :updated_at, :datetime


    Proof.all.each do |p|
      p.update_attributes(:created_at => p.date_perform.to_date, :insurance_billed_date2 => p.insurance_billed_date.to_date, :date_paid2 => p.date_paid.to_date)
    end
  end

  def down
    remove_column :proofs, :insurance_billed_date2
    remove_column :proofs, :date_paid2
    remove_column :proofs, :created_at
    remove_column :proofs, :updated_at
  end
end
