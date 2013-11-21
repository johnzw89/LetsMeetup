class BackPocket < ActiveRecord::Base
  attr_accessible :restaurants_id, :owners_id

  belongs_to :owner
  belongs_to :restaurant

end
