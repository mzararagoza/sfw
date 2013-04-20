class AddReasonForLeavingToGirls < ActiveRecord::Migration
  def self.up
    add_column :girls, :reason_for_leaving, :string, :default => ''
  end
  def self.down
    remove_column :girls, :reason_for_leaving
  end
end
