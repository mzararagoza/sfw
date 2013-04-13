class AddDriversLisenceToGirls < ActiveRecord::Migration
  def self.up
    add_column :girls, :drivers_license, :string, :default => ''
  end
  def self.down
    remove_column :girls, :drivers_license
  end
end
