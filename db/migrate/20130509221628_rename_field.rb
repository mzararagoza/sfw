class RenameField < ActiveRecord::Migration
  def up
    add_column :girls, :insurance_card_back, :string, :default => ''
  end

  def down
    remove_column :girls, :insurance_card_back
  end
end
