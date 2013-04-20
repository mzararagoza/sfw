class CreateExam < ActiveRecord::Migration
  def self.up
    create_table(:exams) do |t|
      t.integer  :girl_id
      t.string  :date_perform
      t.string  :drug_test_results_on_site
      t.string  :drug_test_results_lab
      t.string  :insurance_billed_amount
      t.string  :insurance_billed_date
      t.string  :amount_paid
      t.string  :date_paid
      t.string  :insurance_company
      t.string  :benzodiazeipines
      t.string  :barbituates
      t.string  :cocaine
      t.string  :tetrahydrocannabinol
      t.string  :methamphetamines
      t.string  :opiates
      t.string  :maximum_tolerated_dose
      t.string  :tricyclic_antidepressants
      t.string  :oxycodone
      t.string  :phencyclidine
      t.string  :amphetamines

      t.timestamps
    end
  end

  def self.down
    drop_table :exams
  end
end
