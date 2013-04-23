class AddPhotoToAdmins < ActiveRecord::Migration
  def self.up
    add_column :admins, :photo, :string, :default => ''
  end
  def self.down
    remove_column :admins, :photo
  end
end
