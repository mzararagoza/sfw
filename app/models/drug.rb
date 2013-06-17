class Drug < ActiveRecord::Base
  belongs_to :proof

  attr_accessible :proof_id, :code,:abbreviation,:result,:unit,:normal,:comment,
end

