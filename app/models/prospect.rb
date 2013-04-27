class Prospect < ActiveRecord::Base
 
  attr_accessible :first_name, :last_name, :address, :address2, :city, :state, :zip, :phone, :email, :source, :notes, :outcome
  
  validates_presence_of :first_name
  def full_name
    first_name + ' ' + last_name
  end
end

