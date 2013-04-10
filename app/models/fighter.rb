class Fighter < ActiveRecord::Base
  attr_accessible :fight_id, :round_id, :name
  has_many :fights
  has_many :rounds, :through => :fights
end
