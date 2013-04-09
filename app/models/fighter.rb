class Fighter < ActiveRecord::Base
  attr_accessible :fight_id, :round_id, :name
  belongs_to :fight
  belongs_to :round
end
