class Fighter < ActiveRecord::Base
  attr_accessible :fight_id, :round_id, :name
  has_many :rounds
  has_many :fights, :through => :rounds
end
