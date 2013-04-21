class CreateVacation < ActiveRecord::Migration
  def self.up
    create_table(:vacations) do |t|
      t.integer  :girl_id
      t.string :issued_date
      t.string :departure_date
      t.string :return_date

      t.timestamps
    end
  end

  def self.down
    drop_table :vacations
  end
end
