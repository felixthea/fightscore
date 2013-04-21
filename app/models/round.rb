class Round < ActiveRecord::Base
  attr_accessible :roundname, :fight_id, :fighter_id
  belongs_to :fighter
  belongs_to :fight
  has_many :scores
  # has_many :users, :through => :scores
end
