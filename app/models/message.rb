class Message < ActiveRecord::Base
  belongs_to :admin
  attr_accessible :admin_id, :message, :to_addmin, :to_girl

end

