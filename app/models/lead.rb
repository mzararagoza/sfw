class Lead < ActiveRecord::Base
 attr_accessible :first_name, :last_name, :address, :address2, :city, :state, :zip, :phone, :email, :source, :notes, :outcome
end

