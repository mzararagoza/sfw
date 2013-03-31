class ChangeDobFromDateToString < ActiveRecord::Migration
  def up
    change_column :girls, :dob, :string, :default => ''
    change_column :girls, :clean_date, :string, :default => ''
  end

  def down
    change_column :girls, :dob, :datetime
    change_column :girls, :clean_date, :datetime
  end
end
