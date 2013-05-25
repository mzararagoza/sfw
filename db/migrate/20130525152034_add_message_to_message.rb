class AddMessageToMessage < ActiveRecord::Migration
  def self.up
    add_column :messages, :to_addmin, :boolean, :default => true
    add_column :messages, :to_girl, :boolean, :default => true
  end
  def self.down
    remove_column :messages, :to_addmin
    remove_column :messages, :to_girl
  end
end
