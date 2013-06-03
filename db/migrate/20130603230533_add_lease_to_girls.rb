class AddLeaseToGirls < ActiveRecord::Migration
  def self.up
    add_column :girls, :lease, :string, :default => ''
  end
  def self.down
    remove_column :girls, :lease
  end
end
