class CreateLinks < ActiveRecord::Migration
  def up
    create_table :links do |t|
      t.string :name
      t.string :address
      t.string :username
      t.string :password
      t.boolean :active
      t.text :notes

      t.timestamps
    end
  end

  def down
    drop_table :links
  end
end
