class CreateTest < ActiveRecord::Migration
  def up
    create_table(:proofs) do |t|
      t.integer :girl_id
      t.string  :date_perform
      t.string  :drug_test_results_on_site
      t.string  :drug_test_results_lab
      t.string  :insurance_billed_amount
      t.string  :insurance_billed_date
      t.string  :amount_paid
      t.string  :date_paid
      t.string  :insurance_company
      t.string  :exam_pdf
    end
  end

  def down
    drop_table :proofs
  end
end
