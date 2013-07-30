class Link < ActiveRecord::Base
  attr_accessible :name, :address, :username, :password, :active, :notes
end

