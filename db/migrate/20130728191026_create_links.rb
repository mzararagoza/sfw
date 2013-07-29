class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :name
      t.string :link
      t.string :username
      t.string :password
    end
  end

  def down
    drop_table :links
  end
end
