class AddPhoneToAdmins < ActiveRecord::Migration
  def self.up
    add_column :admins, :phone, :string, :default => ''
  end

  def self.dowmn
    add_column :admins, :phone
  end
end
