class CreateDrugs < ActiveRecord::Migration
  def up
    create_table(:drugs) do |t|
      t.integer :proof_id
      t.string  :code
      t.string  :abbreviation
      t.boolean  :result
      t.string  :unit
      t.string  :normal
      t.text  :comment

      t.timestamps
    end
  end

  def down
    drop_table :drugs
  end
end
