class AddDocumentsToGirls < ActiveRecord::Migration
  def self.up
    add_column :girls, :opportunities_rules, :string, :default => ''
    add_column :girls, :aa_meeting_sheet, :string, :default => ''
    add_column :girls, :release_of_liability, :string, :default => ''
    add_column :girls, :opportunities_intake_form, :string, :default => ''
    add_column :girls, :opportunities_relapse_plan, :string, :default => ''
    add_column :girls, :sober_inc, :string, :default => ''
  end

  def self.down
    remove_column :girls, :opportunities_rules
    remove_column :girls, :aa_meeting_sheet
    remove_column :girls, :release_of_liability
    remove_column :girls, :opportunities_intake_form
    remove_column :girls, :opportunities_relapse_plan
    remove_column :girls, :sober_inc

  end
end
