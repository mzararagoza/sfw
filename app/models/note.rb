class Note < ActiveRecord::Base
  belongs_to :girl
  belongs_to :admin

    attr_accessible :girl_id, :admin_id, :note, :consequence
end

