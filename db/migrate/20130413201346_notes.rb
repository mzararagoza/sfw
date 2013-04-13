class Notes < ActiveRecord::Migration
  def up
    create_table :notes do |t|
      t.integer :girl_id
      t.integer :admin_id
      t.text :note
      t.string :consequence

      t.timestamps
    end
  end

  def down
    drop_table :notes
  end
end
