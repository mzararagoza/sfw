class AddEmailToGirl < ActiveRecord::Migration
  def self.up
    add_column :girls, :email, :string, :default => ''
    add_column :girls, :active, :boolean, :default => true
  end
  def self.down
    add_column :girls, :email
    add_column :girls, :active
  end
end
